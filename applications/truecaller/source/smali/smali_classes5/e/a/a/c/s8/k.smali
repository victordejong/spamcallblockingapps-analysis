.class public Le/a/a/c/s8/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/s8/k;->a:Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/a/c/s8/k;->a:Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;

    .line 2
    iput-object p2, p1, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->a:[B

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
