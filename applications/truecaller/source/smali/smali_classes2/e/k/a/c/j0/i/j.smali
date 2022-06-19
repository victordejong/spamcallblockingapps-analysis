.class public Le/k/a/c/j0/i/j;
.super Le/k/a/c/j0/i/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/k/a/c/j0/f;Le/k/a/c/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/k/a/c/j0/i/t;-><init>(Le/k/a/c/j0/f;Le/k/a/c/d;)V

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/d;)Le/k/a/c/j0/h;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/t;->b:Le/k/a/c/d;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Le/k/a/c/j0/i/j;

    iget-object v1, p0, Le/k/a/c/j0/i/t;->a:Le/k/a/c/j0/f;

    invoke-direct {v0, v1, p1}, Le/k/a/c/j0/i/j;-><init>(Le/k/a/c/j0/f;Le/k/a/c/d;)V

    :goto_0
    return-object v0
.end method

.method public c()Le/k/a/a/e0$a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/a/e0$a;->b:Le/k/a/a/e0$a;

    return-object v0
.end method
