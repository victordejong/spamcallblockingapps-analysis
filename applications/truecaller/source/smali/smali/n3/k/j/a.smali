.class public final synthetic Ln3/k/j/a;
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

    iput-object p1, p0, Ln3/k/j/a;->a:Landroidx/core/widget/ContentLoadingProgressBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ln3/k/j/a;->a:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->b:Z

    const-wide/16 v1, -0x1

    .line 2
    iput-wide v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->a:J

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
