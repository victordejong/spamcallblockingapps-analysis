.class public Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field dateInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09031a
    .end annotation
.end field

.field icon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901fc
    .end annotation
.end field

.field subtitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09031b
    .end annotation
.end field

.field timeInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09031c
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09031d
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->a:Landroid/view/View;

    .line 3
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method private b(ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    const v2, 0x7f110162

    goto :goto_0

    :cond_0
    const v2, 0x7f110255

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->subtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_1

    const p1, 0x7f1101d7

    goto :goto_1

    :cond_1
    const p1, 0x7f1100a4

    :goto_1
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->subtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/hiya/stingray/util/p;->t(Landroid/content/res/Resources;IZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :goto_2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    const p1, 0x7f1102d5

    goto :goto_0

    :cond_0
    const p1, 0x7f110329

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->subtitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/d0;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    sget-object v2, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView$a;->a:[I

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->j()Lcom/hiya/stingray/t/f0;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_8

    const/4 v3, 0x2

    const v4, 0x7f08010d

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Call State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->j()Lcom/hiya/stingray/t/f0;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->j()Lcom/hiya/stingray/t/f0;

    move-result-object v2

    sget-object v3, Lcom/hiya/stingray/t/f0;->INCOMING:Lcom/hiya/stingray/t/f0;

    if-ne v2, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 5
    :goto_2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->t()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->c(Z)V

    goto :goto_3

    .line 7
    :cond_4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->k()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->b(ZI)V

    .line 8
    :goto_3
    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const v4, 0x7f08010c

    :goto_4
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 9
    :cond_6
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110162

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->j()Lcom/hiya/stingray/t/f0;

    move-result-object v2

    sget-object v3, Lcom/hiya/stingray/t/f0;->MISSED:Lcom/hiya/stingray/t/f0;

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->a:Landroid/view/View;

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1101d7

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1100cf

    :goto_5
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 15
    :cond_8
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->icon:Landroid/widget/ImageView;

    const v1, 0x7f08010a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110057

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->subtitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    :goto_6
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->s()J

    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Lcom/hiya/stingray/util/p;->h(J)Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/hiya/stingray/util/f0;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f11023c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 22
    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->timeInfo:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/p;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->dateInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 24
    :cond_9
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->timeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/RecentActivityItemView;->dateInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    return-void
.end method
