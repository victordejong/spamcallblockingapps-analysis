.class public Lcom/hiya/stingray/ui/calllog/SearchItemView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/hiya/stingray/t/n0;

.field private b:Landroid/content/Context;

.field private c:Lcom/hiya/stingray/ui/local/search/f;

.field public callIb:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901db
    .end annotation
.end field

.field public iconIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903b1
    .end annotation
.end field

.field public initialsTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ff
    .end annotation
.end field

.field public searchItemWithoutButton:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903b2
    .end annotation
.end field

.field public subtitleTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09040f
    .end annotation
.end field

.field public titleTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044b
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->b:Landroid/content/Context;

    .line 3
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    sget-object v1, Lcom/hiya/stingray/ui/local/search/f;->b:Lcom/hiya/stingray/ui/local/search/f$a;

    .line 2
    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/local/search/f$a;->a(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    .line 3
    invoke-static {p1, v0, v1}, Lcom/hiya/stingray/ui/CallPickerDialog;->u1(Landroid/content/Context;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/util/g0/c;)Lcom/hiya/stingray/ui/CallPickerDialog;

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->c:Lcom/hiya/stingray/ui/local/search/f;

    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/search/f;->e(Lcom/hiya/stingray/t/n0;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/u;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private e(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/x;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->iconIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/x;->g(Landroid/widget/ImageView;)V

    return-void
.end method

.method private f(Ljava/lang/String;Landroid/widget/TextView;Z)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/hiya/stingray/util/p;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    const-string p3, "\\D*"

    goto :goto_0

    :cond_0
    const-string p3, "\\W*"

    .line 5
    :goto_0
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-char v4, p1, v3

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 9
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x2

    invoke-static {p3, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p3

    .line 10
    invoke-virtual {p3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    .line 11
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->end()I

    move-result p3

    const/16 v2, 0x21

    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    .line 13
    invoke-static {p3}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 14
    :cond_2
    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->iconIv:Landroid/widget/ImageView;

    const v4, 0x7f07005f

    invoke-static {v0, v3, v4}, Lcom/hiya/stingray/util/f0;->g(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->initialsTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    if-eqz v0, :cond_1

    sget-object v3, Lcom/hiya/stingray/t/o0;->VOICEMAIL:Lcom/hiya/stingray/t/o0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object v0

    if-ne v3, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->initialsTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f080093

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f080077

    .line 7
    iget-object v2, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->initialsTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->initialsTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    invoke-virtual {v2}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hiya/stingray/util/p;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->iconIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->initialsTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f08008f

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->initialsTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f080091

    :goto_0
    if-eqz v1, :cond_4

    .line 13
    invoke-direct {p0, v1}, Lcom/hiya/stingray/ui/calllog/SearchItemView;->e(I)V

    :cond_4
    return-void
.end method

.method private j(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/SearchItemView;->h()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->callIb:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 4
    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p2

    .line 6
    :goto_1
    iget-object v2, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    .line 8
    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->subtitleTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->b:Landroid/content/Context;

    const v3, 0x7f110027

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    invoke-virtual {v5}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->callIb:Landroid/widget/ImageButton;

    new-instance v0, Lcom/hiya/stingray/ui/calllog/o;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/calllog/o;-><init>(Lcom/hiya/stingray/ui/calllog/SearchItemView;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->subtitleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    invoke-virtual {v3}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->callIb:Landroid/widget/ImageButton;

    new-instance v0, Lcom/hiya/stingray/ui/calllog/p;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/calllog/p;-><init>(Lcom/hiya/stingray/ui/calllog/SearchItemView;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :goto_3
    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->titleTv:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, v1}, Lcom/hiya/stingray/ui/calllog/SearchItemView;->f(Ljava/lang/String;Landroid/widget/TextView;Z)V

    .line 13
    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->subtitleTv:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, v2}, Lcom/hiya/stingray/ui/calllog/SearchItemView;->f(Ljava/lang/String;Landroid/widget/TextView;Z)V

    goto :goto_4

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Phone to type map is empty"

    invoke-static {p1, v0, p2}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a(Landroid/view/View;)V

    return-void
.end method

.method public synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/SearchItemView;->c(Landroid/view/View;)V

    return-void
.end method

.method public g(Lcom/hiya/stingray/t/n0;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->a:Lcom/hiya/stingray/t/n0;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/hiya/stingray/ui/calllog/SearchItemView;->j(Ljava/lang/String;Z)V

    return-void
.end method

.method public i(Lcom/hiya/stingray/ui/local/search/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/SearchItemView;->c:Lcom/hiya/stingray/ui/local/search/f;

    return-void
.end method
