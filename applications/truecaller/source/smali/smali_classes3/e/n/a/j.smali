.class public Le/n/a/j;
.super Lcom/mopub/common/ViewabilityTracker;
.source "SourceFile"


# static fields
.field public static final synthetic i:I


# instance fields
.field public h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mopub/adsession/AdSession;Lcom/iab/omid/library/mopub/adsession/AdEvents;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->createMediaEvents(Lcom/iab/omid/library/mopub/adsession/AdSession;)Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/common/ViewabilityTracker;-><init>(Lcom/iab/omid/library/mopub/adsession/AdSession;Lcom/iab/omid/library/mopub/adsession/AdEvents;Landroid/view/View;)V

    .line 3
    iput-object v0, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    const-string p1, "ViewabilityTrackerVideo() sesseionId:"

    .line 4
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/mopub/common/ViewabilityTracker;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/common/ViewabilityTracker;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public startTracking()V
    .locals 2

    const-string v0, "ViewabilityTrackerVideo.startTracking() sesseionId: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mopub/common/ViewabilityTracker;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->d(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/mopub/common/ViewabilityTracker$STATE;->STARTED_VIDEO:Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->a(Lcom/mopub/common/ViewabilityTracker$STATE;)V

    return-void
.end method

.method public trackVideo(Lcom/mopub/common/VideoEvent;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mopub/common/ViewabilityTracker;->d:Z

    if-nez v0, :cond_0

    const-string v0, "trackVideo() skip event: "

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/common/ViewabilityTracker;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "trackVideo() event: "

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/common/ViewabilityTracker;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->d(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    iget-object p1, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->skipped()V

    goto :goto_0

    .line 6
    :pswitch_1
    iget-object p1, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    sget-object v0, Lcom/iab/omid/library/mopub/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/mopub/adsession/media/InteractionType;

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->adUserInteraction(Lcom/iab/omid/library/mopub/adsession/media/InteractionType;)V

    goto :goto_0

    .line 7
    :pswitch_2
    iget-object p1, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->volumeChange(F)V

    goto :goto_0

    .line 8
    :pswitch_3
    iget-object p1, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    sget-object v0, Lcom/iab/omid/library/mopub/adsession/media/PlayerState;->NORMAL:Lcom/iab/omid/library/mopub/adsession/media/PlayerState;

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->playerStateChange(Lcom/iab/omid/library/mopub/adsession/media/PlayerState;)V

    goto :goto_0

    .line 9
    :pswitch_4
    iget-object p1, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    sget-object v0, Lcom/iab/omid/library/mopub/adsession/media/PlayerState;->FULLSCREEN:Lcom/iab/omid/library/mopub/adsession/media/PlayerState;

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->playerStateChange(Lcom/iab/omid/library/mopub/adsession/media/PlayerState;)V

    goto :goto_0

    .line 10
    :pswitch_5
    iget-object p1, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->complete()V

    goto :goto_0

    .line 11
    :pswitch_6
    iget-object p1, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->thirdQuartile()V

    goto :goto_0

    .line 12
    :pswitch_7
    iget-object p1, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->midpoint()V

    goto :goto_0

    .line 13
    :pswitch_8
    iget-object p1, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->firstQuartile()V

    goto :goto_0

    .line 14
    :pswitch_9
    iget-object p1, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->bufferFinish()V

    goto :goto_0

    .line 15
    :pswitch_a
    iget-object p1, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->bufferStart()V

    goto :goto_0

    .line 16
    :pswitch_b
    invoke-virtual {p0}, Lcom/mopub/common/ViewabilityTracker;->trackImpression()V

    goto :goto_0

    .line 17
    :pswitch_c
    iget-object p1, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->skipped()V

    goto :goto_0

    .line 18
    :pswitch_d
    iget-object p1, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->resume()V

    goto :goto_0

    .line 19
    :pswitch_e
    iget-object p1, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->pause()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public videoPrepared(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoPrepared() duration= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->d(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/mopub/common/ViewabilityTracker;->d:Z

    if-nez v0, :cond_0

    const-string p1, "videoPrepared() not tracking yet: "

    .line 3
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/mopub/common/ViewabilityTracker;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/common/ViewabilityTracker;->d(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Le/n/a/j;->h:Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lcom/iab/omid/library/mopub/adsession/media/MediaEvents;->start(FF)V

    return-void
.end method
