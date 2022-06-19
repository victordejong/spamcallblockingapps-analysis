.class public Lcom/clevertap/android/sdk/gif/GifImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clevertap/android/sdk/gif/GifImageView$c;,
        Lcom/clevertap/android/sdk/gif/GifImageView$d;,
        Lcom/clevertap/android/sdk/gif/GifImageView$e;
    }
.end annotation


# instance fields
.field public c:Z

.field public d:Lcom/clevertap/android/sdk/gif/GifImageView$c;

.field public e:Lcom/clevertap/android/sdk/gif/GifImageView$d;

.field public f:Ljava/lang/Thread;

.field public g:Lcom/clevertap/android/sdk/gif/GifImageView$e;

.field public h:J

.field public i:Le/h/a/c/p0/a;

.field public final j:Landroid/os/Handler;

.field public k:Z

.field public l:Z

.field public m:Landroid/graphics/Bitmap;

.field public final n:Ljava/lang/Runnable;

.field public final o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->d:Lcom/clevertap/android/sdk/gif/GifImageView$c;

    .line 3
    iput-object p1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->e:Lcom/clevertap/android/sdk/gif/GifImageView$d;

    .line 4
    iput-object p1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->g:Lcom/clevertap/android/sdk/gif/GifImageView$e;

    const-wide/16 p1, -0x1

    .line 5
    iput-wide p1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->h:J

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->j:Landroid/os/Handler;

    .line 7
    new-instance p1, Lcom/clevertap/android/sdk/gif/GifImageView$a;

    invoke-direct {p1, p0}, Lcom/clevertap/android/sdk/gif/GifImageView$a;-><init>(Lcom/clevertap/android/sdk/gif/GifImageView;)V

    iput-object p1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->n:Ljava/lang/Runnable;

    .line 8
    new-instance p1, Lcom/clevertap/android/sdk/gif/GifImageView$b;

    invoke-direct {p1, p0}, Lcom/clevertap/android/sdk/gif/GifImageView$b;-><init>(Lcom/clevertap/android/sdk/gif/GifImageView;)V

    iput-object p1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->o:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->c:Z

    .line 2
    iput-boolean v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->k:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->l:Z

    .line 4
    iput-boolean v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->c:Z

    .line 5
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->f:Ljava/lang/Thread;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->i:Le/h/a/c/p0/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->f:Ljava/lang/Thread;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->f:Ljava/lang/Thread;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public getFrameCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->i:Le/h/a/c/p0/a;

    .line 2
    iget-object v0, v0, Le/h/a/c/p0/a;->g:Le/h/a/c/p0/c;

    iget v0, v0, Le/h/a/c/p0/c;->d:I

    return v0
.end method

.method public getFramesDisplayDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->h:J

    return-wide v0
.end method

.method public getGifHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->i:Le/h/a/c/p0/a;

    .line 2
    iget-object v0, v0, Le/h/a/c/p0/a;->g:Le/h/a/c/p0/c;

    iget v0, v0, Le/h/a/c/p0/c;->i:I

    return v0
.end method

.method public getGifWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->i:Le/h/a/c/p0/a;

    .line 2
    iget-object v0, v0, Le/h/a/c/p0/a;->g:Le/h/a/c/p0/c;

    iget v0, v0, Le/h/a/c/p0/c;->l:I

    return v0
.end method

.method public getOnAnimationStop()Lcom/clevertap/android/sdk/gif/GifImageView$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->e:Lcom/clevertap/android/sdk/gif/GifImageView$d;

    return-object v0
.end method

.method public getOnFrameAvailable()Lcom/clevertap/android/sdk/gif/GifImageView$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->g:Lcom/clevertap/android/sdk/gif/GifImageView$e;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/gif/GifImageView;->d()V

    return-void
.end method

