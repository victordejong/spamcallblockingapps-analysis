.class public final Le/a/o/b/a/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/a/a/n;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;)Le/a/o/b/a/a/r;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "themeConfig"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1

    const/4 v0, 0x4

    if-eq v2, v0, :cond_0

    .line 2
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Theme not provided"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance v1, Le/a/o/b/a/a/r;

    .line 4
    sget v2, Lcom/truecaller/contextcall/R$color;->tcx_textSecondary_dark:I

    .line 5
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 6
    invoke-static {v0, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 7
    invoke-static {v0, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v4

    .line 8
    sget v5, Lcom/truecaller/contextcall/R$color;->tcx_backgroundTertiary_dark:I

    .line 9
    invoke-static {v0, v5}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v5

    .line 10
    sget v6, Lcom/truecaller/contextcall/R$color;->tcx_textPrimary_dark:I

    .line 11
    invoke-static {v0, v6}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v6

    .line 12
    sget v7, Lcom/truecaller/contextcall/R$color;->tcx_fillQuarternaryBackground_dark:I

    .line 13
    invoke-static {v0, v7}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v7

    .line 14
    invoke-static {v0, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v8

    move-object v2, v1

    .line 15
    invoke-direct/range {v2 .. v8}, Le/a/o/b/a/a/r;-><init>(IIIIII)V

    goto/16 :goto_0

    .line 16
    :cond_2
    new-instance v1, Le/a/o/b/a/a/r;

    .line 17
    sget v2, Lcom/truecaller/contextcall/R$color;->tcx_textSecondary_dark:I

    .line 18
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 19
    invoke-static {v0, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v10

    .line 20
    invoke-static {v0, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v11

    .line 21
    sget v3, Lcom/truecaller/contextcall/R$color;->tcx_backgroundTertiary_dark:I

    .line 22
    invoke-static {v0, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v12

    .line 23
    sget v3, Lcom/truecaller/contextcall/R$color;->tcx_textPrimary_dark:I

    .line 24
    invoke-static {v0, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v13

    .line 25
    sget v3, Lcom/truecaller/contextcall/R$color;->tcx_fillQuarternaryBackground_dark:I

    .line 26
    invoke-static {v0, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v14

    .line 27
    invoke-static {v0, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v15

    move-object v9, v1

    .line 28
    invoke-direct/range {v9 .. v15}, Le/a/o/b/a/a/r;-><init>(IIIIII)V

    goto :goto_0

    .line 29
    :cond_3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v1, Le/a/o/b/a/a/r;

    .line 31
    sget v2, Lcom/truecaller/contextcall/R$attr;->tcx_textSecondary:I

    .line 32
    invoke-static {v0, v2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v3

    .line 33
    sget v4, Lcom/truecaller/contextcall/R$attr;->tcx_textTertiary:I

    .line 34
    invoke-static {v0, v4}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v4

    .line 35
    sget v5, Lcom/truecaller/contextcall/R$attr;->tcx_backgroundPrimary:I

    .line 36
    invoke-static {v0, v5}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v5

    .line 37
    sget v6, Lcom/truecaller/contextcall/R$attr;->tcx_textPrimary:I

    .line 38
    invoke-static {v0, v6}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v6

    .line 39
    sget v7, Lcom/truecaller/contextcall/R$attr;->tcx_fillQuarternaryBackground:I

    .line 40
    invoke-static {v0, v7}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v7

    .line 41
    invoke-static {v0, v2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v8

    move-object v2, v1

    .line 42
    invoke-direct/range {v2 .. v8}, Le/a/o/b/a/a/r;-><init>(IIIIII)V

    goto :goto_0

    .line 43
    :cond_4
    new-instance v1, Le/a/o/b/a/a/r;

    .line 44
    sget v2, Lcom/truecaller/contextcall/R$color;->tcx_textSecondary_dark:I

    .line 45
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 46
    invoke-static {v0, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v10

    .line 47
    sget v3, Lcom/truecaller/contextcall/R$color;->tcx_textTertiary_dark:I

    .line 48
    invoke-static {v0, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v11

    .line 49
    sget v3, Lcom/truecaller/contextcall/R$color;->context_call_on_demand_picker_bg:I

    .line 50
    invoke-static {v0, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v12

    .line 51
    sget v3, Lcom/truecaller/contextcall/R$color;->tcx_textPrimary_dark:I

    .line 52
    invoke-static {v0, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v13

    .line 53
    sget v3, Lcom/truecaller/contextcall/R$color;->tcx_fillQuarternaryBackground_dark:I

    .line 54
    invoke-static {v0, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v14

    .line 55
    invoke-static {v0, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v15

    move-object v9, v1

    .line 56
    invoke-direct/range {v9 .. v15}, Le/a/o/b/a/a/r;-><init>(IIIIII)V

    :goto_0
    return-object v1
.end method
