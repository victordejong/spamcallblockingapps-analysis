.class public Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090120

    const-string v2, "field \'contactDetailRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->contactDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090159

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f0900e3

    const-string v2, "field \'callButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->callButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 6
    const-class v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v1, 0x7f090114

    const-string v2, "field \'collapsingToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->collapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 7
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f09007a

    const-string v2, "field \'appbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09044f

    const-string v2, "field \'toolbarTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->toolbarTitle:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f09011e

    const-string v2, "field \'headerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->headerView:Landroid/view/ViewGroup;

    .line 10
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901e7

    const-string v2, "field \'linearLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->linearLayout:Landroid/widget/LinearLayout;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090124

    const-string v2, "field \'title\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->title:Landroid/widget/TextView;

    .line 12
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0900ec

    const-string v2, "field \'callerStatusView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->callerStatusView:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    .line 3
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->contactDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->callButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 6
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->collapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 7
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 8
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->toolbarTitle:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->headerView:Landroid/view/ViewGroup;

    .line 10
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->linearLayout:Landroid/widget/LinearLayout;

    .line 11
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->title:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->callerStatusView:Landroid/view/ViewGroup;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
