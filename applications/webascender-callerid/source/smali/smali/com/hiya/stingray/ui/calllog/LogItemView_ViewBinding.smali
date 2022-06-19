.class public Lcom/hiya/stingray/ui/calllog/LogItemView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/hiya/stingray/ui/calllog/LogItemView;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/calllog/LogItemView;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/LogItemView_ViewBinding;->a:Lcom/hiya/stingray/ui/calllog/LogItemView;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09024d

    const-string v2, "field \'logItemImage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/calllog/LogItemView;->logItemImage:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901ff

    const-string v2, "field \'identityTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/calllog/LogItemView;->identityTv:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09044b

    const-string v2, "field \'titleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/calllog/LogItemView;->titleTv:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0900e7

    const-string v2, "field \'callStateIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/calllog/LogItemView;->callStateIv:Landroid/widget/ImageView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090444

    const-string v2, "field \'timeTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/calllog/LogItemView;->timeTv:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/ImageButton;

    const v1, 0x7f0900e4

    const-string v2, "field \'callButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/hiya/stingray/ui/calllog/LogItemView;->callButton:Landroid/widget/ImageButton;

    .line 9
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0902ac

    const-string v2, "field \'nameAvailablePill\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/hiya/stingray/ui/calllog/LogItemView;->nameAvailablePill:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/LogItemView_ViewBinding;->a:Lcom/hiya/stingray/ui/calllog/LogItemView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/hiya/stingray/ui/calllog/LogItemView_ViewBinding;->a:Lcom/hiya/stingray/ui/calllog/LogItemView;

    .line 3
    iput-object v1, v0, Lcom/hiya/stingray/ui/calllog/LogItemView;->logItemImage:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/hiya/stingray/ui/calllog/LogItemView;->identityTv:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/hiya/stingray/ui/calllog/LogItemView;->titleTv:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/hiya/stingray/ui/calllog/LogItemView;->callStateIv:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/hiya/stingray/ui/calllog/LogItemView;->timeTv:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/hiya/stingray/ui/calllog/LogItemView;->callButton:Landroid/widget/ImageButton;

    .line 9
    iput-object v1, v0, Lcom/hiya/stingray/ui/calllog/LogItemView;->nameAvailablePill:Landroid/widget/ImageView;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
