.class public Lcom/tenor/android/core/presenter/impl/BasePresenter;
.super Lcom/tenor/android/core/weakref/WeakRefObject;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/presenter/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenor/android/core/presenter/impl/BasePresenter$BaseWeakRefCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CTX::",
        "Lcom/tenor/android/core/view/IBaseView;",
        ">",
        "Lcom/tenor/android/core/weakref/WeakRefObject<",
        "TCTX;>;",
        "Lcom/tenor/android/core/presenter/IBasePresenter<",
        "TCTX;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/tenor/android/core/view/IBaseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/tenor/android/core/weakref/WeakRefObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView()Lcom/tenor/android/core/view/IBaseView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCTX;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tenor/android/core/view/IBaseView;

    return-object v0
.end method

.method public hasView()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->hasRef()Z

    move-result v0

    return v0
.end method
