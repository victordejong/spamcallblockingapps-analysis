.class public final Lcom/hiya/stingray/ui/premium/i$b;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/i;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Landroidx/lifecycle/f0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lkotlin/w/b/a;


# direct methods
.method public constructor <init>(Lkotlin/w/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/i$b;->f:Lkotlin/w/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/f0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/i$b;->f:Lkotlin/w/b/a;

    invoke-interface {v0}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/g0;

    invoke-interface {v0}, Landroidx/lifecycle/g0;->getViewModelStore()Landroidx/lifecycle/f0;

    move-result-object v0

    const-string v1, "ownerProducer().viewModelStore"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/i$b;->a()Landroidx/lifecycle/f0;

    move-result-object v0

    return-object v0
.end method
