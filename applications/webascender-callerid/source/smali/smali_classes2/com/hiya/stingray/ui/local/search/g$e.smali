.class final Lcom/hiya/stingray/ui/local/search/g$e;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/search/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic f:Lcom/hiya/stingray/ui/local/search/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/search/g;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/g$e;->f:Lcom/hiya/stingray/ui/local/search/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/search/g$e;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g$e;->f:Lcom/hiya/stingray/ui/local/search/g;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/search/g$e;->f:Lcom/hiya/stingray/ui/local/search/g;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g$e;->f:Lcom/hiya/stingray/ui/local/search/g;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/g;->n1()Lcom/hiya/stingray/ui/local/search/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/f;->b()V

    return-void
.end method
