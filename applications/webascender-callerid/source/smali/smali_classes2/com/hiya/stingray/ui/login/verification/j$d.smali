.class final Lcom/hiya/stingray/ui/login/verification/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/login/verification/j;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/u<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/login/verification/j;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/login/verification/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$d;->a:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/login/verification/j$d;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final b(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/j$d;->a:Lcom/hiya/stingray/ui/login/verification/j;

    sget v1, Lcom/hiya/stingray/o;->W1:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "loadingView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$d;->a:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/j$d;->a:Lcom/hiya/stingray/ui/login/verification/j;

    sget v1, Lcom/hiya/stingray/o;->O0:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "editText"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/e0;->i(Landroid/app/Activity;Landroid/view/View;)V

    :cond_0
    return-void
.end method
