$list = '1','2'

$pre = ''
$post = ''

"Item: start"
"Pre: none"
"Post: " + $list[0]

for ($i = 0; $i -lt $list.Length; $i++)
{
    if ($i -eq 0)
    {
        $pre = 'start'
    }
    else
    {
        $pre = $list[$i - 1]
    }

    if ($i -eq ($list.Length - 1))
    {
        $post = 'end'
    }
    else
    {
        $post = $list[$i + 1]
    }


    "PAGE 1"
    "Item: " + $list[$i]
    "Pre: ?"
    "Post: ?"

    "PAGE 2"
    "Item: " + $list[$i]
    "Pre: " + $pre
    "Post: " + $post
}

"Item: end"
"Pre: " + $list[-1]
"Post: none"