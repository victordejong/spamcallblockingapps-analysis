.class public Le/k/a/c/d0/z/n;
.super Le/k/a/c/d0/z/b0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/b0<",
        "Ljava/lang/Object;",
        ">;",
        "Le/k/a/c/d0/i;"
    }
.end annotation


# instance fields
.field public final d:Le/k/a/c/i;

.field public final e:Z

.field public final f:Le/k/a/c/g0/j;

.field public final g:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "*>;"
        }
    .end annotation
.end field

.field public final h:Le/k/a/c/d0/w;

.field public final i:[Le/k/a/c/d0/u;

.field public transient j:Le/k/a/c/d0/y/y;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/z/n;Le/k/a/c/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/z/n;",
            "Le/k/a/c/j<",
            "*>;)V"
        }
    .end annotation

    .line 17
    iget-object v0, p1, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/b0;-><init>(Ljava/lang/Class;)V

    .line 18
    iget-object v0, p1, Le/k/a/c/d0/z/n;->d:Le/k/a/c/i;

    iput-object v0, p0, Le/k/a/c/d0/z/n;->d:Le/k/a/c/i;

    .line 19
    iget-object v0, p1, Le/k/a/c/d0/z/n;->f:Le/k/a/c/g0/j;

    iput-object v0, p0, Le/k/a/c/d0/z/n;->f:Le/k/a/c/g0/j;

    .line 20
    iget-boolean v0, p1, Le/k/a/c/d0/z/n;->e:Z

    iput-boolean v0, p0, Le/k/a/c/d0/z/n;->e:Z

    .line 21
    iget-object v0, p1, Le/k/a/c/d0/z/n;->h:Le/k/a/c/d0/w;

    iput-object v0, p0, Le/k/a/c/d0/z/n;->h:Le/k/a/c/d0/w;

    .line 22
    iget-object p1, p1, Le/k/a/c/d0/z/n;->i:[Le/k/a/c/d0/u;

    iput-object p1, p0, Le/k/a/c/d0/z/n;->i:[Le/k/a/c/d0/u;

    .line 23
    iput-object p2, p0, Le/k/a/c/d0/z/n;->g:Le/k/a/c/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Le/k/a/c/g0/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/g0/j;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Le/k/a/c/d0/z/b0;-><init>(Ljava/lang/Class;)V

    .line 11
    iput-object p2, p0, Le/k/a/c/d0/z/n;->f:Le/k/a/c/g0/j;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Le/k/a/c/d0/z/n;->e:Z

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Le/k/a/c/d0/z/n;->d:Le/k/a/c/i;

    .line 14
    iput-object p1, p0, Le/k/a/c/d0/z/n;->g:Le/k/a/c/j;

    .line 15
    iput-object p1, p0, Le/k/a/c/d0/z/n;->h:Le/k/a/c/d0/w;

    .line 16
    iput-object p1, p0, Le/k/a/c/d0/z/n;->i:[Le/k/a/c/d0/u;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Le/k/a/c/g0/j;Le/k/a/c/i;Le/k/a/c/d0/w;[Le/k/a/c/d0/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/g0/j;",
            "Le/k/a/c/i;",
            "Le/k/a/c/d0/w;",
            "[",
            "Le/k/a/c/d0/u;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/d0/z/b0;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/d0/z/n;->f:Le/k/a/c/g0/j;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/k/a/c/d0/z/n;->e:Z

    .line 4
    const-class p2, Ljava/lang/String;

    .line 5
    iget-object v0, p3, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    move-object p3, p2

    .line 6
    :cond_1
    iput-object p3, p0, Le/k/a/c/d0/z/n;->d:Le/k/a/c/i;

    .line 7
    iput-object p2, p0, Le/k/a/c/d0/z/n;->g:Le/k/a/c/j;

    .line 8
    iput-object p4, p0, Le/k/a/c/d0/z/n;->h:Le/k/a/c/d0/w;

    .line 9
    iput-object p5, p0, Le/k/a/c/d0/z/n;->i:[Le/k/a/c/d0/u;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/g;Le/k/a/c/d;)Le/k/a/c/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/j<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/n;->g:Le/k/a/c/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/k/a/c/d0/z/n;->d:Le/k/a/c/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/k/a/c/d0/z/n;->i:[Le/k/a/c/d0/u;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le/k/a/c/d0/z/n;

    .line 3
    invoke-virtual {p1, v0, p2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Le/k/a/c/d0/z/n;-><init>(Le/k/a/c/d0/z/n;Le/k/a/c/j;)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/n;->g:Le/k/a/c/j;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_6

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/k/a/c/d0/z/n;->e:Z

    if-eqz v0, :cond_11

    .line 4
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    .line 5
    iget-object v4, p0, Le/k/a/c/d0/z/n;->i:[Le/k/a/c/d0/u;

    if-eqz v4, :cond_c

    .line 6
    invoke-virtual {p1}, Le/k/a/b/j;->Y1()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v0

    :goto_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Le/k/a/c/n0/g;->t(Le/k/a/c/i;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v3, p0, Le/k/a/c/d0/z/n;->f:Le/k/a/c/g0/j;

    aput-object v3, v4, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "Input mismatch reading Enum %s: properties-based `@JsonCreator` (%s) expects JSON Object (JsonToken.START_OBJECT), got JsonToken.%s"

    .line 10
    invoke-virtual {p2, v0, p1, v4}, Le/k/a/c/g;->Z(Le/k/a/c/i;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    .line 11
    :cond_2
    iget-object v0, p0, Le/k/a/c/d0/z/n;->j:Le/k/a/c/d0/y/y;

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Le/k/a/c/d0/z/n;->h:Le/k/a/c/d0/w;

    iget-object v4, p0, Le/k/a/c/d0/z/n;->i:[Le/k/a/c/d0/u;

    sget-object v5, Le/k/a/c/p;->x:Le/k/a/c/p;

    .line 13
    invoke-virtual {p2, v5}, Le/k/a/c/g;->S(Le/k/a/c/p;)Z

    move-result v5

    .line 14
    invoke-static {p2, v0, v4, v5}, Le/k/a/c/d0/y/y;->b(Le/k/a/c/g;Le/k/a/c/d0/w;[Le/k/a/c/d0/u;Z)Le/k/a/c/d0/y/y;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/d0/z/n;->j:Le/k/a/c/d0/y/y;

    .line 15
    :cond_3
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 16
    iget-object v0, p0, Le/k/a/c/d0/z/n;->j:Le/k/a/c/d0/y/y;

    .line 17
    new-instance v4, Le/k/a/c/d0/y/b0;

    iget v5, v0, Le/k/a/c/d0/y/y;->a:I

    invoke-direct {v4, p1, p2, v5, v1}, Le/k/a/c/d0/y/b0;-><init>(Le/k/a/b/j;Le/k/a/c/g;ILe/k/a/c/d0/y/v;)V

    .line 18
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v1

    .line 19
    :goto_1
    sget-object v5, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v1, v5, :cond_b

    .line 20
    invoke-virtual {p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 22
    invoke-virtual {v0, v1}, Le/k/a/c/d0/y/y;->c(Ljava/lang/String;)Le/k/a/c/d0/u;

    move-result-object v5

    .line 23
    invoke-virtual {v4, v1}, Le/k/a/c/d0/y/b0;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v5, :cond_a

    .line 24
    :try_start_0
    invoke-virtual {v5, p1, p2}, Le/k/a/c/d0/u;->h(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    invoke-virtual {v4, v5, v1}, Le/k/a/c/d0/y/b0;->b(Le/k/a/c/d0/u;Ljava/lang/Object;)Z

    goto :goto_4

    :catch_0
    move-exception p1

    .line 26
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 27
    iget-object v1, v5, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 28
    iget-object v1, v1, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Le/k/a/c/n0/g;->s(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 30
    invoke-static {p1}, Le/k/a/c/n0/g;->I(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    if-eqz p2, :cond_6

    .line 31
    sget-object v4, Le/k/a/c/h;->r:Le/k/a/c/h;

    invoke-virtual {p2, v4}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    .line 32
    :cond_6
    :goto_2
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_8

    if-eqz v2, :cond_7

    .line 33
    instance-of p2, p1, Le/k/a/b/k;

    if-eqz p2, :cond_7

    goto :goto_3

    .line 34
    :cond_7
    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_8
    if-nez v2, :cond_9

    .line 35
    invoke-static {p1}, Le/k/a/c/n0/g;->K(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 36
    :cond_9
    :goto_3
    invoke-static {p1, v0, v1}, Le/k/a/c/k;->j(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Le/k/a/c/k;

    move-result-object p1

    throw p1

    .line 37
    :cond_a
    :goto_4
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v1

    goto :goto_1

    .line 38
    :cond_b
    invoke-virtual {v0, p2, v4}, Le/k/a/c/d0/y/y;->a(Le/k/a/c/g;Le/k/a/c/d0/y/b0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 39
    :cond_c
    sget-object v4, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-eq v0, v4, :cond_f

    sget-object v4, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v4, :cond_d

    goto :goto_5

    .line 40
    :cond_d
    sget-object v4, Le/k/a/b/m;->q:Le/k/a/b/m;

    if-ne v0, v4, :cond_e

    .line 41
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object p1

    goto :goto_6

    .line 42
    :cond_e
    invoke-virtual {p1}, Le/k/a/b/j;->F1()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 43
    :cond_f
    :goto_5
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 44
    :goto_6
    :try_start_1
    iget-object v0, p0, Le/k/a/c/d0/z/n;->f:Le/k/a/c/g0/j;

    iget-object v4, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 45
    iget-object v0, v0, Le/k/a/c/g0/j;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    .line 46
    invoke-static {v0}, Le/k/a/c/n0/g;->s(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Le/k/a/c/n0/g;->J(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 47
    sget-object v2, Le/k/a/c/h;->z:Le/k/a/c/h;

    invoke-virtual {p2, v2}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v2

    if-eqz v2, :cond_10

    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_10

    return-object v1

    .line 48
    :cond_10
    iget-object v2, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v2, p1, v0}, Le/k/a/c/g;->D(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    throw v1

    .line 49
    :cond_11
    invoke-virtual {p1}, Le/k/a/b/j;->w2()Le/k/a/b/j;

    .line 50
    :try_start_2
    iget-object p1, p0, Le/k/a/c/d0/z/n;->f:Le/k/a/c/g0/j;

    .line 51
    iget-object p1, p1, Le/k/a/c/g0/j;->d:Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    .line 52
    invoke-static {p1}, Le/k/a/c/n0/g;->s(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Le/k/a/c/n0/g;->J(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 53
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0, v1, p1}, Le/k/a/c/g;->D(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    throw v1
.end method

.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/n;->g:Le/k/a/c/j;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/n;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j0/e;->b(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i0()Le/k/a/c/d0/w;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/n;->h:Le/k/a/c/d0/w;

    return-object v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->i:Le/k/a/c/m0/f;

    return-object v0
.end method

.method public p(Le/k/a/c/f;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method
