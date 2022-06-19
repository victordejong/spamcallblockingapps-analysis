.class public Ln3/e/a/e/z1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/e/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/e/b/j1/r1<",
        "Ln3/e/b/g1;",
        ">;"
    }
.end annotation


# instance fields
.field public final q:Ln3/e/b/j1/j0;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    move-result-object v0

    .line 3
    sget-object v1, Ln3/e/b/j1/r1;->j:Ln3/e/b/j1/j0$a;

    new-instance v2, Ln3/e/a/e/h1;

    invoke-direct {v2}, Ln3/e/a/e/h1;-><init>()V

    .line 4
    sget-object v3, Ln3/e/b/j1/j0$c;->c:Ln3/e/b/j1/j0$c;

    invoke-virtual {v0, v1, v3, v2}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Ln3/e/a/e/z1$b;->q:Ln3/e/b/j1/j0;

    return-void
.end method


# virtual methods
.method public synthetic a(Ln3/e/b/j1/j0$a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/h1;->f(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ln3/e/b/j1/h1;->g(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ln3/e/b/j1/j0$a;)Z
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/h1;->a(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Z

    move-result p1

    return p1
.end method

.method public synthetic d()Ljava/util/Set;
    .locals 1

    invoke-static {p0}, Ln3/e/b/j1/h1;->e(Ln3/e/b/j1/i1;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Ln3/e/b/j1/j0$a;)Ln3/e/b/j1/j0$c;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/h1;->c(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Ln3/e/b/j1/j0$c;

    move-result-object p1

    return-object p1
.end method

.method public getConfig()Ln3/e/b/j1/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/z1$b;->q:Ln3/e/b/j1/j0;

    return-object v0
.end method

.method public synthetic h()I
    .locals 1

    invoke-static {p0}, Ln3/e/b/j1/n0;->a(Ln3/e/b/j1/o0;)I

    move-result v0

    return v0
.end method

.method public synthetic i(Ln3/e/b/j1/j1;)Ln3/e/b/j1/j1;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/q1;->b(Ln3/e/b/j1/r1;Ln3/e/b/j1/j1;)Ln3/e/b/j1/j1;

    move-result-object p1

    return-object p1
.end method

.method public synthetic j(Ljava/lang/String;Ln3/e/b/j1/j0$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ln3/e/b/j1/h1;->b(Ln3/e/b/j1/i1;Ljava/lang/String;Ln3/e/b/j1/j0$b;)V

    return-void
.end method

.method public synthetic k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/k1/e;->a(Ln3/e/b/k1/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic l(Ln3/e/b/j1/j0$a;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/h1;->d(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public synthetic m(I)I
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/q1;->d(Ln3/e/b/j1/r1;I)I

    move-result p1

    return p1
.end method

.method public synthetic p(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ln3/e/b/j1/h1;->h(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic t(Ln3/e/b/m0;)Ln3/e/b/m0;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/q1;->a(Ln3/e/b/j1/r1;Ln3/e/b/m0;)Ln3/e/b/m0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic u(Ln3/e/b/g1$a;)Ln3/e/b/g1$a;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/k1/h;->a(Ln3/e/b/k1/i;Ln3/e/b/g1$a;)Ln3/e/b/g1$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic v(Ln3/e/b/j1/j1$d;)Ln3/e/b/j1/j1$d;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/q1;->c(Ln3/e/b/j1/r1;Ln3/e/b/j1/j1$d;)Ln3/e/b/j1/j1$d;

    move-result-object p1

    return-object p1
.end method
