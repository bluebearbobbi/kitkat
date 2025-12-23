def paginate:
  . as $resp
  | if ($resp._meta.totalCount? // 0) > ($resp.items | length) then
      $resp.items,
      ($resp._meta.links[] | select(.rel == "next") | .href
       | capture("^.*(/api/.*)$") | .[0] | paginate)
    else
      $resp.items
    end
;

def table:
  if length == 0 then empty
  else
    [.[0] | keys_unsorted[]] as $headers
    | $headers | join("\t"),
      (.[] | [.[$headers[]]] | join("\t"))
    | .
  end
;
