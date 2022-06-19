.class public final Le/a/c/a/h/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/h/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/h/a;


# direct methods
.method public constructor <init>(Le/a/c/a/h/a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/h/a$c;->a:Le/a/c/a/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/c/a/h/a$c;->a:Le/a/c/a/h/a;

    .line 2
    sget-object v2, Le/a/c/a/h/a;->h:[Ls1/a/l;

    .line 3
    invoke-virtual {v1}, Le/a/c/a/h/a;->QA()Le/a/c/a/g/i;

    move-result-object v1

    .line 4
    iget-object v1, v1, Le/a/c/a/g/i;->b:Landroid/widget/RadioGroup;

    const-string v2, "binding.autoHideRadioGroup"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget v2, Lcom/truecaller/insights/ui/R$id;->autoHideYes:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, v0, Le/a/c/a/h/a$c;->a:Le/a/c/a/h/a;

    .line 6
    iget-object v2, v2, Le/a/c/a/h/a;->f:Le/a/c/e/c;

    if-eqz v2, :cond_3

    const-string v7, ""

    .line 7
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "feature"

    .line 8
    invoke-static {v7, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventCategory"

    invoke-static {v7, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventInfo"

    invoke-static {v7, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v7, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actionType"

    invoke-static {v7, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actionInfo"

    invoke-static {v7, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "propertyMap"

    invoke-static {v15, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "hide_transactions"

    const-string v4, "<set-?>"

    .line 9
    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "auto_hide_bottom_sheet"

    .line 10
    invoke-static {v6, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "click"

    .line 11
    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "insights_smart_feed"

    .line 12
    invoke-static {v8, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string v10, "yes"

    goto :goto_1

    :cond_1
    const-string v10, "no"

    .line 13
    :goto_1
    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v14, Le/a/c/r/d/b;

    .line 15
    new-instance v13, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1c0

    const/16 v19, 0x0

    move-object v4, v13

    move-object v3, v13

    move-object/from16 v13, v16

    move-object/from16 v20, v14

    move/from16 v14, v17

    move-object/from16 v17, v15

    move/from16 v15, v18

    move-object/from16 v16, v19

    invoke-direct/range {v4 .. v16}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 16
    invoke-static/range {v17 .. v17}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v5, v20

    .line 17
    invoke-direct {v5, v3, v4}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 18
    invoke-interface {v2, v5}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 19
    iget-object v2, v0, Le/a/c/a/h/a$c;->a:Le/a/c/a/h/a;

    .line 20
    iget-object v2, v2, Le/a/c/a/h/a;->e:Le/a/c/c0/o;

    if-eqz v2, :cond_2

    .line 21
    invoke-interface {v2, v1}, Le/a/c/c0/o;->q(Z)V

    .line 22
    iget-object v1, v0, Le/a/c/a/h/a$c;->a:Le/a/c/a/h/a;

    invoke-virtual {v1}, Le/m/a/g/e/e;->dismiss()V

    return-void

    :cond_2
    const-string v1, "insightConfig"

    .line 23
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_3
    const/4 v1, 0x0

    const-string v2, "insightsAnalyticsManager"

    .line 24
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
