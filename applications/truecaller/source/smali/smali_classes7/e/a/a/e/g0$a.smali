.class public final Le/a/a/e/g0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/g0;->li(Lcom/truecaller/messaging/inboxcleanup/Mode;)V
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
    c = "com.truecaller.messaging.inboxcleanup.InboxCleanupPreviewPresenter$loadMessages$1"
    f = "InboxCleanupPreviewPresenter.kt"
    l = {
        0x29,
        0x2b,
        0x2d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/a/e/g0;

.field public final synthetic h:Lcom/truecaller/messaging/inboxcleanup/Mode;


# direct methods
.method public constructor <init>(Le/a/a/e/g0;Lcom/truecaller/messaging/inboxcleanup/Mode;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/g0$a;->g:Le/a/a/e/g0;

    iput-object p2, p0, Le/a/a/e/g0$a;->h:Lcom/truecaller/messaging/inboxcleanup/Mode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/a/e/g0$a;

    iget-object v0, p0, Le/a/a/e/g0$a;->g:Le/a/a/e/g0;

    iget-object v1, p0, Le/a/a/e/g0$a;->h:Lcom/truecaller/messaging/inboxcleanup/Mode;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/e/g0$a;-><init>(Le/a/a/e/g0;Lcom/truecaller/messaging/inboxcleanup/Mode;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/e/g0$a;

    iget-object v0, p0, Le/a/a/e/g0$a;->g:Le/a/a/e/g0;

    iget-object v1, p0, Le/a/a/e/g0$a;->h:Lcom/truecaller/messaging/inboxcleanup/Mode;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/e/g0$a;-><init>(Le/a/a/e/g0;Lcom/truecaller/messaging/inboxcleanup/Mode;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/e/g0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/e/g0$a;->f:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/a/e/g0$a;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/a/e/g0$a;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Le/a/a/e/g0$a;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/e/g0$a;->g:Le/a/a/e/g0;

    .line 5
    iget-object p1, p1, Le/a/a/e/g0;->d:Ljava/util/ArrayList;

    .line 6
    iget-object v1, p0, Le/a/a/e/g0$a;->h:Lcom/truecaller/messaging/inboxcleanup/Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_8

    if-eq v1, v4, :cond_6

    if-ne v1, v3, :cond_5

    .line 7
    iget-object v1, p0, Le/a/a/e/g0$a;->g:Le/a/a/e/g0;

    .line 8
    iget-object v1, v1, Le/a/a/e/g0;->h:Le/a/a/e/m;

    .line 9
    new-instance v3, Lw3/b/a/b;

    invoke-direct {v3}, Lw3/b/a/b;-><init>()V

    .line 10
    iget-object v4, p0, Le/a/a/e/g0$a;->g:Le/a/a/e/g0;

    .line 11
    iget-object v4, v4, Le/a/a/e/g0;->f:Le/a/a/i0;

    .line 12
    invoke-interface {v4}, Le/a/a/i0;->y()I

    move-result v4

    invoke-virtual {v3, v4}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v3

    const-string v4, "DateTime.now().minusDays\u2026.manualCleanupSpamPeriod)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-wide v3, v3, Lw3/b/a/e0/e;->a:J

    .line 14
    iput-object p1, p0, Le/a/a/e/g0$a;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/a/e/g0$a;->f:I

    invoke-interface {v1, v3, v4, p0}, Le/a/a/e/m;->g(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/util/List;

    goto :goto_3

    :cond_5
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 15
    :cond_6
    iget-object v1, p0, Le/a/a/e/g0$a;->g:Le/a/a/e/g0;

    .line 16
    iget-object v1, v1, Le/a/a/e/g0;->h:Le/a/a/e/m;

    .line 17
    new-instance v2, Lw3/b/a/b;

    invoke-direct {v2}, Lw3/b/a/b;-><init>()V

    .line 18
    iget-object v4, p0, Le/a/a/e/g0$a;->g:Le/a/a/e/g0;

    .line 19
    iget-object v4, v4, Le/a/a/e/g0;->f:Le/a/a/i0;

    .line 20
    invoke-interface {v4}, Le/a/a/i0;->k0()I

    move-result v4

    invoke-virtual {v2, v4}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v2

    const-string v4, "DateTime.now().minusDays\u2026CleanupPromotionalPeriod)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-wide v4, v2, Lw3/b/a/e0/e;->a:J

    .line 22
    iput-object p1, p0, Le/a/a/e/g0$a;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/a/e/g0$a;->f:I

    .line 23
    invoke-interface {v1, v4, v5, p0}, Le/a/a/e/m;->n(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v0, p1

    move-object p1, v1

    .line 24
    :goto_1
    check-cast p1, Ljava/util/List;

    goto :goto_3

    .line 25
    :cond_8
    iget-object v1, p0, Le/a/a/e/g0$a;->g:Le/a/a/e/g0;

    .line 26
    iget-object v1, v1, Le/a/a/e/g0;->h:Le/a/a/e/m;

    .line 27
    new-instance v2, Lw3/b/a/b;

    invoke-direct {v2}, Lw3/b/a/b;-><init>()V

    .line 28
    iget-object v3, p0, Le/a/a/e/g0$a;->g:Le/a/a/e/g0;

    .line 29
    iget-object v3, v3, Le/a/a/e/g0;->f:Le/a/a/i0;

    .line 30
    invoke-interface {v3}, Le/a/a/i0;->R1()I

    move-result v3

    invoke-virtual {v2, v3}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v2

    const-string v3, "DateTime.now().minusDays\u2026s.manualCleanupOtpPeriod)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-wide v2, v2, Lw3/b/a/e0/e;->a:J

    .line 32
    iput-object p1, p0, Le/a/a/e/g0$a;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/a/e/g0$a;->f:I

    invoke-interface {v1, v2, v3, p0}, Le/a/a/e/m;->d(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_9

    return-object v0

    :cond_9
    move-object v0, p1

    move-object p1, v1

    :goto_2
    check-cast p1, Ljava/util/List;

    .line 33
    :goto_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    iget-object p1, p0, Le/a/a/e/g0$a;->g:Le/a/a/e/g0;

    .line 35
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/f0;

    if-eqz p1, :cond_a

    .line 36
    invoke-interface {p1}, Le/a/a/e/f0;->c0()V

    .line 37
    :cond_a
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
