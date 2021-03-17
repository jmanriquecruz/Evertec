using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace FundamentalCSharp
{
    class LineProcessed
    {
        SortedDictionary<long, string> lines;
        string path = @"C:\Users\Usuario\Documents\Folder";
        string fileName = @"FileDone.txt";

        public LineProcessed()
        {
            lines = new SortedDictionary<long, string>();

        }

        private string GetPath()
        {
            return string.Format("{0}/{1}", path, fileName);
        }

        public FileStream CreateFile()
        {
            return File.Open(GetPath(), FileMode.Append);
        }

        public void WriteLineMessage(string message)
        {
            using (var file = CreateFile())
            {
                using (var writerFile = new StreamWriter(file,Encoding.UTF8))
                {
                    writerFile.WriteLine(message);
                }
            }
        }

        public void CloseFile(FileStream fileStream)
        {
            fileStream.Close();
        }
        public void ProcessedLine(Line line)
        {
            if (line.LastLineOnFile())
            {
                foreach (var item in lines)
                {
                    WriteLineMessage(item.Value);
                }

            }
            else
            {
                lines.Add(line.GetLineNumber(), line.GetLineMessage());
            }

        }
    }
}
