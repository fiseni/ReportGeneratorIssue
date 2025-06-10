using ReportGeneratorIssue;

namespace TestProject2;

public class FooTests
{
    [Fact]
    public void FooTest1()
    {
        var foo = new Foo();
        var result = foo.Calculate(1);
        Assert.Equal(20, result);
    }
}
