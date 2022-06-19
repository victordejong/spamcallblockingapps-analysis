.class public final Ls1/a/a/a/c0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/reflect/Field;",
        "Ls1/a/a/a/u0/i<",
        "+",
        "Ljava/lang/reflect/Field;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/z$a;

.field public final synthetic c:Z

.field public final synthetic d:Ls1/a/a/a/b0;

.field public final synthetic e:Ls1/a/a/a/a0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/z$a;ZLs1/a/a/a/b0;Ls1/a/a/a/a0;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/c0;->b:Ls1/a/a/a/z$a;

    iput-boolean p2, p0, Ls1/a/a/a/c0;->c:Z

    iput-object p3, p0, Ls1/a/a/a/c0;->d:Ls1/a/a/a/b0;

    iput-object p4, p0, Ls1/a/a/a/c0;->e:Ls1/a/a/a/a0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Field;)Ls1/a/a/a/u0/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ls1/a/a/a/u0/i<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    const-string v0, "field"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/c0;->b:Ls1/a/a/a/z$a;

    invoke-virtual {v0}, Ls1/a/a/a/z$a;->j()Ls1/a/a/a/z;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/z;->j()Ls1/a/a/a/v0/b/k0;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a1;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    const-string v2, "containingDeclaration"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Ls1/a/a/a/v0/j/g;->p(Ls1/a/a/a/v0/b/k;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Ls1/a/a/a/v0/b/k;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    .line 5
    sget-object v2, Ls1/a/a/a/v0/b/f;->b:Ls1/a/a/a/v0/b/f;

    invoke-static {v1, v2}, Ls1/a/a/a/v0/j/g;->s(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 6
    invoke-static {v1}, Ls1/a/a/a/v0/j/g;->m(Ls1/a/a/a/v0/b/k;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    :cond_1
    instance-of v1, v0, Ls1/a/a/a/v0/k/b/g0/j;

    if-eqz v1, :cond_2

    check-cast v0, Ls1/a/a/a/v0/k/b/g0/j;

    .line 8
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/j;->A:Ls1/a/a/a/v0/e/n;

    .line 9
    invoke-static {v0}, Ls1/a/a/a/v0/e/a0/b/h;->d(Ls1/a/a/a/v0/e/n;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    :cond_3
    :goto_1
    if-nez v3, :cond_a

    .line 10
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    iget-object v0, p0, Ls1/a/a/a/c0;->e:Ls1/a/a/a/a0;

    invoke-virtual {v0}, Ls1/a/a/a/a0;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12
    iget-boolean v0, p0, Ls1/a/a/a/c0;->c:Z

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p0, Ls1/a/a/a/c0;->b:Ls1/a/a/a/z$a;

    invoke-virtual {v0}, Ls1/a/a/a/z$a;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ls1/a/a/a/u0/i$e$b;

    invoke-direct {v0, p1}, Ls1/a/a/a/u0/i$e$b;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_3

    .line 14
    :cond_5
    new-instance v0, Ls1/a/a/a/u0/i$e$d;

    invoke-direct {v0, p1}, Ls1/a/a/a/u0/i$e$d;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_3

    .line 15
    :cond_6
    iget-object v0, p0, Ls1/a/a/a/c0;->b:Ls1/a/a/a/z$a;

    invoke-virtual {v0}, Ls1/a/a/a/z$a;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ls1/a/a/a/u0/i$f$b;

    iget-object v1, p0, Ls1/a/a/a/c0;->d:Ls1/a/a/a/b0;

    invoke-virtual {v1}, Ls1/a/a/a/b0;->a()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Ls1/a/a/a/u0/i$f$b;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_3

    .line 16
    :cond_7
    new-instance v0, Ls1/a/a/a/u0/i$f$d;

    iget-object v1, p0, Ls1/a/a/a/c0;->d:Ls1/a/a/a/b0;

    invoke-virtual {v1}, Ls1/a/a/a/b0;->a()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Ls1/a/a/a/u0/i$f$d;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_3

    .line 17
    :cond_8
    iget-boolean v0, p0, Ls1/a/a/a/c0;->c:Z

    if-eqz v0, :cond_9

    new-instance v0, Ls1/a/a/a/u0/i$e$e;

    invoke-direct {v0, p1}, Ls1/a/a/a/u0/i$e$e;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3

    .line 18
    :cond_9
    new-instance v0, Ls1/a/a/a/u0/i$f$e;

    iget-object v1, p0, Ls1/a/a/a/c0;->d:Ls1/a/a/a/b0;

    invoke-virtual {v1}, Ls1/a/a/a/b0;->a()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Ls1/a/a/a/u0/i$f$e;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_3

    .line 19
    :cond_a
    :goto_2
    iget-boolean v0, p0, Ls1/a/a/a/c0;->c:Z

    if-eqz v0, :cond_c

    .line 20
    iget-object v0, p0, Ls1/a/a/a/c0;->b:Ls1/a/a/a/z$a;

    invoke-virtual {v0}, Ls1/a/a/a/z$a;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ls1/a/a/a/u0/i$e$a;

    iget-object v1, p0, Ls1/a/a/a/c0;->b:Ls1/a/a/a/z$a;

    invoke-static {v1}, Le/q/f/a/d/a;->H0(Ls1/a/a/a/z$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ls1/a/a/a/u0/i$e$a;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto :goto_3

    .line 21
    :cond_b
    new-instance v0, Ls1/a/a/a/u0/i$e$c;

    invoke-direct {v0, p1}, Ls1/a/a/a/u0/i$e$c;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3

    .line 22
    :cond_c
    iget-object v0, p0, Ls1/a/a/a/c0;->b:Ls1/a/a/a/z$a;

    invoke-virtual {v0}, Ls1/a/a/a/z$a;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ls1/a/a/a/u0/i$f$a;

    iget-object v1, p0, Ls1/a/a/a/c0;->d:Ls1/a/a/a/b0;

    invoke-virtual {v1}, Ls1/a/a/a/b0;->a()Z

    move-result v1

    iget-object v2, p0, Ls1/a/a/a/c0;->b:Ls1/a/a/a/z$a;

    invoke-static {v2}, Le/q/f/a/d/a;->H0(Ls1/a/a/a/z$a;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Ls1/a/a/a/u0/i$f$a;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    goto :goto_3

    .line 23
    :cond_d
    new-instance v0, Ls1/a/a/a/u0/i$f$c;

    iget-object v1, p0, Ls1/a/a/a/c0;->d:Ls1/a/a/a/b0;

    invoke-virtual {v1}, Ls1/a/a/a/b0;->a()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Ls1/a/a/a/u0/i$f$c;-><init>(Ljava/lang/reflect/Field;Z)V

    :goto_3
    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ls1/a/a/a/c0;->a(Ljava/lang/reflect/Field;)Ls1/a/a/a/u0/i;

    move-result-object p1

    return-object p1
.end method
