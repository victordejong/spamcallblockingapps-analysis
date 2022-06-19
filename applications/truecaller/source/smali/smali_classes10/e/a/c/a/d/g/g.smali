.class public final Le/a/c/a/d/g/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/g/a;

.field public final synthetic b:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;


# direct methods
.method public constructor <init>(Le/a/c/a/g/a;Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/g/g;->a:Le/a/c/a/g/a;

    iput-object p2, p0, Le/a/c/a/d/g/g;->b:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/c/a/d/g/g;->b:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    .line 2
    sget v2, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->g:I

    .line 3
    invoke-virtual {v1}, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->qa()Le/a/c/a/d/a/a;

    move-result-object v1

    .line 4
    iget-object v1, v1, Le/a/c/a/d/a/a;->m:Le/a/c/a/i/j;

    const/4 v2, 0x1

    const-string v6, ""

    .line 5
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "feature"

    .line 6
    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventCategory"

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventInfo"

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "context"

    invoke-static {v6, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionType"

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionInfo"

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "propertyMap"

    invoke-static {v15, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "subtab_finance_tabs"

    const-string v3, "<set-?>"

    .line 7
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "search_button"

    .line 8
    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "sub_tabs"

    .line 9
    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "click"

    .line 10
    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "finance_page"

    .line 11
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v10, 0x0

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v10

    :goto_0
    if-eqz v2, :cond_2

    .line 13
    new-instance v2, Le/a/c/r/d/b;

    .line 14
    new-instance v13, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1c0

    const/16 v18, 0x0

    move-object v3, v13

    move-object/from16 v19, v13

    move/from16 v13, v16

    move-object/from16 v20, v14

    move/from16 v14, v17

    move-object/from16 v16, v15

    move-object/from16 v15, v18

    invoke-direct/range {v3 .. v15}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 15
    invoke-static/range {v16 .. v16}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v4, v19

    .line 16
    invoke-direct {v2, v4, v3}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 17
    invoke-virtual {v1, v2}, Le/a/c/a/i/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, v0, Le/a/c/a/d/g/g;->b:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    move-object/from16 v2, v20

    .line 19
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    iget-object v3, v0, Le/a/c/a/d/g/g;->b:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    iget-object v4, v0, Le/a/c/a/d/g/g;->a:Le/a/c/a/g/a;

    iget-object v4, v4, Le/a/c/a/g/a;->h:Lcom/truecaller/ui/view/TintedImageView;

    const-string v5, "searchBtn"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 24
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x0

    .line 25
    invoke-static {v4, v6, v6, v3, v5}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 26
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 27
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    .line 28
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
