.class public final Le/a/l/c/a/v2;
.super Le/a/l/c/a/g;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/u1;


# instance fields
.field public final d:Ls1/g;

.field public final e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Le/a/h0/a/v;",
            "Lcom/truecaller/premium/premiumusertab/list/DummySwitch;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/o2/m;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemEventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Le/a/l/c/a/g;-><init>(Landroid/view/View;Le/a/o2/m;)V

    .line 2
    iput-object p2, p0, Le/a/l/c/a/v2;->f:Le/a/o2/m;

    const v0, 0x7f0a0cad

    .line 3
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/l/c/a/v2;->d:Ls1/g;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Le/a/l/c/a/v2;->e:Ljava/util/LinkedHashMap;

    const v0, 0x7f0a04c0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string p1, "view.findViewById<View>(R.id.ctaButton)"

    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v2, p2

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final O4()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Le/a/l/c/a/v2;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public P3(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/l/c/a/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/c/a/v2;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "switchesMap.keys"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Le/a/l/c/a/j;

    .line 5
    iget-object v3, v3, Le/a/l/c/a/j;->a:Le/a/h0/a/v;

    .line 6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {p0}, Le/a/l/c/a/v2;->O4()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 9
    iget-object v0, p0, Le/a/l/c/a/v2;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_5

    check-cast v4, Le/a/l/c/a/j;

    .line 11
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v7, "itemView"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 12
    invoke-virtual {p0}, Le/a/l/c/a/v2;->O4()Landroid/widget/LinearLayout;

    move-result-object v7

    const v8, 0x7f0d0323

    invoke-virtual {v6, v8, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 13
    iget-object v7, v4, Le/a/l/c/a/j;->a:Le/a/h0/a/v;

    .line 14
    iget-boolean v4, v4, Le/a/l/c/a/j;->b:Z

    const v8, 0x7f0a0a80

    .line 15
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 16
    iget v9, v7, Le/a/h0/a/v;->c:I

    .line 17
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    const v8, 0x7f0a0a78

    .line 18
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 19
    iget v9, v7, Le/a/h0/a/v;->d:I

    .line 20
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    const v8, 0x7f0a0a7c

    .line 21
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/truecaller/ui/view/TintedImageView;

    .line 22
    iget-object v9, v7, Le/a/h0/a/v;->b:Ljava/lang/Integer;

    const-string v10, "iconView"

    if-nez v9, :cond_1

    .line 23
    invoke-static {v8, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 24
    :cond_1
    invoke-static {v8, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object v9, v7, Le/a/h0/a/v;->b:Ljava/lang/Integer;

    .line 26
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_2
    const v8, 0x7f0a0a7f

    .line 27
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/truecaller/premium/premiumusertab/list/DummySwitch;

    const-string v9, "switchView"

    .line 28
    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 29
    new-instance v4, Lh1;

    invoke-direct {v4, v2, p0, v8, v7}, Lh1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v4}, Lcom/truecaller/premium/premiumusertab/list/DummySwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v4, p0, Le/a/l/c/a/v2;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x7f0a0a7a

    .line 31
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v8, "editView"

    .line 32
    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-boolean v8, v7, Le/a/h0/a/v;->e:Z

    .line 34
    invoke-static {v4, v8}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 35
    iget-boolean v8, v7, Le/a/h0/a/v;->e:Z

    if-eqz v8, :cond_2

    .line 36
    new-instance v8, Lh1;

    invoke-direct {v8, v1, p0, v4, v7}, Lh1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v4, 0x7f0a0a7d

    .line 37
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v8, "learnMoreView"

    .line 38
    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-boolean v8, v7, Le/a/h0/a/v;->f:Z

    .line 40
    invoke-static {v4, v8}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 41
    iget-boolean v8, v7, Le/a/h0/a/v;->f:Z

    if-eqz v8, :cond_3

    .line 42
    new-instance v8, Lh1;

    const/4 v9, 0x2

    invoke-direct {v8, v9, p0, v4, v7}, Lh1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const-string v4, "optionView"

    .line 43
    invoke-static {v6, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f0a0a79

    .line 44
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v7, "optionView.findViewById<View>(R.id.itemDivider)"

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    if-ge v3, v7, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    invoke-static {v4, v3}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 45
    invoke-virtual {p0}, Le/a/l/c/a/v2;->O4()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v3, v5

    goto/16 :goto_1

    .line 46
    :cond_5
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 p1, 0x0

    throw p1

    .line 47
    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/j;

    .line 48
    iget-object v1, p0, Le/a/l/c/a/v2;->e:Ljava/util/LinkedHashMap;

    .line 49
    iget-object v2, v0, Le/a/l/c/a/j;->a:Le/a/h0/a/v;

    .line 50
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/premium/premiumusertab/list/DummySwitch;

    if-eqz v1, :cond_7

    .line 51
    iget-boolean v0, v0, Le/a/l/c/a/j;->b:Z

    .line 52
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_4

    :cond_8
    return-void
.end method
