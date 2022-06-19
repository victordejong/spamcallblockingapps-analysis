.class public Ln3/r/a/u0$c;
.super Ln3/r/a/u0$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/r/a/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final h:Ln3/r/a/c0;


# direct methods
.method public constructor <init>(Ln3/r/a/u0$d$c;Ln3/r/a/u0$d$b;Ln3/r/a/c0;Ln3/k/e/a;)V
    .locals 1

    .line 1
    iget-object v0, p3, Ln3/r/a/c0;->c:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-direct {p0, p1, p2, v0, p4}, Ln3/r/a/u0$d;-><init>(Ln3/r/a/u0$d$c;Ln3/r/a/u0$d$b;Landroidx/fragment/app/Fragment;Ln3/k/e/a;)V

    .line 3
    iput-object p3, p0, Ln3/r/a/u0$c;->h:Ln3/r/a/c0;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/u0$d;->b()V

    .line 2
    iget-object v0, p0, Ln3/r/a/u0$c;->h:Ln3/r/a/c0;

    invoke-virtual {v0}, Ln3/r/a/c0;->k()V

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/r/a/u0$d;->b:Ln3/r/a/u0$d$b;

    .line 2
    sget-object v1, Ln3/r/a/u0$d$b;->b:Ln3/r/a/u0$d$b;

    if-ne v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Ln3/r/a/u0$c;->h:Ln3/r/a/c0;

    .line 4
    iget-object v0, v0, Ln3/r/a/c0;->c:Landroidx/fragment/app/Fragment;

    .line 5
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    const/4 v2, 0x2

    .line 7
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->T(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFocus: Saved focused view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for Fragment "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    :cond_0
    iget-object v1, p0, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 10
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 12
    iget-object v2, p0, Ln3/r/a/u0$c;->h:Ln3/r/a/c0;

    invoke-virtual {v2}, Ln3/r/a/c0;->b()V

    .line 13
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 14
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x4

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getPostOnViewCreatedAlpha()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method
