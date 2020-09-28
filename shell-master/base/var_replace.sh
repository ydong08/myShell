
#!/bin/sh

name="var_replace"
value=""


# 有值
echo "\${var-msg}: ${name-'word'} <=> echo $name"
echo "\${var=msg}: ${name='word'} <=> echo $name"
echo "\${var?msg}: ${name?'word'} <=> echo $name"

echo "\${var:-msg}: ${name:-'word'} <=> echo $name"
echo "\${var:=msg}: ${name:='word'} <=> echo $name"
echo "\${var:?msg}: ${name:?'word'} <=> echo $name"
echo "-------------------------------------------"

# 无值
echo "\${var-msg}: ${value-'word'} <=> echo $value"
echo "\${var=msg}: ${value='word'} <=> echo $value"
echo "\${var?msg}: ${value?'word'} <=> echo $value"

echo "\${var:-msg}: ${value:-'word'} <=> echo $value"
echo "\${var:=msg}: ${value:='word'} <=> echo $value"
echo "\${var:?msg}: ${value:?'word'} <=> echo $value"
echo "-------------------------------------------"

# 无定义
echo "\${var-msg}: ${rep-'word'} <=> echo $rep"
echo "\${var=msg}: ${rep='word'} <=> echo $rep"
echo "\${var?msg}: ${rep?'word'} <=> echo $rep"

echo "\${var:-msg}: ${rep:-'word'} <=> echo $rep"
echo "\${var:=msg}: ${rep:='word'} <=> echo $rep"
echo "\${var:?msg}: ${rep:?'word'} <=> echo $rep"


# 例外
echo "\${var+msg}: ${name+'word'} <=> echo $name"
echo "\${var:+msg}: ${name:+'word'} <=> echo $name"

echo "\${var+msg}: ${value+'word'} <=> echo $value"
echo "\${var:+msg}: ${value:+'word'} <=> echo $value"

echo "\${var+msg}: ${rep+'word'} <=> echo $rep"
echo "\${var:+msg}: ${rep:+'word'} <=> echo $rep"
