.class Landroidx/recyclerview/widget/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/g;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Landroidx/recyclerview/widget/g;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/g;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/g$a;->g:Landroidx/recyclerview/widget/g;

    iput-object p2, p0, Landroidx/recyclerview/widget/g$a;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/g$j;

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/g$a;->g:Landroidx/recyclerview/widget/g;

    iget-object v3, v1, Landroidx/recyclerview/widget/g$j;->a:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget v4, v1, Landroidx/recyclerview/widget/g$j;->b:I

    iget v5, v1, Landroidx/recyclerview/widget/g$j;->c:I

    iget v6, v1, Landroidx/recyclerview/widget/g$j;->d:I

    iget v7, v1, Landroidx/recyclerview/widget/g$j;->e:I

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/g;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$d0;IIII)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/g$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/g$a;->g:Landroidx/recyclerview/widget/g;

    iget-object v0, v0, Landroidx/recyclerview/widget/g;->mMovesList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/recyclerview/widget/g$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
