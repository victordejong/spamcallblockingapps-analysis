.class public final Lcom/tenor/android/core/network/ApiClient$1;
.super Lcom/tenor/android/core/response/WeakRefCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenor/android/core/network/ApiClient;->getAnonId(Landroid/content/Context;Lcom/tenor/android/core/network/IAnonIdListener;)Lx3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tenor/android/core/response/WeakRefCallback<",
        "Landroid/content/Context;",
        "Lcom/tenor/android/core/response/impl/AnonIdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/tenor/android/core/network/IAnonIdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tenor/android/core/network/IAnonIdListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/tenor/android/core/network/ApiClient$1;->val$listener:Lcom/tenor/android/core/network/IAnonIdListener;

    invoke-direct {p0, p1}, Lcom/tenor/android/core/response/WeakRefCallback;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public failure(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/tenor/android/core/network/ApiClient$1;->val$listener:Lcom/tenor/android/core/network/IAnonIdListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lcom/tenor/android/core/network/IAnonIdListener;->onReceiveAnonIdFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic failure(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/tenor/android/core/network/ApiClient$1;->failure(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method public success(Landroid/content/Context;Lcom/tenor/android/core/response/impl/AnonIdResponse;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/tenor/android/core/response/impl/AnonIdResponse;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/tenor/android/core/response/impl/AnonIdResponse;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tenor/android/core/util/AbstractSessionUtils;->setAnonId(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/tenor/android/core/network/ApiClient$1;->val$listener:Lcom/tenor/android/core/network/IAnonIdListener;

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/tenor/android/core/response/impl/AnonIdResponse;->getId()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/tenor/android/core/network/ApiClient$1;->val$listener:Lcom/tenor/android/core/network/IAnonIdListener;

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "keyboard id cannot be empty"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/tenor/android/core/network/IAnonIdListener;->onReceiveAnonIdFailed(Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/tenor/android/core/network/ApiClient$1;->val$listener:Lcom/tenor/android/core/network/IAnonIdListener;

    invoke-interface {p2, p1}, Lcom/tenor/android/core/network/IAnonIdListener;->onReceiveAnonIdSucceeded(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/tenor/android/core/response/impl/AnonIdResponse;

    invoke-virtual {p0, p1, p2}, Lcom/tenor/android/core/network/ApiClient$1;->success(Landroid/content/Context;Lcom/tenor/android/core/response/impl/AnonIdResponse;)V

    return-void
.end method
