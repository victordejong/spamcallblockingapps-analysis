.class final Lcom/android/billingclient/api/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/android/billingclient/api/i;

.field final synthetic g:Lcom/android/billingclient/api/h;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/h;)V
    .locals 0

    iput-object p2, p0, Lcom/android/billingclient/api/n0;->f:Lcom/android/billingclient/api/i;

    iput-object p3, p0, Lcom/android/billingclient/api/n0;->g:Lcom/android/billingclient/api/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/n0;->f:Lcom/android/billingclient/api/i;

    .line 1
    sget-object v1, Lcom/android/billingclient/api/z;->n:Lcom/android/billingclient/api/g;

    iget-object v2, p0, Lcom/android/billingclient/api/n0;->g:Lcom/android/billingclient/api/h;

    .line 2
    invoke-virtual {v2}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/i;->onConsumeResponse(Lcom/android/billingclient/api/g;Ljava/lang/String;)V

    return-void
.end method
