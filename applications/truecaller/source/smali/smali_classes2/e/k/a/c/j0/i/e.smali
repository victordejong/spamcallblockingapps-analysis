.class public Le/k/a/c/j0/i/e;
.super Le/k/a/c/j0/i/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/j0/f;Ljava/lang/String;ZLe/k/a/c/i;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Le/k/a/c/j0/i/a;-><init>(Le/k/a/c/i;Le/k/a/c/j0/f;Ljava/lang/String;ZLe/k/a/c/i;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/j0/i/e;Le/k/a/c/d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Le/k/a/c/j0/i/a;-><init>(Le/k/a/c/j0/i/a;Le/k/a/c/d;)V

    return-void
.end method


# virtual methods
.method public f(Le/k/a/c/d;)Le/k/a/c/j0/e;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/q;->c:Le/k/a/c/d;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/j0/i/e;

    invoke-direct {v0, p0, p1}, Le/k/a/c/j0/i/e;-><init>(Le/k/a/c/j0/i/e;Le/k/a/c/d;)V

    return-object v0
.end method

.method public j()Le/k/a/a/e0$a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/a/e0$a;->d:Le/k/a/a/e0$a;

    return-object v0
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
