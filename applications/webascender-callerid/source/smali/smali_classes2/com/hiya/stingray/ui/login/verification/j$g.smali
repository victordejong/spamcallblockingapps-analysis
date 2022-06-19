.class final Lcom/hiya/stingray/ui/login/verification/j$g;
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$g;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$g;->f:Lcom/hiya/stingray/ui/login/verification/j;

    sget v0, Lcom/hiya/stingray/o;->V0:I

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "errorTv"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$g;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-static {p1}, Lcom/hiya/stingray/ui/login/verification/j;->j1(Lcom/hiya/stingray/ui/login/verification/j;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "activity!!"

    const-string v2, "editText"

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$g;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/j;->q1()Lcom/hiya/stingray/ui/login/verification/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/i;->f()V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$g;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-static {p1}, Lcom/hiya/stingray/ui/login/verification/j;->i1(Lcom/hiya/stingray/ui/login/verification/j;)Lcom/hiya/stingray/ui/login/verification/a;

    move-result-object p1

    iget-object v3, p0, Lcom/hiya/stingray/ui/login/verification/j$g;->f:Lcom/hiya/stingray/ui/login/verification/j;

    sget v4, Lcom/hiya/stingray/o;->O0:I

    invoke-virtual {v3, v4}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hiya/stingray/ui/login/verification/j$g;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Lcom/hiya/stingray/ui/login/verification/a;->y(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$g;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/j;->q1()Lcom/hiya/stingray/ui/login/verification/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/i;->a()V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$g;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-static {p1}, Lcom/hiya/stingray/ui/login/verification/j;->i1(Lcom/hiya/stingray/ui/login/verification/j;)Lcom/hiya/stingray/ui/login/verification/a;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hiya/stingray/ui/login/verification/j$g;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-static {v4}, Lcom/hiya/stingray/ui/login/verification/j;->h1(Lcom/hiya/stingray/ui/login/verification/j;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hiya/stingray/ui/login/verification/j$g;->f:Lcom/hiya/stingray/ui/login/verification/j;

    sget v5, Lcom/hiya/stingray/o;->O0:I

    invoke-virtual {v4, v5}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {v4, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hiya/stingray/ui/login/verification/j$g;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Lcom/hiya/stingray/ui/login/verification/a;->A(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0
.end method
