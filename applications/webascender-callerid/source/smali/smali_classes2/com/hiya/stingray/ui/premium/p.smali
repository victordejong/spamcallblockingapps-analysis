.class public final Lcom/hiya/stingray/ui/premium/p;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/premium/q;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Li/c/b0/c/a;

.field private final c:Lcom/hiya/stingray/util/a0;


# direct methods
.method public constructor <init>(Li/c/b0/c/a;Lcom/hiya/stingray/util/a0;)V
    .locals 1

    const-string v0, "compositeDisposable"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/p;->b:Li/c/b0/c/a;

    iput-object p2, p0, Lcom/hiya/stingray/ui/premium/p;->c:Lcom/hiya/stingray/util/a0;

    .line 2
    const-class v0, Lcom/hiya/stingray/manager/u3$h;

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object p2

    .line 3
    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p2, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p2

    .line 4
    new-instance v0, Lcom/hiya/stingray/ui/premium/p$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/premium/p$a;-><init>(Lcom/hiya/stingray/ui/premium/p;)V

    invoke-virtual {p2, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method


# virtual methods
.method public final t()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/q;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/premium/q;->D()V

    return-void
.end method
