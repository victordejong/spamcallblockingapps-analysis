.class final Lcom/android/billingclient/api/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/android/billingclient/api/h;

.field final synthetic g:Lcom/android/billingclient/api/i;

.field final synthetic h:Lcom/android/billingclient/api/d;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/i;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/m0;->h:Lcom/android/billingclient/api/d;

    iput-object p2, p0, Lcom/android/billingclient/api/m0;->f:Lcom/android/billingclient/api/h;

    iput-object p3, p0, Lcom/android/billingclient/api/m0;->g:Lcom/android/billingclient/api/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/m0;->h:Lcom/android/billingclient/api/d;

    iget-object v1, p0, Lcom/android/billingclient/api/m0;->f:Lcom/android/billingclient/api/h;

    iget-object v2, p0, Lcom/android/billingclient/api/m0;->g:Lcom/android/billingclient/api/i;

    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/d;->t(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/i;)V

    const/4 v0, 0x0

    return-object v0
.end method
