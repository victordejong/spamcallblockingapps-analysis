.class public final Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;
.super Landroid/widget/Chronometer;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000C\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0008\u0006*\u0001%\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u0017\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0012J\u000f\u0010\u0016\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0004R\u0016\u0010\u0019\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0018R\u001a\u0010 \u001a\u00060\u001cj\u0002`\u001d8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010!\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0018R\u0016\u0010$\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010)\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010#\u00a8\u0006*"
    }
    d2 = {
        "Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;",
        "Landroid/widget/Chronometer;",
        "Ls1/s;",
        "start",
        "()V",
        "stop",
        "onDetachedFromWindow",
        "",
        "visibility",
        "onWindowVisibilityChanged",
        "(I)V",
        "Landroid/view/View;",
        "changedView",
        "onVisibilityChanged",
        "(Landroid/view/View;I)V",
        "",
        "base",
        "setChronometerBase",
        "(J)V",
        "a",
        "now",
        "c",
        "b",
        "",
        "Z",
        "visible",
        "d",
        "running",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "e",
        "Ljava/lang/StringBuilder;",
        "recycle",
        "started",
        "f",
        "J",
        "timeWhenStopped",
        "e/a/a/c/s8/f",
        "g",
        "Le/a/a/c/s8/f;",
        "tickRunnable",
        "chronometerBase",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:J

.field public b:Z

.field public c:Z

.field public d:Z

.field public final e:Ljava/lang/StringBuilder;

.field public f:J

.field public final g:Le/a/a/c/s8/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->e:Ljava/lang/StringBuilder;

    .line 4
    new-instance p1, Le/a/a/c/s8/f;

    invoke-direct {p1, p0}, Le/a/a/c/s8/f;-><init>(Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;)V

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->g:Le/a/a/c/s8/f;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->a:J

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->c(J)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->stop()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->a:J

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->f:J

    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Chronometer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->d:Z

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->c(J)V

    .line 4
    iget-object v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->g:Le/a/a/c/s8/f;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/Chronometer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->g:Le/a/a/c/s8/f;

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    :goto_1
    iput-boolean v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->d:Z

    :cond_2
    return-void
.end method

.method public final declared-synchronized c(J)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->a:J

    sub-long/2addr v0, p1

    long-to-double p1, v0

    const/16 v0, 0x3e8

    int-to-double v0, v0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Le/q/f/a/d/a;->K2(D)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->e:Ljava/lang/StringBuilder;

    invoke-static {v0, p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/Chronometer;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->b:Z

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->b()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/Chronometer;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->b()V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Chronometer;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->b:Z

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->b()V

    return-void
.end method

.method public final setChronometerBase(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->a:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->c(J)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->a:J

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->c:Z

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->b()V

    return-void
.end method

.method public stop()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->c:Z

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->b()V

    .line 3
    iget-wide v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->a:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->f:J

    return-void
.end method
