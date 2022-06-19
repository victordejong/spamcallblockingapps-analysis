.class public final Ls1/a/a/a/v0/j/s/a/e;
.super Ls1/a/a/a/v0/m/r;
.source "SourceFile"


# instance fields
.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/b1;ZLs1/a/a/a/v0/m/b1;)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Ls1/a/a/a/v0/j/s/a/e;->c:Z

    invoke-direct {p0, p3}, Ls1/a/a/a/v0/m/r;-><init>(Ls1/a/a/a/v0/m/b1;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/j/s/a/e;->c:Z

    return v0
.end method

.method public e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/m/r;->b:Ls1/a/a/a/v0/m/b1;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/b1;->e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p1

    instance-of v2, p1, Ls1/a/a/a/v0/b/w0;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    check-cast v1, Ls1/a/a/a/v0/b/w0;

    .line 4
    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->p0(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/b/w0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v1

    :cond_1
    return-object v1
.end method
