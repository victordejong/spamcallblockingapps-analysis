.class public Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;

    .line 3
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090159

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090325

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0903a8

    const-string v2, "field \'searchText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p1, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->searchText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;

    .line 3
    iput-object v1, v0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object v1, v0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;->searchText:Landroid/widget/EditText;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
