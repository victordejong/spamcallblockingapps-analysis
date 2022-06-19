.class final Lcom/hiya/stingray/manager/u3$h0$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3$h0$a$a;->onSkuDetailsResponse(Lcom/android/billingclient/api/g;Ljava/util/List;)V
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
        "Lcom/hiya/stingray/manager/u3$n;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/u3$h0$a$a;

.field final synthetic g:Lkotlin/w/c/q;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u3$h0$a$a;Lkotlin/w/c/q;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$h0$a$a$a;->f:Lcom/hiya/stingray/manager/u3$h0$a$a;

    iput-object p2, p0, Lcom/hiya/stingray/manager/u3$h0$a$a$a;->g:Lkotlin/w/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/manager/u3$n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$h0$a$a$a;->g:Lkotlin/w/c/q;

    iget-object v0, v0, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    check-cast v0, Li/c/b0/c/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$n;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3$h0$a$a$a;->f:Lcom/hiya/stingray/manager/u3$h0$a$a;

    iget-object p1, p1, Lcom/hiya/stingray/manager/u3$h0$a$a;->a:Lcom/hiya/stingray/manager/u3$h0$a;

    iget-object p1, p1, Lcom/hiya/stingray/manager/u3$h0$a;->f:Lcom/hiya/stingray/manager/u3$h0;

    iget-object p1, p1, Lcom/hiya/stingray/manager/u3$h0;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {p1}, Lcom/hiya/stingray/manager/u3;->j(Lcom/hiya/stingray/manager/u3;)Lcom/hiya/stingray/util/a0;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/manager/u3$g;

    iget-object v1, p0, Lcom/hiya/stingray/manager/u3$h0$a$a$a;->f:Lcom/hiya/stingray/manager/u3$h0$a$a;

    iget-object v1, v1, Lcom/hiya/stingray/manager/u3$h0$a$a;->a:Lcom/hiya/stingray/manager/u3$h0$a;

    iget-object v1, v1, Lcom/hiya/stingray/manager/u3$h0$a;->f:Lcom/hiya/stingray/manager/u3$h0;

    iget-object v1, v1, Lcom/hiya/stingray/manager/u3$h0;->b:Lcom/hiya/stingray/manager/u3$p;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/manager/u3$g;-><init>(Lcom/hiya/stingray/manager/u3$p;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3$h0$a$a$a;->f:Lcom/hiya/stingray/manager/u3$h0$a$a;

    iget-object p1, p1, Lcom/hiya/stingray/manager/u3$h0$a$a;->a:Lcom/hiya/stingray/manager/u3$h0$a;

    iget-object p1, p1, Lcom/hiya/stingray/manager/u3$h0$a;->f:Lcom/hiya/stingray/manager/u3$h0;

    iget-object p1, p1, Lcom/hiya/stingray/manager/u3$h0;->a:Lcom/hiya/stingray/manager/u3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/manager/u3;->i0(Z)Li/c/b0/b/e;

    move-result-object p1

    .line 5
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    .line 6
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/hiya/stingray/manager/u3$h0$a$a$a$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/u3$h0$a$a$a$a;-><init>(Lcom/hiya/stingray/manager/u3$h0$a$a$a;)V

    .line 8
    new-instance v1, Lcom/hiya/stingray/manager/u3$h0$a$a$a$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/u3$h0$a$a$a$b;-><init>(Lcom/hiya/stingray/manager/u3$h0$a$a$a;)V

    .line 9
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$h0$a$a$a;->f:Lcom/hiya/stingray/manager/u3$h0$a$a;

    iget-object v0, v0, Lcom/hiya/stingray/manager/u3$h0$a$a;->a:Lcom/hiya/stingray/manager/u3$h0$a;

    iget-object v0, v0, Lcom/hiya/stingray/manager/u3$h0$a;->g:Li/c/b0/b/f;

    new-instance v1, Lcom/hiya/stingray/manager/u3$f;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$n;->a()Lcom/android/billingclient/api/g;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/hiya/stingray/manager/u3$f;-><init>(Lcom/android/billingclient/api/g;)V

    invoke-interface {v0, v1}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/manager/u3$n;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/u3$h0$a$a$a;->a(Lcom/hiya/stingray/manager/u3$n;)V

    return-void
.end method
