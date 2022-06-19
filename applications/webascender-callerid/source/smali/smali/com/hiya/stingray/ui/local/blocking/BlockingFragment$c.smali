.class public final Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/login/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    iput p2, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->n1()Lcom/hiya/stingray/ui/local/blocking/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/blocking/a;->d(Z)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    const v1, 0x7f1100c7

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;->t1(ZLjava/lang/String;[Ljava/lang/String;)Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    const-class v1, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/d;->p1(Landroidx/fragment/app/n;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->m1()Lcom/hiya/stingray/ui/customblock/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/hiya/stingray/ui/customblock/h;->m()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->n1()Lcom/hiya/stingray/ui/local/blocking/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/blocking/a;->d(Z)V

    .line 3
    iget v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;->b:I

    const/16 v2, 0x1775

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    sget-object v1, Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;->CONTACTS:Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;

    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->h1(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    sget v1, Lcom/hiya/stingray/o;->s:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->m()V

    goto :goto_0

    :cond_0
    const/16 v2, 0x1778

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->m1()Lcom/hiya/stingray/ui/customblock/h;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/customblock/h;->i(Z)V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->l1()Lcom/hiya/stingray/ui/customblock/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/customblock/f;->l(Z)V

    :cond_1
    :goto_0
    return-void
.end method
