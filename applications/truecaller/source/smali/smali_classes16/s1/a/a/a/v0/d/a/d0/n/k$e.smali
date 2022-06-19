.class public final Ls1/a/a/a/v0/d/a/d0/n/k$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/k;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/d0/n/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/f/e;",
        "Ls1/a/a/a/v0/b/k0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/k;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/k;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$e;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, Ls1/a/a/a/v0/f/e;

    const-string v0, "name"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k$e;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    .line 4
    iget-object v1, v0, Ls1/a/a/a/v0/d/a/d0/n/k;->l:Ls1/a/a/a/v0/d/a/d0/n/k;

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, v1, Ls1/a/a/a/v0/d/a/d0/n/k;->e:Ls1/a/a/a/v0/l/h;

    .line 6
    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/k0;

    goto/16 :goto_5

    .line 7
    :cond_0
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/n/k;->c:Ls1/a/a/a/v0/l/i;

    .line 8
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/d/a/d0/n/b;

    invoke-interface {v0, p1}, Ls1/a/a/a/v0/d/a/d0/n/b;->b(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/d/a/f0/n;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 9
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/n;->H()Z

    move-result v1

    if-nez v1, :cond_c

    .line 10
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$e;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/r;->F()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/lit8 v8, v2, 0x1

    .line 13
    iget-object v2, v1, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    invoke-static {v2, p1}, Le/q/f/a/d/a;->B2(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/d;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v5

    .line 14
    invoke-virtual {v1}, Ls1/a/a/a/v0/d/a/d0/n/k;->p()Ls1/a/a/a/v0/b/k;

    move-result-object v4

    sget-object v6, Ls1/a/a/a/v0/b/y;->a:Ls1/a/a/a/v0/b/y;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/r;->f()Ls1/a/a/a/v0/b/e1;

    move-result-object v2

    invoke-static {v2}, Le/q/f/a/d/a;->c3(Ls1/a/a/a/v0/b/e1;)Ls1/a/a/a/v0/b/r;

    move-result-object v7

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v9

    .line 15
    iget-object v2, v1, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 16
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 17
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/c;->j:Ls1/a/a/a/v0/d/a/e0/b;

    .line 18
    invoke-interface {v2, p1}, Ls1/a/a/a/v0/d/a/e0/b;->a(Ls1/a/a/a/v0/d/a/f0/l;)Ls1/a/a/a/v0/d/a/e0/a;

    move-result-object v10

    .line 19
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/r;->F()Z

    move-result v2

    const/4 v12, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/r;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    move v11, v3

    goto :goto_0

    :cond_1
    move v11, v12

    .line 20
    :goto_0
    invoke-static/range {v4 .. v11}, Ls1/a/a/a/v0/d/a/c0/g;->S0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZLs1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;Z)Ls1/a/a/a/v0/d/a/c0/g;

    move-result-object v2

    const-string v4, "JavaPropertyDescriptor.c\u2026d.isFinalStatic\n        )"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, v0, v0, v0, v0}, Ls1/a/a/a/v0/b/h1/e0;->Q0(Ls1/a/a/a/v0/b/h1/f0;Ls1/a/a/a/v0/b/m0;Ls1/a/a/a/v0/b/s;Ls1/a/a/a/v0/b/s;)V

    .line 22
    iget-object v4, v1, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 23
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/h;->b:Ls1/a/a/a/v0/d/a/d0/o/g;

    .line 24
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/n;->getType()Ls1/a/a/a/v0/d/a/f0/v;

    move-result-object v5

    sget-object v6, Ls1/a/a/a/v0/d/a/b0/k;->b:Ls1/a/a/a/v0/d/a/b0/k;

    const/4 v7, 0x3

    invoke-static {v6, v12, v0, v7}, Ls1/a/a/a/v0/d/a/d0/o/i;->c(Ls1/a/a/a/v0/d/a/b0/k;ZLs1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ls1/a/a/a/v0/d/a/d0/o/g;->d(Ls1/a/a/a/v0/d/a/f0/v;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/e0;

    move-result-object v4

    .line 25
    invoke-static {v4}, Ls1/a/a/a/v0/a/g;->H(Ls1/a/a/a/v0/m/e0;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Ls1/a/a/a/v0/a/g;->J(Ls1/a/a/a/v0/m/e0;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 26
    :cond_2
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/r;->F()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/r;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v12

    :goto_1
    if-eqz v5, :cond_4

    .line 27
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/n;->y()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v12

    :goto_2
    if-eqz v5, :cond_5

    .line 28
    invoke-static {v4}, Ls1/a/a/a/v0/m/f1;->i(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v4

    const-string v5, "TypeUtils.makeNotNullable(propertyType)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    :cond_5
    sget-object v5, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual {v1}, Ls1/a/a/a/v0/d/a/d0/n/k;->o()Ls1/a/a/a/v0/b/n0;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6, v0}, Ls1/a/a/a/v0/b/h1/e0;->R0(Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ls1/a/a/a/v0/b/n0;Ls1/a/a/a/v0/b/n0;)V

    .line 30
    invoke-virtual {v2}, Ls1/a/a/a/v0/b/h1/o0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v4

    .line 31
    sget v5, Ls1/a/a/a/v0/j/g;->a:I

    if-eqz v4, :cond_b

    .line 32
    invoke-virtual {v2}, Ls1/a/a/a/v0/b/h1/p0;->D()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v4}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 33
    :cond_6
    invoke-static {v4}, Ls1/a/a/a/v0/m/f1;->b(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    .line 34
    :cond_7
    invoke-static {v2}, Ls1/a/a/a/v0/j/v/b;->f(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/g;

    move-result-object v0

    .line 35
    invoke-static {v4}, Ls1/a/a/a/v0/a/g;->H(Ls1/a/a/a/v0/m/e0;)Z

    move-result v5

    if-nez v5, :cond_9

    sget-object v5, Ls1/a/a/a/v0/m/l1/d;->a:Ls1/a/a/a/v0/m/l1/d;

    invoke-virtual {v0}, Ls1/a/a/a/v0/a/g;->u()Ls1/a/a/a/v0/m/l0;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ls1/a/a/a/v0/m/l1/d;->a(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "Number"

    .line 36
    invoke-virtual {v0, v6}, Ls1/a/a/a/v0/a/g;->j(Ljava/lang/String;)Ls1/a/a/a/v0/b/e;

    move-result-object v6

    .line 37
    invoke-interface {v6}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ls1/a/a/a/v0/m/l1/d;->a(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v0}, Ls1/a/a/a/v0/a/g;->f()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ls1/a/a/a/v0/m/l1/d;->a(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Ls1/a/a/a/v0/a/n;->e:Ls1/a/a/a/v0/a/n;

    invoke-static {v4}, Ls1/a/a/a/v0/a/n;->a(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move v3, v12

    :cond_9
    :goto_4
    if-eqz v3, :cond_a

    .line 38
    iget-object v0, v1, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 39
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 40
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 41
    new-instance v3, Ls1/a/a/a/v0/d/a/d0/n/l;

    invoke-direct {v3, v1, p1, v2}, Ls1/a/a/a/v0/d/a/d0/n/l;-><init>(Ls1/a/a/a/v0/d/a/d0/n/k;Ls1/a/a/a/v0/d/a/f0/n;Ls1/a/a/a/v0/b/h1/e0;)V

    invoke-interface {v0, v3}, Ls1/a/a/a/v0/l/m;->g(Ls1/z/b/a;)Ls1/a/a/a/v0/l/j;

    move-result-object p1

    .line 42
    invoke-virtual {v2, p1}, Ls1/a/a/a/v0/b/h1/p0;->N0(Ls1/a/a/a/v0/l/j;)V

    .line 43
    :cond_a
    iget-object p1, v1, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 44
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 45
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->g:Ls1/a/a/a/v0/d/a/b0/g;

    .line 46
    check-cast p1, Ls1/a/a/a/v0/d/a/b0/g$a;

    .line 47
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v2

    goto :goto_5

    :cond_b
    const/16 p1, 0x3c

    .line 48
    invoke-static {p1}, Ls1/a/a/a/v0/j/g;->a(I)V

    throw v0

    :cond_c
    move-object p1, v0

    :goto_5
    return-object p1
.end method
