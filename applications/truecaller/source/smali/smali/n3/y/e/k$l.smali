.class public Ln3/y/e/k$l;
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
    iput-object p1, p0, Ln3/y/e/k$l;->a:Ln3/y/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/y/e/k$l;->a:Ln3/y/e/k;

    iget-object v0, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Ln3/y/e/k;->N0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object p1, p0, Ln3/y/e/k$l;->a:Ln3/y/e/k;

    iget-object v0, p1, Ln3/y/e/k;->O0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Ln3/y/e/k$l;->a:Ln3/y/e/k;

    const/4 v0, 0x2

    iput v0, p1, Ln3/y/e/k;->k:I

    .line 5
    iget-object v0, p1, Ln3/y/e/k;->r0:Ln3/y/e/k$v;

    iget-object v1, p1, Ln3/y/e/k;->v0:Ljava/util/List;

    .line 6
    iput-object v1, v0, Ln3/y/e/k$v;->a:Ljava/util/List;

    .line 7
    iget v1, p1, Ln3/y/e/k;->l:I

    add-int/lit8 v1, v1, 0x1

    .line 8
    iput v1, v0, Ln3/y/e/k$v;->b:I

    .line 9
    invoke-virtual {p1, v0}, Ln3/y/e/k;->d(Landroid/widget/BaseAdapter;)V

    return-void
.end method
