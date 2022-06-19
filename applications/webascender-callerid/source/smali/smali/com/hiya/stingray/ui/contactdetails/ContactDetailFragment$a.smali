.class Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$a;->f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$a;->f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->f1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->g()Lcom/hiya/stingray/t/r0;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/hiya/stingray/t/q0;->PREMIUM:Lcom/hiya/stingray/t/q0;

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$a;->f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    .line 2
    invoke-static {v0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->f1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/t/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->g()Lcom/hiya/stingray/t/r0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/r0;->c()Lcom/hiya/stingray/t/q0;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$a;->f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->s0()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$a;->f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$a;->f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-static {v0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->f1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/t/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/u;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$a;->f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->r:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->f1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/v;->e(Lcom/hiya/stingray/t/d0;)V

    return-void
.end method
