.class public Ln3/y/e/k$p;
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
    iput-object p1, p0, Ln3/y/e/k$p;->a:Ln3/y/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/y/e/k$p;->a:Ln3/y/e/k;

    iget-object v0, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Ln3/y/e/k;->N0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object p1, p0, Ln3/y/e/k$p;->a:Ln3/y/e/k;

    iget-object v0, p1, Ln3/y/e/k;->O0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Ln3/y/e/k$p;->a:Ln3/y/e/k;

    const/4 v0, 0x3

    iput v0, p1, Ln3/y/e/k;->k:I

    .line 5
    iget-object v0, p1, Ln3/y/e/k;->q0:Ln3/y/e/k$u;

    iget-object v1, p1, Ln3/y/e/k;->t0:Ljava/util/List;

    .line 6
    iput-object v1, v0, Ln3/y/e/k$u;->c:Ljava/util/List;

    .line 7
    invoke-virtual {p1, v0}, Ln3/y/e/k;->d(Landroid/widget/BaseAdapter;)V

    return-void
.end method
