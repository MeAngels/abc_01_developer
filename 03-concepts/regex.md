
Letters, numbers and hyphens: `/([A-Za-z0-9-]+)/`

any number from 1 to 50 inclusive: `/(^[1-9]{1}$|^[1-4]{1}[0-9]{1}$|^50$)/`

Hexadecimal: `^#(?:[0-9a-fA-F]{3}){1,2}$`

date: `/(\d{1,2}\/\d{1,2\/\d{4}})/`

jpg, gif or png image: `/([^\s]+(?=\.(jpg|gif|png))\.\2)/`


password: `/((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15})/`
string with at least one upper case letter, one lower case letter and one digit: useful for passwords

email: `/^(([$ALL]+_+)|([$ALL]+\-+)|([$ALL]+\.+)|([$ALL]+\++))*[$ALL]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[A-Za-z]{2,6}$//`
/$[ALL]=[A-Za-z0-9]/
/^\w*(\-\w)?(\.\w*)?@\w*(-\w*)?\.\w{2,3}(\.\w{2,3})?$/
`/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/`

html tag: `/(\<(/?[^\>]+)\>)/`
