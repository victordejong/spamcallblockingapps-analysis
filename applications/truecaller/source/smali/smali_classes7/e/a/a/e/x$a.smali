.class public final Le/a/a/e/x$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/x;->xa()V
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.inboxcleanup.InboxCleanupPresenter$onCleanupNow$1"
    f = "InboxCleanupPresenter.kt"
    l = {
        0x68,
        0x6d,
        0x72,
        0x76
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le/a/a/e/x;


# direct methods
.method public constructor <init>(Le/a/a/e/x;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/x$a;->j:Le/a/a/e/x;

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

    new-instance p1, Le/a/a/e/x$a;

    iget-object v0, p0, Le/a/a/e/x$a;->j:Le/a/a/e/x;

    invoke-direct {p1, v0, p2}, Le/a/a/e/x$a;-><init>(Le/a/a/e/x;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/e/x$a;

    iget-object v0, p0, Le/a/a/e/x$a;->j:Le/a/a/e/x;

    invoke-direct {p1, v0, p2}, Le/a/a/e/x$a;-><init>(Le/a/a/e/x;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/e/x$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/e/x$a;->i:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/a/e/x$a;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v3, p0, Le/a/a/e/x$a;->g:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/c0;

    iget-object v4, p0, Le/a/a/e/x$a;->f:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/c0;

    iget-object v6, p0, Le/a/a/e/x$a;->e:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Le/a/a/e/x$a;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v4, p0, Le/a/a/e/x$a;->f:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/c0;

    iget-object v6, p0, Le/a/a/e/x$a;->e:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Le/a/a/e/x$a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v6, p0, Le/a/a/e/x$a;->e:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object v6

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v6, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Le/a/a/e/x$a;->j:Le/a/a/e/x;

    .line 6
    invoke-virtual {p1}, Le/a/a/e/x;->Ij()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1}, Lw3/b/a/b;-><init>()V

    .line 8
    iget-object v1, p0, Le/a/a/e/x$a;->j:Le/a/a/e/x;

    .line 9
    iget-object v1, v1, Le/a/a/e/x;->j:Le/a/a/i0;

    .line 10
    invoke-interface {v1}, Le/a/a/i0;->R1()I

    move-result v1

    invoke-virtual {p1, v1}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object p1

    const-string v1, "DateTime.now().minusDays\u2026s.manualCleanupOtpPeriod)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-wide v7, p1, Lw3/b/a/e0/e;->a:J

    .line 12
    iget-object p1, v6, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    iget-object p1, p0, Le/a/a/e/x$a;->j:Le/a/a/e/x;

    .line 13
    iget-object p1, p1, Le/a/a/e/x;->k:Le/a/a/e/m;

    .line 14
    iput-object v6, p0, Le/a/a/e/x$a;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/a/e/x$a;->f:Ljava/lang/Object;

    iput v5, p0, Le/a/a/e/x$a;->i:I

    invoke-interface {p1, v7, v8, p0}, Le/a/a/e/m;->d(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    :cond_6
    new-instance p1, Ls1/z/c/c0;

    invoke-direct {p1}, Ls1/z/c/c0;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Le/a/a/e/x$a;->j:Le/a/a/e/x;

    .line 17
    invoke-virtual {v1}, Le/a/a/e/x;->Jj()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 18
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    .line 19
    iget-object v7, p0, Le/a/a/e/x$a;->j:Le/a/a/e/x;

    .line 20
    iget-object v7, v7, Le/a/a/e/x;->j:Le/a/a/i0;

    .line 21
    invoke-interface {v7}, Le/a/a/i0;->k0()I

    move-result v7

    invoke-virtual {v1, v7}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v1

    const-string v7, "DateTime.now().minusDays\u2026CleanupPromotionalPeriod)"

    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-wide v7, v1, Lw3/b/a/e0/e;->a:J

    .line 23
    iget-object v1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v9, p0, Le/a/a/e/x$a;->j:Le/a/a/e/x;

    .line 24
    iget-object v9, v9, Le/a/a/e/x;->k:Le/a/a/e/m;

    .line 25
    iput-object v6, p0, Le/a/a/e/x$a;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/a/e/x$a;->f:Ljava/lang/Object;

    iput-object v1, p0, Le/a/a/e/x$a;->g:Ljava/lang/Object;

    iput v4, p0, Le/a/a/e/x$a;->i:I

    invoke-interface {v9, v7, v8, p0}, Le/a/a/e/m;->n(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_7

    return-object v0

    :cond_7
    move-object v13, v4

    move-object v4, p1

    move-object p1, v13

    :goto_1
    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_8
    move-object v4, p1

    .line 26
    :goto_2
    new-instance p1, Ls1/z/c/c0;

    invoke-direct {p1}, Ls1/z/c/c0;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 27
    iget-object v1, p0, Le/a/a/e/x$a;->j:Le/a/a/e/x;

    .line 28
    invoke-virtual {v1}, Le/a/a/e/x;->Kj()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 29
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    .line 30
    iget-object v7, p0, Le/a/a/e/x$a;->j:Le/a/a/e/x;

    .line 31
    iget-object v7, v7, Le/a/a/e/x;->j:Le/a/a/i0;

    .line 32
    invoke-interface {v7}, Le/a/a/i0;->y()I

    move-result v7

    invoke-virtual {v1, v7}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v1

    const-string v7, "DateTime.now().minusDays\u2026.manualCleanupSpamPeriod)"

    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-wide v7, v1, Lw3/b/a/e0/e;->a:J

    .line 34
    iget-object v1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v9, p0, Le/a/a/e/x$a;->j:Le/a/a/e/x;

    .line 35
    iget-object v9, v9, Le/a/a/e/x;->k:Le/a/a/e/m;

    .line 36
    iput-object v6, p0, Le/a/a/e/x$a;->e:Ljava/lang/Object;

    iput-object v4, p0, Le/a/a/e/x$a;->f:Ljava/lang/Object;

    iput-object p1, p0, Le/a/a/e/x$a;->g:Ljava/lang/Object;

    iput-object v1, p0, Le/a/a/e/x$a;->h:Ljava/lang/Object;

    iput v3, p0, Le/a/a/e/x$a;->i:I

    invoke-interface {v9, v7, v8, p0}, Le/a/a/e/m;->g(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_9

    return-object v0

    :cond_9
    move-object v13, v3

    move-object v3, p1

    move-object p1, v13

    :goto_3
    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v11, v3

    goto :goto_4

    :cond_a
    move-object v11, p1

    :goto_4
    move-object v10, v4

    move-object v9, v6

    .line 37
    iget-object p1, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    if-nez p1, :cond_b

    iget-object p1, v10, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    if-nez p1, :cond_b

    iget-object p1, v11, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_c

    .line 38
    :cond_b
    iget-object p1, p0, Le/a/a/e/x$a;->j:Le/a/a/e/x;

    .line 39
    iget-object p1, p1, Le/a/a/e/x;->h:Ls1/w/f;

    .line 40
    new-instance v1, Le/a/a/e/x$a$a;

    const/4 v12, 0x0

    move-object v7, v1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Le/a/a/e/x$a$a;-><init>(Le/a/a/e/x$a;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    const/4 v3, 0x0

    iput-object v3, p0, Le/a/a/e/x$a;->e:Ljava/lang/Object;

    iput-object v3, p0, Le/a/a/e/x$a;->f:Ljava/lang/Object;

    iput-object v3, p0, Le/a/a/e/x$a;->g:Ljava/lang/Object;

    iput-object v3, p0, Le/a/a/e/x$a;->h:Ljava/lang/Object;

    iput v2, p0, Le/a/a/e/x$a;->i:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    .line 41
    :cond_c
    :goto_5
    iget-object p1, p0, Le/a/a/e/x$a;->j:Le/a/a/e/x;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {p1}, Le/a/a/e/x;->Ij()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "otp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_d
    invoke-virtual {p1}, Le/a/a/e/x;->Jj()Z

    move-result v1

    const-string v2, " - "

    if-eqz v1, :cond_f

    .line 45
    invoke-virtual {p1}, Le/a/a/e/x;->Ij()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v1, "promotional"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_f
    invoke-virtual {p1}, Le/a/a/e/x;->Kj()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 48
    invoke-virtual {p1}, Le/a/a/e/x;->Ij()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p1}, Le/a/a/e/x;->Jj()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v1, "spam"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v8, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p1, Le/a/a/e/x;->n:Le/a/q2/a;

    const-string v1, "Ci2-SelectOtpSpam"

    const-string v2, "type"

    .line 52
    invoke-static {v1, v2}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v9

    const-string v7, "category"

    const-string v10, "name"

    const-string v5, "value"

    move-object v2, v7

    move-object v3, v10

    move-object v4, v8

    move-object v6, v9

    .line 53
    invoke-static/range {v2 .. v8}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v3, "isTcDefault"

    .line 54
    iget-object p1, p1, Le/a/a/e/x;->o:Le/a/p5/g;

    invoke-interface {p1}, Le/a/p5/g;->c()Z

    move-result p1

    .line 55
    invoke-static {v3, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v9, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {p1, v2}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {p1, v9, v1, v0}, Le/d/c/a/a;->x0(Le/a/l5/a/p3$b;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    .line 58
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
