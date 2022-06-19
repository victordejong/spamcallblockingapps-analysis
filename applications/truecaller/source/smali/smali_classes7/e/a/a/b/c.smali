.class public final Le/a/a/b/c;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/b/k;


# instance fields
.field public final a:Lcom/truecaller/common/ui/listitem/ListItemX;

.field public final b:Landroid/widget/TextView;

.field public c:Le/a/b0/a/b/a;

.field public d:Le/a/l4/d;

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public final g:Landroid/view/View;

.field public final h:Le/a/o2/m;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/a/b/c;->g:Landroid/view/View;

    iput-object p2, p0, Le/a/a/b/c;->h:Le/a/o2/m;

    const v0, 0x7f0a0b2a

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.list_item)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/common/ui/listitem/ListItemX;

    iput-object v0, p0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const v1, 0x7f0a10de

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "listItem.findViewById(R.id.subtitle)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Le/a/a/b/c;->b:Landroid/widget/TextView;

    .line 4
    new-instance v1, Le/a/a/b/c$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Le/a/a/b/c$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/a/b/c;->e:Ls1/g;

    .line 5
    new-instance v1, Le/a/a/b/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Le/a/a/b/c$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/a/b/c;->f:Ls1/g;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    .line 6
    invoke-static/range {v2 .. v7}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 7
    new-instance v1, Le/a/a/b/c$b;

    invoke-direct {v1, p0}, Le/a/a/b/c$b;-><init>(Le/a/a/b/c;)V

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setOnAvatarClickListener(Ls1/z/b/l;)V

    .line 8
    new-instance v1, Le/a/a/b/c$c;

    invoke-direct {v1, p0}, Le/a/a/b/c$c;-><init>(Le/a/a/b/c;)V

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setOnAvatarLongClickListener(Ls1/z/b/l;)V

    .line 9
    invoke-static/range {v2 .. v7}, Le/m/d/y/n;->f1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public A2()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->z1(Z)V

    return-void
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    const-string v0, "prefix"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "color"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v1, 0x1

    if-ne p5, v1, :cond_0

    .line 2
    sget-object p5, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->b:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;

    iget-object p5, p0, Le/a/a/b/c;->g:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    const-string v1, "view.context"

    invoke-static {p5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;->REMOVE:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;

    invoke-static {p5, p2, v1}, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->c(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;)Landroid/text/Spannable;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 3
    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/truecaller/common/ui/listitem/ListItemX;->t1(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 4
    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public H1()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    .line 2
    iget-object v1, p0, Le/a/a/b/c;->e:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setTitleIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public K1()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setTitleExtraIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public N3(Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZLjava/util/List;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;",
            "Z",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    const-string v3, "text"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "color"

    move-object/from16 v6, p2

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "firstIconColor"

    move-object/from16 v9, p5

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v4, v0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2
    sget-object v3, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->b:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;

    iget-object v3, v0, Le/a/a/b/c;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "view.context"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;->REMOVE:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;

    invoke-static {v3, v1, v5}, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->c(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;)Landroid/text/Spannable;

    move-result-object v1

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    if-nez v2, :cond_2

    goto :goto_0

    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x2e0

    const/16 v17, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v13, p6

    move-object/from16 v15, p7

    .line 3
    invoke-static/range {v4 .. v17}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    if-eqz v2, :cond_1

    .line 4
    sget-object v1, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->b:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;

    iget-object v1, v0, Le/a/a/b/c;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;->REMOVE:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;

    invoke-static {v1, v2}, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->b(Landroid/widget/TextView;Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1
.end method

.method public R(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public S(ZI)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/truecaller/common/ui/listitem/ListItemX;->n1(Lcom/truecaller/common/ui/listitem/ListItemX;ZIIILjava/lang/Object;)V

    return-void
.end method

.method public b0(Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    new-instance v1, Le/a/a/b/c$d;

    invoke-direct {v1, p0, p1}, Le/a/a/b/c$d;-><init>(Le/a/a/b/c;Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V

    invoke-virtual {v0, p1, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->m1(Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;)V

    return-void
.end method

.method public e(Le/a/l4/d;)V
    .locals 1

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvailabilityPresenter(Le/a/b0/a/s/a;)V

    .line 2
    iput-object p1, p0, Le/a/a/b/c;->d:Le/a/l4/d;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/truecaller/common/ui/listitem/ListItemX;->v1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/String;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZILjava/lang/Object;)V

    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->c:Le/a/b0/a/b/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/a/b0/a/b/a;->pk(Z)V

    :cond_0
    return-void
.end method

.method public h0()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->y1(Z)V

    return-void
.end method

.method public i(Le/a/b0/a/b/a;)V
    .locals 1

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvatarPresenter(Le/a/b0/a/b/a;)V

    .line 2
    iput-object p1, p0, Le/a/a/b/c;->c:Le/a/b0/a/b/a;

    return-void
.end method

.method public j1(Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lcom/truecaller/common/ui/listitem/ListItemX;->x1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;ZIIILjava/lang/Object;)V

    return-void
.end method

.method public o()Le/a/b0/a/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->c:Le/a/b0/a/b/a;

    return-object v0
.end method

.method public u0()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    .line 2
    iget-object v1, p0, Le/a/a/b/c;->f:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setTitleIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public x0()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setTitleIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public z()Le/a/l4/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->d:Le/a/l4/d;

    return-object v0
.end method

.method public z0(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setTitleExtraIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
