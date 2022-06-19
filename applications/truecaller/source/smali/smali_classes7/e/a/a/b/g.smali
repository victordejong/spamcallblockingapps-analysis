.class public final Le/a/a/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/b/f;


# instance fields
.field public final a:Le/a/o5/f0;

.field public final b:Le/a/a/i0;

.field public final c:Le/a/p5/c;

.field public final d:Le/a/u3/g;

.field public final e:Le/a/e/a/r3;

.field public final f:Le/a/a/b/d;


# direct methods
.method public constructor <init>(Le/a/o5/f0;Le/a/a/i0;Le/a/p5/c;Le/a/u3/g;Le/a/e/a/r3;Le/a/a/b/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qaInboxPromoHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callPromoHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/b/g;->a:Le/a/o5/f0;

    iput-object p2, p0, Le/a/a/b/g;->b:Le/a/a/i0;

    iput-object p3, p0, Le/a/a/b/g;->c:Le/a/p5/c;

    iput-object p4, p0, Le/a/a/b/g;->d:Le/a/u3/g;

    iput-object p5, p0, Le/a/a/b/g;->e:Le/a/e/a/r3;

    iput-object p6, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/a/m/d1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p1, Le/a/a/m/d1$p;->b:Le/a/a/m/d1$p;

    iget-object v0, p0, Le/a/a/b/g;->a:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/b/g;->e:Le/a/e/a/r3;

    check-cast v0, Le/a/e/a/s3;

    invoke-virtual {v0}, Le/a/e/a/s3;->b()Le/a/a/m/d1;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->r()Le/a/a/m/d1;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->a()Le/a/a/m/d1;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->m()Le/a/a/m/d1;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->q()Le/a/a/m/d1;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_5

    goto :goto_3

    .line 7
    :cond_5
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->s()Le/a/a/m/d1;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_6

    goto :goto_4

    .line 8
    :cond_6
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->y()Le/a/a/m/d1;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_7

    goto :goto_5

    .line 9
    :cond_7
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->w()Le/a/a/m/d1;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_8

    goto :goto_6

    .line 10
    :cond_8
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->c()Le/a/a/m/d1;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_9

    goto :goto_7

    .line 11
    :cond_9
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    sget-object v1, Lcom/truecaller/premium/PremiumLaunchContext;->CALL_TAB_PROMO:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {v0, v1}, Le/a/a/b/d;->p(Lcom/truecaller/premium/PremiumLaunchContext;)Le/a/a/m/d1;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_a

    goto :goto_8

    .line 12
    :cond_a
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->g()Le/a/a/m/d1;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_b

    goto :goto_9

    .line 13
    :cond_b
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->f()Le/a/a/m/d1;

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_c

    goto :goto_a

    .line 14
    :cond_c
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->o()Le/a/a/m/d1;

    move-result-object v0

    :goto_a
    if-eqz v0, :cond_d

    goto :goto_b

    .line 15
    :cond_d
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->k()Le/a/a/m/d1;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_e

    goto :goto_c

    .line 16
    :cond_e
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->h()Le/a/a/m/d1;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_f

    goto :goto_d

    .line 17
    :cond_f
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->x()Le/a/a/m/d1;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_10

    goto :goto_e

    .line 18
    :cond_10
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->l()Le/a/a/m/d1;

    move-result-object v0

    :goto_e
    if-eqz v0, :cond_11

    goto :goto_f

    .line 19
    :cond_11
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->j()Le/a/a/m/d1;

    move-result-object v0

    :goto_f
    if-eqz v0, :cond_12

    goto :goto_10

    .line 20
    :cond_12
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->t()Le/a/a/m/d1;

    move-result-object v0

    :goto_10
    if-eqz v0, :cond_13

    goto :goto_11

    .line 21
    :cond_13
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->i()Le/a/a/m/d1;

    move-result-object v0

    :goto_11
    if-eqz v0, :cond_14

    goto :goto_12

    .line 22
    :cond_14
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->v()Le/a/a/m/d1;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_15

    goto :goto_13

    .line 23
    :cond_15
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->b()Le/a/a/m/d1;

    move-result-object v0

    :goto_13
    if-eqz v0, :cond_16

    goto :goto_14

    .line 24
    :cond_16
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->n()Le/a/a/m/d1;

    move-result-object v0

    :goto_14
    if-eqz v0, :cond_17

    goto :goto_15

    .line 25
    :cond_17
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->u()Le/a/a/m/d1;

    move-result-object v0

    :goto_15
    if-eqz v0, :cond_18

    goto :goto_16

    .line 26
    :cond_18
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->e()Le/a/a/m/d1;

    move-result-object v0

    :goto_16
    if-eqz v0, :cond_19

    goto :goto_17

    .line 27
    :cond_19
    iget-object v0, p0, Le/a/a/b/g;->f:Le/a/a/b/d;

    invoke-interface {v0}, Le/a/a/b/d;->d()Le/a/a/m/d1;

    move-result-object v0

    :goto_17
    if-eqz v0, :cond_1b

    .line 28
    iget-object v1, v0, Le/a/a/m/d1;->a:Ljava/lang/String;

    .line 29
    iget-object v2, p0, Le/a/a/b/g;->b:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->A3()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1a

    .line 30
    iget-object v1, p0, Le/a/a/b/g;->d:Le/a/u3/g;

    .line 31
    iget-object v2, v1, Le/a/u3/g;->n3:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0xde

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    check-cast v1, Le/a/u3/i;

    .line 32
    sget-wide v2, Le/a/a/b/e0;->a:J

    .line 33
    invoke-interface {v1, v2, v3}, Le/a/u3/i;->d(J)J

    move-result-wide v1

    .line 34
    iget-object v3, p0, Le/a/a/b/g;->c:Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->c()J

    move-result-wide v3

    iget-object v5, p0, Le/a/a/b/g;->b:Le/a/a/i0;

    invoke-interface {v5}, Le/a/a/i0;->W0()J

    move-result-wide v5

    add-long/2addr v5, v1

    cmp-long v1, v3, v5

    if-gez v1, :cond_1a

    return-object p1

    .line 35
    :cond_1a
    iget-object p1, p0, Le/a/a/b/g;->b:Le/a/a/i0;

    .line 36
    iget-object v1, v0, Le/a/a/m/d1;->a:Ljava/lang/String;

    .line 37
    invoke-interface {p1, v1}, Le/a/a/i0;->m(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Le/a/a/b/g;->b:Le/a/a/i0;

    iget-object v1, p0, Le/a/a/b/g;->c:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Le/a/a/i0;->O3(J)V

    return-object v0

    :cond_1b
    return-object p1
.end method
