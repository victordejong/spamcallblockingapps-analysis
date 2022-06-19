.class public final Le/a/a/e/w;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.messaging.inboxcleanup.InboxCleanupPresenter$fetchCounts$1"
    f = "InboxCleanupPresenter.kt"
    l = {
        0x139,
        0x13e,
        0x13f,
        0x146,
        0x148,
        0x14d,
        0x14e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/a/e/x;


# direct methods
.method public constructor <init>(Le/a/a/e/x;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

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

    new-instance p1, Le/a/a/e/w;

    iget-object v0, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    invoke-direct {p1, v0, p2}, Le/a/a/e/w;-><init>(Le/a/a/e/x;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/e/w;

    iget-object v0, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    invoke-direct {p1, v0, p2}, Le/a/a/e/w;-><init>(Le/a/a/e/x;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/e/w;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/a/e/w;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    iget-object v2, p0, Le/a/a/e/w;->e:Ljava/lang/Object;

    check-cast v2, Le/a/a/e/x;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_3
    iget-object v2, p0, Le/a/a/e/w;->e:Ljava/lang/Object;

    check-cast v2, Le/a/a/e/x;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v2, p0, Le/a/a/e/w;->e:Ljava/lang/Object;

    check-cast v2, Le/a/a/e/x;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 5
    iget-object p1, p1, Le/a/a/e/x;->k:Le/a/a/e/m;

    .line 6
    invoke-interface {p1}, Le/a/a/e/m;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 8
    iget-object p1, p1, Le/a/a/e/x;->h:Ls1/w/f;

    .line 9
    new-instance v2, Le/a/a/e/w$a;

    invoke-direct {v2, p0, v4}, Le/a/a/e/w$a;-><init>(Le/a/a/e/w;Ls1/w/d;)V

    const/4 v3, 0x1

    iput v3, p0, Le/a/a/e/w;->f:I

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_0

    return-object v1

    :cond_0
    :goto_0
    return-object v0

    .line 10
    :cond_1
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1}, Lw3/b/a/b;-><init>()V

    .line 11
    iget-object v2, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 12
    iget-object v2, v2, Le/a/a/e/x;->j:Le/a/a/i0;

    .line 13
    invoke-interface {v2}, Le/a/a/i0;->R1()I

    move-result v2

    invoke-virtual {p1, v2}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object p1

    const-string v2, "DateTime.now().minusDays\u2026s.manualCleanupOtpPeriod)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-wide v5, p1, Lw3/b/a/e0/e;->a:J

    .line 15
    iget-object v2, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 16
    iget-object p1, v2, Le/a/a/e/x;->j:Le/a/a/i0;

    .line 17
    invoke-interface {p1}, Le/a/a/i0;->R1()I

    move-result p1

    if-nez p1, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    iget-object p1, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 18
    iget-object p1, p1, Le/a/a/e/x;->k:Le/a/a/e/m;

    .line 19
    iput-object v2, p0, Le/a/a/e/w;->e:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, p0, Le/a/a/e/w;->f:I

    invoke-interface {p1, v5, v6, p0}, Le/a/a/e/m;->i(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 20
    :goto_2
    iput p1, v2, Le/a/a/e/x;->d:I

    .line 21
    iget-object p1, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 22
    iget-object p1, p1, Le/a/a/e/x;->h:Ls1/w/f;

    .line 23
    new-instance v2, Le/a/a/e/w$b;

    invoke-direct {v2, p0, v4}, Le/a/a/e/w$b;-><init>(Le/a/a/e/w;Ls1/w/d;)V

    iput-object v4, p0, Le/a/a/e/w;->e:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, p0, Le/a/a/e/w;->f:I

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 24
    :cond_4
    :goto_3
    iget-object p1, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    invoke-virtual {p1}, Le/a/a/e/x;->p9()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 25
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1}, Lw3/b/a/b;-><init>()V

    .line 26
    iget-object v2, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 27
    iget-object v2, v2, Le/a/a/e/x;->j:Le/a/a/i0;

    .line 28
    invoke-interface {v2}, Le/a/a/i0;->k0()I

    move-result v2

    invoke-virtual {p1, v2}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object p1

    const-string v2, "DateTime.now().minusDays\u2026CleanupPromotionalPeriod)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-wide v5, p1, Lw3/b/a/e0/e;->a:J

    .line 30
    iget-object v2, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 31
    iget-object p1, v2, Le/a/a/e/x;->j:Le/a/a/i0;

    .line 32
    invoke-interface {p1}, Le/a/a/i0;->k0()I

    move-result p1

    if-nez p1, :cond_5

    move p1, v3

    goto :goto_5

    .line 33
    :cond_5
    iget-object p1, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 34
    iget-object p1, p1, Le/a/a/e/x;->k:Le/a/a/e/m;

    .line 35
    iput-object v2, p0, Le/a/a/e/w;->e:Ljava/lang/Object;

    const/4 v7, 0x4

    iput v7, p0, Le/a/a/e/w;->f:I

    invoke-interface {p1, v5, v6, p0}, Le/a/a/e/m;->o(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 36
    :goto_5
    iput p1, v2, Le/a/a/e/x;->e:I

    .line 37
    iget-object p1, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 38
    iget-object p1, p1, Le/a/a/e/x;->h:Ls1/w/f;

    .line 39
    new-instance v2, Le/a/a/e/w$c;

    invoke-direct {v2, p0, v4}, Le/a/a/e/w$c;-><init>(Le/a/a/e/w;Ls1/w/d;)V

    iput-object v4, p0, Le/a/a/e/w;->e:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, p0, Le/a/a/e/w;->f:I

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 40
    :cond_7
    :goto_6
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1}, Lw3/b/a/b;-><init>()V

    .line 41
    iget-object v2, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 42
    iget-object v2, v2, Le/a/a/e/x;->j:Le/a/a/i0;

    .line 43
    invoke-interface {v2}, Le/a/a/i0;->y()I

    move-result v2

    invoke-virtual {p1, v2}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object p1

    const-string v2, "DateTime.now().minusDays\u2026.manualCleanupSpamPeriod)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-wide v5, p1, Lw3/b/a/e0/e;->a:J

    .line 45
    iget-object v2, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 46
    iget-object p1, v2, Le/a/a/e/x;->j:Le/a/a/i0;

    .line 47
    invoke-interface {p1}, Le/a/a/i0;->y()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_8

    :cond_8
    iget-object p1, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 48
    iget-object p1, p1, Le/a/a/e/x;->k:Le/a/a/e/m;

    .line 49
    iput-object v2, p0, Le/a/a/e/w;->e:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, p0, Le/a/a/e/w;->f:I

    invoke-interface {p1, v5, v6, p0}, Le/a/a/e/m;->f(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    :goto_7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 50
    :goto_8
    iput v3, v2, Le/a/a/e/x;->f:I

    .line 51
    iget-object p1, p0, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 52
    iget-object p1, p1, Le/a/a/e/x;->h:Ls1/w/f;

    .line 53
    new-instance v2, Le/a/a/e/w$d;

    invoke-direct {v2, p0, v4}, Le/a/a/e/w$d;-><init>(Le/a/a/e/w;Ls1/w/d;)V

    iput-object v4, p0, Le/a/a/e/w;->e:Ljava/lang/Object;

    const/4 v3, 0x7

    iput v3, p0, Le/a/a/e/w;->f:I

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_9
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
