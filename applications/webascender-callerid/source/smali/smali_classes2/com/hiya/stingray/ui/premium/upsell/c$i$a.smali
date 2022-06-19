.class final Lcom/hiya/stingray/ui/premium/upsell/c$i$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/upsell/c$i;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/upsell/c$i;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/upsell/c$i;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/c$i$a;->f:Lcom/hiya/stingray/ui/premium/upsell/c$i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/c$i$a;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c$i$a;->f:Lcom/hiya/stingray/ui/premium/upsell/c$i;

    iget-object v0, v0, Lcom/hiya/stingray/ui/premium/upsell/c$i;->f:Lcom/hiya/stingray/ui/premium/upsell/c;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->h1()Lcom/hiya/stingray/ui/premium/upsell/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/premium/upsell/g;->R(Z)V

    return-void
.end method
