.class public Ln3/y/e/k$t;
.super Ln3/y/e/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "t"
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/e/k;


# direct methods
.method public constructor <init>(Ln3/y/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    invoke-direct {p0}, Ln3/y/e/x$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/y/e/x;Landroidx/media2/session/SessionCommandGroup;)V
    .locals 12

    .line 1
    iget-object p2, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, p2, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Ln3/y/e/k;->e()V

    .line 3
    iget-object p1, p2, Ln3/y/e/k;->d:Ln3/y/e/x;

    .line 4
    iget-object p1, p1, Ln3/y/e/x;->g:Landroidx/media2/session/SessionCommandGroup;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/16 v2, 0x2711

    invoke-virtual {p1, v2}, Landroidx/media2/session/SessionCommandGroup;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 5
    :goto_0
    iget-object v2, p2, Ln3/y/e/k;->d:Ln3/y/e/x;

    .line 6
    iget-object v2, v2, Ln3/y/e/x;->g:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v2, :cond_2

    const v3, 0x9c41

    invoke-virtual {v2, v3}, Landroidx/media2/session/SessionCommandGroup;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    .line 7
    :goto_1
    iget-object v3, p2, Ln3/y/e/k;->d:Ln3/y/e/x;

    invoke-virtual {v3}, Ln3/y/e/x;->b()Z

    move-result v3

    .line 8
    iget-object v4, p2, Ln3/y/e/k;->d:Ln3/y/e/x;

    .line 9
    iget-object v4, v4, Ln3/y/e/x;->g:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v4, :cond_3

    const/16 v5, 0x2718

    invoke-virtual {v4, v5}, Landroidx/media2/session/SessionCommandGroup;->d(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v0

    .line 10
    :goto_2
    iget-object v5, p2, Ln3/y/e/k;->d:Ln3/y/e/x;

    .line 11
    iget-object v5, v5, Ln3/y/e/x;->g:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v5, :cond_4

    const/16 v6, 0x2719

    invoke-virtual {v5, v6}, Landroidx/media2/session/SessionCommandGroup;->d(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, v0

    .line 12
    :goto_3
    iget-object v6, p2, Ln3/y/e/k;->d:Ln3/y/e/x;

    .line 13
    iget-object v6, v6, Ln3/y/e/x;->g:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v6, :cond_5

    const/16 v7, 0x2713

    invoke-virtual {v6, v7}, Landroidx/media2/session/SessionCommandGroup;->d(I)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    move v1, v0

    .line 14
    :goto_4
    iget-object v6, p2, Ln3/y/e/k;->B:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v7, v0

    :goto_5
    if-ge v7, v6, :cond_10

    .line 15
    iget-object v8, p2, Ln3/y/e/k;->B:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 16
    sget v9, Landroidx/media2/widget/R$id;->pause:I

    invoke-virtual {p2, v8, v9}, Ln3/y/e/k;->f(II)Landroid/widget/ImageButton;

    move-result-object v9

    const/16 v10, 0x8

    if-eqz v9, :cond_7

    if-eqz p1, :cond_6

    move v11, v0

    goto :goto_6

    :cond_6
    move v11, v10

    .line 17
    :goto_6
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_7
    sget v9, Landroidx/media2/widget/R$id;->rew:I

    invoke-virtual {p2, v8, v9}, Ln3/y/e/k;->f(II)Landroid/widget/ImageButton;

    move-result-object v9

    if-eqz v9, :cond_9

    if-eqz v2, :cond_8

    move v11, v0

    goto :goto_7

    :cond_8
    move v11, v10

    .line 19
    :goto_7
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :cond_9
    sget v9, Landroidx/media2/widget/R$id;->ffwd:I

    invoke-virtual {p2, v8, v9}, Ln3/y/e/k;->f(II)Landroid/widget/ImageButton;

    move-result-object v9

    if-eqz v9, :cond_b

    if-eqz v3, :cond_a

    move v11, v0

    goto :goto_8

    :cond_a
    move v11, v10

    .line 21
    :goto_8
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_b
    sget v9, Landroidx/media2/widget/R$id;->prev:I

    invoke-virtual {p2, v8, v9}, Ln3/y/e/k;->f(II)Landroid/widget/ImageButton;

    move-result-object v9

    if-eqz v9, :cond_d

    if-eqz v4, :cond_c

    move v11, v0

    goto :goto_9

    :cond_c
    move v11, v10

    .line 23
    :goto_9
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_d
    sget v9, Landroidx/media2/widget/R$id;->next:I

    invoke-virtual {p2, v8, v9}, Ln3/y/e/k;->f(II)Landroid/widget/ImageButton;

    move-result-object v8

    if-eqz v8, :cond_f

    if-eqz v5, :cond_e

    move v10, v0

    .line 25
    :cond_e
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 26
    :cond_10
    iput-boolean v1, p2, Ln3/y/e/k;->x:Z

    .line 27
    iget-object p1, p2, Ln3/y/e/k;->Q:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 28
    invoke-virtual {p2}, Ln3/y/e/k;->y()V

    return-void
.end method

.method public b(Ln3/y/e/x;Landroidx/media2/common/MediaItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Ln3/y/e/k;->c1:Z

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCurrentMediaItemChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    :cond_1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    invoke-virtual {v0, p2}, Ln3/y/e/k;->z(Landroidx/media2/common/MediaItem;)V

    .line 5
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    invoke-virtual {v0, p2}, Ln3/y/e/k;->A(Landroidx/media2/common/MediaItem;)V

    .line 6
    iget-object p2, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    .line 7
    iget-object v0, p1, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->J()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 9
    :goto_0
    iget-object p1, p1, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->s()I

    move-result v1

    .line 11
    :cond_3
    invoke-virtual {p2, v0, v1}, Ln3/y/e/k;->v(II)V

    return-void
.end method

.method public c(Ln3/y/e/x;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v1, v0, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eq p1, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean p1, Ln3/y/e/k;->c1:Z

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Ln3/y/e/k;->w(Z)V

    .line 4
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p1, p1, Ln3/y/e/k;->Q:Landroid/widget/SeekBar;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, p1, Ln3/y/e/k;->W:Landroid/widget/TextView;

    iget-wide v1, p1, Ln3/y/e/k;->q:J

    invoke-virtual {p1, v1, v2}, Ln3/y/e/k;->t(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Ln3/y/e/x;F)V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 3
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget v1, v0, Ln3/y/e/k;->C0:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 4
    iget-object v3, v0, Ln3/y/e/k;->B0:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    iget-object v1, v0, Ln3/y/e/k;->A0:Ljava/util/List;

    iget v3, v0, Ln3/y/e/k;->C0:I

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    iput v2, v0, Ln3/y/e/k;->C0:I

    .line 7
    :cond_1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->B0:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 8
    :goto_0
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p1, p1, Ln3/y/e/k;->B0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_7

    .line 9
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p1, p1, Ln3/y/e/k;->B0:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 10
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p2, p1, Ln3/y/e/k;->A0:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Ln3/y/e/k;->x(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->c:Landroid/content/res/Resources;

    sget v2, Landroidx/media2/widget/R$string;->MediaControlView_custom_playback_speed_text:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    int-to-float v5, p2

    div-float/2addr v5, p1

    .line 12
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v4, v1

    .line 13
    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    :goto_1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->B0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 15
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->B0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 16
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->B0:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17
    iget-object p2, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p2, p2, Ln3/y/e/k;->A0:Ljava/util/List;

    invoke-interface {p2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18
    iget-object p2, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    invoke-virtual {p2, v1, p1}, Ln3/y/e/k;->x(ILjava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_4
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->B0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->B0:Ljava/util/List;

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p2, v0, :cond_5

    .line 21
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->B0:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->A0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2, p1}, Ln3/y/e/k;->x(ILjava/lang/String;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 24
    :cond_6
    :goto_2
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget p2, p1, Ln3/y/e/k;->n:I

    iput p2, p1, Ln3/y/e/k;->C0:I

    :cond_7
    :goto_3
    return-void
.end method

.method public e(Ln3/y/e/x;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v1, v0, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eq p1, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v1, Ln3/y/e/k;->c1:Z

    .line 3
    invoke-virtual {p1}, Ln3/y/e/x;->e()Landroidx/media2/common/MediaItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln3/y/e/k;->z(Landroidx/media2/common/MediaItem;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    invoke-virtual {p2, p1}, Ln3/y/e/k;->u(I)V

    .line 5
    iget-object p2, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, p2, Ln3/y/e/k;->K0:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object p2, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 7
    new-instance p2, Ln3/b/a/g$a;

    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    sget v0, Landroidx/media2/widget/R$string;->mcv2_playback_error_text:I

    .line 8
    invoke-virtual {p2, v0}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    sget v0, Landroidx/media2/widget/R$string;->mcv2_error_dialog_button:I

    new-instance v1, Ln3/y/e/k$t$a;

    invoke-direct {v1, p0}, Ln3/y/e/k$t$a;-><init>(Ln3/y/e/k$t;)V

    .line 9
    invoke-virtual {p2, v0, v1}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 10
    iget-object v0, p2, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->m:Z

    .line 11
    invoke-virtual {p2}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p2, p1, Ln3/y/e/k;->K0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p2, p1, Ln3/y/e/k;->K0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 14
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    invoke-virtual {p1}, Ln3/y/e/k;->o()V

    .line 15
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ln3/y/e/k;->w(Z)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object p2, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    invoke-virtual {p2, p1}, Ln3/y/e/k;->u(I)V

    .line 17
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p2, p1, Ln3/y/e/k;->K0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 18
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p2, p1, Ln3/y/e/k;->N0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 19
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p2, p1, Ln3/y/e/k;->O0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p2, p1, Ln3/y/e/k;->L0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public f(Ln3/y/e/x;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/e/x;",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Ln3/y/e/k;->c1:Z

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaylistChanged(): list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", metadata: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    :cond_1
    iget-object p2, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    .line 5
    iget-object p3, p1, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    const/4 v0, -0x1

    if-eqz p3, :cond_2

    .line 6
    invoke-virtual {p3}, Landroidx/media2/common/SessionPlayer;->J()I

    move-result p3

    goto :goto_0

    :cond_2
    move p3, v0

    .line 7
    :goto_0
    iget-object p1, p1, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->s()I

    move-result v0

    .line 9
    :cond_3
    invoke-virtual {p2, p3, v0}, Ln3/y/e/k;->v(II)V

    return-void
.end method

.method public g(Ln3/y/e/x;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v1, v0, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eq p1, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v1, Ln3/y/e/k;->c1:Z

    .line 3
    iget-wide v1, v0, Ln3/y/e/k;->q:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p2

    .line 4
    div-long/2addr v3, v1

    long-to-int v1, v3

    .line 5
    :goto_0
    iget-object v0, v0, Ln3/y/e/k;->Q:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 6
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v1, v0, Ln3/y/e/k;->W:Landroid/widget/TextView;

    invoke-virtual {v0, p2, p3}, Ln3/y/e/k;->t(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-wide v0, p2, Ln3/y/e/k;->t:J

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-eqz p3, :cond_2

    .line 8
    iput-wide v0, p2, Ln3/y/e/k;->s:J

    .line 9
    invoke-virtual {p1, v0, v1}, Ln3/y/e/x;->n(J)V

    .line 10
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iput-wide v2, p1, Ln3/y/e/k;->t:J

    goto :goto_1

    .line 11
    :cond_2
    iput-wide v2, p2, Ln3/y/e/k;->s:J

    .line 12
    iget-boolean p1, p2, Ln3/y/e/k;->u:Z

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p2, Ln3/y/e/k;->K0:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p2, p1, Ln3/y/e/k;->N0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p2, p1, Ln3/y/e/k;->K0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 16
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p2, p1, Ln3/y/e/k;->N0:Ljava/lang/Runnable;

    iget-wide v0, p1, Ln3/y/e/k;->r:J

    invoke-virtual {p1, p2, v0, v1}, Ln3/y/e/k;->n(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public i(Ln3/y/e/x;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean p1, Ln3/y/e/k;->c1:Z

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTrackDeselected(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    :cond_1
    iget p1, p2, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->y0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 6
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->y0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v0, p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    const/4 p2, -0x1

    iput p2, p1, Ln3/y/e/k;->l:I

    .line 8
    iget v0, p1, Ln3/y/e/k;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 9
    iget-object v0, p1, Ln3/y/e/k;->r0:Ln3/y/e/k$v;

    add-int/lit8 p2, p2, 0x1

    .line 10
    iput p2, v0, Ln3/y/e/k$v;->b:I

    .line 11
    :cond_2
    iget-object p2, p1, Ln3/y/e/k;->l0:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Landroidx/media2/widget/R$drawable;->media2_widget_ic_subtitle_off:I

    .line 12
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 13
    invoke-static {p1, v0}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p2, p1, Ln3/y/e/k;->l0:Landroid/widget/ImageButton;

    iget-object p1, p1, Ln3/y/e/k;->c:Landroid/content/res/Resources;

    sget v0, Landroidx/media2/widget/R$string;->mcv2_cc_is_off:I

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public j(Ln3/y/e/x;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean p1, Ln3/y/e/k;->c1:Z

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTrackSelected(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    :cond_1
    iget p1, p2, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    .line 5
    :goto_0
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p1, p1, Ln3/y/e/k;->y0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 6
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p1, p1, Ln3/y/e/k;->y0:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p1, p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iput v2, p1, Ln3/y/e/k;->l:I

    .line 8
    iget p2, p1, Ln3/y/e/k;->k:I

    if-ne p2, v1, :cond_2

    .line 9
    iget-object p2, p1, Ln3/y/e/k;->r0:Ln3/y/e/k$v;

    add-int/lit8 v2, v2, 0x1

    .line 10
    iput v2, p2, Ln3/y/e/k$v;->b:I

    .line 11
    :cond_2
    iget-object p2, p1, Ln3/y/e/k;->l0:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Landroidx/media2/widget/R$drawable;->media2_widget_ic_subtitle_on:I

    .line 12
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 13
    invoke-static {p1, v0}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object p1, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object p2, p1, Ln3/y/e/k;->l0:Landroid/widget/ImageButton;

    iget-object p1, p1, Ln3/y/e/k;->c:Landroid/content/res/Resources;

    sget v0, Landroidx/media2/widget/R$string;->mcv2_cc_is_on:I

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-ne p1, v1, :cond_7

    move p1, v2

    .line 18
    :goto_1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->x0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    .line 19
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->x0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v0, p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    iget-object p2, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iput p1, p2, Ln3/y/e/k;->m:I

    .line 21
    iget-object v0, p2, Ln3/y/e/k;->t0:Ljava/util/List;

    iget-object p2, p2, Ln3/y/e/k;->r0:Ln3/y/e/k$v;

    .line 22
    iget-object v1, p2, Ln3/y/e/k$v;->a:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_5

    .line 24
    iget-object p2, p2, Ln3/y/e/k$v;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string p1, ""

    .line 25
    :goto_2
    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    return-void
.end method

.method public k(Ln3/y/e/x;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/e/x;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Ln3/y/e/k;->c1:Z

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackInfoChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    :cond_1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    invoke-virtual {v0, p1, p2}, Ln3/y/e/k;->B(Ln3/y/e/x;Ljava/util/List;)V

    .line 5
    iget-object p2, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    invoke-virtual {p1}, Ln3/y/e/x;->e()Landroidx/media2/common/MediaItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Ln3/y/e/k;->z(Landroidx/media2/common/MediaItem;)V

    .line 6
    iget-object p2, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    invoke-virtual {p1}, Ln3/y/e/x;->e()Landroidx/media2/common/MediaItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Ln3/y/e/k;->A(Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method public l(Ln3/y/e/x;Landroidx/media2/common/VideoSize;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Ln3/y/e/k;->c1:Z

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    :cond_1
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    iget v0, v0, Ln3/y/e/k;->w0:I

    if-nez v0, :cond_2

    .line 5
    iget v0, p2, Landroidx/media2/common/VideoSize;->b:I

    if-lez v0, :cond_2

    .line 6
    iget p2, p2, Landroidx/media2/common/VideoSize;->a:I

    if-lez p2, :cond_2

    .line 7
    invoke-virtual {p1}, Ln3/y/e/x;->k()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 8
    iget-object v0, p0, Ln3/y/e/k$t;->a:Ln3/y/e/k;

    invoke-virtual {v0, p1, p2}, Ln3/y/e/k;->B(Ln3/y/e/x;Ljava/util/List;)V

    :cond_2
    return-void
.end method
