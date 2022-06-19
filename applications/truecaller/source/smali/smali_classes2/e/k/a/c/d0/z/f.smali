.class public abstract Le/k/a/c/d0/z/f;
.super Le/k/a/c/d0/z/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/k/a/c/l;",
        ">",
        "Le/k/a/c/d0/z/b0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/d0/z/b0;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/d0/z/f;->d:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j0/e;->b(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final m0(Le/k/a/b/j;Le/k/a/c/k0/l;)Le/k/a/c/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->p0()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4
    const-class v1, [B

    if-ne v0, v1, :cond_2

    .line 5
    check-cast p1, [B

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    array-length p2, p1

    if-nez p2, :cond_1

    .line 8
    sget-object p1, Le/k/a/c/k0/d;->b:Le/k/a/c/k0/d;

    goto :goto_0

    .line 9
    :cond_1
    new-instance p2, Le/k/a/c/k0/d;

    invoke-direct {p2, p1}, Le/k/a/c/k0/d;-><init>([B)V

    move-object p1, p2

    :goto_0
    return-object p1

    .line 10
    :cond_2
    instance-of v0, p1, Le/k/a/c/n0/w;

    if-eqz v0, :cond_3

    .line 11
    check-cast p1, Le/k/a/c/n0/w;

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance p2, Le/k/a/c/k0/t;

    invoke-direct {p2, p1}, Le/k/a/c/k0/t;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 14
    :cond_3
    instance-of v0, p1, Le/k/a/c/l;

    if-eqz v0, :cond_4

    .line 15
    check-cast p1, Le/k/a/c/l;

    return-object p1

    .line 16
    :cond_4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p2, Le/k/a/c/k0/t;

    invoke-direct {p2, p1}, Le/k/a/c/k0/t;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final n0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/j$b;->b:Le/k/a/b/j$b;

    iget p2, p2, Le/k/a/c/g;->d:I

    .line 2
    sget v1, Le/k/a/c/d0/z/b0;->c:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_2

    .line 3
    sget-object v1, Le/k/a/c/h;->d:Le/k/a/c/h;

    invoke-virtual {v1, p2}, Le/k/a/c/h;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object p2, Le/k/a/b/j$b;->c:Le/k/a/b/j$b;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Le/k/a/c/h;->e:Le/k/a/c/h;

    invoke-virtual {v1, p2}, Le/k/a/c/h;->d(I)Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p2, v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->D0()Le/k/a/b/j$b;

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->D0()Le/k/a/b/j$b;

    move-result-object p2

    .line 8
    :goto_0
    sget-object v1, Le/k/a/b/j$b;->a:Le/k/a/b/j$b;

    if-ne p2, v1, :cond_5

    .line 9
    invoke-virtual {p1}, Le/k/a/b/j;->z0()I

    move-result p1

    .line 10
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0xa

    if-gt p1, p2, :cond_4

    const/4 p2, -0x1

    if-ge p1, p2, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    sget-object p3, Le/k/a/c/k0/j;->b:[Le/k/a/c/k0/j;

    sub-int/2addr p1, p2

    aget-object p1, p3, p1

    goto :goto_2

    .line 12
    :cond_4
    :goto_1
    new-instance p2, Le/k/a/c/k0/j;

    invoke-direct {p2, p1}, Le/k/a/c/k0/j;-><init>(I)V

    move-object p1, p2

    :goto_2
    return-object p1

    :cond_5
    if-ne p2, v0, :cond_6

    .line 13
    invoke-virtual {p1}, Le/k/a/b/j;->B0()J

    move-result-wide p1

    .line 14
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance p3, Le/k/a/c/k0/n;

    invoke-direct {p3, p1, p2}, Le/k/a/c/k0/n;-><init>(J)V

    return-object p3

    .line 16
    :cond_6
    invoke-virtual {p1}, Le/k/a/b/j;->E()Ljava/math/BigInteger;

    move-result-object p1

    .line 17
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_7

    .line 18
    sget-object p1, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    goto :goto_3

    .line 19
    :cond_7
    new-instance p2, Le/k/a/c/k0/c;

    invoke-direct {p2, p1}, Le/k/a/c/k0/c;-><init>(Ljava/math/BigInteger;)V

    move-object p1, p2

    :goto_3
    return-object p1
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->e:Le/k/a/c/m0/f;

    return-object v0
.end method

.method public o0(Le/k/a/c/g;Le/k/a/c/k0/l;Ljava/lang/String;Le/k/a/c/k0/s;Le/k/a/c/l;Le/k/a/c/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    sget-object v1, Le/k/a/c/h;->k:Le/k/a/c/h;

    invoke-virtual {p1, v1}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2
    sget-object v1, Le/k/a/b/q;->c:Le/k/a/b/q;

    invoke-virtual {p1, v1}, Le/k/a/c/g;->Q(Le/k/a/b/q;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p5}, Le/k/a/c/l;->y()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    move-object p1, p5

    check-cast p1, Le/k/a/c/k0/a;

    if-nez p6, :cond_0

    .line 5
    invoke-virtual {p1}, Le/k/a/c/k0/f;->M()Le/k/a/c/k0/q;

    move-object p6, v0

    .line 6
    :cond_0
    iget-object p1, p1, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {p1, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p4, p3, p5}, Le/k/a/c/k0/s;->N(Ljava/lang/String;Le/k/a/c/l;)Le/k/a/c/l;

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p1, Le/k/a/c/k0/a;

    invoke-direct {p1, p2}, Le/k/a/c/k0/a;-><init>(Le/k/a/c/k0/l;)V

    .line 10
    iget-object p2, p1, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p6, :cond_2

    .line 11
    invoke-virtual {p1}, Le/k/a/c/k0/f;->M()Le/k/a/c/k0/q;

    move-object p6, v0

    .line 12
    :cond_2
    iget-object p2, p1, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {p2, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p4, p3, p1}, Le/k/a/c/k0/s;->N(Ljava/lang/String;Le/k/a/c/l;)Le/k/a/c/l;

    :cond_3
    :goto_0
    return-void

    .line 14
    :cond_4
    const-class p2, Le/k/a/c/l;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p3, p4, p5

    const-string p3, "Duplicate field \'%s\' for `ObjectNode`: not allowed when `DeserializationFeature.FAIL_ON_READING_DUP_TREE_KEY` enabled"

    .line 15
    invoke-virtual {p1, p3, p4}, Le/k/a/c/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 16
    iget-object p1, p1, Le/k/a/c/g;->g:Le/k/a/b/j;

    .line 17
    new-instance p4, Le/k/a/c/e0/f;

    invoke-direct {p4, p1, p3, p2}, Le/k/a/c/e0/f;-><init>(Le/k/a/b/j;Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    throw p4
.end method

.method public p(Le/k/a/c/f;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p1, p0, Le/k/a/c/d0/z/f;->d:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final p0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object p3, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 3
    invoke-virtual {p2, p3, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4
    :pswitch_0
    invoke-virtual {p0, p1, p3}, Le/k/a/c/d0/z/f;->m0(Le/k/a/b/j;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    return-object p1

    :pswitch_2
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p3, p1}, Le/k/a/c/k0/l;->a(Z)Le/k/a/c/k0/e;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p3, p1}, Le/k/a/c/k0/l;->a(Z)Le/k/a/c/k0/e;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_4
    invoke-virtual {p1}, Le/k/a/b/j;->D0()Le/k/a/b/j$b;

    move-result-object v0

    .line 9
    sget-object v1, Le/k/a/b/j$b;->f:Le/k/a/b/j$b;

    if-ne v0, v1, :cond_0

    .line 10
    invoke-virtual {p1}, Le/k/a/b/j;->k0()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p3, p1}, Le/k/a/c/k0/l;->b(Ljava/math/BigDecimal;)Le/k/a/c/k0/v;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_0
    sget-object v1, Le/k/a/c/h;->c:Le/k/a/c/h;

    invoke-virtual {p2, v1}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    invoke-virtual {p1}, Le/k/a/b/j;->Z1()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {p1}, Le/k/a/b/j;->n0()D

    move-result-wide p1

    .line 14
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance p3, Le/k/a/c/k0/h;

    invoke-direct {p3, p1, p2}, Le/k/a/c/k0/h;-><init>(D)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->k0()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p3, p1}, Le/k/a/c/k0/l;->b(Ljava/math/BigDecimal;)Le/k/a/c/k0/v;

    move-result-object p1

    goto :goto_1

    .line 17
    :cond_2
    sget-object p2, Le/k/a/b/j$b;->d:Le/k/a/b/j$b;

    if-ne v0, p2, :cond_3

    .line 18
    invoke-virtual {p1}, Le/k/a/b/j;->t0()F

    move-result p1

    .line 19
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p2, Le/k/a/c/k0/i;

    invoke-direct {p2, p1}, Le/k/a/c/k0/i;-><init>(F)V

    move-object p1, p2

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p1}, Le/k/a/b/j;->n0()D

    move-result-wide p1

    .line 22
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance p3, Le/k/a/c/k0/h;

    invoke-direct {p3, p1, p2}, Le/k/a/c/k0/h;-><init>(D)V

    :goto_0
    move-object p1, p3

    :goto_1
    return-object p1

    .line 24
    :pswitch_5
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->n0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_6
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p1}, Le/k/a/c/k0/u;->M(Ljava/lang/String;)Le/k/a/c/k0/u;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_7
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->s0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/s;

    move-result-object p1

    return-object p1

    :goto_2
    const/4 p1, 0x0

    .line 29
    throw p1

    .line 30
    :cond_4
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance p1, Le/k/a/c/k0/s;

    invoke-direct {p1, p3}, Le/k/a/c/k0/s;-><init>(Le/k/a/c/k0/l;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Le/k/a/c/k0/a;

    invoke-direct {v0, p3}, Le/k/a/c/k0/a;-><init>(Le/k/a/c/k0/l;)V

    .line 3
    :goto_0
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget v1, v1, Le/k/a/b/m;->d:I

    packed-switch v1, :pswitch_data_0

    .line 5
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->p0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/k/a/c/k0/a;->N(Le/k/a/c/l;)Le/k/a/c/k0/a;

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p0, p1, p3}, Le/k/a/c/d0/z/f;->m0(Le/k/a/b/j;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object v1

    .line 7
    iget-object v2, v0, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :pswitch_2
    sget-object v1, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    .line 9
    iget-object v2, v0, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p3, v1}, Le/k/a/c/k0/l;->a(Z)Le/k/a/c/k0/e;

    move-result-object v1

    .line 11
    iget-object v2, v0, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p3, v1}, Le/k/a/c/k0/l;->a(Z)Le/k/a/c/k0/e;

    move-result-object v1

    .line 13
    iget-object v2, v0, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :pswitch_5
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->n0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/k/a/c/k0/a;->N(Le/k/a/c/l;)Le/k/a/c/k0/a;

    goto :goto_0

    .line 15
    :pswitch_6
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, Le/k/a/c/k0/u;->M(Ljava/lang/String;)Le/k/a/c/k0/u;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Le/k/a/c/k0/a;->N(Le/k/a/c/l;)Le/k/a/c/k0/a;

    goto :goto_0

    :pswitch_7
    return-object v0

    .line 18
    :pswitch_8
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->q0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/a;

    move-result-object v1

    .line 19
    iget-object v2, v0, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :pswitch_9
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->r0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/s;

    move-result-object v1

    .line 21
    iget-object v2, v0, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final r0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/s;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v7, Le/k/a/c/k0/s;

    invoke-direct {v7, p3}, Le/k/a/c/k0/s;-><init>(Le/k/a/c/k0/l;)V

    .line 3
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_6

    .line 4
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Le/k/a/b/m;->i:Le/k/a/b/m;

    .line 6
    :cond_0
    iget v0, v0, Le/k/a/b/m;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->p0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object v0

    goto :goto_1

    .line 8
    :pswitch_0
    invoke-virtual {p0, p1, p3}, Le/k/a/c/d0/z/f;->m0(Le/k/a/b/j;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object v0

    goto :goto_1

    .line 9
    :pswitch_1
    sget-object v0, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p3, v0}, Le/k/a/c/k0/l;->a(Z)Le/k/a/c/k0/e;

    move-result-object v0

    goto :goto_1

    .line 11
    :pswitch_3
    invoke-virtual {p3, v1}, Le/k/a/c/k0/l;->a(Z)Le/k/a/c/k0/e;

    move-result-object v0

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->n0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object v0

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Le/k/a/c/k0/u;->M(Ljava/lang/String;)Le/k/a/c/k0/u;

    move-result-object v0

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->q0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/a;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->r0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/s;

    move-result-object v0

    :goto_1
    move-object v6, v0

    .line 17
    invoke-virtual {v7, v3, v6}, Le/k/a/c/k0/s;->N(Ljava/lang/String;Le/k/a/c/l;)Le/k/a/c/l;

    move-result-object v5

    if-eqz v5, :cond_5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, v7

    .line 18
    invoke-virtual/range {v0 .. v6}, Le/k/a/c/d0/z/f;->o0(Le/k/a/c/g;Le/k/a/c/k0/l;Ljava/lang/String;Le/k/a/c/k0/s;Le/k/a/c/l;Le/k/a/c/l;)V

    .line 19
    :cond_5
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_6
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/s;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v7, Le/k/a/c/k0/s;

    invoke-direct {v7, p3}, Le/k/a/c/k0/s;-><init>(Le/k/a/c/k0/l;)V

    .line 3
    invoke-virtual {p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_6

    .line 4
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Le/k/a/b/m;->i:Le/k/a/b/m;

    .line 6
    :cond_0
    iget v0, v0, Le/k/a/b/m;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->p0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object v0

    goto :goto_1

    .line 8
    :pswitch_0
    invoke-virtual {p0, p1, p3}, Le/k/a/c/d0/z/f;->m0(Le/k/a/b/j;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object v0

    goto :goto_1

    .line 9
    :pswitch_1
    sget-object v0, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p3, v0}, Le/k/a/c/k0/l;->a(Z)Le/k/a/c/k0/e;

    move-result-object v0

    goto :goto_1

    .line 11
    :pswitch_3
    invoke-virtual {p3, v1}, Le/k/a/c/k0/l;->a(Z)Le/k/a/c/k0/e;

    move-result-object v0

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->n0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object v0

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Le/k/a/c/k0/u;->M(Ljava/lang/String;)Le/k/a/c/k0/u;

    move-result-object v0

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->q0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/a;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->r0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/s;

    move-result-object v0

    :goto_1
    move-object v6, v0

    .line 17
    invoke-virtual {v7, v3, v6}, Le/k/a/c/k0/s;->N(Ljava/lang/String;Le/k/a/c/l;)Le/k/a/c/l;

    move-result-object v5

    if-eqz v5, :cond_5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, v7

    .line 18
    invoke-virtual/range {v0 .. v6}, Le/k/a/c/d0/z/f;->o0(Le/k/a/c/g;Le/k/a/c/k0/l;Ljava/lang/String;Le/k/a/c/k0/s;Le/k/a/c/l;Le/k/a/c/l;)V

    .line 19
    :cond_5
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_6
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/a;)Le/k/a/c/l;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 2
    iget-object v0, v0, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    .line 3
    :goto_0
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v1

    .line 4
    iget v1, v1, Le/k/a/b/m;->d:I

    packed-switch v1, :pswitch_data_0

    .line 5
    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/f;->p0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object v1

    invoke-virtual {p3, v1}, Le/k/a/c/k0/a;->N(Le/k/a/c/l;)Le/k/a/c/k0/a;

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p0, p1, v0}, Le/k/a/c/d0/z/f;->m0(Le/k/a/b/j;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object v1

    .line 7
    iget-object v2, p3, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :pswitch_2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    .line 9
    iget-object v2, p3, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Le/k/a/c/k0/l;->a(Z)Le/k/a/c/k0/e;

    move-result-object v1

    .line 11
    iget-object v2, p3, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Le/k/a/c/k0/l;->a(Z)Le/k/a/c/k0/e;

    move-result-object v1

    .line 13
    iget-object v2, p3, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :pswitch_5
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/f;->n0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object v1

    invoke-virtual {p3, v1}, Le/k/a/c/k0/a;->N(Le/k/a/c/l;)Le/k/a/c/k0/a;

    goto :goto_0

    .line 15
    :pswitch_6
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {v1}, Le/k/a/c/k0/u;->M(Ljava/lang/String;)Le/k/a/c/k0/u;

    move-result-object v1

    .line 18
    invoke-virtual {p3, v1}, Le/k/a/c/k0/a;->N(Le/k/a/c/l;)Le/k/a/c/k0/a;

    goto :goto_0

    :pswitch_7
    return-object p3

    .line 19
    :pswitch_8
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/f;->q0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/a;

    move-result-object v1

    .line 20
    iget-object v2, p3, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :pswitch_9
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/f;->r0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/s;

    move-result-object v1

    .line 22
    iget-object v2, p3, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final u0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/s;)Le/k/a/c/l;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    invoke-virtual {p1}, Le/k/a/b/j;->Y1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    invoke-virtual {p1, v1}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/c/l;

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_c

    .line 6
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v2

    .line 7
    iget-object v3, p3, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/l;

    if-eqz v3, :cond_4

    .line 8
    instance-of v4, v3, Le/k/a/c/k0/s;

    if-eqz v4, :cond_3

    .line 9
    sget-object v4, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-ne v2, v4, :cond_4

    .line 10
    move-object v2, v3

    check-cast v2, Le/k/a/c/k0/s;

    invoke-virtual {p0, p1, p2, v2}, Le/k/a/c/d0/z/f;->u0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/s;)Le/k/a/c/l;

    move-result-object v2

    if-eq v2, v3, :cond_b

    if-nez v2, :cond_2

    .line 11
    invoke-virtual {p3}, Le/k/a/c/k0/f;->M()Le/k/a/c/k0/q;

    move-object v2, v0

    .line 12
    :cond_2
    iget-object v3, p3, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 13
    :cond_3
    instance-of v4, v3, Le/k/a/c/k0/a;

    if-eqz v4, :cond_4

    .line 14
    sget-object v4, Le/k/a/b/m;->l:Le/k/a/b/m;

    if-ne v2, v4, :cond_4

    .line 15
    move-object v2, v3

    check-cast v2, Le/k/a/c/k0/a;

    invoke-virtual {p0, p1, p2, v2}, Le/k/a/c/d0/z/f;->t0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/a;)Le/k/a/c/l;

    if-eq v2, v3, :cond_b

    .line 16
    iget-object v3, p3, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    .line 17
    sget-object v2, Le/k/a/b/m;->i:Le/k/a/b/m;

    .line 18
    :cond_5
    iget-object v3, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 19
    iget-object v3, v3, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    .line 20
    iget v2, v2, Le/k/a/b/m;->d:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_9

    const/4 v5, 0x3

    if-eq v2, v5, :cond_8

    const/4 v5, 0x6

    if-eq v2, v5, :cond_7

    const/4 v5, 0x7

    if-eq v2, v5, :cond_6

    packed-switch v2, :pswitch_data_0

    .line 21
    invoke-virtual {p0, p1, p2, v3}, Le/k/a/c/d0/z/f;->p0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object v2

    goto :goto_1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, v3}, Le/k/a/c/d0/z/f;->m0(Le/k/a/b/j;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object v2

    goto :goto_1

    .line 23
    :pswitch_1
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v3, v2}, Le/k/a/c/k0/l;->a(Z)Le/k/a/c/k0/e;

    move-result-object v2

    goto :goto_1

    .line 25
    :pswitch_3
    invoke-virtual {v3, v4}, Le/k/a/c/k0/l;->a(Z)Le/k/a/c/k0/e;

    move-result-object v2

    goto :goto_1

    .line 26
    :cond_6
    invoke-virtual {p0, p1, p2, v3}, Le/k/a/c/d0/z/f;->n0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object v2

    goto :goto_1

    .line 27
    :cond_7
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v2}, Le/k/a/c/k0/u;->M(Ljava/lang/String;)Le/k/a/c/k0/u;

    move-result-object v2

    goto :goto_1

    .line 30
    :cond_8
    invoke-virtual {p0, p1, p2, v3}, Le/k/a/c/d0/z/f;->q0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/a;

    move-result-object v2

    goto :goto_1

    .line 31
    :cond_9
    invoke-virtual {p0, p1, p2, v3}, Le/k/a/c/d0/z/f;->r0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/s;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_a

    .line 32
    invoke-virtual {p3}, Le/k/a/c/k0/f;->M()Le/k/a/c/k0/q;

    move-object v2, v0

    .line 33
    :cond_a
    iget-object v3, p3, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_b
    :goto_2
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
