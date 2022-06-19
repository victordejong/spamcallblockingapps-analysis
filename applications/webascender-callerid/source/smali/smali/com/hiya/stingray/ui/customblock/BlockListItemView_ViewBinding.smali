.class public Lcom/hiya/stingray/ui/customblock/BlockListItemView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/hiya/stingray/ui/customblock/BlockListItemView;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/customblock/BlockListItemView;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView_ViewBinding;->a:Lcom/hiya/stingray/ui/customblock/BlockListItemView;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0901fb

    const-string v2, "field \'iconIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->iconIv:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09044b

    const-string v2, "field \'titleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->titleTv:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09040f

    const-string v2, "field \'subtitleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->subtitleTv:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/ImageButton;

    const v1, 0x7f090329

    const-string v2, "field \'removeButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p1, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->removeButton:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView_ViewBinding;->a:Lcom/hiya/stingray/ui/customblock/BlockListItemView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/hiya/stingray/ui/customblock/BlockListItemView_ViewBinding;->a:Lcom/hiya/stingray/ui/customblock/BlockListItemView;

    .line 3
    iput-object v1, v0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->iconIv:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->titleTv:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->subtitleTv:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->removeButton:Landroid/widget/ImageButton;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
