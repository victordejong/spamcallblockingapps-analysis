.class public Lcom/hiya/stingray/ui/calllog/LogItemView;
.super Lcom/hiya/stingray/ui/c;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/squareup/picasso/Picasso;

.field callButton:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900e4
    .end annotation
.end field

.field callStateIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900e7
    .end annotation
.end field

.field identityTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ff
    .end annotation
.end field

.field logItemImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09024d
    .end annotation
.end field

.field nameAvailablePill:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ac
    .end annotation
.end field

.field timeTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090444
    .end annotation
.end field

.field titleTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044b
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/squareup/picasso/Picasso;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/c;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/LogItemView;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/calllog/LogItemView;->b:Lcom/squareup/picasso/Picasso;

    .line 4
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method private j(Lcom/hiya/stingray/t/f0;Z)I
    .locals 2

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/calllog/LogItemView$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f0801c1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_5

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const v1, 0x7f0801c0

    goto :goto_0

    :cond_1
    const v1, 0x7f0801c2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const p1, 0x7f0801c5

    const v1, 0x7f0801c5

    goto :goto_0

    :cond_3
    const p1, 0x7f0801c3

    const v1, 0x7f0801c3

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    const p1, 0x7f0801c4

    const v1, 0x7f0801c4

    :cond_5
    :goto_0
    return v1
.end method

.method private l(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;Z)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/LogItemView;->logItemImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/hiya/stingray/ui/calllog/LogItemView;->b:Lcom/squareup/picasso/Picasso;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/hiya/stingray/ui/c;->i(Landroid/widget/ImageView;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;ZLcom/squareup/picasso/Picasso;)V

    .line 2
    sget-object p3, Lcom/hiya/stingray/ui/b;->IDENTIFIED:Lcom/hiya/stingray/ui/b;

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object p3

    sget-object v1, Lcom/hiya/stingray/t/m0;->BUSINESS:Lcom/hiya/stingray/t/m0;

    if-eq p3, v1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    .line 3
    sget-object p3, Lcom/hiya/stingray/ui/b;->SAVED_CONTACT:Lcom/hiya/stingray/ui/b;

    if-ne p2, p3, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->h()Lcom/hiya/stingray/t/b0;

    move-result-object p2

    invoke-static {p2}, Lcom/hiya/stingray/util/f0;->i(Lcom/hiya/stingray/t/b0;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->j()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/LogItemView;->identityTv:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/LogItemView;->identityTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/util/p;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/LogItemView;->identityTv:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private m(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/LogItemView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/hiya/stingray/ui/c;->h(Landroid/content/res/Resources;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-le p3, p2, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/LogItemView;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public k(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;IZ)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/calllog/LogItemView;->m(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;I)V

    .line 2
    invoke-direct {p0, p1, p2, p4}, Lcom/hiya/stingray/ui/calllog/LogItemView;->l(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;Z)V

    .line 3
    iget-object p3, p0, Lcom/hiya/stingray/ui/calllog/LogItemView;->timeTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/p;->i(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p3, p0, Lcom/hiya/stingray/ui/calllog/LogItemView;->callStateIv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->j()Lcom/hiya/stingray/t/f0;

    move-result-object p4

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->t()Z

    move-result p1

    invoke-direct {p0, p4, p1}, Lcom/hiya/stingray/ui/calllog/LogItemView;->j(Lcom/hiya/stingray/t/f0;Z)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/LogItemView;->callButton:Landroid/widget/ImageButton;

    sget-object p3, Lcom/hiya/stingray/ui/b;->PRIVATE:Lcom/hiya/stingray/ui/b;

    const/4 p4, 0x0

    if-ne p2, p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 6
    sget-object p1, Lcom/hiya/stingray/ui/b;->NAME_AVAILABLE:Lcom/hiya/stingray/ui/b;

    if-ne p2, p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/LogItemView;->nameAvailablePill:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/LogItemView;->nameAvailablePill:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method
