.class public final Le/a/w4/s/k0;
.super Le/a/e/c2/t$b;
.source "SourceFile"

# interfaces
.implements Le/a/w4/s/r0$a;
.implements Le/a/e/z0$a;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Lcom/truecaller/common/ui/listitem/ListItemX;

.field public final f:Le/f/a/i;

.field public final g:Le/a/o2/l;

.field public final synthetic h:Le/a/h/d0;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/listitem/ListItemX;Le/a/l4/c;Le/a/p5/c;Le/f/a/i;Le/a/o2/l;)V
    .locals 1

    const-string v0, "listItem"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/e/c2/t$b;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Le/a/h/d0;

    invoke-direct {v0}, Le/a/h/d0;-><init>()V

    iput-object v0, p0, Le/a/w4/s/k0;->h:Le/a/h/d0;

    iput-object p1, p0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    iput-object p4, p0, Le/a/w4/s/k0;->f:Le/f/a/i;

    iput-object p5, p0, Le/a/w4/s/k0;->g:Le/a/o2/l;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string p5, "listItem.context"

    invoke-static {p4, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Le/a/w4/s/k0;->b:Landroid/content/Context;

    .line 4
    new-instance p4, Le/a/w4/s/k0$b;

    invoke-direct {p4, p0}, Le/a/w4/s/k0$b;-><init>(Le/a/w4/s/k0;)V

    invoke-static {p4}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p4

    iput-object p4, p0, Le/a/w4/s/k0;->c:Ls1/g;

    .line 5
    new-instance p5, Le/a/w4/s/k0$a;

    invoke-direct {p5, p0, p2, p3}, Le/a/w4/s/k0$a;-><init>(Le/a/w4/s/k0;Le/a/l4/c;Le/a/p5/c;)V

    invoke-static {p5}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/w4/s/k0;->d:Ls1/g;

    .line 6
    check-cast p4, Ls1/n;

    invoke-virtual {p4}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/b0/a/b/a;

    .line 7
    invoke-virtual {p1, p3}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvatarPresenter(Le/a/b0/a/b/a;)V

    .line 8
    check-cast p2, Ls1/n;

    invoke-virtual {p2}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/l4/d;

    .line 9
    invoke-virtual {p1, p2}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvailabilityPresenter(Le/a/b0/a/s/a;)V

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget-object v0, p0, Le/a/w4/s/k0;->h:Le/a/h/d0;

    .line 1
    iget-boolean v0, v0, Le/a/h/d0;->b:Z

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/w4/s/k0;->h:Le/a/h/d0;

    .line 1
    iget-object v0, v0, Le/a/h/e0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public G3(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setSubTitlePrefix(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public H2(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7fe

    const/4 v13, 0x0

    invoke-static/range {v0 .. v13}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public I4(Lcom/truecaller/data/entity/Contact;)V
    .locals 3

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    sget-object v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->CALL:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    new-instance v2, Le/a/w4/s/k0$c;

    invoke-direct {v2, p0, p1}, Le/a/w4/s/k0$c;-><init>(Le/a/w4/s/k0;Lcom/truecaller/data/entity/Contact;)V

    invoke-virtual {v0, v1, v2}, Lcom/truecaller/common/ui/listitem/ListItemX;->j1(Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;)V

    return-void
.end method

.method public K(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->y1(Z)V

    return-void
.end method

.method public M1(Le/a/b0/p/c;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Le/a/w4/s/k0;->b:Landroid/content/Context;

    const v3, 0x7f0405a1

    invoke-static {v2, v3}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v4, v1, Le/a/b0/p/c;->d:Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    :goto_2
    move v4, v2

    goto :goto_3

    .line 5
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 6
    :goto_3
    new-instance v6, Le/a/b0/a/y/c;

    if-eqz v1, :cond_4

    .line 7
    iget-object v5, v1, Le/a/b0/p/c;->b:Ljava/lang/String;

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    const-string v5, ""

    .line 8
    :goto_4
    iget-object v7, v0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v7}, Lcom/truecaller/common/ui/listitem/ListItemX;->getSubtitleFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    invoke-direct {v6, v5, v2, v7}, Le/a/b0/a/y/c;-><init>(Ljava/lang/CharSequence;ILandroid/graphics/Paint$FontMetricsInt;)V

    if-eqz v1, :cond_5

    .line 9
    iget-object v3, v1, Le/a/b0/p/c;->e:Ljava/lang/String;

    .line 10
    :cond_5
    iput-object v3, v6, Le/a/b0/a/y/c;->g:Ljava/lang/String;

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Le/a/b0/a/y/c;->f:Ljava/lang/Integer;

    .line 12
    iget-object v1, v0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    iget-object v7, v0, Le/a/w4/s/k0;->b:Landroid/content/Context;

    iget-object v2, v0, Le/a/w4/s/k0;->f:Le/f/a/i;

    const-string v3, "context"

    .line 13
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "requestManager"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 15
    iget-object v4, v6, Le/a/b0/a/y/c;->j:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v10, v5, v4

    .line 16
    invoke-virtual {v2}, Le/f/a/i;->f()Le/f/a/h;

    move-result-object v2

    iget-object v4, v6, Le/a/b0/a/y/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    move-result-object v2

    new-instance v4, Le/a/b0/a/y/c$a;

    move-object v5, v4

    move-object v8, v3

    move v9, v10

    invoke-direct/range {v5 .. v10}, Le/a/b0/a/y/c$a;-><init>(Le/a/b0/a/y/c;Landroid/content/Context;Landroid/text/SpannableStringBuilder;II)V

    invoke-virtual {v2, v4}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7fe

    const/16 v20, 0x0

    move-object v7, v1

    move-object v8, v3

    .line 17
    invoke-static/range {v7 .. v20}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public O0(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0}, Lcom/truecaller/common/ui/listitem/ListItemX;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/truecaller/common/ui/listitem/ListItemX;->x1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;ZIIILjava/lang/Object;)V

    return-void
.end method

.method public U2(Ljava/lang/String;Ljava/lang/String;ZLs1/z/b/l;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const-string v3, "callback"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 1
    iget-object v3, v0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    sget-object v4, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->b:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;

    iget-object v4, v0, Le/a/w4/s/k0;->b:Landroid/content/Context;

    sget-object v5, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;->REMOVE:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;

    invoke-static {v4, v1, v5}, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->c(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;)Landroid/text/Spannable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x7fe

    const/16 v16, 0x0

    invoke-static/range {v3 .. v16}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    iget-object v3, v0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    if-eqz v1, :cond_1

    move-object/from16 v18, v1

    goto :goto_0

    :cond_1
    const-string v4, ""

    move-object/from16 v18, v4

    :goto_0
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x7fe

    const/16 v30, 0x0

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v30}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    :goto_1
    if-eqz v1, :cond_3

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_4

    return-void

    .line 4
    :cond_4
    iget-object v1, v0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    const v3, 0x7f0a10de

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 5
    new-instance v3, Le/a/w4/s/k0$d;

    move-object/from16 v4, p2

    invoke-direct {v3, v1, v2, v4}, Le/a/w4/s/k0$d;-><init>(Landroid/widget/TextView;Ls1/z/b/l;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public Y3(Z)V
    .locals 1

    iget-object v0, p0, Le/a/w4/s/k0;->h:Le/a/h/d0;

    .line 1
    iput-boolean p1, v0, Le/a/h/d0;->b:Z

    return-void
.end method

.method public Z3(Ljava/lang/String;Ljava/lang/Integer;Lcom/truecaller/data/entity/SpamCategoryModel;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    const v2, 0x7f120ed6

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-eqz p1, :cond_0

    move-object/from16 v2, p1

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/4 v15, 0x0

    if-nez p2, :cond_1

    move-object v4, v15

    goto :goto_1

    .line 3
    :cond_1
    iget-object v3, v0, Le/a/w4/s/k0;->b:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4
    sget-object v5, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {v3, v4}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v3

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 6
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    const/4 v12, 0x0

    const/16 v13, 0x5f8

    const/4 v14, 0x0

    .line 7
    invoke-static/range {v1 .. v14}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    .line 8
    iget-object v1, v0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v15, v2, v3, v15}, Lcom/truecaller/common/ui/listitem/ListItemX;->r1(Lcom/truecaller/common/ui/listitem/ListItemX;Landroid/graphics/drawable/Drawable;IILjava/lang/Object;)V

    if-eqz p3, :cond_2

    .line 9
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/SpamCategoryModel;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v2, v0, Le/a/w4/s/k0;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 11
    iget-object v3, v0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-static {v3}, Le/f/a/c;->f(Landroid/view/View;)Le/f/a/i;

    move-result-object v3

    .line 12
    invoke-virtual {v3, v1}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Le/f/a/r/a;->m()Le/f/a/r/a;

    move-result-object v1

    check-cast v1, Le/f/a/h;

    .line 14
    new-instance v3, Le/a/w4/s/k0$e;

    invoke-direct {v3, v0, v2, v2, v2}, Le/a/w4/s/k0$e;-><init>(Le/a/w4/s/k0;III)V

    invoke-virtual {v1, v3}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    :cond_2
    return-void
.end method

.method public a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 4

    const-string v0, "avatarXConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/w4/s/k0;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/a/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, p1, v1, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    return-void
.end method

.method public b2()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v1, v2, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->k1(Lcom/truecaller/common/ui/listitem/ListItemX;Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;ILjava/lang/Object;)V

    return-void
.end method

.method public e1(II)V
    .locals 15

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x73e

    const/4 v14, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {v1 .. v14}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/truecaller/common/ui/listitem/ListItemX;->v1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/String;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZILjava/lang/Object;)V

    return-void
.end method

.method public f1(Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZLjava/util/List;)V
    .locals 15
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
            ">;>;)V"
        }
    .end annotation

    const-string v0, "text"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "color"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firstIconColor"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x2e0

    const/4 v14, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v10, p6

    move-object/from16 v12, p7

    invoke-static/range {v1 .. v14}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public g4(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    new-instance v0, Le/a/e/d2/e;

    iget-object v1, p0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "listItem.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f12086c

    const v3, 0x7f0806e0

    invoke-direct {v0, v1, v2, v3}, Le/a/e/d2/e;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/listitem/ListItemX;->setTitleExtraIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/listitem/ListItemX;->setTitleExtraIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public i2(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->z1(Z)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/k0;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l4/d;

    .line 2
    invoke-virtual {v0, p1}, Le/a/l4/d;->Kj(Ljava/lang/String;)V

    return-void
.end method

.method public k3(Ljava/lang/String;II)V
    .locals 15

    const-string v0, "text"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x73e

    const/4 v14, 0x0

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-static/range {v1 .. v14}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Le/a/w4/s/k0;->h:Le/a/h/d0;

    .line 1
    iput-object p1, v0, Le/a/h/e0;->a:Ljava/lang/String;

    return-void
.end method

.method public o0(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/truecaller/common/ui/listitem/ListItemX;->v1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/String;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZILjava/lang/Object;)V

    return-void
.end method

.method public p0()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->r1(Lcom/truecaller/common/ui/listitem/ListItemX;Landroid/graphics/drawable/Drawable;IILjava/lang/Object;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/truecaller/common/ui/listitem/ListItemX;->x1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;ZIIILjava/lang/Object;)V

    return-void
.end method
