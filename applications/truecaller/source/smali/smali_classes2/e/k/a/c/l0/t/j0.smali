.class public Le/k/a/c/l0/t/j0;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/l0/i;
.implements Le/k/a/c/l0/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/q0<",
        "Ljava/lang/Object;",
        ">;",
        "Le/k/a/c/l0/i;",
        "Le/k/a/c/l0/n;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final c:Le/k/a/c/n0/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n0/i<",
            "Ljava/lang/Object;",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Le/k/a/c/i;

.field public final e:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/n0/i;Le/k/a/c/i;Le/k/a/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/n0/i<",
            "Ljava/lang/Object;",
            "*>;",
            "Le/k/a/c/i;",
            "Le/k/a/c/n<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Le/k/a/c/l0/t/q0;-><init>(Le/k/a/c/i;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/l0/t/j0;->c:Le/k/a/c/n0/i;

    .line 3
    iput-object p2, p0, Le/k/a/c/l0/t/j0;->d:Le/k/a/c/i;

    .line 4
    iput-object p3, p0, Le/k/a/c/l0/t/j0;->e:Le/k/a/c/n;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/j0;->e:Le/k/a/c/n;

    if-eqz v0, :cond_0

    instance-of v1, v0, Le/k/a/c/l0/n;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Le/k/a/c/l0/n;

    invoke-interface {v0, p1}, Le/k/a/c/l0/n;->a(Le/k/a/c/a0;)V

    :cond_0
    return-void
.end method

.method public b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/j0;->e:Le/k/a/c/n;

    .line 2
    iget-object v1, p0, Le/k/a/c/l0/t/j0;->d:Le/k/a/c/i;

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Le/k/a/c/l0/t/j0;->c:Le/k/a/c/n0/i;

    invoke-virtual {p1}, Le/k/a/c/a0;->i()Le/k/a/c/m0/o;

    move-result-object v2

    invoke-interface {v1, v2}, Le/k/a/c/n0/i;->b(Le/k/a/c/m0/o;)Le/k/a/c/i;

    move-result-object v1

    .line 4
    :cond_0
    invoke-virtual {v1}, Le/k/a/c/i;->E()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Le/k/a/c/a0;->B(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    .line 6
    :cond_1
    instance-of v2, v0, Le/k/a/c/l0/i;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p1, v0, p2}, Le/k/a/c/a0;->I(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v0

    .line 8
    :cond_2
    iget-object p1, p0, Le/k/a/c/l0/t/j0;->e:Le/k/a/c/n;

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Le/k/a/c/l0/t/j0;->d:Le/k/a/c/i;

    if-ne v1, p1, :cond_3

    return-object p0

    .line 9
    :cond_3
    iget-object p1, p0, Le/k/a/c/l0/t/j0;->c:Le/k/a/c/n0/i;

    .line 10
    const-class p2, Le/k/a/c/l0/t/j0;

    const-string v2, "withDelegate"

    invoke-static {p2, p0, v2}, Le/k/a/c/n0/g;->M(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance p2, Le/k/a/c/l0/t/j0;

    invoke-direct {p2, p1, v1, v0}, Le/k/a/c/l0/t/j0;-><init>(Le/k/a/c/n0/i;Le/k/a/c/i;Le/k/a/c/n;)V

    return-object p2
.end method

.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/j0;->c:Le/k/a/c/n0/i;

    invoke-interface {v0, p2}, Le/k/a/c/n0/i;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Le/k/a/c/l0/t/j0;->e:Le/k/a/c/n;

    if-nez v2, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_2
    invoke-virtual {v2, p1, v0}, Le/k/a/c/n;->d(Le/k/a/c/a0;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/j0;->c:Le/k/a/c/n0/i;

    invoke-interface {v0, p1}, Le/k/a/c/n0/i;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/l0/t/j0;->e:Le/k/a/c/n;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p3}, Le/k/a/c/l0/t/j0;->p(Ljava/lang/Object;Le/k/a/c/a0;)Le/k/a/c/n;

    move-result-object v0

    .line 5
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void
.end method

.method public g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/j0;->c:Le/k/a/c/n0/i;

    invoke-interface {v0, p1}, Le/k/a/c/n0/i;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/k/a/c/l0/t/j0;->e:Le/k/a/c/n;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, p3}, Le/k/a/c/l0/t/j0;->p(Ljava/lang/Object;Le/k/a/c/a0;)Le/k/a/c/n;

    move-result-object v1

    .line 4
    :cond_0
    invoke-virtual {v1, v0, p2, p3, p4}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    return-void
.end method

.method public p(Ljava/lang/Object;Le/k/a/c/a0;)Le/k/a/c/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le/k/a/c/a0;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 2
    iget-object v0, p2, Le/k/a/c/a0;->j:Le/k/a/c/l0/s/m;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/s/m;->b(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p2, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/o;->b(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p2, Le/k/a/c/a0;->d:Le/k/a/c/l0/o;

    iget-object v1, p2, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 5
    iget-object v1, v1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 6
    iget-object v1, v1, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 7
    sget-object v2, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1, v2}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Le/k/a/c/l0/o;->a(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p2, p1}, Le/k/a/c/a0;->p(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p2, p1}, Le/k/a/c/a0;->G(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    :cond_0
    return-object v0
.end method
