.class public final synthetic Ln3/k/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/widget/ContentLoadingProgressBar;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/widget/ContentLoadingProgressBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/k/j/b;->a:Landroidx/core/widget/ContentLoadingProgressBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Ln3/k/j/b;->a:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->d:Z

    .line 2
    iget-object v2, v0, Landroidx/core/widget/ContentLoadingProgressBar;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v0, Landroidx/core/widget/ContentLoadingProgressBar;->c:Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroidx/core/widget/ContentLoadingProgressBar;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v8, v2, v6

    if-gez v8, :cond_1

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v4, v0, Landroidx/core/widget/ContentLoadingProgressBar;->b:Z

    if-nez v4, :cond_2

    .line 6
    iget-object v4, v0, Landroidx/core/widget/ContentLoadingProgressBar;->e:Ljava/lang/Runnable;

    sub-long/2addr v6, v2

    invoke-virtual {v0, v4, v6, v7}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    iput-boolean v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->b:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
