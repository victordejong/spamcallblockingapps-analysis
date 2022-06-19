.class public abstract Lcom/tenor/android/core/presenter/impl/BasePresenter$BaseWeakRefCallback;
.super Lcom/tenor/android/core/response/WeakRefCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenor/android/core/presenter/impl/BasePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseWeakRefCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tenor/android/core/response/WeakRefCallback<",
        "TCTX;TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tenor/android/core/presenter/impl/BasePresenter;


# direct methods
.method public constructor <init>(Lcom/tenor/android/core/presenter/impl/BasePresenter;Lcom/tenor/android/core/view/IBaseView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/tenor/android/core/presenter/impl/BasePresenter$BaseWeakRefCallback;-><init>(Lcom/tenor/android/core/presenter/impl/BasePresenter;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public constructor <init>(Lcom/tenor/android/core/presenter/impl/BasePresenter;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/tenor/android/core/presenter/impl/BasePresenter$BaseWeakRefCallback;->this$0:Lcom/tenor/android/core/presenter/impl/BasePresenter;

    .line 3
    invoke-direct {p0, p2}, Lcom/tenor/android/core/response/WeakRefCallback;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method
