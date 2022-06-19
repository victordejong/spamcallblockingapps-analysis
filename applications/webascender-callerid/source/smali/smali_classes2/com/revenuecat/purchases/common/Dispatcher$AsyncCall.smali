.class public abstract Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revenuecat/purchases/common/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AsyncCall"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract call()Lcom/revenuecat/purchases/common/HTTPClient$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onCompletion(Lcom/revenuecat/purchases/common/HTTPClient$Result;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;->call()Lcom/revenuecat/purchases/common/HTTPClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;->onCompletion(Lcom/revenuecat/purchases/common/HTTPClient$Result;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/revenuecat/purchases/common/ErrorsKt;->toPurchasesError(Ljava/lang/Exception;)Lcom/revenuecat/purchases/PurchasesError;

    move-result-object v0

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object v1, Lkotlin/r;->a:Lkotlin/r;

    invoke-virtual {p0, v0}, Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;->onError(Lcom/revenuecat/purchases/PurchasesError;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/revenuecat/purchases/common/ErrorsKt;->toPurchasesError(Ljava/lang/Exception;)Lcom/revenuecat/purchases/PurchasesError;

    move-result-object v0

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object v1, Lkotlin/r;->a:Lkotlin/r;

    invoke-virtual {p0, v0}, Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;->onError(Lcom/revenuecat/purchases/PurchasesError;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/revenuecat/purchases/common/ErrorsKt;->toPurchasesError(Ljava/lang/Exception;)Lcom/revenuecat/purchases/PurchasesError;

    move-result-object v0

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object v1, Lkotlin/r;->a:Lkotlin/r;

    invoke-virtual {p0, v0}, Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;->onError(Lcom/revenuecat/purchases/PurchasesError;)V

    :goto_0
    return-void
.end method
