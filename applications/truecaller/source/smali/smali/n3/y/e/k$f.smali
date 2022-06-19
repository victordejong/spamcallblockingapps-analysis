.class public Ln3/y/e/k$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/e/k;


# direct methods
.method public constructor <init>(Ln3/y/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/k$f;->a:Ln3/y/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 1
    iget-object p1, p0, Ln3/y/e/k$f;->a:Ln3/y/e/k;

    iget-object v0, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Ln3/y/e/k;->x:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 2
    :cond_1
    iget-boolean p3, p1, Ln3/y/e/k;->u:Z

    if-eqz p3, :cond_2

    iget-wide v0, p1, Ln3/y/e/k;->q:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_2

    int-to-long p2, p2

    mul-long/2addr v0, p2

    const-wide/16 p2, 0x3e8

    .line 3
    div-long/2addr v0, p2

    .line 4
    invoke-virtual {p1}, Ln3/y/e/k;->l()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 5
    iget-object p2, p0, Ln3/y/e/k$f;->a:Ln3/y/e/k;

    invoke-virtual {p2, v0, v1, p1}, Ln3/y/e/k;->p(JZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/y/e/k$f;->a:Ln3/y/e/k;

    iget-object v0, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Ln3/y/e/k;->x:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Ln3/y/e/k;->u:Z

    .line 3
    iget-object v1, p1, Ln3/y/e/k;->K0:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Ln3/y/e/k$f;->a:Ln3/y/e/k;

    iget-object v1, p1, Ln3/y/e/k;->N0:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object p1, p0, Ln3/y/e/k$f;->a:Ln3/y/e/k;

    iget-object v1, p1, Ln3/y/e/k;->O0:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object p1, p0, Ln3/y/e/k$f;->a:Ln3/y/e/k;

    iget-boolean v1, p1, Ln3/y/e/k;->w:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1}, Ln3/y/e/k;->w(Z)V

    .line 8
    :cond_1
    iget-object p1, p0, Ln3/y/e/k$f;->a:Ln3/y/e/k;

    invoke-virtual {p1}, Ln3/y/e/k;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ln3/y/e/k$f;->a:Ln3/y/e/k;

    iget-object p1, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    invoke-virtual {p1}, Ln3/y/e/x;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Ln3/y/e/k$f;->a:Ln3/y/e/k;

    iput-boolean v0, p1, Ln3/y/e/k;->A:Z

    .line 10
    iget-object p1, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    .line 11
    iget-object p1, p1, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->S()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_2
    :goto_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .line 1
    iget-object p1, p0, Ln3/y/e/k$f;->a:Ln3/y/e/k;

    iget-object v0, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Ln3/y/e/k;->x:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Ln3/y/e/k;->u:Z

    .line 3
    invoke-virtual {p1}, Ln3/y/e/k;->getLatestSeekPosition()J

    move-result-wide v1

    .line 4
    iget-object p1, p0, Ln3/y/e/k$f;->a:Ln3/y/e/k;

    invoke-virtual {p1}, Ln3/y/e/k;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Ln3/y/e/k$f;->a:Ln3/y/e/k;

    const-wide/16 v3, -0x1

    iput-wide v3, p1, Ln3/y/e/k;->s:J

    .line 6
    iput-wide v3, p1, Ln3/y/e/k;->t:J

    .line 7
    :cond_1
    iget-object p1, p0, Ln3/y/e/k$f;->a:Ln3/y/e/k;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Ln3/y/e/k;->p(JZ)V

    .line 8
    iget-object p1, p0, Ln3/y/e/k$f;->a:Ln3/y/e/k;

    iget-boolean v1, p1, Ln3/y/e/k;->A:Z

    if-eqz v1, :cond_2

    .line 9
    iput-boolean v0, p1, Ln3/y/e/k;->A:Z

    .line 10
    iget-object p1, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    .line 11
    iget-object p1, p1, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->W()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_2
    :goto_0
    return-void
.end method
