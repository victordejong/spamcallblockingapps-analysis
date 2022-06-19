.class public final Le/a/i/c0/o/h;
.super Le/a/i/c0/o/d;
.source "SourceFile"


# static fields
.field public static final synthetic i:[Ls1/a/l;


# instance fields
.field public final e:I

.field public final f:Ls1/b0/c;

.field public final g:Ls1/b0/c;

.field public final h:Ls1/b0/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-class v0, Le/a/i/c0/o/h;

    const/4 v1, 0x3

    new-array v1, v1, [Ls1/a/l;

    const-string v2, "title"

    const-string v3, "getTitle()Landroid/widget/TextView;"

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "radioGroup"

    const-string v3, "getRadioGroup()Landroid/widget/RadioGroup;"

    invoke-static {v0, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "error"

    const-string v3, "getError()Landroid/widget/TextView;"

    invoke-static {v0, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Le/a/i/c0/o/h;->i:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;Ljava/lang/String;Le/a/i/c0/o/e;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le/a/i/c0/o/d;-><init>(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;Ljava/lang/String;Le/a/i/c0/o/e;Landroid/view/ViewGroup;)V

    const p1, 0x7f0d0385

    .line 2
    iput p1, p0, Le/a/i/c0/o/h;->e:I

    .line 3
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 4
    iput-object p1, p0, Le/a/i/c0/o/h;->f:Ls1/b0/c;

    .line 5
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 6
    iput-object p1, p0, Le/a/i/c0/o/h;->g:Ls1/b0/c;

    .line 7
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 8
    iput-object p1, p0, Le/a/i/c0/o/h;->h:Ls1/b0/c;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/i/c0/o/h;->e:I

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a1245

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.title)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Le/a/i/c0/o/h;->f:Ls1/b0/c;

    sget-object v2, Le/a/i/c0/o/h;->i:[Ls1/a/l;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-interface {v1, p0, v4, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    const v0, 0x7f0a0dc9

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.radioGroup)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RadioGroup;

    .line 4
    iget-object v1, p0, Le/a/i/c0/o/h;->g:Ls1/b0/c;

    const/4 v4, 0x1

    aget-object v5, v2, v4

    invoke-interface {v1, p0, v5, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    const v0, 0x7f0a06c6

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.error)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 6
    iget-object v1, p0, Le/a/i/c0/o/h;->h:Ls1/b0/c;

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-interface {v1, p0, v5, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Le/a/i/c0/o/h;->f:Ls1/b0/c;

    aget-object v1, v2, v3

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8
    iget-object v1, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 9
    invoke-virtual {v1}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Le/a/i/c0/o/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 11
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    iget-object v0, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 13
    invoke-virtual {v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->h()Ljava/lang/String;

    move-result-object v0

    .line 14
    :goto_3
    iget-object v1, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 15
    invoke-virtual {v1}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 18
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_5

    move v7, v4

    goto :goto_5

    :cond_5
    move v7, v3

    :goto_5
    if-nez v7, :cond_4

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move-object v5, v2

    .line 19
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v1, "LayoutInflater.from(view.context)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    if-eqz v5, :cond_d

    .line 20
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const v6, 0x7f0d0384

    .line 21
    invoke-virtual {p0}, Le/a/i/c0/o/h;->e()Landroid/widget/RadioGroup;

    move-result-object v7

    invoke-virtual {p1, v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 22
    instance-of v7, v6, Landroid/widget/RadioButton;

    if-nez v7, :cond_9

    move-object v6, v2

    :cond_9
    check-cast v6, Landroid/widget/RadioButton;

    if-eqz v6, :cond_8

    .line 23
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setId(I)V

    .line 24
    invoke-virtual {v6, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_b

    .line 25
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_7

    :cond_a
    move v7, v3

    goto :goto_8

    :cond_b
    :goto_7
    move v7, v4

    :goto_8
    if-nez v7, :cond_c

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v4

    goto :goto_9

    :cond_c
    move v5, v3

    :goto_9
    invoke-virtual {v6, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 26
    invoke-virtual {p0}, Le/a/i/c0/o/h;->e()Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 27
    :cond_d
    invoke-virtual {p0}, Le/a/i/c0/o/h;->e()Landroid/widget/RadioGroup;

    move-result-object p1

    new-instance v0, Le/a/i/c0/o/h$a;

    invoke-direct {v0, p0}, Le/a/i/c0/o/h$a;-><init>(Le/a/i/c0/o/h;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/i/c0/o/h;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Le/a/i/c0/o/h;->d()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void
.end method

.method public final d()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Le/a/i/c0/o/h;->h:Ls1/b0/c;

    sget-object v1, Le/a/i/c0/o/h;->i:[Ls1/a/l;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final e()Landroid/widget/RadioGroup;
    .locals 3

    iget-object v0, p0, Le/a/i/c0/o/h;->g:Ls1/b0/c;

    sget-object v1, Le/a/i/c0/o/h;->i:[Ls1/a/l;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    return-object v0
.end method
