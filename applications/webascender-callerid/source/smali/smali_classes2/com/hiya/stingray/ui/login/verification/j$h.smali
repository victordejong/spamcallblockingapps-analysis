.class final Lcom/hiya/stingray/ui/login/verification/j$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/login/verification/j;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/login/verification/j;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/login/verification/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$h;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$h;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-static {p1}, Lcom/hiya/stingray/ui/login/verification/j;->j1(Lcom/hiya/stingray/ui/login/verification/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$h;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/j;->q1()Lcom/hiya/stingray/ui/login/verification/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/i;->d()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$h;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/j;->q1()Lcom/hiya/stingray/ui/login/verification/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/i;->e()V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$h;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method
