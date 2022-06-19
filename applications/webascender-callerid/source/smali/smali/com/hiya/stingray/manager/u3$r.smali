.class final Lcom/hiya/stingray/manager/u3$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3;->r(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/Purchase;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$r;->a:Lcom/android/billingclient/api/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/g;)V
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "PremiumManagerLog"

    if-nez v0, :cond_0

    .line 2
    invoke-static {v3}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/hiya/stingray/manager/u3$r;->a:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->g()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Purchase (%s) acknowledged."

    invoke-virtual {p1, v1, v0}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v3}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/hiya/stingray/manager/u3$r;->a:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Error acknowledging purchase (%s): %s"

    invoke-virtual {v0, p1, v3}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
