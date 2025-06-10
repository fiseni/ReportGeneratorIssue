using ReportGeneratorIssue;

namespace TestProject1;

public class FooTests
{
    [Fact]
    public void FooTest1()
    {
        var foo = new Foo();
        var result = foo.Calculate(0);
        Assert.Equal(10, result);
    }
}
