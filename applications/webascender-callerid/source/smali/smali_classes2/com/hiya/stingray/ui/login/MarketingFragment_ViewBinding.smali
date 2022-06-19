.class public Lcom/hiya/stingray/ui/login/MarketingFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/hiya/stingray/ui/login/MarketingFragment;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/login/MarketingFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/login/MarketingFragment;

    .line 3
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0900c5

    const-string v2, "field \'getStartedButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/hiya/stingray/ui/login/MarketingFragment;->getStartedButton:Landroid/widget/Button;

    const v0, 0x7f0900c6

    const-string v1, "field \'disabledButton\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/hiya/stingray/ui/login/MarketingFragment;->disabledButton:Landroid/view/View;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090260

    const-string v2, "field \'marketingTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/login/MarketingFragment;->marketingTextView:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090425

    const-string v2, "field \'tAndCAgreementTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/login/MarketingFragment;->tAndCAgreementTextView:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090424

    const-string v2, "field \'tcCheckbox\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/hiya/stingray/ui/login/MarketingFragment;->tcCheckbox:Landroid/widget/CheckBox;

    const v0, 0x7f090245

    const-string v1, "field \'loadingView\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/hiya/stingray/ui/login/MarketingFragment;->loadingView:Landroid/view/View;

    .line 9
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09025e

    const-string v2, "field \'marketingImage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/login/MarketingFragment;->marketingImage:Landroid/widget/ImageView;

    .line 10
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09025f

    const-string v2, "field \'marketingImageNew\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/login/MarketingFragment;->marketingImageNew:Landroid/widget/ImageView;

    const v0, 0x7f0902c6

    const-string v1, "field \'originalHeader\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/hiya/stingray/ui/login/MarketingFragment;->originalHeader:Landroid/view/View;

    const v0, 0x7f0902af

    const-string v1, "field \'newHeader\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/hiya/stingray/ui/login/MarketingFragment;->newHeader:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/login/MarketingFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/login/MarketingFragment;

    .line 3
    iput-object v1, v0, Lcom/hiya/stingray/ui/login/MarketingFragment;->getStartedButton:Landroid/widget/Button;

    .line 4
    iput-object v1, v0, Lcom/hiya/stingray/ui/login/MarketingFragment;->disabledButton:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/hiya/stingray/ui/login/MarketingFragment;->marketingTextView:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/hiya/stingray/ui/login/MarketingFragment;->tAndCAgreementTextView:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/hiya/stingray/ui/login/MarketingFragment;->tcCheckbox:Landroid/widget/CheckBox;

    .line 8
    iput-object v1, v0, Lcom/hiya/stingray/ui/login/MarketingFragment;->loadingView:Landroid/view/View;

    .line 9
    iput-object v1, v0, Lcom/hiya/stingray/ui/login/MarketingFragment;->marketingImage:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/hiya/stingray/ui/login/MarketingFragment;->marketingImageNew:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/hiya/stingray/ui/login/MarketingFragment;->originalHeader:Landroid/view/View;

    .line 12
    iput-object v1, v0, Lcom/hiya/stingray/ui/login/MarketingFragment;->newHeader:Landroid/view/View;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
