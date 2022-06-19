.class public final Le/a/q2/z0/c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/z0/c;->b(Lcom/truecaller/analytics/heartbeat/HeartBeatType;)V
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
    c = "com.truecaller.analytics.heartbeat.HeartBeatReporterImpl$reportAsync$1"
    f = "HeartBeatReporter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/q2/z0/c;

.field public final synthetic f:Lcom/truecaller/analytics/heartbeat/HeartBeatType;


# direct methods
.method public constructor <init>(Le/a/q2/z0/c;Lcom/truecaller/analytics/heartbeat/HeartBeatType;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/z0/c$a;->e:Le/a/q2/z0/c;

    iput-object p2, p0, Le/a/q2/z0/c$a;->f:Lcom/truecaller/analytics/heartbeat/HeartBeatType;

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

    new-instance p1, Le/a/q2/z0/c$a;

    iget-object v0, p0, Le/a/q2/z0/c$a;->e:Le/a/q2/z0/c;

    iget-object v1, p0, Le/a/q2/z0/c$a;->f:Lcom/truecaller/analytics/heartbeat/HeartBeatType;

    invoke-direct {p1, v0, v1, p2}, Le/a/q2/z0/c$a;-><init>(Le/a/q2/z0/c;Lcom/truecaller/analytics/heartbeat/HeartBeatType;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/q2/z0/c$a;->e:Le/a/q2/z0/c;

    iget-object v1, p0, Le/a/q2/z0/c$a;->f:Lcom/truecaller/analytics/heartbeat/HeartBeatType;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/q2/z0/c;->c:Le/a/b0/e/l;

    invoke-interface {p2}, Le/a/b0/e/l;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Le/a/q2/z0/c;->c(Lcom/truecaller/analytics/heartbeat/HeartBeatType;)Landroidx/work/ListenableWorker$a;

    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/q2/z0/c$a;->e:Le/a/q2/z0/c;

    .line 3
    iget-object p1, p1, Le/a/q2/z0/c;->c:Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/q2/z0/c$a;->e:Le/a/q2/z0/c;

    iget-object v0, p0, Le/a/q2/z0/c$a;->f:Lcom/truecaller/analytics/heartbeat/HeartBeatType;

    invoke-virtual {p1, v0}, Le/a/q2/z0/c;->c(Lcom/truecaller/analytics/heartbeat/HeartBeatType;)Landroidx/work/ListenableWorker$a;

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
