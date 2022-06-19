.class public final Ln3/y/b/a/n0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/n0/e$b;,
        Ln3/y/b/a/n0/e$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public final b:Ln3/y/b/a/n0/e$b;

.field public final c:Ln3/y/b/a/n0/e$c;

.field public d:Ln3/y/b/a/n0/c;

.field public e:I

.field public f:I

.field public g:F

.field public h:Landroid/media/AudioFocusRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln3/y/b/a/n0/e$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Ln3/y/b/a/n0/e;->g:F

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Ln3/y/b/a/n0/e;->a:Landroid/media/AudioManager;

    .line 4
    iput-object p2, p0, Ln3/y/b/a/n0/e;->c:Ln3/y/b/a/n0/e$c;

    .line 5
    new-instance p1, Ln3/y/b/a/n0/e$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ln3/y/b/a/n0/e$b;-><init>(Ln3/y/b/a/n0/e;Ln3/y/b/a/n0/e$a;)V

    iput-object p1, p0, Ln3/y/b/a/n0/e;->b:Ln3/y/b/a/n0/e$b;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Ln3/y/b/a/n0/e;->e:I

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/e;->f:I

    if-nez v0, :cond_0

    iget v1, p0, Ln3/y/b/a/n0/e;->e:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Ln3/y/b/a/n0/e;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_4

    .line 3
    :cond_1
    sget p1, Ln3/y/b/a/x0/x;->a:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Ln3/y/b/a/n0/e;->h:Landroid/media/AudioFocusRequest;

    if-eqz p1, :cond_3

    .line 5
    iget-object v0, p0, Ln3/y/b/a/n0/e;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Ln3/y/b/a/n0/e;->a:Landroid/media/AudioManager;

    iget-object v0, p0, Ln3/y/b/a/n0/e;->b:Ln3/y/b/a/n0/e$b;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Ln3/y/b/a/n0/e;->e:I

    :cond_4
    return-void
.end method

.method public final b()I
    .locals 6

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/e;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Ln3/y/b/a/n0/e;->e:I

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Ln3/y/b/a/n0/e;->a(Z)V

    :cond_0
    return v1

    .line 4
    :cond_1
    iget v0, p0, Ln3/y/b/a/n0/e;->e:I

    const/4 v2, 0x0

    if-nez v0, :cond_7

    .line 5
    sget v0, Ln3/y/b/a/x0/x;->a:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_5

    .line 6
    iget-object v0, p0, Ln3/y/b/a/n0/e;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    .line 7
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v3, p0, Ln3/y/b/a/n0/e;->f:I

    invoke-direct {v0, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_0

    .line 8
    :cond_3
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget-object v3, p0, Ln3/y/b/a/n0/e;->h:Landroid/media/AudioFocusRequest;

    invoke-direct {v0, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    .line 9
    :goto_0
    iget-object v3, p0, Ln3/y/b/a/n0/e;->d:Ln3/y/b/a/n0/c;

    if-eqz v3, :cond_4

    iget v4, v3, Ln3/y/b/a/n0/c;->a:I

    if-ne v4, v1, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    move v4, v2

    .line 10
    :goto_1
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v3}, Ln3/y/b/a/n0/c;->a()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v4}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v3, p0, Ln3/y/b/a/n0/e;->b:Ln3/y/b/a/n0/e$b;

    .line 13
    invoke-virtual {v0, v3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/n0/e;->h:Landroid/media/AudioFocusRequest;

    .line 15
    :goto_2
    iget-object v0, p0, Ln3/y/b/a/n0/e;->a:Landroid/media/AudioManager;

    iget-object v3, p0, Ln3/y/b/a/n0/e;->h:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    goto :goto_3

    .line 16
    :cond_5
    iget-object v0, p0, Ln3/y/b/a/n0/e;->a:Landroid/media/AudioManager;

    iget-object v3, p0, Ln3/y/b/a/n0/e;->b:Ln3/y/b/a/n0/e$b;

    iget-object v4, p0, Ln3/y/b/a/n0/e;->d:Ln3/y/b/a/n0/c;

    .line 17
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget v4, v4, Ln3/y/b/a/n0/c;->c:I

    invoke-static {v4}, Ln3/y/b/a/x0/x;->o(I)I

    move-result v4

    iget v5, p0, Ln3/y/b/a/n0/e;->f:I

    .line 19
    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    :goto_3
    if-ne v0, v1, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    .line 20
    :goto_4
    iput v0, p0, Ln3/y/b/a/n0/e;->e:I

    .line 21
    :cond_7
    iget v0, p0, Ln3/y/b/a/n0/e;->e:I

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    move v1, v2

    :cond_9
    return v1
.end method
