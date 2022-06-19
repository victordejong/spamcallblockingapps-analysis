.class public final Le/a/x4/l/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/x4/l/c;


# instance fields
.field public final a:Le/a/p5/i0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/p5/i0;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    return-void
.end method


# virtual methods
.method public a()Le/a/m5/e;
    .locals 10

    .line 1
    new-instance v8, Le/a/m5/e;

    .line 2
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->tcx_textPrimary_dark:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v2

    .line 3
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v3, Lcom/truecaller/searchwarnings/R$color;->true_context_label_default_background:I

    invoke-virtual {v0, v3}, Le/a/p5/i0;->a(I)I

    move-result v3

    .line 4
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v4

    .line 5
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->true_context_message_default_background:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v5

    .line 6
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->tcx_textQuarternary_dark:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v9, 0x20

    move-object v0, v8

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v9

    .line 7
    invoke-direct/range {v0 .. v7}, Le/a/m5/e;-><init>(IIIIILjava/lang/String;I)V

    return-object v8
.end method

.method public b()Le/a/m5/e;
    .locals 10

    .line 1
    new-instance v8, Le/a/m5/e;

    .line 2
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->tcx_textPrimary_dark:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v2

    .line 3
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v3, Lcom/truecaller/searchwarnings/R$color;->true_context_label_dark_background:I

    invoke-virtual {v0, v3}, Le/a/p5/i0;->a(I)I

    move-result v3

    .line 4
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v4

    .line 5
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->true_context_message_dark_background:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v5

    .line 6
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->tcx_fillTertiaryBackground_dark:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v9, 0x20

    move-object v0, v8

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v9

    .line 7
    invoke-direct/range {v0 .. v7}, Le/a/m5/e;-><init>(IIIIILjava/lang/String;I)V

    return-object v8
.end method

