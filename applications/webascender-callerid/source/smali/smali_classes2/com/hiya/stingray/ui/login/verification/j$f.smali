.class final Lcom/hiya/stingray/ui/login/verification/j$f;
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$f;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$f;->f:Lcom/hiya/stingray/ui/login/verification/j;

    sget v0, Lcom/hiya/stingray/o;->O0:I

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$f;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-static {p1}, Lcom/hiya/stingray/ui/login/verification/j;->i1(Lcom/hiya/stingray/ui/login/verification/j;)Lcom/hiya/stingray/ui/login/verification/a;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/j$f;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/login/verification/a;->z(Landroid/app/Activity;)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method
