```csharp
using System;
using System.Drawing;
using System.IO;

namespace 图片批量加水印
{
    internal class Program
    {
        public static void Main(string[] args)
        {
            foreach (var file in Directory.GetFiles(Environment.CurrentDirectory
                ,"*",SearchOption.AllDirectories))
            {
                Console.WriteLine(file);

                if (file.EndsWith(".jpg"))
                {
                    var f = Image.FromFile(file);
                    var g = Graphics.FromImage(f)
                        ;
                    Console.WriteLine(f.Width+"*"+f.Height);

                    var text = Path.GetFileNameWithoutExtension(file).Replace("IMG","");
                    
                    var fz=g.MeasureString(text.ToString()
                        , new Font("楷体", f.Width/30, FontStyle.Bold));
                    g.DrawString(text.ToString()
                        ,new Font("楷体",f.Width/30,FontStyle.Bold)
                        ,
                        new SolidBrush(Color.Aqua),
                        f.Width/30,
                        f.Height/30 );
                    g.DrawRectangle(new Pen(new SolidBrush(Color.Azure))
                            {Width = 10}
                        ,f.Width/30
                        ,f.Height/30
                        ,fz.Width
                        ,fz.Height
                        );
                    f.Save(file+".tag.jpg");
                }
               
            }

            
            Console.WriteLine("123123");
            Console.ReadLine();
        }
    }
}
```
