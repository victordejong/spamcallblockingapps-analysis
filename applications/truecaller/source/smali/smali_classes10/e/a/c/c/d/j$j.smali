.class public Le/a/c/c/d/j$j;
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
        "Lcom/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c/d/j;


# direct methods
.method public constructor <init>(Le/a/c/c/d/j;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/j$j;->a:Le/a/c/c/d/j;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel;->getParentEventId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 7
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    .line 9
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel;->getPropertyId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    .line 10
    iget-object v0, p0, Le/a/c/c/d/j$j;->a:Le/a/c/c/d/j;

    .line 11
    iget-object v0, v0, Le/a/c/c/d/j;->c:Le/a/c/c0/g;

    .line 12
    invoke-virtual {p2}, Lcom/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel;->getCreatedAt()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v0, p2}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x5

    if-nez p2, :cond_2

    .line 13
    invoke-interface {p1, v0}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    :goto_2
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `analytics_property_maps` (`parent_event_id`,`key`,`value`,`property_id`,`created_at`) VALUES (?,?,?,nullif(?, 0),?)"

    return-object v0
.end method
