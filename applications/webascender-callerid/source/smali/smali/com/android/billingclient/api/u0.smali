.class final Lcom/android/billingclient/api/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/android/billingclient/api/b;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/b;)V
    .locals 0

    iput-object p2, p0, Lcom/android/billingclient/api/u0;->f:Lcom/android/billingclient/api/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/u0;->f:Lcom/android/billingclient/api/b;

    .line 1
    sget-object v1, Lcom/android/billingclient/api/z;->n:Lcom/android/billingclient/api/g;

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/b;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/g;)V

    return-void
.end method
