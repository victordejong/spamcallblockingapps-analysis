.class public final Le/a/c/a/a/a/a/p$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/a/a/a/p;-><init>(Le/a/c/a/g/r0;Le/a/c/a/i/h;Le/a/c/b/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/a/a/a/p;


# direct methods
.method public constructor <init>(Le/a/c/a/a/a/a/p;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/a/a/a/p$a;->b:Le/a/c/a/a/a/a/p;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    const-string v2, "view"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v9, ""

    .line 3
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "feature"

    .line 4
    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventCategory"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventInfo"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionType"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionInfo"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "propertyMap"

    invoke-static {v15, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "inner_page_access"

    const-string v3, "<set-?>"

    .line 5
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "click"

    .line 6
    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "important_tab"

    .line 7
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 9
    iget-object v6, v0, Le/a/c/a/a/a/a/p$a;->b:Le/a/c/a/a/a/a/p;

    .line 10
    iget-object v6, v6, Le/a/c/a/a/a/a/p;->f:Le/a/c/a/g/r0;

    .line 11
    iget-object v6, v6, Le/a/c/a/g/r0;->b:Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;

    invoke-static {v1, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v10, "Coming soon"

    const/4 v11, 0x0

    if-eqz v6, :cond_1

    .line 12
    iget-object v1, v0, Le/a/c/a/a/a/a/p$a;->b:Le/a/c/a/a/a/a/p;

    .line 13
    iget-object v1, v1, Le/a/c/a/a/a/a/p;->h:Le/a/c/b/j;

    .line 14
    invoke-interface {v1}, Le/a/c/b/j;->N()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v1, "reminders_page"

    .line 16
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v5, v1

    goto/16 :goto_2

    .line 17
    :cond_0
    invoke-static {v5, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 18
    :cond_1
    iget-object v6, v0, Le/a/c/a/a/a/a/p$a;->b:Le/a/c/a/a/a/a/p;

    .line 19
    iget-object v6, v6, Le/a/c/a/a/a/a/p;->f:Le/a/c/a/g/r0;

    .line 20
    iget-object v6, v6, Le/a/c/a/g/r0;->e:Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;

    invoke-static {v1, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 21
    iget-object v1, v0, Le/a/c/a/a/a/a/p$a;->b:Le/a/c/a/a/a/a/p;

    .line 22
    iget-object v1, v1, Le/a/c/a/a/a/a/p;->h:Le/a/c/b/j;

    .line 23
    invoke-interface {v1}, Le/a/c/b/j;->U()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v1, "updates_page"

    .line 25
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_2
    invoke-static {v5, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 27
    :cond_3
    iget-object v6, v0, Le/a/c/a/a/a/a/p$a;->b:Le/a/c/a/a/a/a/p;

    .line 28
    iget-object v6, v6, Le/a/c/a/a/a/a/p;->f:Le/a/c/a/g/r0;

    .line 29
    iget-object v6, v6, Le/a/c/a/g/r0;->d:Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;

    invoke-static {v1, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 30
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v1, "finance_page"

    .line 31
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_4
    iget-object v6, v0, Le/a/c/a/a/a/a/p$a;->b:Le/a/c/a/a/a/a/p;

    .line 33
    iget-object v6, v6, Le/a/c/a/a/a/a/p;->f:Le/a/c/a/g/r0;

    .line 34
    iget-object v6, v6, Le/a/c/a/g/r0;->c:Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;

    invoke-static {v1, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 35
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v1, "starred_page"

    .line 36
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_1
    move-object v5, v9

    .line 37
    :goto_2
    iget-object v1, v0, Le/a/c/a/a/a/a/p$a;->b:Le/a/c/a/a/a/a/p;

    .line 38
    iget-object v1, v1, Le/a/c/a/a/a/a/p;->g:Le/a/c/a/i/h;

    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    goto :goto_3

    :cond_6
    move v2, v11

    :goto_3
    if-eqz v2, :cond_7

    .line 40
    new-instance v2, Le/a/c/r/d/b;

    .line 41
    new-instance v14, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1c0

    const/16 v17, 0x0

    move-object v3, v14

    move-object v6, v9

    move-object/from16 v18, v14

    move/from16 v14, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v17

    invoke-direct/range {v3 .. v15}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 42
    invoke-static/range {v16 .. v16}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v4, v18

    .line 43
    invoke-direct {v2, v4, v3}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 44
    invoke-interface {v1, v2}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    .line 45
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1

    .line 46
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
