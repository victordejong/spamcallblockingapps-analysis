.class public Le/k/a/c/j0/i/d;
.super Le/k/a/c/j0/i/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/k/a/c/j0/f;Le/k/a/c/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/j0/i/h;-><init>(Le/k/a/c/j0/f;Le/k/a/c/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Le/k/a/c/d;)Le/k/a/c/j0/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/j0/i/d;->i(Le/k/a/c/d;)Le/k/a/c/j0/i/d;

    move-result-object p1

    return-object p1
.end method

.method public c()Le/k/a/a/e0$a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/a/e0$a;->e:Le/k/a/a/e0$a;

    return-object v0
.end method

.method public bridge synthetic g(Le/k/a/c/d;)Le/k/a/c/j0/i/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/j0/i/d;->i(Le/k/a/c/d;)Le/k/a/c/j0/i/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Le/k/a/c/d;)Le/k/a/c/j0/i/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/j0/i/d;->i(Le/k/a/c/d;)Le/k/a/c/j0/i/d;

    move-result-object p1

    return-object p1
.end method

.method public i(Le/k/a/c/d;)Le/k/a/c/j0/i/d;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/t;->b:Le/k/a/c/d;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Le/k/a/c/j0/i/d;

    iget-object v1, p0, Le/k/a/c/j0/i/t;->a:Le/k/a/c/j0/f;

    iget-object v2, p0, Le/k/a/c/j0/i/h;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Le/k/a/c/j0/i/d;-><init>(Le/k/a/c/j0/f;Le/k/a/c/d;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
