.class public Ln3/y/e/k$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Ln3/y/e/k$h;->a:Ln3/y/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object p1, p0, Ln3/y/e/k$h;->a:Ln3/y/e/k;

    iget-object v0, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ln3/y/e/k;->o()V

    .line 3
    iget-object p1, p0, Ln3/y/e/k$h;->a:Ln3/y/e/k;

    iget-object v0, p1, Ln3/y/e/k;->K0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Ln3/y/e/k$h;->a:Ln3/y/e/k;

    iget-boolean v0, p1, Ln3/y/e/k;->w:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-wide v5, p1, Ln3/y/e/k;->q:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget-wide v5, p1, Ln3/y/e/k;->q:J

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ln3/y/e/k;->getLatestSeekPosition()J

    move-result-wide v5

    :goto_1
    const-wide/16 v7, 0x2710

    sub-long/2addr v5, v7

    .line 6
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 7
    iget-object p1, p0, Ln3/y/e/k$h;->a:Ln3/y/e/k;

    invoke-virtual {p1, v2, v3, v1}, Ln3/y/e/k;->p(JZ)V

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p0, Ln3/y/e/k$h;->a:Ln3/y/e/k;

    invoke-virtual {p1, v4}, Ln3/y/e/k;->w(Z)V

    :cond_3
    return-void
.end method
