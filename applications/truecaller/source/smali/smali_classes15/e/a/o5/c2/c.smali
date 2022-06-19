.class public Le/a/o5/c2/c;
.super Le/a/o5/c2/k;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/o5/c2/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/a/o5/c2/k$b;
    .locals 2

    .line 1
    new-instance v0, Le/a/o5/c2/k$b;

    invoke-direct {v0, p0}, Le/a/o5/c2/k$b;-><init>(Le/a/o5/c2/k;)V

    const-string v1, "Telenor"

    .line 2
    iput-object v1, v0, Le/a/o5/c2/k$b;->a:Ljava/lang/String;

    const v1, 0x7f0803e2

    .line 3
    iput v1, v0, Le/a/o5/c2/k$b;->b:I

    const v1, 0x7f0803e0

    .line 4
    iput v1, v0, Le/a/o5/c2/k$b;->c:I

    const v1, 0x7f120964

    .line 5
    iput v1, v0, Le/a/o5/c2/k$b;->d:I

    const v1, 0x7f030013

    .line 6
    iput v1, v0, Le/a/o5/c2/k$b;->e:I

    const v1, 0x7f030014

    .line 7
    iput v1, v0, Le/a/o5/c2/k$b;->f:I

    return-object v0
.end method

.method public b(Landroid/content/Context;)Le/a/o5/c2/k$c;
    .locals 2

    const/4 v0, 0x0

    .line 1
    new-instance v1, Le/a/o5/c2/k$a;

    invoke-direct {v1, p0, p1, v0}, Le/a/o5/c2/k$a;-><init>(Le/a/o5/c2/k;Landroid/content/Context;Z)V

    const p1, 0x7f0803e1

    .line 2
    iput p1, v1, Le/a/o5/c2/k$c;->a:I

    const p1, -0xff5319

    .line 3
    iput p1, v1, Le/a/o5/c2/k$c;->b:I

    return-object v1
.end method
