.class public Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field leftButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09039a
    .end annotation
.end field

.field rightButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09039b
    .end annotation
.end field

.field titleTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090397
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    .line 5
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v2, 0x12

    .line 6
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/hiya/stingray/ui/call_screener/e;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/hiya/stingray/ui/call_screener/e;->SCREENED_CALL:Lcom/hiya/stingray/ui/call_screener/e;

    const v1, 0x7f11023b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->a:Landroid/content/Context;

    const v0, 0x7f1100db

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->leftButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->a:Landroid/content/Context;

    const v3, 0x7f1100d7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->rightButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/hiya/stingray/ui/call_screener/e;->ALLOW_PROMPT:Lcom/hiya/stingray/ui/call_screener/e;

    if-ne p2, v0, :cond_1

    .line 7
    iget-object p2, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->a:Landroid/content/Context;

    const v0, 0x7f1100d8

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->leftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->a:Landroid/content/Context;

    const v2, 0x7f1100da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->rightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->a:Landroid/content/Context;

    const v2, 0x7f1100dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v0, Lcom/hiya/stingray/ui/call_screener/e;->CONFIRMATION:Lcom/hiya/stingray/ui/call_screener/e;

    if-ne p2, v0, :cond_2

    .line 11
    iget-object p2, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->a:Landroid/content/Context;

    const v0, 0x7f1100d9

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 12
    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->leftButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->rightButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->titleTextView:Landroid/widget/TextView;

    invoke-direct {p0, p2, p1}, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
