typedef signed int i32;
extern void klog(const char * str, i32 len);

unsigned long strlen(const char *str)
{
        const char *s;

        for (s = str; *s; ++s)
                ;
        return (s - str);
}

void kmain ()
{
  const char *str = "hello";
  klog(str, strlen(str));
}