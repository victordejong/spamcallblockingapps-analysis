.class public Le/n/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;


# instance fields
.field public final synthetic a:Lcom/mopub/nativeads/ImpressionTracker;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/ImpressionTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/d/d;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2
    iget-object v1, p0, Le/n/d/d;->a:Lcom/mopub/nativeads/ImpressionTracker;

    .line 3
    iget-object v1, v1, Lcom/mopub/nativeads/ImpressionTracker;->b:Ljava/util/Map;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/ImpressionInterface;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Le/n/d/d;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Le/n/d/d;->a:Lcom/mopub/nativeads/ImpressionTracker;

    .line 7
    iget-object v2, v2, Lcom/mopub/nativeads/ImpressionTracker;->c:Ljava/util/Map;

    .line 8
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/n/d/q;

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, v2, Le/n/d/q;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Le/n/d/d;->a:Lcom/mopub/nativeads/ImpressionTracker;

    .line 11
    iget-object v2, v2, Lcom/mopub/nativeads/ImpressionTracker;->c:Ljava/util/Map;

    .line 12
    new-instance v3, Le/n/d/q;

    invoke-direct {v3, v1}, Le/n/d/q;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 14
    iget-object v0, p0, Le/n/d/d;->a:Lcom/mopub/nativeads/ImpressionTracker;

    .line 15
    iget-object v0, v0, Lcom/mopub/nativeads/ImpressionTracker;->c:Ljava/util/Map;

    .line 16
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 17
    :cond_3
    iget-object p1, p0, Le/n/d/d;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {p1}, Lcom/mopub/nativeads/ImpressionTracker;->a()V

    return-void
.end method