.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->d:Lcom/clevertap/android/sdk/gif/GifImageView$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/clevertap/android/sdk/gif/GifImageView$c;->a()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->k:Z

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->i:Le/h/a/c/p0/a;

    .line 5
    iget-object v1, v0, Le/h/a/c/p0/a;->g:Le/h/a/c/p0/c;

    iget v2, v1, Le/h/a/c/p0/c;->d:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-gtz v2, :cond_2

    :goto_0
    move v7, v4

    goto :goto_1

    .line 6
    :cond_2
    iget v5, v0, Le/h/a/c/p0/a;->f:I

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x1

    if-ne v5, v6, :cond_3

    .line 7
    iget v6, v0, Le/h/a/c/p0/a;->i:I

    add-int/2addr v6, v7

    iput v6, v0, Le/h/a/c/p0/a;->i:I

    .line 8
    :cond_3
    iget v1, v1, Le/h/a/c/p0/c;->j:I

    if-eq v1, v3, :cond_4

    iget v6, v0, Le/h/a/c/p0/a;->i:I

    if-le v6, v1, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 9
    rem-int/2addr v5, v2

    iput v5, v0, Le/h/a/c/p0/a;->f:I

    :goto_1
    const-wide/16 v0, 0x0

    .line 10
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 11
    iget-object v2, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->i:Le/h/a/c/p0/a;

    invoke-virtual {v2}, Le/h/a/c/p0/a;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->m:Landroid/graphics/Bitmap;

    .line 12
    iget-object v8, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->g:Lcom/clevertap/android/sdk/gif/GifImageView$e;

    if-eqz v8, :cond_5

    .line 13
    invoke-interface {v8, v2}, Lcom/clevertap/android/sdk/gif/GifImageView$e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->m:Landroid/graphics/Bitmap;

    .line 14
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v8, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    iget-object v2, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->j:Landroid/os/Handler;

    iget-object v5, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->o:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-wide v8, v0

    .line 16
    :catch_1
    :goto_2
    iput-boolean v4, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->k:Z

    .line 17
    iget-boolean v2, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->c:Z

    if-eqz v2, :cond_c

    if-nez v7, :cond_6

    goto :goto_5

    .line 18
    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->i:Le/h/a/c/p0/a;

    .line 19
    iget-object v5, v2, Le/h/a/c/p0/a;->g:Le/h/a/c/p0/c;

    iget v6, v5, Le/h/a/c/p0/c;->d:I

    if-lez v6, :cond_9

    iget v2, v2, Le/h/a/c/p0/a;->f:I

    if-gez v2, :cond_7

    goto :goto_3

    :cond_7
    if-ltz v2, :cond_8

    if-ge v2, v6, :cond_8

    .line 20
    iget-object v3, v5, Le/h/a/c/p0/c;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/h/a/c/p0/b;

    iget v3, v2, Le/h/a/c/p0/b;->b:I

    :cond_8
    move v4, v3

    :cond_9
    :goto_3
    int-to-long v2, v4

    sub-long/2addr v2, v8

    long-to-int v2, v2

    if-lez v2, :cond_b

    .line 21
    iget-wide v3, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->h:J

    cmp-long v0, v3, v0

    if-lez v0, :cond_a

    goto :goto_4

    :cond_a
    int-to-long v3, v2

    :goto_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 22
    :catch_2
    :cond_b
    iget-boolean v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->c:Z

    if-nez v0, :cond_0

    goto :goto_6

    .line 23
    :cond_c
    :goto_5
    iput-boolean v4, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->c:Z

    .line 24
    :goto_6
    iget-boolean v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->l:Z

    if-eqz v0, :cond_d

    .line 25
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->f:Ljava/lang/Thread;

    .line 27
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->e:Lcom/clevertap/android/sdk/gif/GifImageView$d;

    if-eqz v0, :cond_e

    .line 28
    invoke-interface {v0}, Lcom/clevertap/android/sdk/gif/GifImageView$d;->a()V

    :cond_e
    return-void
.end method

.method public setBytes([B)V
    .locals 4

    .line 1
    new-instance v0, Le/h/a/c/p0/a;

    invoke-direct {v0}, Le/h/a/c/p0/a;-><init>()V

    iput-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->i:Le/h/a/c/p0/a;

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Le/h/a/c/p0/a;->d([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-boolean p1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->c:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/gif/GifImageView;->e()V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->i:Le/h/a/c/p0/a;

    .line 6
    iget v1, v0, Le/h/a/c/p0/a;->f:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 7
    iget-object v3, v0, Le/h/a/c/p0/a;->g:Le/h/a/c/p0/c;

    iget v3, v3, Le/h/a/c/p0/c;->d:I

    if-lt v2, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 8
    :cond_2
    iput v2, v0, Le/h/a/c/p0/a;->f:I

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 9
    iput-boolean v1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->k:Z

    .line 10
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/gif/GifImageView;->e()V

    :cond_3
    :goto_1
    return-void

    :catch_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->i:Le/h/a/c/p0/a;

    return-void
.end method

.method public setFramesDisplayDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->h:J

    return-void
.end method

.method public setOnAnimationStart(Lcom/clevertap/android/sdk/gif/GifImageView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->d:Lcom/clevertap/android/sdk/gif/GifImageView$c;

    return-void
.end method

.method public setOnAnimationStop(Lcom/clevertap/android/sdk/gif/GifImageView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->e:Lcom/clevertap/android/sdk/gif/GifImageView$d;

    return-void
.end method

.method public setOnFrameAvailable(Lcom/clevertap/android/sdk/gif/GifImageView$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/clevertap/android/sdk/gif/GifImageView;->g:Lcom/clevertap/android/sdk/gif/GifImageView$e;

    return-void
.end method
