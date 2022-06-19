.class public final Le/a/k0/l/e;
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
    c = "com.truecaller.callrecording.recorder.CallRecorderSessionManagerImpl$logRecordingEnded$1"
    f = "CallRecorderSessionManager.kt"
    l = {
        0xf2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/k0/l/d;

.field public final synthetic h:Le/a/k0/l/j;


# direct methods
.method public constructor <init>(Le/a/k0/l/d;Le/a/k0/l/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/l/e;->g:Le/a/k0/l/d;

    iput-object p2, p0, Le/a/k0/l/e;->h:Le/a/k0/l/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k0/l/e;

    iget-object v1, p0, Le/a/k0/l/e;->g:Le/a/k0/l/d;

    iget-object v2, p0, Le/a/k0/l/e;->h:Le/a/k0/l/j;

    invoke-direct {v0, v1, v2, p2}, Le/a/k0/l/e;-><init>(Le/a/k0/l/d;Le/a/k0/l/j;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k0/l/e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k0/l/e;

    iget-object v1, p0, Le/a/k0/l/e;->g:Le/a/k0/l/d;

    iget-object v2, p0, Le/a/k0/l/e;->h:Le/a/k0/l/j;

    invoke-direct {v0, v1, v2, p2}, Le/a/k0/l/e;-><init>(Le/a/k0/l/d;Le/a/k0/l/j;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k0/l/e;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k0/l/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/k0/l/e;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Le/a/k0/l/e;->e:Ljava/lang/Object;

    check-cast v1, Le/a/k0/l/l;

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
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k0/l/e;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-object p1, p0, Le/a/k0/l/e;->g:Le/a/k0/l/d;

    .line 5
    iget-boolean v2, p1, Le/a/k0/l/d;->a:Z

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, p1, Le/a/k0/l/d;->a:Z

    .line 7
    iget-object v4, p0, Le/a/k0/l/e;->h:Le/a/k0/l/j;

    .line 8
    iget-object v5, v4, Le/a/k0/l/j;->c:Lcom/truecaller/callrecording/recorder/RecordingError;

    .line 9
    sget-object v6, Lcom/truecaller/callrecording/recorder/RecordingError;->NONE:Lcom/truecaller/callrecording/recorder/RecordingError;

    if-ne v5, v6, :cond_5

    .line 10
    iget-object p1, v4, Le/a/k0/l/j;->a:Le/a/k0/l/l;

    if-eqz p1, :cond_4

    const-wide/16 v4, 0x3e8

    .line 11
    iput-object p1, p0, Le/a/k0/l/e;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/k0/l/e;->f:I

    invoke-static {v4, v5, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p1

    .line 12
    :goto_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Le/a/k0/l/e;->h:Le/a/k0/l/j;

    .line 13
    iget-wide v2, v2, Le/a/k0/l/j;->b:J

    .line 14
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int p1, v2

    .line 15
    iget-object v2, p0, Le/a/k0/l/e;->g:Le/a/k0/l/d;

    .line 16
    iget-object v2, v2, Le/a/k0/l/d;->g:Le/a/k0/m/a;

    .line 17
    iget-object v3, v1, Le/a/k0/l/l;->c:Ljava/lang/String;

    .line 18
    invoke-interface {v2, v3}, Le/a/k0/m/a;->c(Ljava/lang/String;)I

    move-result v2

    .line 19
    iget-object v3, p0, Le/a/k0/l/e;->g:Le/a/k0/l/d;

    .line 20
    iget-object v3, v3, Le/a/k0/l/d;->l:Le/a/k0/i/a;

    .line 21
    iget-object v1, v1, Le/a/k0/l/l;->a:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    .line 22
    invoke-interface {v3, v1, p1, v2}, Le/a/k0/i/a;->c(Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;II)V

    goto :goto_1

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session data must always be available at this point"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    return-object v0

    .line 24
    :cond_5
    iget-object p1, p1, Le/a/k0/l/d;->l:Le/a/k0/i/a;

    .line 25
    invoke-interface {p1, v5}, Le/a/k0/i/a;->a(Lcom/truecaller/callrecording/recorder/RecordingError;)V

    :goto_1
    return-object v0
.end method
