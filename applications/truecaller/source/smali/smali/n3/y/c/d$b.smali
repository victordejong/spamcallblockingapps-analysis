.class public Ln3/y/c/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/c/d$b$a;,
        Ln3/y/c/d$b$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/BroadcastReceiver;

.field public final b:Landroid/content/IntentFilter;

.field public final c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public final d:Ljava/lang/Object;

.field public final e:Landroid/content/Context;

.field public final f:Landroidx/media2/player/MediaPlayer;

.field public final g:Landroid/media/AudioManager;

.field public h:Landroidx/media/AudioAttributesCompat;

.field public i:I

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media2/player/MediaPlayer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/y/c/d$b$b;

    invoke-direct {v0, p0}, Ln3/y/c/d$b$b;-><init>(Ln3/y/c/d$b;)V

    iput-object v0, p0, Ln3/y/c/d$b;->a:Landroid/content/BroadcastReceiver;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ln3/y/c/d$b;->b:Landroid/content/IntentFilter;

    .line 4
    new-instance v0, Ln3/y/c/d$b$a;

    invoke-direct {v0, p0}, Ln3/y/c/d$b$a;-><init>(Ln3/y/c/d$b;)V

    iput-object v0, p0, Ln3/y/c/d$b;->c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln3/y/c/d$b;->d:Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Ln3/y/c/d$b;->e:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Ln3/y/c/d$b;->f:Landroidx/media2/player/MediaPlayer;

    const-string p2, "audio"

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Ln3/y/c/d$b;->g:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Ln3/y/c/d$b;->i:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/c/d$b;->g:Landroid/media/AudioManager;

    iget-object v1, p0, Ln3/y/c/d$b;->c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ln3/y/c/d$b;->i:I

    .line 4
    iput-boolean v0, p0, Ln3/y/c/d$b;->j:Z

    return-void
.end method

.method public final b()Z
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/y/c/d$b;->h:Landroidx/media/AudioAttributesCompat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :goto_0
    :pswitch_0
    move v4, v1

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat;->b()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    packed-switch v3, :pswitch_data_0

    .line 3
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unidentified AudioAttribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x4

    goto :goto_1

    .line 4
    :pswitch_3
    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat;->getContentType()I

    move-result v0

    if-ne v0, v2, :cond_1

    :pswitch_4
    move v4, v5

    goto :goto_1

    :pswitch_5
    move v4, v2

    :cond_1
    :goto_1
    :pswitch_6
    if-nez v4, :cond_2

    .line 5
    iget-object v0, p0, Ln3/y/c/d$b;->h:Landroidx/media/AudioAttributesCompat;

    return v2

    .line 6
    :cond_2
    iget-object v0, p0, Ln3/y/c/d$b;->g:Landroid/media/AudioManager;

    iget-object v3, p0, Ln3/y/c/d$b;->c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v5, p0, Ln3/y/c/d$b;->h:Landroidx/media/AudioAttributesCompat;

    .line 7
    iget-object v5, v5, Landroidx/media/AudioAttributesCompat;->a:Landroidx/media/AudioAttributesImpl;

    invoke-interface {v5}, Landroidx/media/AudioAttributesImpl;->c()I

    move-result v5

    .line 8
    invoke-virtual {v0, v3, v5, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 9
    iput v4, p0, Ln3/y/c/d$b;->i:I

    goto :goto_2

    .line 10
    :cond_3
    iput v1, p0, Ln3/y/c/d$b;->i:I

    .line 11
    :goto_2
    iput-boolean v1, p0, Ln3/y/c/d$b;->j:Z

    .line 12
    iget v0, p0, Ln3/y/c/d$b;->i:I

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/y/c/d$b;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/c/d$b;->e:Landroid/content/Context;

    iget-object v1, p0, Ln3/y/c/d$b;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ln3/y/c/d$b;->k:Z

    return-void
.end method
