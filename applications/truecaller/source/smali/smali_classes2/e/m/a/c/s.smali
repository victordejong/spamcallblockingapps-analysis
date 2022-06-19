.class public final Le/m/a/c/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/s$a;,
        Le/m/a/c/s$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public final b:Le/m/a/c/s$a;

.field public c:Le/m/a/c/s$b;

.field public d:Le/m/a/c/c1/i;

.field public e:I

.field public f:I

.field public g:F

.field public h:Landroid/media/AudioFocusRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Le/m/a/c/s$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Le/m/a/c/s;->g:F

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Le/m/a/c/s;->a:Landroid/media/AudioManager;

    .line 4
    iput-object p3, p0, Le/m/a/c/s;->c:Le/m/a/c/s$b;

    .line 5
    new-instance p1, Le/m/a/c/s$a;

    invoke-direct {p1, p0, p2}, Le/m/a/c/s$a;-><init>(Le/m/a/c/s;Landroid/os/Handler;)V

    iput-object p1, p0, Le/m/a/c/s;->b:Le/m/a/c/s$a;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Le/m/a/c/s;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Le/m/a/c/s;->e:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Le/m/a/c/q1/d0;->a:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Le/m/a/c/s;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Le/m/a/c/s;->a:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/m/a/c/s;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Le/m/a/c/s;->b:Le/m/a/c/s$a;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Le/m/a/c/s;->c(I)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/s;->c:Le/m/a/c/s$b;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$c;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$c;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1700(Lcom/google/android/exoplayer2/SimpleExoPlayer;ZI)V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/c/s;->e:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Le/m/a/c/s;->e:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    :goto_0
    iget v0, p0, Le/m/a/c/s;->g:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    iput p1, p0, Le/m/a/c/s;->g:F

    .line 5
    iget-object p1, p0, Le/m/a/c/s;->c:Le/m/a/c/s$b;

    if-eqz p1, :cond_3

    .line 6
    check-cast p1, Lcom/google/android/exoplayer2/SimpleExoPlayer$c;

    .line 7
    iget-object p1, p1, Lcom/google/android/exoplayer2/SimpleExoPlayer$c;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1600(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    :cond_3
    return-void
.end method

.method public d(ZI)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    .line 1
    iget p2, p0, Le/m/a/c/s;->f:I

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    :goto_1
    const/4 v2, -0x1

    if-eqz p2, :cond_3

    .line 2
    invoke-virtual {p0}, Le/m/a/c/s;->a()V

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    :cond_3
    if-eqz p1, :cond_a

    .line 3
    iget p1, p0, Le/m/a/c/s;->e:I

    if-ne p1, v1, :cond_4

    goto/16 :goto_7

    .line 4
    :cond_4
    sget p1, Le/m/a/c/q1/d0;->a:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_8

    .line 5
    iget-object p1, p0, Le/m/a/c/s;->h:Landroid/media/AudioFocusRequest;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    if-nez p1, :cond_6

    .line 6
    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    iget p2, p0, Le/m/a/c/s;->f:I

    invoke-direct {p1, p2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_3

    :cond_6
    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    iget-object p2, p0, Le/m/a/c/s;->h:Landroid/media/AudioFocusRequest;

    invoke-direct {p1, p2}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    .line 7
    :goto_3
    iget-object p2, p0, Le/m/a/c/s;->d:Le/m/a/c/c1/i;

    if-eqz p2, :cond_7

    iget v3, p2, Le/m/a/c/c1/i;->a:I

    if-ne v3, v1, :cond_7

    move v3, v1

    goto :goto_4

    :cond_7
    move v3, v0

    .line 8
    :goto_4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p2}, Le/m/a/c/c1/i;->a()Landroid/media/AudioAttributes;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v3}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    iget-object p2, p0, Le/m/a/c/s;->b:Le/m/a/c/s$a;

    .line 11
    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/s;->h:Landroid/media/AudioFocusRequest;

    .line 13
    :goto_5
    iget-object p1, p0, Le/m/a/c/s;->a:Landroid/media/AudioManager;

    iget-object p2, p0, Le/m/a/c/s;->h:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    goto :goto_6

    .line 14
    :cond_8
    iget-object p1, p0, Le/m/a/c/s;->a:Landroid/media/AudioManager;

    iget-object p2, p0, Le/m/a/c/s;->b:Le/m/a/c/s$a;

    iget-object v3, p0, Le/m/a/c/s;->d:Le/m/a/c/c1/i;

    .line 15
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget v3, v3, Le/m/a/c/c1/i;->c:I

    invoke-static {v3}, Le/m/a/c/q1/d0;->n(I)I

    move-result v3

    iget v4, p0, Le/m/a/c/s;->f:I

    .line 17
    invoke-virtual {p1, p2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    :goto_6
    if-ne p1, v1, :cond_9

    .line 18
    invoke-virtual {p0, v1}, Le/m/a/c/s;->c(I)V

    goto :goto_7

    .line 19
    :cond_9
    invoke-virtual {p0, v0}, Le/m/a/c/s;->c(I)V

    move v1, v2

    :goto_7
    move v2, v1

    :cond_a
    return v2
.end method
