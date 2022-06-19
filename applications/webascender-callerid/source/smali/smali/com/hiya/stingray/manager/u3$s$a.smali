.class public final Lcom/hiya/stingray/manager/u3$s$a;
.super Li/c/b0/g/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3$s;->a(Li/c/b0/b/f0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/hiya/stingray/manager/u3$s;

.field final synthetic h:Li/c/b0/b/f0;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u3$s;Li/c/b0/b/f0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/f0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$s$a;->g:Lcom/hiya/stingray/manager/u3$s;

    iput-object p2, p0, Lcom/hiya/stingray/manager/u3$s$a;->h:Li/c/b0/b/f0;

    invoke-direct {p0}, Li/c/b0/g/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$s$a;->g:Lcom/hiya/stingray/manager/u3$s;

    iget-object v0, v0, Lcom/hiya/stingray/manager/u3$s;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {v0}, Lcom/hiya/stingray/manager/u3;->d(Lcom/hiya/stingray/manager/u3;)Lcom/android/billingclient/api/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "subscriptions"

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/c;->d(Ljava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v4

    const-string v0, "billingClient!!.isFeatur\u2026eatureType.SUBSCRIPTIONS)"

    invoke-static {v4, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v4}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$s$a;->h:Li/c/b0/b/f0;

    iget-object v2, p0, Lcom/hiya/stingray/manager/u3$s$a;->g:Lcom/hiya/stingray/manager/u3$s;

    iget-object v2, v2, Lcom/hiya/stingray/manager/u3$s;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {v2}, Lcom/hiya/stingray/manager/u3;->d(Lcom/hiya/stingray/manager/u3;)Lcom/android/billingclient/api/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Li/c/b0/b/f0;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$s$a;->h:Li/c/b0/b/f0;

    new-instance v1, Lcom/hiya/stingray/manager/u3$d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/hiya/stingray/manager/u3$d;-><init>(Lcom/android/billingclient/api/g;Ljava/lang/String;ZZILkotlin/w/c/g;)V

    invoke-interface {v0, v1}, Li/c/b0/b/f0;->onError(Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Li/c/b0/g/c;->dispose()V

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$s$a;->h:Li/c/b0/b/f0;

    invoke-interface {v0, p1}, Li/c/b0/b/f0;->onError(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Li/c/b0/g/c;->dispose()V

    return-void
.end method
