.class Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$b;
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
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$b;->f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$b;->f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->l:Lcom/hiya/stingray/ui/contactdetails/x;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->f1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/x;->O(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$b;->f:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->r:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->f1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/v;->j(Lcom/hiya/stingray/t/d0;)V

    return-void
.end method
