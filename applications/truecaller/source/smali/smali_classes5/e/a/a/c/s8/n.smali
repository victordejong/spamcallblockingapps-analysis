.class public final Le/a/a/c/s8/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/voice_notes/RecordView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/s8/n;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/a/c/s8/n;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    .line 2
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->g:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Le/a/a/c/s8/n;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    invoke-static {v1}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->c(Lcom/truecaller/messaging/conversation/voice_notes/RecordView;)Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;

    move-result-object v1

    .line 5
    iget-object v2, v1, Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, v1, Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget v2, v1, Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;->d:F

    mul-float/2addr v0, v2

    iget v2, v1, Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;->b:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 7
    iget-object v0, v1, Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9
    :catch_0
    iget-object v0, p0, Le/a/a/c/s8/n;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    .line 10
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->l:Landroid/os/Handler;

    .line 11
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    :goto_1
    iget-object v0, p0, Le/a/a/c/s8/n;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    .line 13
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->l:Landroid/os/Handler;

    const-wide/16 v1, 0x28

    .line 14
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
