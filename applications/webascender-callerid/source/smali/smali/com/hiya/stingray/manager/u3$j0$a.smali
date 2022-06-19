.class final Lcom/hiya/stingray/manager/u3$j0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3$j0;->a(Li/c/b0/b/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lcom/android/billingclient/api/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/u3$j0;

.field final synthetic g:Li/c/b0/b/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u3$j0;Li/c/b0/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$j0$a;->f:Lcom/hiya/stingray/manager/u3$j0;

    iput-object p2, p0, Lcom/hiya/stingray/manager/u3$j0$a;->g:Li/c/b0/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/c;)V
    .locals 9

    const-string v0, "subs"

    .line 1
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/c;->i(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;

    move-result-object v1

    const-string v2, "billingClient.queryPurch\u2026llingClient.SkuType.SUBS)"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v2

    const-string v3, "activePurchasesResult.billingResult"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/billingclient/api/g;->b()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3$j0$a;->g:Li/c/b0/b/f;

    new-instance v0, Lcom/hiya/stingray/manager/u3$d;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/hiya/stingray/manager/u3$d;-><init>(Lcom/android/billingclient/api/g;Ljava/lang/String;ZZILkotlin/w/c/g;)V

    invoke-interface {p1, v0}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase$a;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v3, p0, Lcom/hiya/stingray/manager/u3$j0$a;->f:Lcom/hiya/stingray/manager/u3$j0;

    iget-object v3, v3, Lcom/hiya/stingray/manager/u3$j0;->a:Lcom/hiya/stingray/manager/u3;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/hiya/stingray/manager/u3;->a(Lcom/hiya/stingray/manager/u3;Ljava/util/List;)V

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/hiya/stingray/manager/u3$j0$a;->f:Lcom/hiya/stingray/manager/u3$j0;

    iget-object v2, v2, Lcom/hiya/stingray/manager/u3$j0;->a:Lcom/hiya/stingray/manager/u3;

    const-string v3, "billingClient"

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1, v0}, Lcom/hiya/stingray/manager/u3;->l(Lcom/hiya/stingray/manager/u3;Lcom/android/billingclient/api/c;Ljava/lang/String;)Li/c/b0/b/e0;

    move-result-object p1

    const-wide/16 v2, 0x2

    .line 7
    invoke-virtual {p1, v2, v3}, Li/c/b0/b/e0;->z(J)Li/c/b0/b/e0;

    move-result-object p1

    .line 8
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->D(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object p1

    .line 9
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->u(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object p1

    .line 10
    new-instance v0, Lcom/hiya/stingray/manager/u3$j0$a$a;

    invoke-direct {v0, p0, v1}, Lcom/hiya/stingray/manager/u3$j0$a$a;-><init>(Lcom/hiya/stingray/manager/u3$j0$a;Lcom/android/billingclient/api/Purchase$a;)V

    .line 11
    new-instance v1, Lcom/hiya/stingray/manager/u3$j0$a$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/u3$j0$a$b;-><init>(Lcom/hiya/stingray/manager/u3$j0$a;)V

    .line 12
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/billingclient/api/c;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/u3$j0$a;->a(Lcom/android/billingclient/api/c;)V

    return-void
.end method
