.class public Le/a/c/c/d/j$k;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/j;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c/d/j;


# direct methods
.method public constructor <init>(Le/a/c/c/d/j;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/j$k;->a:Le/a/c/c/d/j;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getFeature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getFeature()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getEventCategory()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getEventCategory()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getEventInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getEventInfo()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 11
    :goto_2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getContext()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 12
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getContext()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 14
    :goto_3
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getActionType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 15
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getActionType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 17
    :goto_4
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getActionInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    .line 18
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_5

    .line 19
    :cond_5
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getActionInfo()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 20
    :goto_5
    iget-object v0, p0, Le/a/c/c/d/j$k;->a:Le/a/c/c/d/j;

    .line 21
    iget-object v0, v0, Le/a/c/c/d/j;->c:Le/a/c/c0/g;

    .line 22
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getEventDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_6

    .line 23
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_6

    .line 24
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    :goto_6
    const/16 v0, 0x8

    .line 25
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getCounts()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    const/16 v0, 0x9

    .line 26
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getAggEventId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    .line 27
    iget-object v0, p0, Le/a/c/c/d/j$k;->a:Le/a/c/c/d/j;

    .line 28
    iget-object v0, v0, Le/a/c/c/d/j;->c:Le/a/c/c0/g;

    .line 29
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_7

    .line 30
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_7

    .line 31
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 32
    :goto_7
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->getConsumed()Z

    move-result p2

    const/16 v0, 0xb

    int-to-long v1, p2

    .line 33
    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `aggregate_analytics_events` (`feature`,`event_category`,`event_info`,`context`,`action_type`,`action_info`,`event_date`,`counts`,`agg_event_id`,`created_at`,`consumed`) VALUES (?,?,?,?,?,?,?,?,nullif(?, 0),?,?)"

    return-object v0
.end method
