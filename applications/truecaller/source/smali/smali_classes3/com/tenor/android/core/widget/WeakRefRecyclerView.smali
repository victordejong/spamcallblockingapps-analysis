.class public Lcom/tenor/android/core/widget/WeakRefRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/measurable/IRecyclerView;
.implements Lcom/tenor/android/core/weakref/IWeakRefObject;
.implements Lcom/tenor/android/core/weakref/IWeakRefHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lcom/tenor/android/core/measurable/IRecyclerView;",
        "Lcom/tenor/android/core/weakref/IWeakRefObject<",
        "Landroid/content/Context;",
        ">;",
        "Lcom/tenor/android/core/weakref/IWeakRefHandler<",
        "Lcom/tenor/android/core/widget/WeakRefRecyclerView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandler:Lcom/tenor/android/core/weakref/WeakRefCurrentHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tenor/android/core/weakref/WeakRefCurrentHandler<",
            "Lcom/tenor/android/core/widget/WeakRefRecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/tenor/android/core/widget/WeakRefRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/tenor/android/core/widget/WeakRefRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/tenor/android/core/widget/WeakRefRecyclerView;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 5
    new-instance p1, Lcom/tenor/android/core/weakref/WeakRefCurrentHandler;

    invoke-direct {p1, p0}, Lcom/tenor/android/core/weakref/WeakRefCurrentHandler;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tenor/android/core/widget/WeakRefRecyclerView;->mHandler:Lcom/tenor/android/core/weakref/WeakRefCurrentHandler;

    return-void
.end method


# virtual methods
.method public bridge synthetic getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/WeakRefRecyclerView;->getHandler()Lcom/tenor/android/core/weakref/WeakRefCurrentHandler;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lcom/tenor/android/core/weakref/WeakRefCurrentHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tenor/android/core/weakref/WeakRefCurrentHandler<",
            "Lcom/tenor/android/core/widget/WeakRefRecyclerView;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/tenor/android/core/widget/WeakRefRecyclerView;->mHandler:Lcom/tenor/android/core/weakref/WeakRefCurrentHandler;

    return-object v0
.end method

.method public bridge synthetic getHandler()Lcom/tenor/android/core/weakref/WeakRefHandler;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/WeakRefRecyclerView;->getHandler()Lcom/tenor/android/core/weakref/WeakRefCurrentHandler;

    move-result-object v0

    return-object v0
.end method

.method public getWeakRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/widget/WeakRefRecyclerView;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hasRef()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/widget/WeakRefRecyclerView;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/tenor/android/core/util/AbstractWeakReferenceUtils;->isAlive(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method
