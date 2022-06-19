.class public final Le/a/a/e/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/e/m;


# instance fields
.field public final a:Le/a/a/i1/d;

.field public final b:Le/a/a/i0;

.field public final c:Le/a/p5/g;

.field public final d:Le/a/h5/w;

.field public final e:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/a/e/o;

.field public final g:Le/a/y2/q/a;

.field public final h:Le/a/q2/a;

.field public final i:Landroid/content/Context;

.field public final j:Le/a/u3/g;

.field public final k:Le/a/a/t0/a;

.field public final l:Le/a/o5/b0;

.field public final m:Le/a/c0/h;

.field public final n:Le/a/b0/q/l0;


# direct methods
.method public constructor <init>(Le/a/a/i1/d;Le/a/a/i0;Le/a/p5/g;Le/a/h5/w;Le/a/r2/f;Le/a/a/e/o;Le/a/y2/q/a;Le/a/q2/a;Landroid/content/Context;Le/a/u3/g;Le/a/a/t0/a;Le/a/o5/b0;Le/a/c0/h;Le/a/b0/q/l0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/i1/d;",
            "Le/a/a/i0;",
            "Le/a/p5/g;",
            "Le/a/h5/w;",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;",
            "Le/a/a/e/o;",
            "Le/a/y2/q/a;",
            "Le/a/q2/a;",
            "Landroid/content/Context;",
            "Le/a/u3/g;",
            "Le/a/a/t0/a;",
            "Le/a/o5/b0;",
            "Le/a/c0/h;",
            "Le/a/b0/q/l0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messageActionHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesStorage"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inboxCleanerNotificationHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundWorkTrigger"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inboxCleanerDataFetcher"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentRegistry"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/e/n;->a:Le/a/a/i1/d;

    iput-object p2, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    iput-object p3, p0, Le/a/a/e/n;->c:Le/a/p5/g;

    iput-object p4, p0, Le/a/a/e/n;->d:Le/a/h5/w;

    iput-object p5, p0, Le/a/a/e/n;->e:Le/a/r2/f;

    iput-object p6, p0, Le/a/a/e/n;->f:Le/a/a/e/o;

    iput-object p7, p0, Le/a/a/e/n;->g:Le/a/y2/q/a;

    iput-object p8, p0, Le/a/a/e/n;->h:Le/a/q2/a;

    iput-object p9, p0, Le/a/a/e/n;->i:Landroid/content/Context;

    iput-object p10, p0, Le/a/a/e/n;->j:Le/a/u3/g;

    iput-object p11, p0, Le/a/a/e/n;->k:Le/a/a/t0/a;

    iput-object p12, p0, Le/a/a/e/n;->l:Le/a/o5/b0;

    iput-object p13, p0, Le/a/a/e/n;->m:Le/a/c0/h;

    iput-object p14, p0, Le/a/a/e/n;->n:Le/a/b0/q/l0;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/a/e/n$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/a/e/n$d;

    iget v1, v0, Le/a/a/e/n$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/e/n$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/e/n$d;

    invoke-direct {v0, p0, p1}, Le/a/a/e/n$d;-><init>(Le/a/a/e/n;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/a/e/n$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/e/n$d;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/a/e/n$d;->g:Ljava/lang/Object;

    check-cast v2, Le/a/a/e/n;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/a/e/n;->j()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->q0()Z

    move-result p1

    if-nez p1, :cond_6

    .line 5
    new-instance p1, Lw3/b/a/b;

    iget-object v2, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->A()Lw3/b/a/b;

    move-result-object v2

    invoke-direct {p1, v2}, Lw3/b/a/b;-><init>(Ljava/lang/Object;)V

    const/16 v2, 0x1e

    invoke-virtual {p1, v2}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object p1

    const-string v5, "DateTime(messageSettings\u2026smissedDate).plusDays(30)"

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lw3/b/a/e0/c;->j()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 6
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1}, Lw3/b/a/b;-><init>()V

    .line 7
    invoke-virtual {p1, v2}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object p1

    const-string v2, "DateTime.now().minusDays\u2026gs.INBOX_CLEANUP_DAYS_30)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-wide v5, p1, Lw3/b/a/e0/e;->a:J

    .line 9
    iput-object p0, v0, Le/a/a/e/n$d;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/a/e/n$d;->e:I

    invoke-virtual {p0, v5, v6, v0}, Le/a/a/e/n;->f(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/16 v5, 0x63

    if-le p1, v5, :cond_6

    const/4 p1, 0x0

    iput-object p1, v0, Le/a/a/e/n$d;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/a/e/n$d;->e:I

    .line 10
    invoke-virtual {v2, v0}, Le/a/a/e/n;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 11
    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 12
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/a/e/n$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/a/e/n$c;

    iget v1, v0, Le/a/a/e/n$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/e/n$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/e/n$c;

    invoke-direct {v0, p0, p1}, Le/a/a/e/n$c;-><init>(Le/a/a/e/n;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/a/e/n$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/e/n$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/a/e/n;->j()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->q0()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Le/a/a/e/n;->j:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    new-instance p1, Lw3/b/a/b;

    iget-object v2, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->g4()Lw3/b/a/b;

    move-result-object v2

    invoke-direct {p1, v2}, Lw3/b/a/b;-><init>(Ljava/lang/Object;)V

    const/16 v2, 0x1e

    invoke-virtual {p1, v2}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object p1

    const-string v4, "DateTime(messageSettings\u2026smissedDate).plusDays(30)"

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lw3/b/a/e0/c;->j()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1}, Lw3/b/a/b;-><init>()V

    .line 7
    invoke-virtual {p1, v2}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object p1

    const-string v2, "DateTime.now().minusDays\u2026gs.INBOX_CLEANUP_DAYS_30)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-wide v4, p1, Lw3/b/a/e0/e;->a:J

    .line 9
    iput v3, v0, Le/a/a/e/n$c;->e:I

    invoke-virtual {p0, v4, v5, v0}, Le/a/a/e/n;->o(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/16 v0, 0x63

    if-le p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 10
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/e/n;->g:Le/a/y2/q/a;

    sget-object v1, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->j:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$a;

    invoke-interface {v0, v1}, Le/a/y2/q/a;->b(Le/a/y2/i;)Ln3/m0/s;

    return-void
.end method

.method public d(JLs1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/e/n;->k:Le/a/a/t0/a;

    check-cast v0, Le/a/a/t0/b;

    invoke-virtual {v0, p1, p2, p3}, Le/a/a/t0/b;->c(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/e/n;->i:Landroid/content/Context;

    const-string v1, "context"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ln3/m0/c0/t/n;

    const-string v2, "OneOff_InboxManualCleanupWorker"

    invoke-direct {v1, v0, v2}, Ln3/m0/c0/t/n;-><init>(Ln3/m0/c0/l;Ljava/lang/String;)V

    .line 6
    iget-object v0, v0, Ln3/m0/c0/l;->d:Ln3/m0/c0/t/x/a;

    check-cast v0, Ln3/m0/c0/t/x/b;

    .line 7
    iget-object v0, v0, Ln3/m0/c0/t/x/b;->a:Ln3/m0/c0/t/k;

    .line 8
    invoke-virtual {v0, v1}, Ln3/m0/c0/t/k;->execute(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, v1, Ln3/m0/c0/t/o;->a:Ln3/m0/c0/t/w/c;

    .line 10
    invoke-virtual {v0}, Ln3/m0/c0/t/w/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "WorkManager.getInstance(\u2026E_OFF_PREFIX$name\").get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 11
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/m0/x;

    const-string v4, "it"

    .line 13
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v1, v1, Ln3/m0/x;->b:Ln3/m0/x$a;

    .line 15
    sget-object v4, Ln3/m0/x$a;->b:Ln3/m0/x$a;

    if-eq v1, v4, :cond_3

    sget-object v4, Ln3/m0/x$a;->a:Ln3/m0/x$a;

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_1

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    :goto_3
    return v2
.end method

.method public f(JLs1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/e/n;->k:Le/a/a/t0/a;

    check-cast v0, Le/a/a/t0/b;

    invoke-virtual {v0, p1, p2, p3}, Le/a/a/t0/b;->e(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(JLs1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Le/a/a/e/n;->k:Le/a/a/t0/a;

    check-cast p3, Le/a/a/t0/b;

    .line 2
    iget-object v0, p3, Le/a/a/t0/b;->a:Landroid/content/ContentResolver;

    const-wide/16 v1, 0x0

    .line 3
    invoke-static {v1, v2, p1, p2}, Le/a/b0/q/g0;->p(JJ)Landroid/net/Uri;

    move-result-object v1

    .line 4
    iget-object p1, p3, Le/a/a/t0/b;->c:Le/a/a/g/x;

    sget-object p2, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {p1, p2}, Le/a/a/g/x;->a(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p2, p3, Le/a/a/t0/b;->b:Le/a/a/g/g;

    invoke-interface {p2, p1}, Le/a/a/g/g;->i(Landroid/database/Cursor;)Le/a/a/g/j0/q;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 7
    :try_start_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {p1}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    const-string v1, "message"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 11
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    .line 12
    :cond_1
    sget-object p3, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    return-object p3
.end method

.method public h(Ls1/w/d;)Ljava/lang/Object;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ls1/s;->a:Ls1/s;

    instance-of v3, v1, Le/a/a/e/n$e;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/a/e/n$e;

    iget v4, v3, Le/a/a/e/n$e;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/a/e/n$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/a/e/n$e;

    invoke-direct {v3, v0, v1}, Le/a/a/e/n$e;-><init>(Le/a/a/e/n;Ls1/w/d;)V

    :goto_0
    iget-object v1, v3, Le/a/a/e/n$e;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/a/e/n$e;->e:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/16 v8, 0x1e

    const/4 v9, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget v4, v3, Le/a/a/e/n$e;->j:I

    iget v5, v3, Le/a/a/e/n$e;->i:I

    iget-object v3, v3, Le/a/a/e/n$e;->g:Ljava/lang/Object;

    check-cast v3, Le/a/a/e/n;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget v5, v3, Le/a/a/e/n$e;->i:I

    iget-wide v10, v3, Le/a/a/e/n$e;->h:J

    iget-object v12, v3, Le/a/a/e/n$e;->g:Ljava/lang/Object;

    check-cast v12, Le/a/a/e/n;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-wide/from16 v26, v10

    move v10, v5

    move-object v5, v12

    :goto_1
    move-wide/from16 v11, v26

    goto :goto_3

    :cond_3
    iget-wide v10, v3, Le/a/a/e/n$e;->h:J

    iget-object v5, v3, Le/a/a/e/n$e;->g:Ljava/lang/Object;

    check-cast v5, Le/a/a/e/n;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    .line 5
    invoke-virtual {v1, v8}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v1

    const-string v5, "DateTime.now().minusDays\u2026gs.INBOX_CLEANUP_DAYS_30)"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-wide v10, v1, Lw3/b/a/e0/e;->a:J

    .line 7
    iput-object v0, v3, Le/a/a/e/n$e;->g:Ljava/lang/Object;

    iput-wide v10, v3, Le/a/a/e/n$e;->h:J

    iput v9, v3, Le/a/a/e/n$e;->e:I

    .line 8
    iget-object v1, v0, Le/a/a/e/n;->k:Le/a/a/t0/a;

    check-cast v1, Le/a/a/t0/b;

    invoke-virtual {v1, v10, v11, v3}, Le/a/a/t0/b;->b(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_5

    return-object v4

    :cond_5
    move-object v5, v0

    .line 9
    :goto_2
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 10
    iput-object v5, v3, Le/a/a/e/n$e;->g:Ljava/lang/Object;

    iput-wide v10, v3, Le/a/a/e/n$e;->h:J

    iput v1, v3, Le/a/a/e/n$e;->i:I

    iput v7, v3, Le/a/a/e/n$e;->e:I

    invoke-virtual {v5, v10, v11, v3}, Le/a/a/e/n;->o(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v4, :cond_6

    return-object v4

    :cond_6
    move-wide/from16 v26, v10

    move v10, v1

    move-object v1, v12

    goto :goto_1

    :goto_3
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 11
    iput-object v5, v3, Le/a/a/e/n$e;->g:Ljava/lang/Object;

    iput v10, v3, Le/a/a/e/n$e;->i:I

    iput v1, v3, Le/a/a/e/n$e;->j:I

    iput v6, v3, Le/a/a/e/n$e;->e:I

    invoke-virtual {v5, v11, v12, v3}, Le/a/a/e/n;->f(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_7

    return-object v4

    :cond_7
    move v4, v1

    move-object v1, v3

    move-object v3, v5

    move v5, v10

    :goto_4
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 12
    iget-object v6, v3, Le/a/a/e/n;->j:Le/a/u3/g;

    .line 13
    iget-object v10, v6, Le/a/u3/g;->i5:Le/a/u3/g$a;

    sget-object v11, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v12, 0x146

    aget-object v12, v11, v12

    invoke-virtual {v10, v6, v12}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v6

    check-cast v6, Le/a/u3/i;

    .line 14
    invoke-interface {v6, v8}, Le/a/u3/i;->getInt(I)I

    move-result v6

    if-le v5, v6, :cond_8

    move v6, v9

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    .line 15
    :goto_5
    iget-object v12, v3, Le/a/a/e/n;->j:Le/a/u3/g;

    .line 16
    iget-object v13, v12, Le/a/u3/g;->j5:Le/a/u3/g$a;

    const/16 v14, 0x147

    aget-object v14, v11, v14

    invoke-virtual {v13, v12, v14}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v12

    check-cast v12, Le/a/u3/i;

    const/16 v13, 0x32

    .line 17
    invoke-interface {v12, v13}, Le/a/u3/i;->getInt(I)I

    move-result v12

    if-le v4, v12, :cond_9

    move v12, v9

    goto :goto_6

    :cond_9
    const/4 v12, 0x0

    .line 18
    :goto_6
    iget-object v14, v3, Le/a/a/e/n;->j:Le/a/u3/g;

    .line 19
    iget-object v15, v14, Le/a/u3/g;->k5:Le/a/u3/g$a;

    const/16 v16, 0x148

    aget-object v10, v11, v16

    invoke-virtual {v15, v14, v10}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v10

    check-cast v10, Le/a/u3/i;

    .line 20
    invoke-interface {v10, v13}, Le/a/u3/i;->getInt(I)I

    move-result v10

    if-le v1, v10, :cond_a

    move v10, v9

    goto :goto_7

    :cond_a
    const/4 v10, 0x0

    .line 21
    :goto_7
    new-instance v13, Lw3/b/a/b;

    invoke-direct {v13}, Lw3/b/a/b;-><init>()V

    invoke-virtual {v13}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v13

    const-string v14, "DateTime().withTimeAtStartOfDay()"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v14, v3, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v14}, Le/a/a/i0;->o1()Lw3/b/a/b;

    move-result-object v14

    const-string v15, "messageSettings.firstDMANotificationShownDate"

    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v17, v10

    .line 23
    iget-wide v9, v14, Lw3/b/a/e0/e;->a:J

    const-wide/16 v18, 0x0

    cmp-long v9, v9, v18

    if-eqz v9, :cond_c

    .line 24
    iget-object v9, v3, Le/a/a/e/n;->n:Le/a/b0/q/l0;

    iget-object v10, v3, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v10}, Le/a/a/i0;->o1()Lw3/b/a/b;

    move-result-object v10

    invoke-static {v10, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-wide v7, v10, Lw3/b/a/e0/e;->a:J

    const-wide/16 v23, 0x1e

    .line 26
    sget-object v25, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v20, v9

    move-wide/from16 v21, v7

    invoke-virtual/range {v20 .. v25}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_8

    :cond_b
    const/4 v7, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v7, 0x1

    :goto_9
    if-nez v7, :cond_e

    .line 27
    iget-object v7, v3, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v7}, Le/a/a/i0;->l0()Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_a

    .line 28
    :cond_d
    iget-object v7, v3, Le/a/a/e/n;->j:Le/a/u3/g;

    .line 29
    iget-object v8, v7, Le/a/u3/g;->m5:Le/a/u3/g$a;

    const/16 v9, 0x14a

    aget-object v9, v11, v9

    invoke-virtual {v8, v7, v9}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v7

    check-cast v7, Le/a/u3/i;

    const/16 v8, 0x1e

    .line 30
    invoke-interface {v7, v8}, Le/a/u3/i;->getInt(I)I

    move-result v7

    goto :goto_b

    .line 31
    :cond_e
    :goto_a
    iget-object v7, v3, Le/a/a/e/n;->j:Le/a/u3/g;

    .line 32
    iget-object v8, v7, Le/a/u3/g;->l5:Le/a/u3/g$a;

    const/16 v9, 0x149

    aget-object v9, v11, v9

    invoke-virtual {v8, v7, v9}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v7

    check-cast v7, Le/a/u3/i;

    const/4 v8, 0x7

    .line 33
    invoke-interface {v7, v8}, Le/a/u3/i;->getInt(I)I

    move-result v7

    :goto_b
    int-to-long v7, v7

    .line 34
    iget-object v9, v3, Le/a/a/e/n;->n:Le/a/b0/q/l0;

    iget-object v10, v3, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v10}, Le/a/a/i0;->a0()Lw3/b/a/b;

    move-result-object v10

    const-string v11, "messageSettings.lastDMANotificationShownDate"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-wide v10, v10, Lw3/b/a/e0/e;->a:J

    .line 36
    sget-object v25, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v20, v9

    move-wide/from16 v21, v10

    move-wide/from16 v23, v7

    invoke-virtual/range {v20 .. v25}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    .line 37
    iget-object v8, v3, Le/a/a/e/n;->c:Le/a/p5/g;

    invoke-interface {v8}, Le/a/p5/g;->c()Z

    move-result v8

    if-nez v8, :cond_10

    if-nez v6, :cond_f

    if-nez v12, :cond_f

    if-eqz v17, :cond_10

    .line 38
    :cond_f
    iget-object v6, v3, Le/a/a/e/n;->l:Le/a/o5/b0;

    invoke-interface {v6}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v8

    const/16 v9, 0x16

    invoke-virtual {v13, v9}, Lw3/b/a/b;->E(I)Lw3/b/a/b;

    move-result-object v9

    const-string v10, "startOfDay.plusHours(22)"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v8, v9}, Le/a/o5/b0;->f(Lw3/b/a/b;Lw3/b/a/b;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 39
    iget-object v6, v3, Le/a/a/e/n;->l:Le/a/o5/b0;

    invoke-interface {v6}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v13, v9}, Lw3/b/a/b;->E(I)Lw3/b/a/b;

    move-result-object v9

    const-string v10, "startOfDay.plusHours(8)"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v8, v9}, Le/a/o5/b0;->g(Lw3/b/a/b;Lw3/b/a/b;)Z

    move-result v6

    if-eqz v6, :cond_10

    if-eqz v7, :cond_10

    const/4 v6, 0x1

    goto :goto_c

    :cond_10
    const/4 v6, 0x0

    :goto_c
    if-nez v6, :cond_11

    return-object v2

    .line 40
    :cond_11
    iget-object v6, v3, Le/a/a/e/n;->m:Le/a/c0/h;

    .line 41
    iget-object v6, v6, Le/a/c0/h;->h:Le/a/c0/c;

    .line 42
    invoke-virtual {v6}, Le/a/c0/c;->f()Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/truecaller/abtest/ThreeVariants;

    if-nez v6, :cond_12

    goto :goto_d

    :cond_12
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_15

    const/4 v7, 0x1

    if-eq v6, v7, :cond_14

    const/4 v1, 0x2

    if-eq v6, v1, :cond_13

    goto :goto_d

    .line 43
    :cond_13
    iget-object v1, v3, Le/a/a/e/n;->f:Le/a/a/e/o;

    invoke-interface {v1}, Le/a/a/e/o;->e()V

    goto :goto_d

    .line 44
    :cond_14
    iget-object v1, v3, Le/a/a/e/n;->f:Le/a/a/e/o;

    invoke-interface {v1}, Le/a/a/e/o;->d()V

    goto :goto_d

    .line 45
    :cond_15
    iget-object v6, v3, Le/a/a/e/n;->f:Le/a/a/e/o;

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v6, v1}, Le/a/a/e/o;->b(I)V

    .line 46
    :goto_d
    iget-object v1, v3, Le/a/a/e/n;->m:Le/a/c0/h;

    .line 47
    iget-object v1, v1, Le/a/c0/h;->h:Le/a/c0/c;

    .line 48
    invoke-virtual {v1}, Le/a/c0/c;->f()Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/truecaller/abtest/ThreeVariants;

    if-eqz v1, :cond_17

    .line 49
    iget-object v1, v3, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->o1()Lw3/b/a/b;

    move-result-object v1

    invoke-static {v1, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-wide v4, v1, Lw3/b/a/e0/e;->a:J

    cmp-long v1, v4, v18

    if-nez v1, :cond_16

    .line 51
    iget-object v1, v3, Le/a/a/e/n;->b:Le/a/a/i0;

    .line 52
    new-instance v4, Lw3/b/a/b;

    invoke-direct {v4}, Lw3/b/a/b;-><init>()V

    .line 53
    invoke-interface {v1, v4}, Le/a/a/i0;->z2(Lw3/b/a/b;)V

    .line 54
    :cond_16
    iget-object v1, v3, Le/a/a/e/n;->b:Le/a/a/i0;

    .line 55
    new-instance v4, Lw3/b/a/b;

    invoke-direct {v4}, Lw3/b/a/b;-><init>()V

    .line 56
    invoke-interface {v1, v4}, Le/a/a/i0;->p2(Lw3/b/a/b;)V

    .line 57
    iget-object v1, v3, Le/a/a/e/n;->b:Le/a/a/i0;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Le/a/a/i0;->I0(Z)V

    :cond_17
    return-object v2
.end method

.method public i(JLs1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/e/n;->k:Le/a/a/t0/a;

    check-cast v0, Le/a/a/t0/b;

    invoke-virtual {v0, p1, p2, p3}, Le/a/a/t0/b;->b(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j()Z
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/e/n;->j:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->u4:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x11c

    aget-object v3, v2, v3

    invoke-virtual {v1, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Le/a/a/e/n;->j:Le/a/u3/g;

    .line 5
    iget-object v4, v0, Le/a/u3/g;->h5:Le/a/u3/g$a;

    const/16 v5, 0x145

    aget-object v2, v2, v5

    invoke-virtual {v4, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 6
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_5

    const-string v2, ","

    .line 8
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    invoke-static {v0, v2, v3, v3, v5}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v0

    .line 9
    iget-object v2, p0, Le/a/a/e/n;->c:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->e()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v1

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_5

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-static {v2, v6, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v5

    :cond_3
    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v1

    :goto_3
    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    return v1
.end method

.method public k(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p1, Le/a/a/e/n$a;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/a/e/n$a;

    iget v2, v1, Le/a/a/e/n$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/a/e/n$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/a/e/n$a;

    invoke-direct {v1, p0, p1}, Le/a/a/e/n$a;-><init>(Le/a/a/e/n;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/a/e/n$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/a/e/n$a;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v1, v1, Le/a/a/e/n$a;->g:Ljava/lang/Object;

    check-cast v1, Le/a/a/e/n;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v1, Le/a/a/e/n$a;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/a/e/n$a;->e:I

    invoke-virtual {p0, v1}, Le/a/a/e/n;->p(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    return-object v2

    :cond_3
    move-object v1, p0

    .line 5
    :goto_1
    check-cast p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult;

    .line 6
    instance-of v2, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;

    if-eqz v2, :cond_4

    .line 7
    iget-object v2, v1, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->K2()I

    move-result v3

    move-object v4, p1

    check-cast v4, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;

    .line 8
    iget v5, v4, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->a:I

    add-int/2addr v3, v5

    .line 9
    invoke-interface {v2, v3}, Le/a/a/i0;->Y(I)V

    .line 10
    iget-object v2, v1, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->c1()I

    move-result v3

    .line 11
    iget v5, v4, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->b:I

    add-int/2addr v3, v5

    .line 12
    invoke-interface {v2, v3}, Le/a/a/i0;->q(I)V

    .line 13
    iget-object v2, v1, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->E2()I

    move-result v3

    .line 14
    iget v5, v4, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->c:I

    add-int/2addr v3, v5

    .line 15
    invoke-interface {v2, v3}, Le/a/a/i0;->Z2(I)V

    .line 16
    iget-object v2, v1, Le/a/a/e/n;->b:Le/a/a/i0;

    .line 17
    new-instance v3, Lw3/b/a/b;

    invoke-direct {v3}, Lw3/b/a/b;-><init>()V

    .line 18
    invoke-interface {v2, v3}, Le/a/a/i0;->U0(Lw3/b/a/b;)V

    .line 19
    iget-object v2, v1, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->y0()V

    .line 20
    iget v2, v4, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->a:I

    .line 21
    iget v3, v4, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->b:I

    .line 22
    iget v4, v4, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->c:I

    .line 23
    invoke-virtual {v1, v2, v3, v4}, Le/a/a/e/n;->q(III)V

    goto :goto_2

    .line 24
    :cond_4
    iget-object v2, v1, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->U()V

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2, v2, v2}, Le/a/a/e/n;->q(III)V

    .line 26
    :goto_2
    iget-object v2, v1, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->u0()Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;

    .line 27
    iget-boolean v2, v2, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;->a:Z

    if-nez v2, :cond_5

    goto :goto_3

    .line 28
    :cond_5
    iget-object v1, v1, Le/a/a/e/n;->f:Le/a/a/e/o;

    invoke-interface {v1, p1}, Le/a/a/e/o;->a(Lcom/truecaller/messaging/inboxcleanup/CleanupResult;)V

    :cond_6
    :goto_3
    return-object v0
.end method

.method public l(JJLs1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/e/n;->k:Le/a/a/t0/a;

    move-object v1, v0

    check-cast v1, Le/a/a/t0/b;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Le/a/a/t0/b;->a(JJLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/e/n;->a:Le/a/a/i1/d;

    const-string v1, "cleanInbox-confirmCleanupManually"

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2, p2}, Le/a/a/i1/d;->c(Ljava/util/List;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n(JLs1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Le/a/a/e/n;->k:Le/a/a/t0/a;

    check-cast p3, Le/a/a/t0/b;

    .line 2
    iget-object v0, p3, Le/a/a/t0/b;->a:Landroid/content/ContentResolver;

    const-wide/16 v1, 0x0

    .line 3
    invoke-static {v1, v2, p1, p2}, Le/a/b0/q/g0;->i(JJ)Landroid/net/Uri;

    move-result-object v1

    .line 4
    iget-object p1, p3, Le/a/a/t0/b;->c:Le/a/a/g/x;

    sget-object p2, Lcom/truecaller/messaging/data/types/InboxTab;->PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {p1, p2}, Le/a/a/g/x;->a(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p2, p3, Le/a/a/t0/b;->b:Le/a/a/g/g;

    invoke-interface {p2, p1}, Le/a/a/g/g;->i(Landroid/database/Cursor;)Le/a/a/g/j0/q;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 7
    :try_start_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {p1}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    const-string v1, "message"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 11
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    .line 12
    :cond_1
    sget-object p3, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    return-object p3
.end method

.method public o(JLs1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/e/n;->k:Le/a/a/t0/a;

    check-cast v0, Le/a/a/t0/b;

    invoke-virtual {v0, p1, p2, p3}, Le/a/a/t0/b;->d(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final p(Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/messaging/inboxcleanup/CleanupResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/a/e/n$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/a/e/n$b;

    iget v1, v0, Le/a/a/e/n$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/e/n$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/e/n$b;

    invoke-direct {v0, p0, p1}, Le/a/a/e/n$b;-><init>(Le/a/a/e/n;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/a/e/n$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/e/n$b;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget v1, v0, Le/a/a/e/n$b;->k:I

    iget v2, v0, Le/a/a/e/n$b;->j:I

    iget v0, v0, Le/a/a/e/n$b;->i:I

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget v2, v0, Le/a/a/e/n$b;->j:I

    iget v4, v0, Le/a/a/e/n$b;->i:I

    iget-object v5, v0, Le/a/a/e/n$b;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v8, v0, Le/a/a/e/n$b;->g:Ljava/lang/Object;

    check-cast v8, Le/a/a/e/n;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    iget v2, v0, Le/a/a/e/n$b;->i:I

    iget-object v5, v0, Le/a/a/e/n$b;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v8, v0, Le/a/a/e/n$b;->g:Ljava/lang/Object;

    check-cast v8, Le/a/a/e/n;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget-object v2, v0, Le/a/a/e/n$b;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v8, v0, Le/a/a/e/n$b;->g:Ljava/lang/Object;

    check-cast v8, Le/a/a/e/n;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->q0()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;

    invoke-direct {p1, v7, v6}, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;-><init>(ZI)V

    return-object p1

    .line 5
    :cond_6
    iget-object p1, p0, Le/a/a/e/n;->c:Le/a/p5/g;

    invoke-interface {p1}, Le/a/p5/g;->c()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Le/a/a/e/n;->d:Le/a/h5/w;

    invoke-interface {p1}, Le/a/h5/w;->j()Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_b

    .line 6
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object p1, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->Q()I

    move-result p1

    if-eqz p1, :cond_9

    .line 8
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1}, Lw3/b/a/b;-><init>()V

    .line 9
    iget-object v8, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v8}, Le/a/a/i0;->Q()I

    move-result v8

    invoke-virtual {p1, v8}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object p1

    const-string v8, "DateTime.now().minusDays\u2026ngs.autoCleanupOtpPeriod)"

    invoke-static {p1, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-wide v8, p1, Lw3/b/a/e0/e;->a:J

    .line 11
    iput-object p0, v0, Le/a/a/e/n$b;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/a/e/n$b;->h:Ljava/lang/Object;

    iput v6, v0, Le/a/a/e/n$b;->e:I

    invoke-virtual {p0, v8, v9, v0}, Le/a/a/e/n;->d(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object v8, p0

    .line 12
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    .line 14
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p1, v2

    move v2, v9

    goto :goto_2

    :cond_9
    move-object v8, p0

    move-object p1, v2

    move v2, v7

    .line 15
    :goto_2
    iget-object v9, v8, Le/a/a/e/n;->j:Le/a/u3/g;

    invoke-virtual {v9}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object v9

    invoke-interface {v9}, Le/a/u3/b;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v8, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v9}, Le/a/a/i0;->V2()I

    move-result v9

    if-eqz v9, :cond_b

    .line 16
    new-instance v9, Lw3/b/a/b;

    invoke-direct {v9}, Lw3/b/a/b;-><init>()V

    .line 17
    iget-object v10, v8, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v10}, Le/a/a/i0;->V2()I

    move-result v10

    invoke-virtual {v9, v10}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v9

    const-string v10, "DateTime.now().minusDays\u2026CleanupPromotionalPeriod)"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-wide v9, v9, Lw3/b/a/e0/e;->a:J

    .line 19
    iput-object v8, v0, Le/a/a/e/n$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/a/e/n$b;->h:Ljava/lang/Object;

    iput v2, v0, Le/a/a/e/n$b;->i:I

    iput v5, v0, Le/a/a/e/n$b;->e:I

    invoke-virtual {v8, v9, v10, v0}, Le/a/a/e/n;->n(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_a

    return-object v1

    :cond_a
    move-object v11, v5

    move-object v5, p1

    move-object p1, v11

    .line 20
    :goto_3
    check-cast p1, Ljava/util/List;

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    .line 22
    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move p1, v2

    move v2, v9

    goto :goto_4

    :cond_b
    move-object v5, p1

    move p1, v2

    move v2, v7

    .line 23
    :goto_4
    iget-object v9, v8, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v9}, Le/a/a/i0;->V0()I

    move-result v9

    if-eqz v9, :cond_d

    .line 24
    new-instance v9, Lw3/b/a/b;

    invoke-direct {v9}, Lw3/b/a/b;-><init>()V

    .line 25
    iget-object v10, v8, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v10}, Le/a/a/i0;->V0()I

    move-result v10

    invoke-virtual {v9, v10}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v9

    const-string v10, "DateTime.now().minusDays\u2026gs.autoCleanupSpamPeriod)"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-wide v9, v9, Lw3/b/a/e0/e;->a:J

    .line 27
    iput-object v8, v0, Le/a/a/e/n$b;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/a/e/n$b;->h:Ljava/lang/Object;

    iput p1, v0, Le/a/a/e/n$b;->i:I

    iput v2, v0, Le/a/a/e/n$b;->j:I

    iput v4, v0, Le/a/a/e/n$b;->e:I

    invoke-virtual {v8, v9, v10, v0}, Le/a/a/e/n;->g(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_c

    return-object v1

    :cond_c
    move-object v11, v4

    move v4, p1

    move-object p1, v11

    .line 28
    :goto_5
    check-cast p1, Ljava/util/List;

    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    .line 30
    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move p1, v4

    goto :goto_6

    :cond_d
    move v9, v7

    :goto_6
    if-nez p1, :cond_e

    if-nez v2, :cond_e

    if-nez v9, :cond_e

    .line 31
    new-instance p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;

    invoke-direct {p1, v7}, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;-><init>(Z)V

    return-object p1

    .line 32
    :cond_e
    iget-object v4, v8, Le/a/a/e/n;->e:Le/a/r2/f;

    invoke-interface {v4}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/g/m;

    .line 33
    invoke-interface {v4, v6, v5}, Le/a/a/g/m;->z(ZLjava/util/List;)Le/a/r2/x;

    move-result-object v4

    const-string v5, "messagesStorage.tell()\n \u2026eMessages(true, messages)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    iput-object v5, v0, Le/a/a/e/n$b;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/a/e/n$b;->h:Ljava/lang/Object;

    iput p1, v0, Le/a/a/e/n$b;->i:I

    iput v2, v0, Le/a/a/e/n$b;->j:I

    iput v9, v0, Le/a/a/e/n$b;->k:I

    iput v3, v0, Le/a/a/e/n$b;->e:I

    .line 34
    invoke-static {v4, v0}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_f

    return-object v1

    :cond_f
    move v1, v9

    move-object v11, v0

    move v0, p1

    move-object p1, v11

    .line 35
    :goto_7
    check-cast p1, Landroid/util/SparseBooleanArray;

    if-eqz p1, :cond_14

    .line 36
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    invoke-static {v7, v3}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v3

    .line 37
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_10

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_8

    .line 38
    :cond_10
    invoke-virtual {v3}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    move-object v4, v3

    check-cast v4, Ls1/d0/h;

    .line 39
    iget-boolean v4, v4, Ls1/d0/h;->b:Z

    if-eqz v4, :cond_12

    .line 40
    move-object v4, v3

    check-cast v4, Ls1/u/z;

    invoke-virtual {v4}, Ls1/u/z;->a()I

    move-result v4

    .line 41
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 42
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_11

    move p1, v7

    goto :goto_9

    :cond_12
    :goto_8
    move p1, v6

    :goto_9
    if-eqz p1, :cond_13

    new-instance p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;

    invoke-direct {p1, v0, v2, v1}, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;-><init>(III)V

    goto :goto_a

    .line 44
    :cond_13
    new-instance p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;

    invoke-direct {p1, v7, v6}, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;-><init>(ZI)V

    :goto_a
    return-object p1

    .line 45
    :cond_14
    new-instance p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;

    invoke-direct {p1, v7, v6}, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;-><init>(ZI)V

    return-object p1

    .line 46
    :cond_15
    :goto_b
    sget-object p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$NoPermissionsError;->a:Lcom/truecaller/messaging/inboxcleanup/CleanupResult$NoPermissionsError;

    return-object p1
.end method

.method public final q(III)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->Q()I

    move-result v0

    invoke-virtual {p0, v0}, Le/a/a/e/n;->r(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->V2()I

    move-result v1

    invoke-virtual {p0, v1}, Le/a/a/e/n;->r(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->V0()I

    move-result v2

    invoke-virtual {p0, v2}, Le/a/a/e/n;->r(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Le/a/a/e/n;->h:Le/a/q2/a;

    .line 5
    new-instance v4, Le/a/q2/e0;

    const-string v5, "CiCleanup"

    invoke-direct {v4, v5}, Le/a/q2/e0;-><init>(Ljava/lang/String;)V

    const-string v5, "cleanupType"

    const-string v6, "auto"

    .line 6
    invoke-virtual {v4, v5, v6}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    const-string v5, "otpFreq"

    .line 7
    invoke-virtual {v4, v5, v0}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    const-string v0, "promotionalFreq"

    .line 8
    invoke-virtual {v4, v0, v1}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    const-string v0, "spamFreq"

    .line 9
    invoke-virtual {v4, v0, v2}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 10
    iget-object v0, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->Q()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "numOtp"

    .line 11
    invoke-virtual {v4, v0, p1}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 12
    :cond_0
    iget-object p1, p0, Le/a/a/e/n;->j:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->V2()I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "numPromotional"

    .line 13
    invoke-virtual {v4, p1, p2}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 14
    :cond_1
    iget-object p1, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->V0()I

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "numSpam"

    .line 15
    invoke-virtual {v4, p1, p3}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 16
    :cond_2
    iget-object p1, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->P()I

    move-result p1

    const-string p2, "lifetimeSuccess"

    invoke-virtual {v4, p2, p1}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 17
    iget-object p1, p0, Le/a/a/e/n;->b:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->M3()I

    move-result p1

    const-string p2, "lifetimeFailure"

    invoke-virtual {v4, p2, p1}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 18
    invoke-virtual {v4}, Le/a/q2/e0;->a()Le/a/l5/a/p3;

    move-result-object p1

    .line 19
    invoke-interface {v3, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public final r(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    const-string p1, "none"

    goto :goto_0

    :cond_0
    const-string p1, "30 days"

    goto :goto_0

    :cond_1
    const-string p1, "15 days"

    goto :goto_0

    :cond_2
    const-string p1, "7 days"

    goto :goto_0

    :cond_3
    const-string p1, "all"

    :goto_0
    return-object p1
.end method
