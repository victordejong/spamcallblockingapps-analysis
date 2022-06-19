.class public final Le/a/t/a/a/i;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/t/a/a/h;",
        ">;",
        "Le/a/t/a/a/g<",
        "Le/a/t/a/a/h;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public final c:Le/a/t/a/a/t;

.field public final d:Le/a/p5/u;


# direct methods
.method public constructor <init>(Le/a/t/a/a/t;Le/a/p5/u;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tenorHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/t/a/a/i;->c:Le/a/t/a/a/t;

    iput-object p2, p0, Le/a/t/a/a/i;->d:Le/a/p5/u;

    const-string p1, ""

    .line 2
    iput-object p1, p0, Le/a/t/a/a/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final Hj()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/t/a/a/i;->d:Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/t/a/a/h;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/t/a/a/h;->e()V

    .line 3
    :cond_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/t/a/a/h;

    if-eqz v1, :cond_1

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Le/a/t/a/a/h;->i(Z)V

    :cond_1
    return v0
.end method

.method public Ij()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/t/a/a/i;->Hj()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/t/a/a/i;->c:Le/a/t/a/a/t;

    invoke-interface {v0}, Le/a/t/a/a/t;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/t/a/a/h;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/t/a/a/h;->f(Z)V

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/t/a/a/i;->c:Le/a/t/a/a/t;

    const/16 v1, 0x14

    new-instance v2, Le/a/t/a/a/i$a;

    invoke-direct {v2, p0}, Le/a/t/a/a/i$a;-><init>(Le/a/t/a/a/i;)V

    invoke-interface {v0, v1, v2}, Le/a/t/a/a/t;->c(ILe/a/t/a/a/s;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Ke(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/a/i;->c:Le/a/t/a/a/t;

    invoke-interface {v0}, Le/a/t/a/a/t;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/t/a/a/h;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/t/a/a/h;->c()V

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p0}, Le/a/t/a/a/i;->Ij()V

    :cond_2
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public M(Le/a/t/a/a/f;)V
    .locals 3

    const-string v0, "gif"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/t/a/a/i;->c:Le/a/t/a/a/t;

    .line 2
    iget-object v1, p1, Le/a/t/a/a/f;->a:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Le/a/t/a/a/i;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Le/a/t/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/t/a/a/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/t/a/a/h;->d()V

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/t/a/a/h;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Le/a/t/a/a/h;->M(Le/a/t/a/a/f;)V

    :cond_1
    return-void
.end method

.method public U5(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/t/a/a/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/t/a/a/h;->h()V

    :cond_0
    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/t/a/a/i;->Ij()V

    :cond_1
    return-void
.end method

.method public ji(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "query"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/t/a/a/h;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/t/a/a/h;->e()V

    .line 2
    :cond_0
    iput-object p1, p0, Le/a/t/a/a/i;->b:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Le/a/t/a/a/i;->Ij()V

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Le/a/t/a/a/i;->Hj()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Le/a/t/a/a/i;->c:Le/a/t/a/a/t;

    invoke-interface {v0}, Le/a/t/a/a/t;->a()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/t/a/a/h;

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Le/a/t/a/a/h;->f(Z)V

    .line 8
    :cond_4
    iget-object v0, p0, Le/a/t/a/a/i;->c:Le/a/t/a/a/t;

    const/16 v1, 0x14

    new-instance v2, Le/a/t/a/a/j;

    invoke-direct {v2, p0, p2}, Le/a/t/a/a/j;-><init>(Le/a/t/a/a/i;Z)V

    invoke-interface {v0, p1, v1, p2, v2}, Le/a/t/a/a/t;->b(Ljava/lang/String;IZLe/a/t/a/a/s;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public u1()V
    .locals 1

    const-string v0, ""

    .line 1
    iput-object v0, p0, Le/a/t/a/a/i;->b:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/t/a/a/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/t/a/a/h;->e()V

    :cond_0
    return-void
.end method

.method public yb()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t/a/a/i;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Le/a/t/a/a/i;->ji(Ljava/lang/String;Z)V

    return-void
.end method