.method public c()Le/a/m5/e;
    .locals 10

    .line 1
    new-instance v8, Le/a/m5/e;

    .line 2
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->tcx_textPrimary_dark:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v1

    .line 3
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v2, Lcom/truecaller/searchwarnings/R$color;->tcx_textPrimary_light:I

    invoke-virtual {v0, v2}, Le/a/p5/i0;->a(I)I

    move-result v3

    .line 4
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v4, Lcom/truecaller/searchwarnings/R$color;->tcx_textSecondary_light:I

    invoke-virtual {v0, v4}, Le/a/p5/i0;->a(I)I

    move-result v4

    .line 5
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v5, Lcom/truecaller/searchwarnings/R$color;->true_context_message_default_background:I

    invoke-virtual {v0, v5}, Le/a/p5/i0;->a(I)I

    move-result v5

    .line 6
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    invoke-virtual {v0, v2}, Le/a/p5/i0;->a(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v9, 0x20

    move-object v0, v8

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v9

    .line 7
    invoke-direct/range {v0 .. v7}, Le/a/m5/e;-><init>(IIIIILjava/lang/String;I)V

    return-object v8
.end method

.method public d()Le/a/m5/e;
    .locals 9

    .line 1
    new-instance v8, Le/a/m5/e;

    .line 2
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->tcx_brandBackgroundBlue_light:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v1

    .line 3
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v2, Lcom/truecaller/searchwarnings/R$color;->white:I

    invoke-virtual {v0, v2}, Le/a/p5/i0;->a(I)I

    move-result v2

    .line 4
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v3, Lcom/truecaller/searchwarnings/R$color;->tcx_textPrimary_dark:I

    invoke-virtual {v0, v3}, Le/a/p5/i0;->a(I)I

    move-result v3

    .line 5
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v4, Lcom/truecaller/searchwarnings/R$color;->true_context_message_default_background:I

    invoke-virtual {v0, v4}, Le/a/p5/i0;->a(I)I

    move-result v4

    .line 6
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v5, Lcom/truecaller/searchwarnings/R$color;->tcx_fillPrimaryBackground_dark:I

    invoke-virtual {v0, v5}, Le/a/p5/i0;->a(I)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, v8

    .line 7
    invoke-direct/range {v0 .. v7}, Le/a/m5/e;-><init>(IIIIILjava/lang/String;I)V

    return-object v8
.end method

.method public e()Le/a/m5/e;
    .locals 10

    .line 1
    new-instance v8, Le/a/m5/e;

    .line 2
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->tcx_textPrimary_light:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v1

    .line 3
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v2, Lcom/truecaller/searchwarnings/R$color;->tcx_textPrimary_dark:I

    invoke-virtual {v0, v2}, Le/a/p5/i0;->a(I)I

    move-result v3

    .line 4
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v4, Lcom/truecaller/searchwarnings/R$color;->tcx_textSecondary_dark:I

    invoke-virtual {v0, v4}, Le/a/p5/i0;->a(I)I

    move-result v4

    .line 5
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v5, Lcom/truecaller/searchwarnings/R$color;->true_context_message_default_background:I

    invoke-virtual {v0, v5}, Le/a/p5/i0;->a(I)I

    move-result v5

    .line 6
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    invoke-virtual {v0, v2}, Le/a/p5/i0;->a(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v9, 0x20

    move-object v0, v8

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v9

    .line 7
    invoke-direct/range {v0 .. v7}, Le/a/m5/e;-><init>(IIIIILjava/lang/String;I)V

    return-object v8
.end method

.method public f()Le/a/m5/e;
    .locals 10

    .line 1
    new-instance v8, Le/a/m5/e;

    .line 2
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->tcx_textPrimary_dark:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v1

    .line 3
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v2, Lcom/truecaller/searchwarnings/R$color;->tcx_goldTextPrimary:I

    invoke-virtual {v0, v2}, Le/a/p5/i0;->a(I)I

    move-result v3

    .line 4
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    invoke-virtual {v0, v2}, Le/a/p5/i0;->a(I)I

    move-result v4

    .line 5
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v5, Lcom/truecaller/searchwarnings/R$color;->true_context_message_default_background:I

    invoke-virtual {v0, v5}, Le/a/p5/i0;->a(I)I

    move-result v5

    .line 6
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    invoke-virtual {v0, v2}, Le/a/p5/i0;->a(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v9, 0x20

    move-object v0, v8

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v9

    .line 7
    invoke-direct/range {v0 .. v7}, Le/a/m5/e;-><init>(IIIIILjava/lang/String;I)V

    return-object v8
.end method

.method public g()Le/a/m5/e;
    .locals 9

    .line 1
    new-instance v8, Le/a/m5/e;

    .line 2
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$attr;->searchWarnings_details_labelTextColor_gold:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->l(I)I

    move-result v1

    .line 3
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v2, Lcom/truecaller/searchwarnings/R$attr;->searchWarnings_details_labelBackgroundColor_gold:I

    invoke-virtual {v0, v2}, Le/a/p5/i0;->l(I)I

    move-result v2

    .line 4
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v3, Lcom/truecaller/searchwarnings/R$attr;->searchWarnings_details_messageTextColor_gold:I

    invoke-virtual {v0, v3}, Le/a/p5/i0;->l(I)I

    move-result v3

    .line 5
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v4, Lcom/truecaller/searchwarnings/R$color;->true_context_message_default_background:I

    invoke-virtual {v0, v4}, Le/a/p5/i0;->a(I)I

    move-result v4

    .line 6
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v5, Lcom/truecaller/searchwarnings/R$attr;->searchWarnings_details_messageOutlineColor_gold:I

    invoke-virtual {v0, v5}, Le/a/p5/i0;->l(I)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, v8

    .line 7
    invoke-direct/range {v0 .. v7}, Le/a/m5/e;-><init>(IIIIILjava/lang/String;I)V

    return-object v8
.end method

.method public h()Le/a/m5/e;
    .locals 9

    .line 1
    new-instance v8, Le/a/m5/e;

    .line 2
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->tcx_searchWarnings_details_labelTextColor_dark:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v1

    .line 3
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v2, Lcom/truecaller/searchwarnings/R$color;->tcx_searchWarnings_details_labelBackgroundColor_dark:I

    invoke-virtual {v0, v2}, Le/a/p5/i0;->a(I)I

    move-result v2

    .line 4
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v3, Lcom/truecaller/searchwarnings/R$color;->tcx_searchWarnings_details_messageTextColor_dark:I

    invoke-virtual {v0, v3}, Le/a/p5/i0;->a(I)I

    move-result v3

    .line 5
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v4, Lcom/truecaller/searchwarnings/R$color;->true_context_message_default_background:I

    invoke-virtual {v0, v4}, Le/a/p5/i0;->a(I)I

    move-result v4

    .line 6
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v5, Lcom/truecaller/searchwarnings/R$color;->tcx_searchWarnings_details_messageOutlineColor_dark:I

    invoke-virtual {v0, v5}, Le/a/p5/i0;->a(I)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, v8

    .line 7
    invoke-direct/range {v0 .. v7}, Le/a/m5/e;-><init>(IIIIILjava/lang/String;I)V

    return-object v8
.end method

.method public i()Le/a/m5/e;
    .locals 10

    .line 1
    new-instance v8, Le/a/m5/e;

    .line 2
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->tcx_textPrimary_dark:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v2

    .line 3
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v3, Lcom/truecaller/searchwarnings/R$color;->true_context_label_default_background:I

    invoke-virtual {v0, v3}, Le/a/p5/i0;->a(I)I

    move-result v3

    .line 4
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v4

    .line 5
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->tcx_backgroundPrimary_dark:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v5

    .line 6
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->tcx_textQuarternary_dark:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v9, 0x20

    move-object v0, v8

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v9

    .line 7
    invoke-direct/range {v0 .. v7}, Le/a/m5/e;-><init>(IIIIILjava/lang/String;I)V

    return-object v8
.end method

.method public j(Z)Le/a/m5/e;
    .locals 9

    .line 1
    new-instance v8, Le/a/m5/e;

    .line 2
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    if-eqz p1, :cond_0

    sget p1, Lcom/truecaller/searchwarnings/R$color;->tcx_alertBackgroundRed_light:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/truecaller/searchwarnings/R$color;->tcx_brandBackgroundBlue_light:I

    :goto_0
    invoke-virtual {v0, p1}, Le/a/p5/i0;->a(I)I

    move-result v1

    .line 3
    iget-object p1, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v0, Lcom/truecaller/searchwarnings/R$color;->white:I

    invoke-virtual {p1, v0}, Le/a/p5/i0;->a(I)I

    move-result v2

    .line 4
    iget-object p1, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v0, Lcom/truecaller/searchwarnings/R$color;->tcx_textPrimary_dark:I

    invoke-virtual {p1, v0}, Le/a/p5/i0;->a(I)I

    move-result v3

    .line 5
    iget-object p1, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v0, Lcom/truecaller/searchwarnings/R$color;->true_context_message_default_background:I

    invoke-virtual {p1, v0}, Le/a/p5/i0;->a(I)I

    move-result v4

    .line 6
    iget-object p1, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v0, Lcom/truecaller/searchwarnings/R$color;->tcx_fillPrimaryBackground_dark:I

    invoke-virtual {p1, v0}, Le/a/p5/i0;->a(I)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, v8

    .line 7
    invoke-direct/range {v0 .. v7}, Le/a/m5/e;-><init>(IIIIILjava/lang/String;I)V

    return-object v8
.end method

.method public k(Ljava/lang/String;)I
    .locals 1

    const-string v0, "colorHex"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public l()Le/a/m5/e;
    .locals 10

    .line 1
    new-instance v8, Le/a/m5/e;

    .line 2
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->tcx_textPrimary_dark:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v2

    .line 3
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v3, Lcom/truecaller/searchwarnings/R$color;->true_context_label_dark_background:I

    invoke-virtual {v0, v3}, Le/a/p5/i0;->a(I)I

    move-result v3

    .line 4
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v4

    .line 5
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->tcx_backgroundPrimary_light:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v5

    .line 6
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$color;->tcx_fillTertiaryBackground_dark:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->a(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v9, 0x20

    move-object v0, v8

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v9

    .line 7
    invoke-direct/range {v0 .. v7}, Le/a/m5/e;-><init>(IIIIILjava/lang/String;I)V

    return-object v8
.end method

.method public m()Le/a/m5/e;
    .locals 9

    .line 1
    new-instance v8, Le/a/m5/e;

    .line 2
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v1, Lcom/truecaller/searchwarnings/R$attr;->searchWarnings_details_labelTextColor:I

    invoke-virtual {v0, v1}, Le/a/p5/i0;->l(I)I

    move-result v1

    .line 3
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v2, Lcom/truecaller/searchwarnings/R$attr;->searchWarnings_details_labelBackgroundColor:I

    invoke-virtual {v0, v2}, Le/a/p5/i0;->l(I)I

    move-result v2

    .line 4
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v3, Lcom/truecaller/searchwarnings/R$attr;->searchWarnings_details_messageTextColor:I

    invoke-virtual {v0, v3}, Le/a/p5/i0;->l(I)I

    move-result v3

    .line 5
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v4, Lcom/truecaller/searchwarnings/R$color;->true_context_message_default_background:I

    invoke-virtual {v0, v4}, Le/a/p5/i0;->a(I)I

    move-result v4

    .line 6
    iget-object v0, p0, Le/a/x4/l/d;->a:Le/a/p5/i0;

    sget v5, Lcom/truecaller/searchwarnings/R$attr;->searchWarnings_details_messageOutlineColor:I

    invoke-virtual {v0, v5}, Le/a/p5/i0;->l(I)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, v8

    .line 7
    invoke-direct/range {v0 .. v7}, Le/a/m5/e;-><init>(IIIIILjava/lang/String;I)V

    return-object v8
.end method
