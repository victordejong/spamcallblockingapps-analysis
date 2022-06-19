.class public final Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;


# direct methods
.method public constructor <init>(Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView$a;->a:Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView$a;->a:Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;

    invoke-virtual {p1}, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;->getPresenter$callrecorder_release()Le/a/k0/n/e/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Le/a/k0/n/e/d;->W3(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
