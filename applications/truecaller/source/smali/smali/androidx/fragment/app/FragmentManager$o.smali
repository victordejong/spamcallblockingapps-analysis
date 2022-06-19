.class public Landroidx/fragment/app/FragmentManager$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/Fragment$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ln3/r/a/a;

.field public c:I


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager$o;->c:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager$o;->b:Ln3/r/a/a;

    iget-object v2, v2, Ln3/r/a/a;->q:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->Q()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$l;)V

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->startPostponedEnterTransition()V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager$o;->b:Ln3/r/a/a;

    iget-object v3, v2, Ln3/r/a/a;->q:Landroidx/fragment/app/FragmentManager;

    iget-boolean v4, p0, Landroidx/fragment/app/FragmentManager$o;->a:Z

    xor-int/2addr v0, v1

    invoke-virtual {v3, v2, v4, v0, v1}, Landroidx/fragment/app/FragmentManager;->h(Ln3/r/a/a;ZZZ)V

    return-void
.end method
