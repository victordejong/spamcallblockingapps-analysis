.class public Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;

    .line 3
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090159

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09047e

    const-string v2, "field \'viewAllRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->viewAllRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f090319

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p1, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;

    .line 3
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->viewAllRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;->progressBar:Landroid/widget/ProgressBar;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
