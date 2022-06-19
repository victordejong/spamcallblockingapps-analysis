.class final Lcom/hiya/stingray/manager/u3$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3;->s()Li/c/b0/b/e0;
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
        "Li/c/b0/b/h0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/u3;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u3;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$s;->a:Lcom/hiya/stingray/manager/u3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/f0<",
            "Lcom/android/billingclient/api/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$s;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {v0}, Lcom/hiya/stingray/manager/u3;->d(Lcom/hiya/stingray/manager/u3;)Lcom/android/billingclient/api/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "billingClient wasn\'t initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Li/c/b0/b/f0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$s;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {v0}, Lcom/hiya/stingray/manager/u3;->d(Lcom/hiya/stingray/manager/u3;)Lcom/android/billingclient/api/c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/billingclient/api/c;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$s;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {v0}, Lcom/hiya/stingray/manager/u3;->d(Lcom/hiya/stingray/manager/u3;)Lcom/android/billingclient/api/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Li/c/b0/b/f0;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$s;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {v0}, Lcom/hiya/stingray/manager/u3;->c(Lcom/hiya/stingray/manager/u3;)Li/c/b0/b/e;

    move-result-object v0

    .line 6
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 7
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/hiya/stingray/manager/u3$s$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/manager/u3$s$a;-><init>(Lcom/hiya/stingray/manager/u3$s;Li/c/b0/b/f0;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->H(Li/c/b0/b/g;)Li/c/b0/b/g;

    return-void
.end method
