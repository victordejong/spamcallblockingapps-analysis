.class final Lcom/hiya/stingray/manager/u3$h0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3$h0$a;->a(Lcom/android/billingclient/api/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/u3$h0$a;

.field final synthetic b:Lcom/android/billingclient/api/c;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u3$h0$a;Lcom/android/billingclient/api/c;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$h0$a$a;->a:Lcom/hiya/stingray/manager/u3$h0$a;

    iput-object p2, p0, Lcom/hiya/stingray/manager/u3$h0$a$a;->b:Lcom/android/billingclient/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSkuDetailsResponse(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hiya/stingray/manager/u3$h0$a$a;->a:Lcom/hiya/stingray/manager/u3$h0$a;

    iget-object v4, v4, Lcom/hiya/stingray/manager/u3$h0$a;->f:Lcom/hiya/stingray/manager/u3$h0;

    iget-object v4, v4, Lcom/hiya/stingray/manager/u3$h0;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {v4}, Lcom/hiya/stingray/manager/u3;->g(Lcom/hiya/stingray/manager/u3;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/hiya/stingray/manager/u3$h0$a$a;->a:Lcom/hiya/stingray/manager/u3$h0$a;

    iget-object v5, v5, Lcom/hiya/stingray/manager/u3$h0$a;->f:Lcom/hiya/stingray/manager/u3$h0;

    iget-object v5, v5, Lcom/hiya/stingray/manager/u3$h0;->b:Lcom/hiya/stingray/manager/u3$p;

    invoke-virtual {v5}, Lcom/hiya/stingray/manager/u3$p;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    check-cast v2, Lcom/android/billingclient/api/SkuDetails;

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    if-ne p2, v1, :cond_3

    if-eqz v2, :cond_3

    .line 3
    invoke-static {}, Lcom/android/billingclient/api/f;->e()Lcom/android/billingclient/api/f$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v2}, Lcom/android/billingclient/api/f$a;->d(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/f$a;

    .line 5
    invoke-virtual {p1}, Lcom/android/billingclient/api/f$a;->a()Lcom/android/billingclient/api/f;

    move-result-object p1

    const-string p2, "BillingFlowParams.newBui\u2026                 .build()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p2, Lkotlin/w/c/q;

    invoke-direct {p2}, Lkotlin/w/c/q;-><init>()V

    iput-object v0, p2, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$h0$a$a;->a:Lcom/hiya/stingray/manager/u3$h0$a;

    iget-object v0, v0, Lcom/hiya/stingray/manager/u3$h0$a;->f:Lcom/hiya/stingray/manager/u3$h0;

    iget-object v0, v0, Lcom/hiya/stingray/manager/u3$h0;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {v0}, Lcom/hiya/stingray/manager/u3;->i(Lcom/hiya/stingray/manager/u3;)Lcom/hiya/stingray/manager/u3$o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3$o;->a()Li/c/b0/k/b;

    move-result-object v0

    .line 8
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 9
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/hiya/stingray/manager/u3$h0$a$a$a;

    invoke-direct {v1, p0, p2}, Lcom/hiya/stingray/manager/u3$h0$a$a$a;-><init>(Lcom/hiya/stingray/manager/u3$h0$a$a;Lkotlin/w/c/q;)V

    .line 11
    new-instance v2, Lcom/hiya/stingray/manager/u3$h0$a$a$b;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/manager/u3$h0$a$a$b;-><init>(Lcom/hiya/stingray/manager/u3$h0$a$a;)V

    .line 12
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    iput-object v0, p2, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    .line 13
    iget-object p2, p0, Lcom/hiya/stingray/manager/u3$h0$a$a;->b:Lcom/android/billingclient/api/c;

    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$h0$a$a;->a:Lcom/hiya/stingray/manager/u3$h0$a;

    iget-object v0, v0, Lcom/hiya/stingray/manager/u3$h0$a;->f:Lcom/hiya/stingray/manager/u3$h0;

    iget-object v0, v0, Lcom/hiya/stingray/manager/u3$h0;->c:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Lcom/android/billingclient/api/c;->f(Landroid/app/Activity;Lcom/android/billingclient/api/f;)Lcom/android/billingclient/api/g;

    move-result-object p1

    const-string p2, "billingClient.launchBill\u2026low(activity, flowParams)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result p2

    if-eqz p2, :cond_4

    .line 15
    iget-object p2, p0, Lcom/hiya/stingray/manager/u3$h0$a$a;->a:Lcom/hiya/stingray/manager/u3$h0$a;

    iget-object p2, p2, Lcom/hiya/stingray/manager/u3$h0$a;->g:Li/c/b0/b/f;

    new-instance v0, Lcom/hiya/stingray/manager/u3$f;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/manager/u3$f;-><init>(Lcom/android/billingclient/api/g;)V

    invoke-interface {p2, v0}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 16
    :cond_3
    iget-object p2, p0, Lcom/hiya/stingray/manager/u3$h0$a$a;->a:Lcom/hiya/stingray/manager/u3$h0$a;

    iget-object p2, p2, Lcom/hiya/stingray/manager/u3$h0$a;->g:Li/c/b0/b/f;

    new-instance v0, Lcom/hiya/stingray/manager/u3$e;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/manager/u3$e;-><init>(Lcom/android/billingclient/api/g;)V

    invoke-interface {p2, v0}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method
