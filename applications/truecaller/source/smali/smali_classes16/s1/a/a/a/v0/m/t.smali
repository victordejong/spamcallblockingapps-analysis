.class public abstract Ls1/a/a/a/v0/m/t;
.super Ls1/a/a/a/v0/m/s;
.source "SourceFile"


# instance fields
.field public final b:Ls1/a/a/a/v0/m/l0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/l0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/m/s;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/m/t;->b:Ls1/a/a/a/v0/m/l0;

    return-void
.end method


# virtual methods
.method public U0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/i1;
    .locals 1

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/s;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 3
    new-instance v0, Ls1/a/a/a/v0/m/n;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/m/n;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/b/f1/h;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public V0(Z)Ls1/a/a/a/v0/m/l0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/s;->P0()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/m/t;->b:Ls1/a/a/a/v0/m/l0;

    .line 3
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    invoke-virtual {p0}, Ls1/a/a/a/v0/m/s;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/m/l0;->W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    return-object p1
.end method

.method public W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;
    .locals 1

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/s;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 3
    new-instance v0, Ls1/a/a/a/v0/m/n;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/m/n;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/b/f1/h;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public X0()Ls1/a/a/a/v0/m/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/t;->b:Ls1/a/a/a/v0/m/l0;

    return-object v0
.end method
