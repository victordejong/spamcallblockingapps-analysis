.class final Lcom/android/billingclient/api/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/android/billingclient/api/w;

.field final synthetic g:Lcom/android/billingclient/api/p0;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/p0;Lcom/android/billingclient/api/w;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/o0;->g:Lcom/android/billingclient/api/p0;

    iput-object p2, p0, Lcom/android/billingclient/api/o0;->f:Lcom/android/billingclient/api/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/o0;->g:Lcom/android/billingclient/api/p0;

    iget-object v0, v0, Lcom/android/billingclient/api/p0;->g:Lcom/android/billingclient/api/j;

    iget-object v1, p0, Lcom/android/billingclient/api/o0;->f:Lcom/android/billingclient/api/w;

    invoke-virtual {v1}, Lcom/android/billingclient/api/w;->a()Lcom/android/billingclient/api/g;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/o0;->f:Lcom/android/billingclient/api/w;

    invoke-virtual {v2}, Lcom/android/billingclient/api/w;->b()Ljava/util/List;

    move-result-object v2

    .line 1
    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/j;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method
