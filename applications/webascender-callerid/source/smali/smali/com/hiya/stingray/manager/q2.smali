.class public Lcom/hiya/stingray/manager/q2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/t/i1/m;

.field private final b:Lcom/hiya/stingray/q/b/n;

.field private final c:Lg/g/b/a/b;

.field private final d:Lcom/hiya/stingray/manager/v1;

.field private final e:Lcom/hiya/stingray/manager/o1;

.field private final f:Lcom/hiya/stingray/manager/w2;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/b/u;Lcom/hiya/stingray/t/i1/m;Lcom/hiya/stingray/q/b/n;Lcom/hiya/stingray/t/i1/f0;Lg/g/b/a/b;Lcom/hiya/stingray/manager/v1;Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/manager/w2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/hiya/stingray/manager/q2;->a:Lcom/hiya/stingray/t/i1/m;

    .line 3
    iput-object p3, p0, Lcom/hiya/stingray/manager/q2;->b:Lcom/hiya/stingray/q/b/n;

    .line 4
    iput-object p5, p0, Lcom/hiya/stingray/manager/q2;->c:Lg/g/b/a/b;

    .line 5
    iput-object p6, p0, Lcom/hiya/stingray/manager/q2;->d:Lcom/hiya/stingray/manager/v1;

    .line 6
    iput-object p7, p0, Lcom/hiya/stingray/manager/q2;->e:Lcom/hiya/stingray/manager/o1;

    .line 7
    iput-object p8, p0, Lcom/hiya/stingray/manager/q2;->f:Lcom/hiya/stingray/manager/w2;

    return-void
.end method

.method private synthetic c(Lcom/hiya/stingray/t/h0;Ljava/lang/String;Lcom/google/common/base/j;)Li/c/b0/b/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/google/common/base/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/c/i/b;->O0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h0;->b()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/manager/q2;->a:Lcom/hiya/stingray/t/i1/m;

    invoke-virtual {p3}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {p1, p2, p3}, Lcom/hiya/stingray/t/i1/m;->a(Ljava/lang/String;Lcom/hiya/stingray/q/c/i/b;)Lcom/hiya/stingray/t/h0;

    move-result-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/u0;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/t/u0;",
            ")",
            "Li/c/b0/b/v<",
            "Lg/g/b/c/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/q2;->d:Lcom/hiya/stingray/manager/v1;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/u0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/v1;->b(Ljava/lang/String;)Lg/g/b/c/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/q2;->c:Lg/g/b/a/b;

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/u0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/u0;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/hiya/stingray/manager/q2;->f:Lcom/hiya/stingray/manager/w2;

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/w2;->g()Z

    move-result v2

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Lg/g/b/a/b;->j(Ljava/lang/String;Ljava/lang/String;Z)Li/c/b0/b/p;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Li/c/b0/b/p;->x()Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lcom/hiya/stingray/t/h0;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/h0;",
            ")",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/t/h0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/q2;->b:Lcom/hiya/stingray/q/b/n;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/n;->b(Ljava/lang/String;)Lcom/google/common/base/j;

    move-result-object v0

    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/q0;

    invoke-direct {v1, p0, p2, p1}, Lcom/hiya/stingray/manager/q0;-><init>(Lcom/hiya/stingray/manager/q2;Lcom/hiya/stingray/t/h0;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lcom/hiya/stingray/t/h0;Ljava/lang/String;Lcom/google/common/base/j;)Li/c/b0/b/a0;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/manager/q2;->c(Lcom/hiya/stingray/t/h0;Ljava/lang/String;Lcom/google/common/base/j;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Lg/g/b/c/f;)Li/c/b0/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/q2;->d:Lcom/hiya/stingray/manager/v1;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/manager/v1;->c(Ljava/lang/String;Lg/g/b/c/f;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/q2;->e:Lcom/hiya/stingray/manager/o1;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/manager/o1;->j0(Ljava/lang/String;Lg/g/b/c/f;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
