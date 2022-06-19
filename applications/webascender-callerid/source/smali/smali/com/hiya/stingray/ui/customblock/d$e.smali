.class Lcom/hiya/stingray/ui/customblock/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/customblock/d;->g(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lretrofit2/Response<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/t/d0;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/hiya/stingray/ui/customblock/d;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/customblock/d;Lcom/hiya/stingray/t/d0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/d$e;->h:Lcom/hiya/stingray/ui/customblock/d;

    iput-object p2, p0, Lcom/hiya/stingray/ui/customblock/d$e;->f:Lcom/hiya/stingray/t/d0;

    iput-object p3, p0, Lcom/hiya/stingray/ui/customblock/d$e;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/d$e;->f:Lcom/hiya/stingray/t/d0;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/d$e;->f:Lcom/hiya/stingray/t/d0;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->k()Lcom/google/common/collect/z;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/d$e;->h:Lcom/hiya/stingray/ui/customblock/d;

    iget-object p1, p1, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast p1, Lcom/hiya/stingray/ui/customblock/i;

    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/d$e;->f:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hiya/stingray/ui/customblock/i;->C(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/d$e;->h:Lcom/hiya/stingray/ui/customblock/d;

    iget-object p1, p1, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast p1, Lcom/hiya/stingray/ui/customblock/i;

    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/d$e;->f:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hiya/stingray/ui/customblock/i;->C(Ljava/lang/String;)V

    .line 4
    :goto_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/d$e;->h:Lcom/hiya/stingray/ui/customblock/d;

    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/d$e;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/customblock/d;->c(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/d$e;->h:Lcom/hiya/stingray/ui/customblock/d;

    invoke-static {p1}, Lcom/hiya/stingray/ui/customblock/d;->u(Lcom/hiya/stingray/ui/customblock/d;)Lcom/hiya/stingray/util/a0;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/util/i0/d;

    sget-object v1, Lcom/hiya/stingray/util/i0/d$a;->BLOCK_STATUS_ONLY:Lcom/hiya/stingray/util/i0/d$a;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/util/i0/d;-><init>(Lcom/hiya/stingray/util/i0/d$a;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/customblock/d$e;->a(Lretrofit2/Response;)V

    return-void
.end method
