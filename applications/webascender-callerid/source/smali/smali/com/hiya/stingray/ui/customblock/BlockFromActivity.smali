.class public Lcom/hiya/stingray/ui/customblock/BlockFromActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;
    }
.end annotation


# instance fields
.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090163
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    return-void
.end method

.method public static O(Landroid/content/Context;Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hiya/stingray/ui/customblock/BlockFromActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "block_from_source"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private P(Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockFromActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/BlockFromActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/hiya/stingray/ui/customblock/a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/customblock/a;-><init>(Lcom/hiya/stingray/ui/customblock/BlockFromActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget-object v0, Lcom/hiya/stingray/ui/customblock/BlockFromActivity$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f090126

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/hiya/stingray/ui/customblock/picker/RecentCallLogPickerFragment;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/customblock/picker/RecentCallLogPickerFragment;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/y;->i()I

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/customblock/picker/ContactPickerFragment;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/y;->i()I

    :goto_0
    return-void
.end method

.method private synthetic Q(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public synthetic R(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/customblock/BlockFromActivity;->Q(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->f0(Lcom/hiya/stingray/ui/customblock/BlockFromActivity;)V

    const p1, 0x7f0c0032

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 4
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "block_from_source"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;->valueOf(Ljava/lang/String;)Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/customblock/BlockFromActivity;->P(Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;)V

    :cond_0
    return-void
.end method
