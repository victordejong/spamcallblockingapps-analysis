.class public final Le/a/d/c0/x1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:Le/a/d/c0/x1/f;


# direct methods
.method public constructor <init>(Le/a/d/c0/x1/f;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/x1/g;->a:Le/a/d/c0/x1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/g;->a:Le/a/d/c0/x1/f;

    .line 2
    iget-object v0, v0, Le/a/d/c0/x1/f;->l:Le/a/d/q/v;

    .line 3
    invoke-interface {v0}, Le/a/d/q/v;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Le/a/d/c0/x1/g;->a:Le/a/d/c0/x1/f;

    .line 5
    iget-object v0, p1, Le/a/d/c0/x1/f;->c:Landroid/media/MediaPlayer;

    .line 6
    invoke-virtual {p1, v0}, Le/a/d/c0/x1/f;->q(Landroid/media/MediaPlayer;)Ls1/s;

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Le/a/d/c0/x1/g;->a:Le/a/d/c0/x1/f;

    .line 8
    iget-object v0, p1, Le/a/d/c0/x1/f;->c:Landroid/media/MediaPlayer;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz v0, :cond_3

    .line 10
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
