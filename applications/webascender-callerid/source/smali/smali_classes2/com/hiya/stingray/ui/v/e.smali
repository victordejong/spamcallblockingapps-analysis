.class public final Lcom/hiya/stingray/ui/v/e;
.super Lcom/hiya/stingray/ui/r;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/r;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/v/e;->a:Landroid/view/View;

    return-void
.end method

.method private final i(Lcom/hiya/stingray/t/t0;Lcom/hiya/stingray/ui/b;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/v/d;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const v0, 0x7f080091

    const v1, 0x7f080074

    const/4 v2, 0x1

    if-eq p2, v2, :cond_5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f080074

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    goto :goto_1

    .line 3
    :cond_3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->a()Lcom/hiya/stingray/t/m0;

    move-result-object p1

    sget-object p2, Lcom/hiya/stingray/t/m0;->BUSINESS:Lcom/hiya/stingray/t/m0;

    if-ne p1, p2, :cond_0

    const v0, 0x7f08008a

    goto :goto_1

    :cond_4
    const v0, 0x7f080085

    goto :goto_1

    :cond_5
    const v0, 0x7f08008c

    .line 4
    :goto_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/v/e;->a:Landroid/view/View;

    sget p2, Lcom/hiya/stingray/o;->C1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private final j(Lcom/hiya/stingray/t/t0;Lcom/hiya/stingray/ui/b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->c()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/hiya/stingray/t/n0;->a()Lcom/hiya/stingray/t/n0$a;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/t/n0$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    const-string v3, ""

    .line 4
    invoke-virtual {v2, v3}, Lcom/hiya/stingray/t/n0$a;->i(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 5
    sget-object v4, Lcom/hiya/stingray/t/o0;->API:Lcom/hiya/stingray/t/o0;

    invoke-virtual {v2, v4}, Lcom/hiya/stingray/t/n0$a;->d(Lcom/hiya/stingray/t/o0;)Lcom/hiya/stingray/t/n0$a;

    .line 6
    invoke-static {}, Lkotlin/s/b0;->e()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/hiya/stingray/t/n0$a;->h(Ljava/util/Map;)Lcom/hiya/stingray/t/n0$a;

    .line 7
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/hiya/stingray/t/n0$a;->b(Ljava/util/List;)Lcom/hiya/stingray/t/n0$a;

    .line 8
    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->a()Lcom/hiya/stingray/t/m0;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/hiya/stingray/t/n0$a;->e(Lcom/hiya/stingray/t/m0;)Lcom/hiya/stingray/t/n0$a;

    .line 9
    invoke-static {}, Lcom/hiya/stingray/t/r0;->b()Lcom/hiya/stingray/t/r0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/r0$a;->a()Lcom/hiya/stingray/t/r0;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/hiya/stingray/t/n0$a;->f(Lcom/hiya/stingray/t/r0;)Lcom/hiya/stingray/t/n0$a;

    .line 10
    invoke-static {}, Lcom/google/common/collect/z;->y()Lcom/google/common/collect/z;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/hiya/stingray/t/n0$a;->j(Lcom/google/common/collect/z;)Lcom/hiya/stingray/t/n0$a;

    .line 11
    invoke-virtual {v2, v3}, Lcom/hiya/stingray/t/n0$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 12
    invoke-virtual {v2}, Lcom/hiya/stingray/t/n0$a;->a()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    .line 13
    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/hiya/stingray/ui/r;->a(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/b;Ljava/lang/String;Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/hiya/stingray/ui/v/e;->a:Landroid/view/View;

    sget v0, Lcom/hiya/stingray/o;->w4:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v0, "view.title"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final k(Lcom/hiya/stingray/t/t0;Lcom/hiya/stingray/ui/b;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/e;->a:Landroid/view/View;

    sget v1, Lcom/hiya/stingray/o;->w2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v2, "view.nameAvailableIv"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/e;->a:Landroid/view/View;

    sget v4, Lcom/hiya/stingray/o;->j4:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v5, "view.subtitle"

    invoke-static {v0, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    sget-object v0, Lcom/hiya/stingray/ui/v/d;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const v0, 0x7f1102a0

    const/4 v7, 0x1

    if-eq p2, v7, :cond_3

    const/4 v8, 0x2

    if-eq p2, v8, :cond_2

    .line 4
    iget-object p2, p0, Lcom/hiya/stingray/ui/v/e;->a:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v6, 0x1

    :cond_0
    if-eqz v6, :cond_1

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/v/e;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->c()Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/hiya/stingray/ui/v/e;->a:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/hiya/stingray/ui/v/e;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/hiya/stingray/ui/v/e;->a:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final h(Lcom/hiya/stingray/t/t0;Lcom/hiya/stingray/ui/b;)V
    .locals 1

    const-string v0, "lookupHistoryEntry"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogDisplayType"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/v/e;->j(Lcom/hiya/stingray/t/t0;Lcom/hiya/stingray/ui/b;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/v/e;->i(Lcom/hiya/stingray/t/t0;Lcom/hiya/stingray/ui/b;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/v/e;->k(Lcom/hiya/stingray/t/t0;Lcom/hiya/stingray/ui/b;)V

    return-void
.end method
