.class public final Le/a/q2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/q2/u$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/a/q2/u$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/p5/c;

.field public final c:Le/a/q2/a;

.field public final d:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/p5/c;Le/a/q2/a;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/u;->b:Le/a/p5/c;

    iput-object p2, p0, Le/a/q2/u;->c:Le/a/q2/a;

    iput-object p3, p0, Le/a/q2/u;->d:Le/a/u3/g;

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/a/q2/u;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/analytics/TimingEvent;I)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/analytics/TimingEvent;->getUnique()Z

    move-result v0

    const-string v1, "Only unique events can be finished without passing key"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/analytics/TimingEvent;->getEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Le/a/q2/u;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Lcom/truecaller/analytics/TimingEvent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/analytics/TimingEvent;->getUnique()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/analytics/TimingEvent;->getEvent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "UUID.randomUUID().toString()"

    invoke-static {v0}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    iget-object v1, p0, Le/a/q2/u;->a:Ljava/util/HashMap;

    new-instance v8, Le/a/q2/u$a;

    .line 3
    iget-object v2, p0, Le/a/q2/u;->b:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->b()J

    move-result-wide v6

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 4
    invoke-direct/range {v2 .. v7}, Le/a/q2/u$a;-><init>(Lcom/truecaller/analytics/TimingEvent;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/q2/u;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/String;I)V
    .locals 12

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/q2/u;->b:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->b()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Le/a/q2/u;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/u$a;

    if-eqz p1, :cond_7

    .line 3
    iget-wide v2, p1, Le/a/q2/u$a;->d:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    .line 4
    new-instance v2, Le/a/q2/g$b;

    const-string v3, "Timing"

    invoke-direct {v2, v3}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v4, p1, Le/a/q2/u$a;->a:Lcom/truecaller/analytics/TimingEvent;

    .line 6
    invoke-virtual {v4}, Lcom/truecaller/analytics/TimingEvent;->getEvent()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Event"

    invoke-virtual {v2, v5, v4}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    const-string v4, "Type"

    const-string v6, "Full"

    .line 7
    invoke-virtual {v2, v4, v6}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 8
    iget-object v6, p1, Le/a/q2/u$a;->b:Ljava/lang/String;

    const-string v7, "State"

    if-eqz v6, :cond_0

    .line 9
    invoke-virtual {v2, v7, v6}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 10
    :cond_0
    iget-object v6, p1, Le/a/q2/u$a;->c:Ljava/lang/String;

    const-string v8, "Parameters"

    if-eqz v6, :cond_1

    .line 11
    invoke-virtual {v2, v8, v6}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    :cond_1
    if-lez p2, :cond_2

    const-string v6, "Count"

    .line 12
    invoke-virtual {v2, v6, p2}, Le/a/q2/g$b;->b(Ljava/lang/String;I)Le/a/q2/g$b;

    .line 13
    :cond_2
    iget-object v6, p1, Le/a/q2/u$a;->a:Lcom/truecaller/analytics/TimingEvent;

    .line 14
    invoke-virtual {v6}, Lcom/truecaller/analytics/TimingEvent;->getEventGranularity()[J

    move-result-object v6

    const-string v9, "GranularValue"

    if-eqz v6, :cond_3

    invoke-virtual {p0, v0, v1, v6}, Le/a/q2/u;->f(D[J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v9, v6}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 15
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 16
    iput-object v6, v2, Le/a/q2/g$b;->c:Ljava/lang/Double;

    .line 17
    invoke-virtual {v2}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object v2

    const-string v6, "with(AnalyticsEvent.Buil\u2026    build()\n            }"

    .line 18
    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Le/a/q2/u;->e(Le/a/q2/g;)V

    if-lez p2, :cond_7

    int-to-double v10, p2

    div-double/2addr v0, v10

    .line 19
    iget-object p2, p1, Le/a/q2/u$a;->a:Lcom/truecaller/analytics/TimingEvent;

    .line 20
    invoke-virtual {p2}, Lcom/truecaller/analytics/TimingEvent;->getEvent()Ljava/lang/String;

    move-result-object p2

    .line 21
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 22
    invoke-virtual {v2, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PerItem"

    .line 23
    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p2, p1, Le/a/q2/u$a;->b:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 25
    invoke-interface {v2, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_4
    iget-object p2, p1, Le/a/q2/u$a;->c:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 27
    invoke-interface {v2, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_5
    iget-object p1, p1, Le/a/q2/u$a;->a:Lcom/truecaller/analytics/TimingEvent;

    .line 29
    invoke-virtual {p1}, Lcom/truecaller/analytics/TimingEvent;->getItemGranularity()[J

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0, v1, p1}, Le/a/q2/u;->f(D[J)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-interface {v2, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 32
    new-instance p2, Le/a/q2/g$b$a;

    const/4 v0, 0x0

    invoke-direct {p2, v3, p1, v2, v0}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string p1, "with(AnalyticsEvent.Buil\u2026build()\n                }"

    .line 33
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Le/a/q2/u;->e(Le/a/q2/g;)V

    :cond_7
    return-void
.end method

.method public final e(Le/a/q2/g;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q2/u;->d:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->B2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xb7

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4
    move-object v0, p1

    check-cast v0, Le/a/q2/g$b$a;

    .line 5
    iget-object v1, v0, Le/a/q2/g$b$a;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v2, "Event"

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "Type"

    .line 7
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    :cond_1
    iget-object v0, v0, Le/a/q2/g$b$a;->c:Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "%.2f"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "GranularValue"

    .line 11
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_3
    if-eqz v1, :cond_4

    const-string v0, "Count"

    .line 12
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_4
    if-eqz v1, :cond_5

    const-string v0, "State"

    .line 13
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_5
    if-eqz v1, :cond_6

    const-string v0, "Parameters"

    .line 14
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15
    :cond_6
    iget-object v0, p0, Le/a/q2/u;->c:Le/a/q2/a;

    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    :cond_7
    return-void
.end method

.method public final f(D[J)Ljava/lang/String;
    .locals 7

    .line 1
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-wide v3, p3, v2

    long-to-double v5, v3

    cmpg-double v5, p1, v5

    if-gez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    if-eqz v5, :cond_1

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 4
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const-string p1, "MAX"

    :goto_3
    return-object p1
.end method
