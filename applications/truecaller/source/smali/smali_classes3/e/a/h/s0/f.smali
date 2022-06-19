.class public final Le/a/h/s0/f;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/h/s0/i;


# instance fields
.field public final a:Lcom/truecaller/common/ui/listitem/ListItemX;

.field public b:Le/a/b0/a/b/a;

.field public c:Le/a/l4/d;

.field public final d:Le/a/o2/m;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Le/a/h/s0/f;->d:Le/a/o2/m;

    const p2, 0x7f0a0b2a

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.list_item)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/common/ui/listitem/ListItemX;

    iput-object p1, p0, Le/a/h/s0/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    .line 3
    new-instance p2, Le/a/h/s0/f$a;

    invoke-direct {p2, p0}, Le/a/h/s0/f$a;-><init>(Le/a/h/s0/f;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public G4(Lcom/truecaller/common/ui/listitem/ListItemX$Action;Z)V
    .locals 1

    const-string v0, "actionType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Le/a/h/s0/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    new-instance v0, Le/a/h/s0/f$c;

    invoke-direct {v0, p0}, Le/a/h/s0/f$c;-><init>(Le/a/h/s0/f;)V

    invoke-virtual {p2, p1, v0}, Lcom/truecaller/common/ui/listitem/ListItemX;->m1(Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/h/s0/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p2, v0}, Lcom/truecaller/common/ui/listitem/ListItemX;->k1(Lcom/truecaller/common/ui/listitem/ListItemX;Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public O(Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V
    .locals 2

    const-string v0, "actionType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/s0/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    new-instance v1, Le/a/h/s0/f$b;

    invoke-direct {v1, p0}, Le/a/h/s0/f$b;-><init>(Le/a/h/s0/f;)V

    invoke-virtual {v0, p1, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->j1(Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;)V

    return-void
.end method

.method public a3(Ljava/lang/CharSequence;Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;Ljava/lang/Integer;Z)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "text"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Le/a/h/s0/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v4, 0x4

    const v5, 0x7f04068f

    const/4 v15, 0x2

    const/4 v6, 0x1

    if-eqz p2, :cond_6

    .line 2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const v9, 0x7f04056e

    if-eqz v8, :cond_5

    if-eq v8, v6, :cond_4

    const v10, 0x7f080705

    if-eq v8, v15, :cond_3

    const/4 v11, 0x3

    if-eq v8, v11, :cond_2

    if-eq v8, v4, :cond_1

    const/4 v9, 0x5

    if-eq v8, v9, :cond_0

    .line 4
    invoke-static {v7, v10, v5}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_0

    :cond_0
    const v8, 0x7f08080d

    .line 5
    invoke-static {v7, v8, v5}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_0

    :cond_1
    const v8, 0x7f080708

    .line 6
    invoke-static {v7, v8, v9}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_0

    :cond_2
    const v8, 0x7f08070d

    .line 7
    invoke-static {v7, v8, v5}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {v7, v10, v5}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_0

    :cond_4
    const v8, 0x7f08070c

    .line 9
    invoke-static {v7, v8, v9}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_0

    :cond_5
    const v8, 0x7f080700

    .line 10
    invoke-static {v7, v8, v9}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    :goto_0
    if-eqz p3, :cond_9

    .line 11
    iget-object v8, v0, Le/a/h/s0/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 12
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_7

    const v9, 0x7f08070f

    invoke-static {v8, v9, v5}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    .line 13
    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_8

    const v9, 0x7f080710

    invoke-static {v8, v9, v5}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    :goto_1
    move-object v8, v5

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    :goto_2
    if-eqz p2, :cond_d

    .line 14
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_c

    if-eq v5, v6, :cond_b

    if-eq v5, v4, :cond_a

    .line 15
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_3

    .line 16
    :cond_a
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_3

    .line 17
    :cond_b
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_3

    .line 18
    :cond_c
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    :goto_3
    if-eqz v4, :cond_d

    goto :goto_4

    .line 19
    :cond_d
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    :goto_4
    move-object v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7e2

    const/16 v18, 0x0

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move-object v12, v14

    move-object/from16 v13, v16

    move/from16 v14, v17

    move v1, v15

    move-object/from16 v15, v18

    .line 20
    invoke-static/range {v2 .. v15}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    .line 21
    iget-object v2, v0, Le/a/h/s0/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v1, v4}, Lcom/truecaller/common/ui/listitem/ListItemX;->r1(Lcom/truecaller/common/ui/listitem/ListItemX;Landroid/graphics/drawable/Drawable;IILjava/lang/Object;)V

    if-eqz p4, :cond_e

    .line 22
    iget-object v1, v0, Le/a/h/s0/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    .line 23
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080712

    const v4, 0x7f040690

    invoke-static {v2, v3, v4}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 24
    invoke-virtual {v1, v2, v4}, Lcom/truecaller/common/ui/listitem/ListItemX;->q1(Landroid/graphics/drawable/Drawable;I)V

    :cond_e
    return-void
.end method

.method public e(Le/a/l4/d;)V
    .locals 1

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/s0/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvailabilityPresenter(Le/a/b0/a/s/a;)V

    .line 2
    iput-object p1, p0, Le/a/h/s0/f;->c:Le/a/l4/d;

    return-void
.end method

.method public i(Le/a/b0/a/b/a;)V
    .locals 1

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/s0/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvatarPresenter(Le/a/b0/a/b/a;)V

    .line 2
    iput-object p1, p0, Le/a/h/s0/f;->b:Le/a/b0/a/b/a;

    return-void
.end method

.method public o()Le/a/b0/a/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/s0/f;->b:Le/a/b0/a/b/a;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/h/s0/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/truecaller/common/ui/listitem/ListItemX;->v1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/String;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZILjava/lang/Object;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 8

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/h/s0/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/truecaller/common/ui/listitem/ListItemX;->x1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;ZIIILjava/lang/Object;)V

    return-void
.end method

.method public z()Le/a/l4/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/s0/f;->c:Le/a/l4/d;

    return-object v0
.end method
