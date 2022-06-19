.class public Lcom/tenor/android/core/weakref/WeakRefObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/weakref/IWeakRefObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CTX:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
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
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tenor/android/core/weakref/WeakRefObject;-><init>(Ljava/lang/ref/WeakReference;)V

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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tenor/android/core/weakref/WeakRefObject;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/tenor/android/core/weakref/WeakRefObject;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hasRef()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/weakref/WeakRefObject;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/tenor/android/core/util/AbstractWeakReferenceUtils;->isAlive(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method
