.class public final Le/a/r/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/b/i;
.implements Le/a/r/b/j;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/truecaller/wizard/adschoices/AdsChoice;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public final d:Le/a/r/b/j;

.field public final e:Le/a/r/b/g;

.field public final f:Le/a/r/b/h;


# direct methods
.method public constructor <init>(Le/a/r/b/g;Le/a/r/b/h;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/b/a;->e:Le/a/r/b/g;

    iput-object p2, p0, Le/a/r/b/a;->f:Le/a/r/b/h;

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/a/r/b/a;->a:Ljava/util/Map;

    .line 3
    iput-object p0, p0, Le/a/r/b/a;->d:Le/a/r/b/j;

    return-void
.end method


# virtual methods
.method public F5()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/r/b/a;->j()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/truecaller/wizard/R$string;->WizardNetworkError:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public K0()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/b/a;->e:Le/a/r/b/g;

    invoke-interface {v0}, Le/a/r/b/g;->K0()V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
    .locals 3

    const-string v0, "inflater"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/wizard/R$layout;->wizard_fragment_ads_choices:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    iput-object p1, p0, Le/a/r/b/a;->b:Landroid/view/View;

    .line 3
    sget p2, Lcom/truecaller/wizard/R$id;->nextButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 4
    sget v0, Lcom/truecaller/wizard/R$id;->backButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5
    new-instance v2, Le/a/r/b/a$b;

    invoke-direct {v2, v1, p0, p3, p4}, Le/a/r/b/a$b;-><init>(ILjava/lang/Object;ZZ)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v1, Le/a/r/b/a$b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p3, p4}, Le/a/r/b/a$b;-><init>(ILjava/lang/Object;ZZ)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "backButton"

    .line 7
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p3}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    const-string p3, "nextButton"

    .line 8
    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p4}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 9
    iput-object p2, p0, Le/a/r/b/a;->c:Landroid/view/View;

    const-string p2, "inflater.inflate(R.layou\u2026on = nextButton\n        }"

    .line 10
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/r/b/a;->j()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Le/a/b0/q/t;->i(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/r/b/a;->j()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ln3/b/a/g$a;

    invoke-direct {v1, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 3
    sget v2, Lcom/truecaller/wizard/R$string;->AdsChoices_Ads_WarningTitle:I

    invoke-virtual {v1, v2}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    .line 4
    sget v2, Lcom/truecaller/wizard/R$string;->AdsChoices_Ads_WarningText:I

    invoke-virtual {v1, v2}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    .line 5
    sget v2, Lcom/truecaller/wizard/R$string;->StrCancel:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    sget v2, Lcom/truecaller/wizard/R$string;->AdsChoices_Ads_TurnOff:I

    new-instance v3, Le/a/r/b/a$e;

    invoke-direct {v3, p0}, Le/a/r/b/a$e;-><init>(Le/a/r/b/a;)V

    invoke-virtual {v1, v2, v3}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 7
    invoke-virtual {v1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, -0x1

    .line 9
    invoke-virtual {v1, v2}, Ln3/b/a/g;->d(I)Landroid/widget/Button;

    move-result-object v2

    sget v3, Lcom/truecaller/wizard/R$color;->wizard_blue:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v2, -0x2

    .line 10
    invoke-virtual {v1, v2}, Ln3/b/a/g;->d(I)Landroid/widget/Button;

    move-result-object v1

    sget v2, Lcom/truecaller/wizard/R$color;->wizard_gray_medium:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/b/a;->f:Le/a/r/b/h;

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/b/a;->f:Le/a/r/b/h;

    check-cast v0, Le/a/r/b/n;

    invoke-virtual {v0, p0}, Le/a/r/b/n;->Y0(Ljava/lang/Object;)V

    return-void
.end method

.method public f(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/r/b/a;->e:Le/a/r/b/g;

    invoke-interface {p1}, Le/a/r/b/g;->a0()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/r/b/a;->e:Le/a/r/b/g;

    invoke-interface {p1}, Le/a/r/b/g;->b0()V

    :goto_0
    return-void
.end method

.method public g(Lcom/truecaller/wizard/adschoices/AdsChoice;Z)V
    .locals 2

    const-string v0, "choice"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r/b/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2
    sget v0, Lcom/truecaller/wizard/R$id;->selectionYes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.selectionYes)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Le/a/r/b/a;->k(Landroid/view/View;Z)V

    .line 3
    sget v0, Lcom/truecaller/wizard/R$id;->selectionNo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.selectionNo)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Le/a/r/b/a;->k(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public getAdapter()Le/a/r/b/j;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/b/a;->d:Le/a/r/b/j;

    return-object v0
.end method

.method public h(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/b/a;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/Iterable;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/wizard/adschoices/AdsChoice;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    const-string v0, "choices"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Le/a/r/b/a;->j()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 2
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 3
    iget-object v0, v8, Le/a/r/b/a;->b:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget v3, Lcom/truecaller/wizard/R$id;->content:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object v11, v2

    .line 4
    :goto_0
    iget-object v0, v8, Le/a/r/b/a;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v2, Lcom/truecaller/wizard/R$id;->container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    :cond_1
    move-object v12, v2

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/truecaller/wizard/adschoices/AdsChoice;

    .line 6
    sget v0, Lcom/truecaller/wizard/R$layout;->wizard_card_ad_choices:I

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 7
    sget v0, Lcom/truecaller/wizard/R$id;->cardImage:I

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 8
    sget v2, Lcom/truecaller/wizard/R$id;->cardTitle:I

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9
    sget v3, Lcom/truecaller/wizard/R$id;->cardText:I

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 10
    sget v4, Lcom/truecaller/wizard/R$id;->cardReadMore:I

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 11
    sget v5, Lcom/truecaller/wizard/R$id;->selectionNo:I

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 12
    sget v5, Lcom/truecaller/wizard/R$id;->selectionYes:I

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 13
    invoke-virtual {v14}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getId()I

    move-result v5

    invoke-virtual {v15, v5}, Landroid/view/View;->setId(I)V

    .line 14
    invoke-virtual {v14}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getIcon()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    invoke-virtual {v14}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getTitle()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 16
    invoke-virtual {v14}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getText()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v14}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getText()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual {v14}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getHtmlContent()Ls1/k;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {v14}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getHtmlContent()Ls1/k;

    move-result-object v0

    const-string v5, "cardText"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v8, Le/a/r/b/a;->f:Le/a/r/b/h;

    .line 20
    iget-object v1, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 21
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 22
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 23
    check-cast v0, [Ljava/lang/Object;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v1, v0}, Le/a/p5/s0/g;->u1(Landroid/widget/TextView;I[Ljava/lang/Object;)Landroid/widget/TextView;

    .line 24
    new-instance v0, Le/a/r/b0/b;

    invoke-direct {v0, v3}, Le/a/r/b0/b;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    .line 25
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 26
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 27
    new-instance v0, Le/a/r/b/a$c;

    invoke-direct {v0, v3, v5}, Le/a/r/b/a$c;-><init>(Landroid/widget/TextView;Le/a/r/b/h;)V

    invoke-static {v3, v0}, Le/a/p5/s0/g;->H1(Landroid/widget/TextView;Ls1/z/b/p;)V

    .line 28
    :cond_3
    :goto_2
    invoke-virtual {v14}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getMoreInfoUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cardReadMore"

    if-eqz v0, :cond_4

    .line 29
    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 30
    sget v0, Lcom/truecaller/wizard/R$string;->LinkTemplate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    .line 31
    invoke-virtual {v14}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getMoreInfoUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    sget v3, Lcom/truecaller/wizard/R$string;->wizard_read_more:I

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "context.getString(R.string.wizard_read_more)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 32
    iget-object v3, v8, Le/a/r/b/a;->f:Le/a/r/b/h;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v0, v1}, Le/a/p5/s0/g;->u1(Landroid/widget/TextView;I[Ljava/lang/Object;)Landroid/widget/TextView;

    .line 34
    new-instance v0, Le/a/r/b0/b;

    invoke-direct {v0, v4}, Le/a/r/b0/b;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 35
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 36
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 37
    new-instance v0, Le/a/r/b/a$d;

    invoke-direct {v0, v4, v3}, Le/a/r/b/a$d;-><init>(Landroid/widget/TextView;Le/a/r/b/h;)V

    invoke-static {v4, v0}, Le/a/p5/s0/g;->H1(Landroid/widget/TextView;Ls1/z/b/p;)V

    goto :goto_3

    .line 38
    :cond_4
    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v4, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    :goto_3
    const-string v0, "selectionNo"

    .line 39
    invoke-static {v7, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getModifiable()Z

    move-result v0

    invoke-static {v7, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    const-string v0, "selectionYes"

    .line 40
    invoke-static {v6, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getModifiable()Z

    move-result v0

    invoke-static {v6, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 41
    invoke-virtual {v14}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getModifiable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42
    new-instance v5, Le/a/r/b/a$a;

    const/4 v1, 0x0

    move-object v0, v5

    move-object v2, v14

    move-object/from16 v3, p0

    move-object v4, v10

    move-object/from16 v16, v5

    move-object v5, v11

    move-object/from16 v17, v6

    move-object v6, v9

    move-object/from16 p1, v13

    move-object v13, v7

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Le/a/r/b/a$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    new-instance v13, Le/a/r/b/a$a;

    const/4 v1, 0x1

    move-object v0, v13

    invoke-direct/range {v0 .. v7}, Le/a/r/b/a$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_5
    move-object/from16 p1, v13

    :goto_4
    if-eqz v12, :cond_6

    .line 44
    invoke-virtual {v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    :cond_6
    iget-object v0, v8, Le/a/r/b/a;->a:Ljava/util/Map;

    const-string v1, "choiceView"

    invoke-static {v15, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, p1

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public final j()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/b/a;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final k(Landroid/view/View;Z)V
    .locals 2

    .line 1
    sget v0, Lcom/truecaller/wizard/R$id;->check:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :cond_1
    sget v0, Lcom/truecaller/wizard/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method
