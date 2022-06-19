.class public final Ls1/a/a/a/z$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/z;-><init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ls1/a/a/a/v0/b/k0;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/z;


# direct methods
.method public constructor <init>(Ls1/a/a/a/z;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/z$e;->b:Ls1/a/a/a/z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Ls1/a/a/a/q0;->b:Ls1/a/a/a/q0;

    iget-object v0, p0, Ls1/a/a/a/z$e;->b:Ls1/a/a/a/z;

    invoke-virtual {v0}, Ls1/a/a/a/z;->j()Ls1/a/a/a/v0/b/k0;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/q0;->c(Ls1/a/a/a/v0/b/k0;)Ls1/a/a/a/f;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ls1/a/a/a/f$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 3
    check-cast v0, Ls1/a/a/a/f$c;

    .line 4
    iget-object v1, v0, Ls1/a/a/a/f$c;->b:Ls1/a/a/a/v0/b/k0;

    .line 5
    sget-object v3, Ls1/a/a/a/v0/e/a0/b/h;->b:Ls1/a/a/a/v0/e/a0/b/h;

    .line 6
    iget-object v4, v0, Ls1/a/a/a/f$c;->c:Ls1/a/a/a/v0/e/n;

    .line 7
    iget-object v5, v0, Ls1/a/a/a/f$c;->e:Ls1/a/a/a/v0/e/z/c;

    .line 8
    iget-object v6, v0, Ls1/a/a/a/f$c;->f:Ls1/a/a/a/v0/e/z/e;

    const/4 v7, 0x1

    .line 9
    invoke-virtual {v3, v4, v5, v6, v7}, Ls1/a/a/a/v0/e/a0/b/h;->b(Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Z)Ls1/a/a/a/v0/e/a0/b/e$a;

    move-result-object v3

    if-eqz v3, :cond_d

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    .line 10
    invoke-interface {v1}, Ls1/a/a/a/v0/b/b;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v5

    sget-object v6, Ls1/a/a/a/v0/b/b$a;->b:Ls1/a/a/a/v0/b/b$a;

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 11
    :cond_0
    invoke-interface {v1}, Ls1/a/a/a/v0/b/a1;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 12
    invoke-static {v5}, Ls1/a/a/a/v0/j/g;->p(Ls1/a/a/a/v0/b/k;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ls1/a/a/a/v0/b/k;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v6

    invoke-static {v6}, Ls1/a/a/a/v0/j/g;->o(Ls1/a/a/a/v0/b/k;)Z

    move-result v6

    if-eqz v6, :cond_1

    check-cast v5, Ls1/a/a/a/v0/b/e;

    .line 13
    sget-object v6, Ls1/a/a/a/v0/a/c;->b:Ls1/a/a/a/v0/a/c;

    invoke-static {v6, v5}, Le/q/f/a/d/a;->B1(Ls1/a/a/a/v0/a/c;Ls1/a/a/a/v0/b/e;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-eqz v5, :cond_2

    goto :goto_3

    .line 14
    :cond_2
    invoke-interface {v1}, Ls1/a/a/a/v0/b/a1;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v5

    invoke-static {v5}, Ls1/a/a/a/v0/j/g;->p(Ls1/a/a/a/v0/b/k;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15
    invoke-interface {v1}, Ls1/a/a/a/v0/b/k0;->S()Ls1/a/a/a/v0/b/s;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 16
    invoke-interface {v5}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v5

    sget-object v6, Ls1/a/a/a/v0/d/a/u;->a:Ls1/a/a/a/v0/f/b;

    invoke-interface {v5, v6}, Ls1/a/a/a/v0/b/f1/h;->Y1(Ls1/a/a/a/v0/f/b;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v7

    goto :goto_1

    .line 17
    :cond_3
    invoke-interface {v1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v5

    sget-object v6, Ls1/a/a/a/v0/d/a/u;->a:Ls1/a/a/a/v0/f/b;

    invoke-interface {v5, v6}, Ls1/a/a/a/v0/b/f1/h;->Y1(Ls1/a/a/a/v0/f/b;)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v4

    :goto_3
    if-nez v7, :cond_7

    .line 18
    iget-object v0, v0, Ls1/a/a/a/f$c;->c:Ls1/a/a/a/v0/e/n;

    .line 19
    invoke-static {v0}, Ls1/a/a/a/v0/e/a0/b/h;->d(Ls1/a/a/a/v0/e/n;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 20
    :cond_5
    invoke-interface {v1}, Ls1/a/a/a/v0/b/a1;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v0

    .line 21
    instance-of v1, v0, Ls1/a/a/a/v0/b/e;

    if-eqz v1, :cond_6

    check-cast v0, Ls1/a/a/a/v0/b/e;

    invoke-static {v0}, Ls1/a/a/a/s0;->g(Ls1/a/a/a/v0/b/e;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    .line 22
    :cond_6
    iget-object v0, p0, Ls1/a/a/a/z$e;->b:Ls1/a/a/a/z;

    .line 23
    iget-object v0, v0, Ls1/a/a/a/z;->d:Ls1/a/a/a/n;

    .line 24
    invoke-interface {v0}, Ls1/z/c/c;->b()Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    .line 25
    :cond_7
    :goto_4
    iget-object v0, p0, Ls1/a/a/a/z$e;->b:Ls1/a/a/a/z;

    .line 26
    iget-object v0, v0, Ls1/a/a/a/z;->d:Ls1/a/a/a/n;

    .line 27
    invoke-interface {v0}, Ls1/z/c/c;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_d

    .line 28
    :try_start_0
    iget-object v1, v3, Ls1/a/a/a/v0/e/a0/b/e$a;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 30
    :cond_8
    invoke-static {v7}, Le/q/f/a/d/a;->b(I)V

    throw v2

    .line 31
    :cond_9
    invoke-static {v4}, Le/q/f/a/d/a;->b(I)V

    throw v2

    .line 32
    :cond_a
    instance-of v1, v0, Ls1/a/a/a/f$a;

    if-eqz v1, :cond_b

    check-cast v0, Ls1/a/a/a/f$a;

    .line 33
    iget-object v2, v0, Ls1/a/a/a/f$a;->a:Ljava/lang/reflect/Field;

    goto :goto_6

    .line 34
    :cond_b
    instance-of v1, v0, Ls1/a/a/a/f$b;

    if-eqz v1, :cond_c

    goto :goto_6

    .line 35
    :cond_c
    instance-of v0, v0, Ls1/a/a/a/f$d;

    if-eqz v0, :cond_e

    :catch_0
    :cond_d
    :goto_6
    return-object v2

    :cond_e
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method
