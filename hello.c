extern void klog(int a);
int add (int first, int second)
{
  klog(first + second);
  return first + second;
}