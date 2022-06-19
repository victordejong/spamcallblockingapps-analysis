.class public Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder_ViewBinding;->a:Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0902ef

    const-string v2, "field \'phonesList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->phonesList:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090064

    const-string v2, "field \'addressList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->addressList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903bb

    const-string v2, "field \'sectionText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->sectionText:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f090253

    const-string v2, "field \'lookupUpsell\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->lookupUpsell:Landroid/view/ViewGroup;

    .line 7
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f090470

    const-string v2, "field \'upsellIdentifyButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->upsellIdentifyButton:Landroid/widget/Button;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090471

    const-string v2, "field \'upsellTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->upsellTitle:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09046f

    const-string v2, "field \'upsellBody\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->upsellBody:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder_ViewBinding;->a:Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder_ViewBinding;->a:Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;

    .line 3
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->phonesList:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->addressList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->sectionText:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->lookupUpsell:Landroid/view/ViewGroup;

    .line 7
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->upsellIdentifyButton:Landroid/widget/Button;

    .line 8
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->upsellTitle:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->upsellBody:Landroid/widget/TextView;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
