.class final Lcom/hiya/stingray/ui/local/e/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/e/b;->f0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/e/b;

.field final synthetic g:Z


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/e/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/e/b$f;->f:Lcom/hiya/stingray/ui/local/e/b;

    iput-boolean p2, p0, Lcom/hiya/stingray/ui/local/e/b$f;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b$f;->f:Lcom/hiya/stingray/ui/local/e/b;

    sget v1, Lcom/hiya/stingray/o;->n3:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/hiya/stingray/ui/local/e/b$f;->g:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b$f;->f:Lcom/hiya/stingray/ui/local/e/b;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/e0;->A(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method
