.class final Lcom/hiya/stingray/ui/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/k;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/k;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/k;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/k$a;->f:Lcom/hiya/stingray/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/k$a;->f:Lcom/hiya/stingray/ui/k;

    invoke-static {p2}, Lcom/hiya/stingray/ui/k;->h1(Lcom/hiya/stingray/ui/k;)V

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/k$a;->f:Lcom/hiya/stingray/ui/k;

    .line 3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hiya/stingray/ui/k$a;->f:Lcom/hiya/stingray/ui/k;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    const-class v2, Lcom/hiya/stingray/ui/local/search/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 5
    iget-object p2, p0, Lcom/hiya/stingray/ui/k$a;->f:Lcom/hiya/stingray/ui/k;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p2

    if-eqz p2, :cond_0

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_1
    return-void
.end method
