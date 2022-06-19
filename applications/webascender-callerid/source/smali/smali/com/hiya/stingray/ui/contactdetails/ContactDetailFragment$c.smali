.class Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->X0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Z

.field final synthetic g:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$c;->g:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    iput-boolean p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$c;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$c;->f:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$c;->g:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->l:Lcom/hiya/stingray/ui/contactdetails/x;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->f1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$c;->g:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-static {v1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->g1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/ui/contactdetails/d0;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/ui/contactdetails/x;->P(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$c;->g:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->r:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->f1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/v;->i(Lcom/hiya/stingray/t/d0;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$c;->g:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->u:Lcom/hiya/stingray/manager/u2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    sget-object v1, Lcom/hiya/stingray/manager/u2$b;->BLOCK:Lcom/hiya/stingray/manager/u2$b;

    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/manager/u2;->k(Landroid/content/Context;Lcom/hiya/stingray/manager/u2$b;)Z

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$c;->g:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->l:Lcom/hiya/stingray/ui/contactdetails/x;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->f1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$c;->g:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-static {v1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->g1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/ui/contactdetails/d0;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/ui/contactdetails/x;->M(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$c;->g:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->r:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->f1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/v;->a(Lcom/hiya/stingray/t/d0;)V

    :goto_0
    return-void
.end method
