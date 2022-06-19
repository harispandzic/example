using Microsoft.AspNetCore.Mvc;

namespace api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class StudentController : Controller
    {
        List<Student> studenti = new List<Student>();
        public Student student1 = new Student { name = "John", surname = "Doe" };
        public Student student2 = new Student { name = "Denis", surname = "Mušić" };
        public StudentController()
        {
            studenti.Add(student1);
            studenti.Add(student2);
        }
        [HttpGet]
        public List<Student> Get()
        {
            return studenti;
        }
    }
}
