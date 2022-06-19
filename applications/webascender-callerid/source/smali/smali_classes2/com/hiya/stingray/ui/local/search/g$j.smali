.class final Lcom/hiya/stingray/ui/local/search/g$j;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/search/g;->r1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lcom/hiya/stingray/t/h1/d;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/search/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/search/g;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/g$j;->f:Lcom/hiya/stingray/ui/local/search/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/h1/d;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g$j;->f:Lcom/hiya/stingray/ui/local/search/g;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "directory_item"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    const-class p1, Lcom/hiya/stingray/ui/local/f/k;

    .line 5
    invoke-static {v1, v2, p1}, Lcom/hiya/stingray/ui/common/SinglePanelFragmentActivity;->O(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/g$j;->f:Lcom/hiya/stingray/ui/local/search/g;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/search/g;->n1()Lcom/hiya/stingray/ui/local/search/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/search/f;->j()V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/h1/d;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/search/g$j;->a(Lcom/hiya/stingray/t/h1/d;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
