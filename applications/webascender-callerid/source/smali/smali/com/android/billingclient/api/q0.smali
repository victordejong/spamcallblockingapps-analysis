.class final Lcom/android/billingclient/api/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/android/billingclient/api/j;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/j;)V
    .locals 0

    iput-object p2, p0, Lcom/android/billingclient/api/q0;->f:Lcom/android/billingclient/api/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/q0;->f:Lcom/android/billingclient/api/j;

    .line 1
    sget-object v1, Lcom/android/billingclient/api/z;->n:Lcom/android/billingclient/api/g;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/j;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method
