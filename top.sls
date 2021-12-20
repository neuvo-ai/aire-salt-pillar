base:
  '*':
    - default
  'roles:botfront':
    - match: grain
    - mongodb
    - rasa
    - botfront
