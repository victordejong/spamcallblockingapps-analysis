.class public final Le/a/o/a/j/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/j/c;


# instance fields
.field public final a:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public a()Le/a/m5/e;
    .locals 10

    .line 1
    new-instance v8, Le/a/m5/e;

    .line 2
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v1, Lcom/truecaller/contextcall/R$color;->tcx_textPrimary_dark:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v2

    .line 3
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v3, Lcom/truecaller/contextcall/R$color;->true_context_label_default_background:I

    invoke-interface {v0, v3}, Le/a/p5/c0;->a(I)I

    move-result v3

    .line 4
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v4

    .line 5
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v1, Lcom/truecaller/contextcall/R$color;->true_context_message_default_background:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v5

    .line 6
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v1, Lcom/truecaller/contextcall/R$color;->tcx_textQuarternary_dark:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

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
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v1, Lcom/truecaller/contextcall/R$color;->tcx_textPrimary_dark:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v2

    .line 3
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v3, Lcom/truecaller/contextcall/R$color;->true_context_label_dark_background:I

    invoke-interface {v0, v3}, Le/a/p5/c0;->a(I)I

    move-result v3

    .line 4
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v4

    .line 5
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v1, Lcom/truecaller/contextcall/R$color;->true_context_message_dark_background:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v5

    .line 6
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v1, Lcom/truecaller/contextcall/R$color;->tcx_fillTertiaryBackground_dark:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

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
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v1, Lcom/truecaller/contextcall/R$color;->tcx_textPrimary_dark:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v1

    .line 3
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v2, Lcom/truecaller/contextcall/R$color;->tcx_textPrimary_light:I

    invoke-interface {v0, v2}, Le/a/p5/c0;->a(I)I

    move-result v3

    .line 4
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/contextcall/R$color;->tcx_textSecondary_light:I

    invoke-interface {v0, v4}, Le/a/p5/c0;->a(I)I

    move-result v4

    .line 5
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v5, Lcom/truecaller/contextcall/R$color;->true_context_message_default_background:I

    invoke-interface {v0, v5}, Le/a/p5/c0;->a(I)I

    move-result v5

    .line 6
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    invoke-interface {v0, v2}, Le/a/p5/c0;->a(I)I

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

.method public e()Le/a/m5/e;
    .locals 10

    .line 1
    new-instance v8, Le/a/m5/e;

    .line 2
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v1, Lcom/truecaller/contextcall/R$color;->tcx_textPrimary_light:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v1

    .line 3
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v2, Lcom/truecaller/contextcall/R$color;->tcx_textPrimary_dark:I

    invoke-interface {v0, v2}, Le/a/p5/c0;->a(I)I

    move-result v3

    .line 4
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/contextcall/R$color;->tcx_textSecondary_dark:I

    invoke-interface {v0, v4}, Le/a/p5/c0;->a(I)I

    move-result v4

    .line 5
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v5, Lcom/truecaller/contextcall/R$color;->true_context_message_default_background:I

    invoke-interface {v0, v5}, Le/a/p5/c0;->a(I)I

    move-result v5

    .line 6
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    invoke-interface {v0, v2}, Le/a/p5/c0;->a(I)I

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
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v1, Lcom/truecaller/contextcall/R$color;->tcx_textPrimary_dark:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v1

    .line 3
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v2, Lcom/truecaller/contextcall/R$color;->tcx_goldTextPrimary:I

    invoke-interface {v0, v2}, Le/a/p5/c0;->a(I)I

    move-result v3

    .line 4
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    invoke-interface {v0, v2}, Le/a/p5/c0;->a(I)I

    move-result v4

    .line 5
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v5, Lcom/truecaller/contextcall/R$color;->true_context_message_default_background:I

    invoke-interface {v0, v5}, Le/a/p5/c0;->a(I)I

    move-result v5

    .line 6
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    invoke-interface {v0, v2}, Le/a/p5/c0;->a(I)I

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
    .locals 10

    .line 1
    new-instance v8, Le/a/m5/e;

    .line 2
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v1, Lcom/truecaller/contextcall/R$color;->tcx_textPrimary_dark:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v1

    .line 3
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v2, Lcom/truecaller/contextcall/R$color;->tcx_goldTextPrimary:I

    invoke-interface {v0, v2}, Le/a/p5/c0;->a(I)I

    move-result v3

    .line 4
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/contextcall/R$color;->tcx_lightGoldGradientStep2:I

    invoke-interface {v0, v4}, Le/a/p5/c0;->a(I)I

    move-result v4

    .line 5
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    sget v5, Lcom/truecaller/contextcall/R$color;->true_context_message_default_background:I

    invoke-interface {v0, v5}, Le/a/p5/c0;->a(I)I

    move-result v5

    .line 6
    iget-object v0, p0, Le/a/o/a/j/d;->a:Le/a/p5/c0;

    invoke-interface {v0, v2}, Le/a/p5/c0;->a(I)I

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
