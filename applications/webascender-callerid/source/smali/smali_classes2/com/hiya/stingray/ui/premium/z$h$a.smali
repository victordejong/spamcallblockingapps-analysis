.class final Lcom/hiya/stingray/ui/premium/z$h$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/z$h;->onLongClick(Landroid/view/View;)Z
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
.field final synthetic f:Lcom/hiya/stingray/ui/premium/z$h;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/z$h;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/z$h$a;->f:Lcom/hiya/stingray/ui/premium/z$h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/z$h$a;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z$h$a;->f:Lcom/hiya/stingray/ui/premium/z$h;

    iget-object v0, v0, Lcom/hiya/stingray/ui/premium/z$h;->f:Lcom/hiya/stingray/ui/premium/z;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/z;->h1()Lcom/hiya/stingray/ui/premium/upsell/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/premium/upsell/g;->Q(Z)V

    return-void
.end method
