.class final Lcom/android/billingclient/api/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/android/billingclient/api/g;

.field final synthetic g:Lcom/android/billingclient/api/v;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/g;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/s;->g:Lcom/android/billingclient/api/v;

    iput-object p2, p0, Lcom/android/billingclient/api/s;->f:Lcom/android/billingclient/api/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/s;->g:Lcom/android/billingclient/api/v;

    invoke-static {v0}, Lcom/android/billingclient/api/v;->b(Lcom/android/billingclient/api/v;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/s;->g:Lcom/android/billingclient/api/v;

    invoke-static {v1}, Lcom/android/billingclient/api/v;->c(Lcom/android/billingclient/api/v;)Lcom/android/billingclient/api/e;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/billingclient/api/s;->g:Lcom/android/billingclient/api/v;

    invoke-static {v1}, Lcom/android/billingclient/api/v;->c(Lcom/android/billingclient/api/v;)Lcom/android/billingclient/api/e;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/s;->f:Lcom/android/billingclient/api/g;

    .line 1
    invoke-interface {v1, v2}, Lcom/android/billingclient/api/e;->onBillingSetupFinished(Lcom/android/billingclient/api/g;)V

    .line 2
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
