.class public final Le/a/a/c/i5;
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
    c = "com.truecaller.messaging.conversation.ConversationPresenterImpl$maybeShowInboxCleanerOTPsBanner$1"
    f = "ConversationPresenterImpl.kt"
    l = {
        0x5b9,
        0x5ba
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:J

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/a/c/e5;


# direct methods
.method public constructor <init>(Le/a/a/c/e5;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/i5;->i:Le/a/a/c/e5;

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

    new-instance p1, Le/a/a/c/i5;

    iget-object v0, p0, Le/a/a/c/i5;->i:Le/a/a/c/e5;

    invoke-direct {p1, v0, p2}, Le/a/a/c/i5;-><init>(Le/a/a/c/e5;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/i5;

    iget-object v0, p0, Le/a/a/c/i5;->i:Le/a/a/c/e5;

    invoke-direct {p1, v0, p2}, Le/a/a/c/i5;-><init>(Le/a/a/c/e5;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/i5;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/i5;->h:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-wide v3, p0, Le/a/a/c/i5;->e:J

    iget-object v1, p0, Le/a/a/c/i5;->g:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/a0;

    iget-object v5, p0, Le/a/a/c/i5;->f:Ljava/lang/Object;

    check-cast v5, Ls1/z/c/a0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-wide v7, v3

    move-object v4, v5

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1}, Lw3/b/a/b;-><init>()V

    .line 5
    iget-object v1, p0, Le/a/a/c/i5;->i:Le/a/a/c/e5;

    .line 6
    iget-object v1, v1, Le/a/a/c/e5;->N:Le/a/a/i0;

    .line 7
    invoke-interface {v1}, Le/a/a/i0;->R1()I

    move-result v1

    invoke-virtual {p1, v1}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object p1

    const-string v1, "DateTime.now().minusDays\u2026s.manualCleanupOtpPeriod)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-wide v10, p1, Lw3/b/a/e0/e;->a:J

    .line 9
    iget-object p1, p0, Le/a/a/c/i5;->i:Le/a/a/c/e5;

    .line 10
    iget-object p1, p1, Le/a/a/c/e5;->f:Ljava/lang/Long;

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 12
    new-instance v1, Ls1/z/c/a0;

    invoke-direct {v1}, Ls1/z/c/a0;-><init>()V

    iget-object p1, p0, Le/a/a/c/i5;->i:Le/a/a/c/e5;

    .line 13
    iget-object v4, p1, Le/a/a/c/e5;->w0:Le/a/a/e/m;

    .line 14
    iput-object v1, p0, Le/a/a/c/i5;->f:Ljava/lang/Object;

    iput-object v1, p0, Le/a/a/c/i5;->g:Ljava/lang/Object;

    iput-wide v10, p0, Le/a/a/c/i5;->e:J

    iput v3, p0, Le/a/a/c/i5;->h:I

    move-wide v5, v10

    move-object v9, p0

    invoke-interface/range {v4 .. v9}, Le/a/a/e/m;->l(JJLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v4, v1

    move-wide v7, v10

    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v1, Ls1/z/c/a0;->a:I

    .line 15
    iget-object p1, p0, Le/a/a/c/i5;->i:Le/a/a/c/e5;

    .line 16
    iget-object p1, p1, Le/a/a/c/e5;->w:Ls1/w/f;

    .line 17
    new-instance v1, Le/a/a/c/i5$a;

    const/4 v5, 0x0

    move-object v3, v1

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, Le/a/a/c/i5$a;-><init>(Ls1/z/c/a0;Ls1/w/d;Le/a/a/c/i5;J)V

    const/4 v3, 0x0

    iput-object v3, p0, Le/a/a/c/i5;->f:Ljava/lang/Object;

    iput-object v3, p0, Le/a/a/c/i5;->g:Ljava/lang/Object;

    iput v2, p0, Le/a/a/c/i5;->h:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 18
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
