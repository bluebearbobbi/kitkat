def request($method; $path; $body):
  env.BD_URL as $base
  | env.BD_TOKEN as $token
  | [
      "curl", "-sS", "-X", $method,
      "\($base)\($path)",
      "-H", "Authorization: Bearer \($token)",
      "-H", "Accept: application/json"
    ]
    + (if $body != null then
         ["-H", "Content-Type: application/json", "-d", "@-"]
       else [] end)
  | join(" ")
;
