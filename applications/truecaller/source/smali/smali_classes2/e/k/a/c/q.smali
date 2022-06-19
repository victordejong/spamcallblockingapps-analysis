.class public Le/k/a/c/q;
.super Le/k/a/b/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/k/a/b/e;-><init>(Le/k/a/b/n;)V

    .line 2
    new-instance v1, Le/k/a/c/r;

    .line 3
    invoke-direct {v1, p0, v0, v0}, Le/k/a/c/r;-><init>(Le/k/a/b/e;Le/k/a/c/l0/j;Le/k/a/c/d0/l;)V

    .line 4
    iput-object v1, p0, Le/k/a/b/e;->f:Le/k/a/b/n;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/r;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Le/k/a/b/e;-><init>(Le/k/a/b/n;)V

    return-void
.end method


# virtual methods
.method public h()Le/k/a/b/n;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/e;->f:Le/k/a/b/n;

    check-cast v0, Le/k/a/c/r;

    return-object v0
.end method
