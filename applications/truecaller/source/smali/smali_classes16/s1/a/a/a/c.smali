.class public Ls1/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/c<",
        "Ls1/a/a/a/g<",
        "*>;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/n;


# direct methods
.method public constructor <init>(Ls1/a/a/a/n;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls1/a/a/a/c;->a:Ls1/a/a/a/n;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ls1/a/a/a/v0/b/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic b(Ls1/a/a/a/v0/b/g0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ls1/a/a/a/v0/b/k0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Ls1/s;

    const-string v0, "descriptor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    move-object p2, p1

    check-cast p2, Ls1/a/a/a/v0/b/h1/e0;

    .line 4
    iget-object v0, p2, Ls1/a/a/a/v0/b/h1/e0;->s:Ls1/a/a/a/v0/b/n0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 5
    :goto_0
    iget-object p2, p2, Ls1/a/a/a/v0/b/h1/e0;->t:Ls1/a/a/a/v0/b/n0;

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    .line 6
    move-object p2, p1

    check-cast p2, Ls1/a/a/a/v0/b/h1/p0;

    .line 7
    iget-boolean p2, p2, Ls1/a/a/a/v0/b/h1/p0;->f:Z

    const/4 v1, 0x2

    if-eqz p2, :cond_4

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_5

    .line 8
    new-instance p2, Ls1/a/a/a/t;

    iget-object v0, p0, Ls1/a/a/a/c;->a:Ls1/a/a/a/n;

    invoke-direct {p2, v0, p1}, Ls1/a/a/a/t;-><init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/k0;)V

    goto :goto_1

    .line 9
    :cond_2
    new-instance p2, Ls1/a/a/a/s;

    iget-object v0, p0, Ls1/a/a/a/c;->a:Ls1/a/a/a/n;

    invoke-direct {p2, v0, p1}, Ls1/a/a/a/s;-><init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/k0;)V

    goto :goto_1

    .line 10
    :cond_3
    new-instance p2, Ls1/a/a/a/r;

    iget-object v0, p0, Ls1/a/a/a/c;->a:Ls1/a/a/a/n;

    invoke-direct {p2, v0, p1}, Ls1/a/a/a/r;-><init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/k0;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    .line 11
    new-instance p2, Ls1/a/a/a/y;

    iget-object v0, p0, Ls1/a/a/a/c;->a:Ls1/a/a/a/n;

    invoke-direct {p2, v0, p1}, Ls1/a/a/a/y;-><init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/k0;)V

    goto :goto_1

    .line 12
    :cond_5
    new-instance p2, Ls1/a/a/a/i0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported property: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_6
    new-instance p2, Ls1/a/a/a/x;

    iget-object v0, p0, Ls1/a/a/a/c;->a:Ls1/a/a/a/n;

    invoke-direct {p2, v0, p1}, Ls1/a/a/a/x;-><init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/k0;)V

    goto :goto_1

    .line 14
    :cond_7
    new-instance p2, Ls1/a/a/a/w;

    iget-object v0, p0, Ls1/a/a/a/c;->a:Ls1/a/a/a/n;

    invoke-direct {p2, v0, p1}, Ls1/a/a/a/w;-><init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/k0;)V

    :goto_1
    return-object p2
.end method

.method public d(Ls1/a/a/a/v0/b/m0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/c;->l(Ls1/a/a/a/v0/b/v;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/b/b1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Ls1/a/a/a/v0/b/j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/c;->l(Ls1/a/a/a/v0/b/v;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ls1/a/a/a/v0/b/n0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic h(Ls1/a/a/a/v0/b/w0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic i(Ls1/a/a/a/v0/b/v0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public j(Ls1/a/a/a/v0/b/l0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/c;->l(Ls1/a/a/a/v0/b/v;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Ls1/a/a/a/v0/b/c0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public l(Ls1/a/a/a/v0/b/v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ls1/s;

    const-string v0, "descriptor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Ls1/a/a/a/b;

    iget-object v0, p0, Ls1/a/a/a/c;->a:Ls1/a/a/a/n;

    invoke-direct {p2, v0, p1}, Ls1/a/a/a/b;-><init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/v;)V

    return-object p2
.end method

.method public bridge synthetic m(Ls1/a/a/a/v0/b/a0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
