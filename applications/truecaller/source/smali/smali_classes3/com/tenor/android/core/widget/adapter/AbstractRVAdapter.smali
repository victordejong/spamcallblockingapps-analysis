.class public abstract Lcom/tenor/android/core/widget/adapter/AbstractRVAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/weakref/IWeakRefObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CTX::",
        "Lcom/tenor/android/core/view/IBaseView;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "TVH;>;",
        "Lcom/tenor/android/core/weakref/IWeakRefObject<",
        "TCTX;>;"
    }
.end annotation


# instance fields
.field private final mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tenor/android/core/view/IBaseView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tenor/android/core/widget/adapter/AbstractRVAdapter;->mWeakRef:Ljava/lang/ref/WeakReference;

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
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/tenor/android/core/widget/adapter/AbstractRVAdapter;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/adapter/AbstractRVAdapter;->hasRef()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tenor/android/core/widget/adapter/AbstractRVAdapter;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tenor/android/core/view/IBaseView;

    invoke-interface {v0}, Lcom/tenor/android/core/view/IBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getWeakRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/widget/adapter/AbstractRVAdapter;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hasContext()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/adapter/AbstractRVAdapter;->hasRef()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tenor/android/core/widget/adapter/AbstractRVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRef()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/widget/adapter/AbstractRVAdapter;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/tenor/android/core/util/AbstractWeakReferenceUtils;->isAlive(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method
