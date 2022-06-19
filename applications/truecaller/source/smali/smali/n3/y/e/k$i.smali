.class public Ln3/y/e/k$i;
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
    iput-object p1, p0, Ln3/y/e/k$i;->a:Ln3/y/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Ln3/y/e/k$i;->a:Ln3/y/e/k;

    iget-object v0, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ln3/y/e/k;->o()V

    .line 3
    iget-object p1, p0, Ln3/y/e/k$i;->a:Ln3/y/e/k;

    iget-object v0, p1, Ln3/y/e/k;->K0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Ln3/y/e/k$i;->a:Ln3/y/e/k;

    invoke-virtual {p1}, Ln3/y/e/k;->getLatestSeekPosition()J

    move-result-wide v0

    .line 5
    iget-object p1, p0, Ln3/y/e/k$i;->a:Ln3/y/e/k;

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iget-wide v2, p1, Ln3/y/e/k;->q:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Ln3/y/e/k;->p(JZ)V

    .line 6
    iget-object p1, p0, Ln3/y/e/k$i;->a:Ln3/y/e/k;

    iget-wide v2, p1, Ln3/y/e/k;->q:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object p1, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    invoke-virtual {p1}, Ln3/y/e/x;->m()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Ln3/y/e/k$i;->a:Ln3/y/e/k;

    invoke-virtual {p1, v4}, Ln3/y/e/k;->w(Z)V

    :cond_1
    return-void
.end method
