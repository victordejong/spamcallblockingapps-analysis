.class final Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->r1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$h;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$h;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->n1()Lcom/hiya/stingray/ui/local/blocking/a;

    move-result-object p1

    const-string v0, "block_from_contacts"

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/blocking/a;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$h;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->o1()Lcom/hiya/stingray/ui/login/o;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$h;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$h;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    .line 3
    sget-object v2, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    const/16 v3, 0x1775

    .line 4
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$h;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    sget-object v0, Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;->CONTACTS:Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->h1(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$h;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    sget v0, Lcom/hiya/stingray/o;->s:I

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->m()V

    :cond_0
    return-void

    .line 7
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method
