.class public final Lcom/google/android/exoplayer2/ui/PlayerControlView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/q0$b;
.implements Le/m/a/c/o1/f$a;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic A0()V
    .locals 0

    invoke-static {p0}, Le/m/a/c/r0;->i(Le/m/a/c/q0$b;)V

    return-void
.end method

.method public G5(ZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 2
    sget p2, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n0:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n()V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o()V

    return-void
.end method

.method public N7(Le/m/a/c/y0;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 2
    sget p2, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n0:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m()V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r()V

    return-void
.end method

.method public synthetic Pi(Le/m/a/c/y0;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le/m/a/c/r0;->l(Le/m/a/c/q0$b;Le/m/a/c/y0;Ljava/lang/Object;I)V

    return-void
.end method

.method public S8(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 2
    sget v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n0:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q()V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m()V

    return-void
.end method

.method public Xl(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 2
    sget v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n0:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o()V

    return-void
.end method

.method public synthetic Zl(I)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->d(Le/m/a/c/q0$b;I)V

    return-void
.end method

.method public a(Le/m/a/c/o1/f;JZ)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:Z

    if-nez p4, :cond_3

    .line 3
    iget-object p4, p1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    if-eqz p4, :cond_3

    .line 4
    invoke-interface {p4}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object v1

    .line 5
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Le/m/a/c/y0;->p()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {v1}, Le/m/a/c/y0;->o()I

    move-result v2

    .line 7
    :goto_0
    iget-object v3, p1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Le/m/a/c/y0$c;

    invoke-virtual {v1, v0, v3}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    move-result-object v3

    invoke-virtual {v3}, Le/m/a/c/y0$c;->a()J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v2, -0x1

    if-ne v0, v5, :cond_1

    move-wide p2, v3

    goto :goto_1

    :cond_1
    sub-long/2addr p2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p4}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v0

    .line 9
    :goto_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    check-cast p1, Le/m/a/c/x;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {p4, v0, p2, p3}, Le/m/a/c/q0;->seekTo(IJ)V

    :cond_3
    return-void
.end method

.method public b(Le/m/a/c/o1/f;J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Ljava/lang/StringBuilder;

    .line 4
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Ljava/util/Formatter;

    .line 5
    invoke-static {v1, p1, p2, p3}, Le/m/a/c/q1/d0;->o(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public c(Le/m/a/c/o1/f;J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:Z

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Ljava/lang/StringBuilder;

    .line 5
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Ljava/util/Formatter;

    .line 6
    invoke-static {v1, p1, p2, p3}, Le/m/a/c/q1/d0;->o(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic fs(Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/g;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le/m/a/c/r0;->m(Le/m/a/c/q0$b;Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/g;)V

    return-void
.end method

.method public h5(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 2
    sget v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n0:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m()V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r()V

    return-void
.end method

.method public hy(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 2
    sget v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n0:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p()V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    if-ne v2, p1, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e(Le/m/a/c/q0;)V

    goto/16 :goto_6

    .line 5
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c:Landroid/view/View;

    if-ne v2, p1, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Le/m/a/c/q0;)V

    goto/16 :goto_6

    .line 7
    :cond_2
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    if-ne v2, p1, :cond_3

    .line 8
    invoke-interface {v1}, Le/m/a/c/q0;->isCurrentWindowSeekable()Z

    move-result p1

    if-eqz p1, :cond_10

    iget p1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:I

    if-lez p1, :cond_10

    int-to-long v2, p1

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h(Le/m/a/c/q0;J)V

    goto/16 :goto_6

    .line 10
    :cond_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/view/View;

    if-ne v2, p1, :cond_4

    .line 11
    invoke-interface {v1}, Le/m/a/c/q0;->isCurrentWindowSeekable()Z

    move-result p1

    if-eqz p1, :cond_10

    iget p1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:I

    if-lez p1, :cond_10

    neg-int p1, p1

    int-to-long v2, p1

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h(Le/m/a/c/q0;J)V

    goto/16 :goto_6

    .line 13
    :cond_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    const/4 v3, 0x1

    if-ne v2, p1, :cond_7

    .line 14
    invoke-interface {v1}, Le/m/a/c/q0;->getPlaybackState()I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 15
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 16
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Le/m/a/c/p0;

    if-eqz p1, :cond_6

    .line 17
    invoke-interface {p1}, Le/m/a/c/p0;->a()V

    goto :goto_0

    .line 18
    :cond_5
    invoke-interface {v1}, Le/m/a/c/q0;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 19
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-interface {v1}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    check-cast p1, Le/m/a/c/x;

    .line 21
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {v1, v0, v4, v5}, Le/m/a/c/q0;->seekTo(IJ)V

    .line 23
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 24
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    .line 25
    check-cast p1, Le/m/a/c/x;

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {v1, v3}, Le/m/a/c/q0;->setPlayWhenReady(Z)V

    goto/16 :goto_6

    .line 28
    :cond_7
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    const/4 v4, 0x0

    if-ne v2, p1, :cond_8

    .line 29
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    .line 30
    check-cast p1, Le/m/a/c/x;

    .line 31
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-interface {v1, v4}, Le/m/a/c/q0;->setPlayWhenReady(Z)V

    goto :goto_6

    .line 33
    :cond_8
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    if-ne v2, p1, :cond_f

    .line 34
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    .line 35
    invoke-interface {v1}, Le/m/a/c/q0;->getRepeatMode()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 36
    iget v2, v2, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:I

    move v5, v3

    :goto_1
    const/4 v6, 0x2

    if-gt v5, v6, :cond_e

    add-int v7, v0, v5

    .line 37
    rem-int/lit8 v7, v7, 0x3

    if-eqz v7, :cond_c

    if-eq v7, v3, :cond_a

    if-eq v7, v6, :cond_9

    goto :goto_2

    :cond_9
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_b

    goto :goto_3

    :cond_a
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_b

    goto :goto_3

    :cond_b
    :goto_2
    move v6, v4

    goto :goto_4

    :cond_c
    :goto_3
    move v6, v3

    :goto_4
    if-eqz v6, :cond_d

    move v0, v7

    goto :goto_5

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 38
    :cond_e
    :goto_5
    check-cast p1, Le/m/a/c/x;

    .line 39
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-interface {v1, v0}, Le/m/a/c/q0;->setRepeatMode(I)V

    goto :goto_6

    .line 41
    :cond_f
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    if-ne v2, p1, :cond_10

    .line 42
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    .line 43
    invoke-interface {v1}, Le/m/a/c/q0;->getShuffleModeEnabled()Z

    move-result v0

    xor-int/2addr v0, v3

    check-cast p1, Le/m/a/c/x;

    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-interface {v1, v0}, Le/m/a/c/q0;->setShuffleModeEnabled(Z)V

    :cond_10
    :goto_6
    return-void
.end method

.method public synthetic rs(Le/m/a/c/o0;)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->c(Le/m/a/c/q0$b;Le/m/a/c/o0;)V

    return-void
.end method

.method public synthetic tf(Le/m/a/c/b0;)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->e(Le/m/a/c/q0$b;Le/m/a/c/b0;)V

    return-void
.end method

.method public synthetic w1(Z)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->b(Le/m/a/c/q0$b;Z)V

    return-void
.end method
