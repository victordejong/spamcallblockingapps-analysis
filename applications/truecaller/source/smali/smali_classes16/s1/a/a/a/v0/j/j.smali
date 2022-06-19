.class public abstract Ls1/a/a/a/v0/j/j;
.super Ls1/a/a/a/v0/j/k;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/j/k;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/b;)V
    .locals 1

    const-string v0, "first"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/j/j;->e(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/b;)V

    return-void
.end method

.method public c(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/b;)V
    .locals 1

    const-string v0, "fromSuper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromCurrent"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/j/j;->e(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/b;)V

    return-void
.end method

.method public abstract e(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/b;)V
.end method
