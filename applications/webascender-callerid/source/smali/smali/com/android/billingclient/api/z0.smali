.class final Lcom/android/billingclient/api/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/android/billingclient/api/i;

.field final synthetic g:Lcom/android/billingclient/api/g;

.field final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/g;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/android/billingclient/api/z0;->f:Lcom/android/billingclient/api/i;

    iput-object p3, p0, Lcom/android/billingclient/api/z0;->g:Lcom/android/billingclient/api/g;

    iput-object p4, p0, Lcom/android/billingclient/api/z0;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "BillingClient"

    const-string v1, "Successfully consumed purchase."

    .line 1
    invoke-static {v0, v1}, Lg/f/a/d/c/k/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/z0;->f:Lcom/android/billingclient/api/i;

    iget-object v1, p0, Lcom/android/billingclient/api/z0;->g:Lcom/android/billingclient/api/g;

    iget-object v2, p0, Lcom/android/billingclient/api/z0;->h:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/i;->onConsumeResponse(Lcom/android/billingclient/api/g;Ljava/lang/String;)V

    return-void
.end method
