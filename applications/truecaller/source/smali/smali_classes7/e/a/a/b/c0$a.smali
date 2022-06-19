.class public final Le/a/a/b/c0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/c0;->a(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/a/m/d1;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.messaginglist.PersonalTabPromoStateManagerImpl$getPromoState$2"
    f = "PromoStateManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/b/c0;


# direct methods
.method public constructor <init>(Le/a/a/b/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/c0$a;->e:Le/a/a/b/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/b/c0$a;

    iget-object v0, p0, Le/a/a/b/c0$a;->e:Le/a/a/b/c0;

    invoke-direct {p1, v0, p2}, Le/a/a/b/c0$a;-><init>(Le/a/a/b/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/b/c0$a;

    iget-object v0, p0, Le/a/a/b/c0$a;->e:Le/a/a/b/c0;

    invoke-direct {p1, v0, p2}, Le/a/a/b/c0$a;-><init>(Le/a/a/b/c0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/b/c0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/a/b/c0$a;->e:Le/a/a/b/c0;

    .line 2
    sget-object v0, Le/a/a/m/d1$p;->b:Le/a/a/m/d1$p;

    iget-object v1, p1, Le/a/a/b/c0;->b:Le/a/o5/f0;

    invoke-interface {v1}, Le/a/o5/f0;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1c

    .line 3
    :cond_0
    iget-object v1, p1, Le/a/a/b/c0;->h:Le/a/e/a/r3;

    check-cast v1, Le/a/e/a/s3;

    invoke-virtual {v1}, Le/a/e/a/s3;->b()Le/a/a/m/d1;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    move-object v0, v1

    goto/16 :goto_1c

    .line 4
    :cond_1
    iget-boolean v1, p1, Le/a/a/b/c0;->j:Z

    if-eqz v1, :cond_5

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p1, Le/a/a/b/c0;->c:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->j3()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    sget-object v1, Le/a/a/m/d1$o;->b:Le/a/a/m/d1$o;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {p1}, Le/a/a/b/c0;->c()Le/a/a/m/d1;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    invoke-virtual {p1}, Le/a/a/b/c0;->b()Le/a/a/m/d1;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_1e

    goto/16 :goto_1b

    .line 9
    :cond_5
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->r()Le/a/a/m/d1;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_4

    .line 10
    :cond_6
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->q()Le/a/a/m/d1;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_7

    goto :goto_5

    .line 11
    :cond_7
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->s()Le/a/a/m/d1;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_8

    goto :goto_6

    .line 12
    :cond_8
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->y()Le/a/a/m/d1;

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_9

    goto :goto_7

    .line 13
    :cond_9
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->w()Le/a/a/m/d1;

    move-result-object v1

    :goto_7
    if-eqz v1, :cond_a

    goto :goto_8

    .line 14
    :cond_a
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->c()Le/a/a/m/d1;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_b

    goto :goto_9

    .line 15
    :cond_b
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->g()Le/a/a/m/d1;

    move-result-object v1

    :goto_9
    if-eqz v1, :cond_c

    goto :goto_a

    .line 16
    :cond_c
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->f()Le/a/a/m/d1;

    move-result-object v1

    :goto_a
    if-eqz v1, :cond_d

    goto :goto_b

    .line 17
    :cond_d
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->o()Le/a/a/m/d1;

    move-result-object v1

    :goto_b
    if-eqz v1, :cond_e

    goto :goto_c

    .line 18
    :cond_e
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->k()Le/a/a/m/d1;

    move-result-object v1

    :goto_c
    if-eqz v1, :cond_f

    goto :goto_d

    .line 19
    :cond_f
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->h()Le/a/a/m/d1;

    move-result-object v1

    :goto_d
    if-eqz v1, :cond_10

    goto :goto_e

    .line 20
    :cond_10
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->x()Le/a/a/m/d1;

    move-result-object v1

    :goto_e
    if-eqz v1, :cond_11

    goto :goto_f

    .line 21
    :cond_11
    invoke-virtual {p1}, Le/a/a/b/c0;->c()Le/a/a/m/d1;

    move-result-object v1

    :goto_f
    if-eqz v1, :cond_12

    goto :goto_10

    .line 22
    :cond_12
    invoke-virtual {p1}, Le/a/a/b/c0;->b()Le/a/a/m/d1;

    move-result-object v1

    :goto_10
    if-eqz v1, :cond_13

    goto :goto_11

    .line 23
    :cond_13
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->l()Le/a/a/m/d1;

    move-result-object v1

    :goto_11
    if-eqz v1, :cond_14

    goto :goto_12

    .line 24
    :cond_14
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->j()Le/a/a/m/d1;

    move-result-object v1

    :goto_12
    if-eqz v1, :cond_15

    goto :goto_13

    .line 25
    :cond_15
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->t()Le/a/a/m/d1;

    move-result-object v1

    :goto_13
    if-eqz v1, :cond_16

    goto :goto_14

    .line 26
    :cond_16
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->i()Le/a/a/m/d1;

    move-result-object v1

    :goto_14
    if-eqz v1, :cond_17

    goto :goto_15

    .line 27
    :cond_17
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->v()Le/a/a/m/d1;

    move-result-object v1

    :goto_15
    if-eqz v1, :cond_18

    goto :goto_16

    .line 28
    :cond_18
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->b()Le/a/a/m/d1;

    move-result-object v1

    :goto_16
    if-eqz v1, :cond_19

    goto :goto_17

    .line 29
    :cond_19
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->n()Le/a/a/m/d1;

    move-result-object v1

    :goto_17
    if-eqz v1, :cond_1a

    goto :goto_18

    .line 30
    :cond_1a
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->u()Le/a/a/m/d1;

    move-result-object v1

    :goto_18
    if-eqz v1, :cond_1b

    goto :goto_19

    .line 31
    :cond_1b
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->e()Le/a/a/m/d1;

    move-result-object v1

    :goto_19
    if-eqz v1, :cond_1c

    goto :goto_1a

    .line 32
    :cond_1c
    iget-object v1, p1, Le/a/a/b/c0;->i:Le/a/a/b/d;

    invoke-interface {v1}, Le/a/a/b/d;->d()Le/a/a/m/d1;

    move-result-object v1

    :goto_1a
    if-eqz v1, :cond_1e

    .line 33
    :goto_1b
    iget-object v2, v1, Le/a/a/m/d1;->a:Ljava/lang/String;

    .line 34
    iget-object v3, p1, Le/a/a/b/c0;->c:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->f4()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    .line 35
    iget-object v2, p1, Le/a/a/b/c0;->f:Le/a/u3/g;

    .line 36
    iget-object v3, v2, Le/a/u3/g;->n3:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0xde

    aget-object v4, v4, v5

    invoke-virtual {v3, v2, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v2

    check-cast v2, Le/a/u3/i;

    .line 37
    sget-wide v3, Le/a/a/b/e0;->a:J

    .line 38
    invoke-interface {v2, v3, v4}, Le/a/u3/i;->d(J)J

    move-result-wide v2

    .line 39
    iget-object v4, p1, Le/a/a/b/c0;->e:Le/a/p5/c;

    invoke-interface {v4}, Le/a/p5/c;->c()J

    move-result-wide v4

    iget-object v6, p1, Le/a/a/b/c0;->c:Le/a/a/i0;

    invoke-interface {v6}, Le/a/a/i0;->G2()J

    move-result-wide v6

    add-long/2addr v6, v2

    cmp-long v2, v4, v6

    if-gez v2, :cond_1d

    goto :goto_1c

    .line 40
    :cond_1d
    iget-object v0, p1, Le/a/a/b/c0;->c:Le/a/a/i0;

    .line 41
    iget-object v2, v1, Le/a/a/m/d1;->a:Ljava/lang/String;

    .line 42
    invoke-interface {v0, v2}, Le/a/a/i0;->l2(Ljava/lang/String;)V

    .line 43
    iget-object v0, p1, Le/a/a/b/c0;->c:Le/a/a/i0;

    iget-object p1, p1, Le/a/a/b/c0;->e:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Le/a/a/i0;->K1(J)V

    goto/16 :goto_0

    :cond_1e
    :goto_1c
    return-object v0
.end method
