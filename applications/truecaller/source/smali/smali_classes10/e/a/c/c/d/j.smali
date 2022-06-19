.class public final Le/a/c/c/d/j;
.super Le/a/c/c/d/i;
.source "SourceFile"


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/c0/g;

.field public final d:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ln3/c0/c0;

.field public final g:Ln3/c0/c0;

.field public final h:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/c/c/d/i;-><init>()V

    .line 2
    new-instance v0, Le/a/c/c0/g;

    invoke-direct {v0}, Le/a/c/c0/g;-><init>()V

    iput-object v0, p0, Le/a/c/c/d/j;->c:Le/a/c/c0/g;

    .line 3
    iput-object p1, p0, Le/a/c/c/d/j;->a:Ln3/c0/q;

    .line 4
    new-instance v0, Le/a/c/c/d/j$g;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/j$g;-><init>(Le/a/c/c/d/j;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/j;->b:Ln3/c0/k;

    .line 5
    new-instance v0, Le/a/c/c/d/j$j;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/j$j;-><init>(Le/a/c/c/d/j;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/j;->d:Ln3/c0/k;

    .line 6
    new-instance v0, Le/a/c/c/d/j$k;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/j$k;-><init>(Le/a/c/c/d/j;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/j;->e:Ln3/c0/k;

    .line 7
    new-instance v0, Le/a/c/c/d/j$l;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/j$l;-><init>(Le/a/c/c/d/j;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/j;->f:Ln3/c0/c0;

    .line 8
    new-instance v0, Le/a/c/c/d/j$m;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/j$m;-><init>(Le/a/c/c/d/j;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/j;->g:Ln3/c0/c0;

    .line 9
    new-instance v0, Le/a/c/c/d/j$n;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/j$n;-><init>(Le/a/c/c/d/j;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/j;->h:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/j;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/j$e;

    invoke-direct {v1, p0}, Le/a/c/c/d/j$e;-><init>(Le/a/c/c/d/j;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/j;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/j$d;

    invoke-direct {v1, p0}, Le/a/c/c/d/j$d;-><init>(Le/a/c/c/d/j;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/j;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/j$c;

    invoke-direct {v1, p0, p1}, Le/a/c/c/d/j$c;-><init>(Le/a/c/c/d/j;Ljava/util/Date;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;",
            ">;",
            "Ls1/w/d<",
            "-[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/j;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/j$a;

    invoke-direct {v1, p0, p1}, Le/a/c/c/d/j$a;-><init>(Le/a/c/c/d/j;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;",
            ">;",
            "Ls1/w/d<",
            "-[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/j;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/j$o;

    invoke-direct {v1, p0, p1}, Le/a/c/c/d/j$o;-><init>(Le/a/c/c/d/j;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel;",
            ">;",
            "Ls1/w/d<",
            "-[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/j;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/j$b;

    invoke-direct {v1, p0, p1}, Le/a/c/c/d/j$b;-><init>(Le/a/c/c/d/j;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/analytics/AggregratedAnalyticsEvent;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, " SELECT feature, event_category, event_info, context, action_type,\n                    action_info,strftime(\'%s\',date(created_at/1000,\'unixepoch\')) * 1000 as event_date,\n                    count(*) AS counts FROM analytics_events WHERE consumed = 0 AND created_at <= ?  \n                    GROUP BY feature, event_category, event_info, context, action_type,\n                    action_info, date(created_at/1000,\'unixepoch\')"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    iget-object v2, p0, Le/a/c/c/d/j;->c:Le/a/c/c0/g;

    invoke-virtual {v2, p1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ln3/c0/y;->l0(IJ)V

    .line 5
    :goto_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 6
    iget-object v1, p0, Le/a/c/c/d/j;->a:Ln3/c0/q;

    const/4 v2, 0x0

    new-instance v3, Le/a/c/c/d/j$h;

    invoke-direct {v3, p0, v0}, Le/a/c/c/d/j$h;-><init>(Le/a/c/c/d/j;Ln3/c0/y;)V

    invoke-static {v1, v2, p1, v3, p2}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM analytics_events WHERE consumed = 0 ORDER BY created_at DESC LIMIT 1"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/c/c/d/j;->a:Ln3/c0/q;

    new-instance v4, Le/a/c/c/d/j$f;

    invoke-direct {v4, p0, v0}, Le/a/c/c/d/j$f;-><init>(Le/a/c/c/d/j;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/j;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/j$i;

    invoke-direct {v1, p0, p1}, Le/a/c/c/d/j$i;-><init>(Le/a/c/c/d/j;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
