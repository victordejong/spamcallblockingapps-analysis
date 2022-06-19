.class public final Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Le/a/k0/n/e/f;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\n\u0010\tJ\u001f\u0010\r\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0007J\u0015\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\tR$\u0010\u001b\u001a\u0004\u0018\u00010\u00118\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u0014R\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Le/a/k0/n/e/f;",
        "",
        "duration",
        "Ls1/s;",
        "F",
        "(I)V",
        "e",
        "()V",
        "onAttachedToWindow",
        "percent",
        "millis",
        "Y",
        "(II)V",
        "resId",
        "d",
        "Le/a/k0/n/e/d;",
        "mediaPlayerPresenter",
        "setPresenter",
        "(Le/a/k0/n/e/d;)V",
        "onDetachedFromWindow",
        "t",
        "Le/a/k0/n/e/d;",
        "getPresenter$callrecorder_release",
        "()Le/a/k0/n/e/d;",
        "setPresenter$callrecorder_release",
        "presenter",
        "Le/a/k0/j/b;",
        "u",
        "Le/a/k0/j/b;",
        "binding",
        "callrecorder_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public t:Le/a/k0/n/e/d;

.field public final u:Le/a/k0/j/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    sget p2, Lcom/truecaller/callrecording/R$layout;->view_call_recording_player:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget p1, Lcom/truecaller/callrecording/R$id;->currentPosition:I

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 7
    sget p1, Lcom/truecaller/callrecording/R$id;->duration:I

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 9
    sget p1, Lcom/truecaller/callrecording/R$id;->seekBar:I

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 11
    new-instance p1, Le/a/k0/j/b;

    invoke-direct {p1, p0, p2, v1, v2}, Le/a/k0/j/b;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    const-string p2, "ViewCallRecordingPlayerB\u2026ater.from(context), this)"

    .line 12
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;->u:Le/a/k0/j/b;

    .line 13
    invoke-static {p0, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public F(I)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;->u:Le/a/k0/j/b;

    iget-object v0, v0, Le/a/k0/j/b;->c:Landroid/widget/TextView;

    const-string v1, "binding.duration"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    div-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    .line 4
    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Y(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;->u:Le/a/k0/j/b;

    iget-object v0, v0, Le/a/k0/j/b;->d:Landroid/widget/SeekBar;

    const-string v1, "binding.seekBar"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;->u:Le/a/k0/j/b;

    iget-object p1, p1, Le/a/k0/j/b;->b:Landroid/widget/TextView;

    const-string v0, "binding.currentPosition"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    div-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    .line 4
    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public final getPresenter$callrecorder_release()Le/a/k0/n/e/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;->t:Le/a/k0/n/e/d;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;->t:Le/a/k0/n/e/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;->u:Le/a/k0/j/b;

    iget-object v0, v0, Le/a/k0/j/b;->d:Landroid/widget/SeekBar;

    new-instance v1, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView$a;

    invoke-direct {v1, p0}, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView$a;-><init>(Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;->t:Le/a/k0/n/e/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    :cond_0
    return-void
.end method

.method public final setPresenter(Le/a/k0/n/e/d;)V
    .locals 1

    const-string v0, "mediaPlayerPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;->t:Le/a/k0/n/e/d;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;->t:Le/a/k0/n/e/d;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setPresenter$callrecorder_release(Le/a/k0/n/e/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;->t:Le/a/k0/n/e/d;

    return-void
.end method
