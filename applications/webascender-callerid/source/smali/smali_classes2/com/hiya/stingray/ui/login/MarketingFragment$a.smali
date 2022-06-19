.class Lcom/hiya/stingray/ui/login/MarketingFragment$a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/login/MarketingFragment;->r1(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroid/text/style/URLSpan;

.field final synthetic g:Lcom/hiya/stingray/ui/login/MarketingFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/login/MarketingFragment;Landroid/text/style/URLSpan;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment$a;->g:Lcom/hiya/stingray/ui/login/MarketingFragment;

    iput-object p2, p0, Lcom/hiya/stingray/ui/login/MarketingFragment$a;->f:Landroid/text/style/URLSpan;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment$a;->g:Lcom/hiya/stingray/ui/login/MarketingFragment;

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment$a;->f:Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/login/MarketingFragment;->f1(Lcom/hiya/stingray/ui/login/MarketingFragment;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment$a;->g:Lcom/hiya/stingray/ui/login/MarketingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment$a;->f:Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/u;->i(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
