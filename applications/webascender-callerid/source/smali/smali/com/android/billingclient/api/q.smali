.class final Lcom/android/billingclient/api/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/android/billingclient/api/c0;

.field final synthetic g:Lcom/android/billingclient/api/r;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/r;Lcom/android/billingclient/api/c0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/q;->g:Lcom/android/billingclient/api/r;

    iput-object p2, p0, Lcom/android/billingclient/api/q;->f:Lcom/android/billingclient/api/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/q;->g:Lcom/android/billingclient/api/r;

    iget-object v0, v0, Lcom/android/billingclient/api/r;->h:Lcom/android/billingclient/api/m;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/q;->f:Lcom/android/billingclient/api/c0;

    invoke-virtual {v2}, Lcom/android/billingclient/api/c0;->b()I

    move-result v2

    .line 1
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    iget-object v2, p0, Lcom/android/billingclient/api/q;->f:Lcom/android/billingclient/api/c0;

    invoke-virtual {v2}, Lcom/android/billingclient/api/c0;->c()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 3
    invoke-virtual {v1}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/q;->f:Lcom/android/billingclient/api/c0;

    invoke-virtual {v2}, Lcom/android/billingclient/api/c0;->a()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/m;->onSkuDetailsResponse(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method
