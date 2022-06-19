.class public abstract Lcom/tenor/android/core/widget/adapter/ListRVAdapter;
.super Lcom/tenor/android/core/widget/adapter/AbstractRVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenor/android/core/widget/adapter/ListRVAdapter$IThreadSafeConditions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CTX::",
        "Lcom/tenor/android/core/view/IBaseView;",
        "T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">",
        "Lcom/tenor/android/core/widget/adapter/AbstractRVAdapter<",
        "TCTX;TVH;>;"
    }
.end annotation


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tenor/android/core/view/IBaseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/tenor/android/core/widget/adapter/AbstractRVAdapter;-><init>(Lcom/tenor/android/core/view/IBaseView;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tenor/android/core/widget/adapter/ListRVAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/tenor/android/core/widget/adapter/AbstractRVAdapter;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tenor/android/core/widget/adapter/ListRVAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clearList()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/adapter/ListRVAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/widget/adapter/ListRVAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public insert(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/adapter/ListRVAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemInserted(I)V

    return-void
.end method

.method public insert(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/adapter/ListRVAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public insert(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/tenor/android/core/widget/adapter/ListRVAdapter;->insert(Ljava/util/List;Z)V

    return-void
.end method

.method public insert(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/tenor/android/core/widget/adapter/ListRVAdapter;->insert(Ljava/util/List;Z)V

    return-void
.end method

.method public abstract insert(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation
.end method

.method public declared-synchronized threadSafeRemove(Lcom/tenor/android/core/widget/adapter/ListRVAdapter$IThreadSafeConditions;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tenor/android/core/widget/adapter/ListRVAdapter$IThreadSafeConditions<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/adapter/ListRVAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    .line 5
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-interface {p1, v3}, Lcom/tenor/android/core/widget/adapter/ListRVAdapter$IThreadSafeConditions;->removeIf(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p1, v1}, Lcom/tenor/android/core/widget/adapter/ListRVAdapter$IThreadSafeConditions;->onItemsRemoved(Ljava/util/Stack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 11
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "conditions cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method
