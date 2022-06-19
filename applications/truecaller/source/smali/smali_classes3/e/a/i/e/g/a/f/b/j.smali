.class public final Le/a/i/e/g/a/f/b/j;
.super Le/a/i/e/g/a/f/b/f;
.source "SourceFile"


# static fields
.field public static final synthetic i:[Ls1/a/l;


# instance fields
.field public final b:I

.field public final c:Ls1/b0/c;

.field public final d:Ls1/b0/c;

.field public final e:Ls1/b0/c;

.field public final f:Lcom/truecaller/ads/offline/dto/RadioInputItemUiComponent;

.field public final g:Ljava/lang/String;

.field public final h:Le/a/i/e/g/a/f/b/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-class v0, Le/a/i/e/g/a/f/b/j;

    const/4 v1, 0x3

    new-array v1, v1, [Ls1/a/l;

    const-string v2, "radioGroup"

    const-string v3, "getRadioGroup()Landroid/widget/RadioGroup;"

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "label"

    const-string v3, "getLabel()Landroid/widget/TextView;"

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

    sput-object v1, Le/a/i/e/g/a/f/b/j;->i:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/ads/offline/dto/RadioInputItemUiComponent;Ljava/lang/String;Le/a/i/e/g/a/f/b/h;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p4}, Le/a/i/e/g/a/f/b/f;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Le/a/i/e/g/a/f/b/j;->f:Lcom/truecaller/ads/offline/dto/RadioInputItemUiComponent;

    iput-object p2, p0, Le/a/i/e/g/a/f/b/j;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/i/e/g/a/f/b/j;->h:Le/a/i/e/g/a/f/b/h;

    .line 2
    sget p1, Lcom/truecaller/ads/R$layout;->offline_leadgen_item_radioinput:I

    iput p1, p0, Le/a/i/e/g/a/f/b/j;->b:I

    .line 3
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 4
    iput-object p1, p0, Le/a/i/e/g/a/f/b/j;->c:Ls1/b0/c;

    .line 5
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 6
    iput-object p1, p0, Le/a/i/e/g/a/f/b/j;->d:Ls1/b0/c;

    .line 7
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 8
    iput-object p1, p0, Le/a/i/e/g/a/f/b/j;->e:Ls1/b0/c;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/i/e/g/a/f/b/j;->b:I

    return v0
.end method

.method public c(Landroid/view/View;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/ads/R$id;->radioGroup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.radioGroup)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RadioGroup;

    .line 2
    iget-object v1, p0, Le/a/i/e/g/a/f/b/j;->c:Ls1/b0/c;

    sget-object v2, Le/a/i/e/g/a/f/b/j;->i:[Ls1/a/l;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-interface {v1, p0, v4, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 3
    sget v0, Lcom/truecaller/ads/R$id;->label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.label)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 4
    iget-object v1, p0, Le/a/i/e/g/a/f/b/j;->d:Ls1/b0/c;

    const/4 v4, 0x1

    aget-object v5, v2, v4

    invoke-interface {v1, p0, v5, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 5
    sget v0, Lcom/truecaller/ads/R$id;->error:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.error)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 6
    iget-object v1, p0, Le/a/i/e/g/a/f/b/j;->e:Ls1/b0/c;

    const/4 v5, 0x2

    aget-object v6, v2, v5

    invoke-interface {v1, p0, v6, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Le/a/i/e/g/a/f/b/j;->d:Ls1/b0/c;

    aget-object v1, v2, v4

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8
    iget-object v1, p0, Le/a/i/e/g/a/f/b/j;->f:Lcom/truecaller/ads/offline/dto/RadioInputItemUiComponent;

    .line 9
    iget-object v1, v1, Lcom/truecaller/ads/offline/dto/RadioInputItemUiComponent;->g:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Le/a/i/e/g/a/f/b/j;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

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
    xor-int/2addr v1, v4

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Le/a/i/e/g/a/f/b/j;->f:Lcom/truecaller/ads/offline/dto/RadioInputItemUiComponent;

    .line 12
    iget-object v0, v0, Lcom/truecaller/ads/offline/dto/RadioInputItemUiComponent;->i:Ljava/lang/String;

    .line 13
    :goto_3
    iget-object v1, p0, Le/a/i/e/g/a/f/b/j;->f:Lcom/truecaller/ads/offline/dto/RadioInputItemUiComponent;

    .line 14
    iget-object v1, v1, Lcom/truecaller/ads/offline/dto/RadioInputItemUiComponent;->k:Ljava/util/List;

    .line 15
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 17
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_5

    move v8, v4

    goto :goto_5

    :cond_5
    move v8, v3

    :goto_5
    if-nez v8, :cond_4

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 18
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v1, "LayoutInflater.from(view.context)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 19
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 20
    sget v6, Lcom/truecaller/ads/R$layout;->offline_leadgen_item_radiobutton:I

    invoke-virtual {p0}, Le/a/i/e/g/a/f/b/j;->f()Landroid/widget/RadioGroup;

    move-result-object v7

    invoke-virtual {p1, v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 21
    instance-of v7, v6, Landroid/widget/RadioButton;

    if-nez v7, :cond_8

    move-object v6, v2

    :cond_8
    check-cast v6, Landroid/widget/RadioButton;

    if-eqz v6, :cond_7

    .line 22
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setId(I)V

    .line 23
    invoke-virtual {v6, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-static {v0, v4, v3, v5}, Ls1/f0/r;->o(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 25
    invoke-virtual {p0}, Le/a/i/e/g/a/f/b/j;->f()Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 26
    :cond_9
    invoke-virtual {p0}, Le/a/i/e/g/a/f/b/j;->f()Landroid/widget/RadioGroup;

    move-result-object p1

    new-instance v0, Le/a/i/e/g/a/f/b/j$a;

    invoke-direct {v0, p0}, Le/a/i/e/g/a/f/b/j$a;-><init>(Le/a/i/e/g/a/f/b/j;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/i/e/g/a/f/b/j;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Le/a/i/e/g/a/f/b/j;->e()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void
.end method

.method public final e()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Le/a/i/e/g/a/f/b/j;->e:Ls1/b0/c;

    sget-object v1, Le/a/i/e/g/a/f/b/j;->i:[Ls1/a/l;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final f()Landroid/widget/RadioGroup;
    .locals 3

    iget-object v0, p0, Le/a/i/e/g/a/f/b/j;->c:Ls1/b0/c;

    sget-object v1, Le/a/i/e/g/a/f/b/j;->i:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    return-object v0
.end method
