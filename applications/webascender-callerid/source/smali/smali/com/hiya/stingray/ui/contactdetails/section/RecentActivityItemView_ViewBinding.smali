.class public Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView_ViewBinding;->a:Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09031d

    const-string v2, "field \'title\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->title:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09031b

    const-string v2, "field \'subtitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->subtitle:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09031c

    const-string v2, "field \'timeInfo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->timeInfo:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09031a

    const-string v2, "field \'dateInfo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->dateInfo:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0901fc

    const-string v2, "field \'icon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->icon:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView_ViewBinding;->a:Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView_ViewBinding;->a:Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;

    .line 3
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->title:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->subtitle:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->timeInfo:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->dateInfo:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->icon:Landroid/widget/ImageView;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
