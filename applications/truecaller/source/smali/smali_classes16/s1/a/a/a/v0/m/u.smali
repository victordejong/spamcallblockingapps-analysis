.class public final Ls1/a/a/a/v0/m/u;
.super Ls1/a/a/a/v0/m/b1;
.source "SourceFile"


# instance fields
.field public final b:Ls1/a/a/a/v0/m/b1;

.field public final c:Ls1/a/a/a/v0/m/b1;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/b1;Ls1/a/a/a/v0/m/b1;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/m/b1;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/m/u;->b:Ls1/a/a/a/v0/m/b1;

    iput-object p2, p0, Ls1/a/a/a/v0/m/u;->c:Ls1/a/a/a/v0/m/b1;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/u;->b:Ls1/a/a/a/v0/m/b1;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/b1;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ls1/a/a/a/v0/m/u;->c:Ls1/a/a/a/v0/m/b1;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/b1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/u;->b:Ls1/a/a/a/v0/m/b1;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/b1;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ls1/a/a/a/v0/m/u;->c:Ls1/a/a/a/v0/m/b1;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/b1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/f1/h;
    .locals 2

    const-string v0, "annotations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/u;->c:Ls1/a/a/a/v0/m/b1;

    iget-object v1, p0, Ls1/a/a/a/v0/m/u;->b:Ls1/a/a/a/v0/m/b1;

    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/m/b1;->d(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/b1;->d(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object p1

    return-object p1
.end method

.method public e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/u;->b:Ls1/a/a/a/v0/m/b1;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/b1;->e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/m/u;->c:Ls1/a/a/a/v0/m/b1;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/b1;->e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;
    .locals 2

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/u;->c:Ls1/a/a/a/v0/m/b1;

    iget-object v1, p0, Ls1/a/a/a/v0/m/u;->b:Ls1/a/a/a/v0/m/b1;

    invoke-virtual {v1, p1, p2}, Ls1/a/a/a/v0/m/b1;->g(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ls1/a/a/a/v0/m/b1;->g(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    return-object p1
.end method
