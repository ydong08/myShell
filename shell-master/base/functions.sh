
#!/bin/sh

# 在test函数中test2被重新定义覆盖
test2()
{
    echo "test2 first"
}

call_cb()
{
    test2
}

test()
{
    test2()
    {
    	echo "test2 second"
    }
    echo "test"
    call_cb
}

test 
