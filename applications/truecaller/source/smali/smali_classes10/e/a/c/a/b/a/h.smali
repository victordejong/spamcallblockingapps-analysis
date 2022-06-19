.class public final Le/a/c/a/b/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/b/a/f;


# direct methods
.method public constructor <init>(Le/a/c/a/b/a/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/b/a/h;->a:Le/a/c/a/b/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/c/a/b/a/h;->a:Le/a/c/a/b/a/f;

    invoke-static {v1}, Le/a/c/a/b/a/f;->PA(Le/a/c/a/b/a/f;)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, v0, Le/a/c/a/b/a/h;->a:Le/a/c/a/b/a/f;

    invoke-static {v2}, Le/a/c/a/b/a/f;->OA(Le/a/c/a/b/a/f;)Z

    move-result v2

    .line 3
    iget-object v3, v0, Le/a/c/a/b/a/h;->a:Le/a/c/a/b/a/f;

    invoke-virtual {v3}, Le/a/c/a/b/a/f;->QA()Le/a/c/e/c;

    move-result-object v3

    const-string v4, "senderId"

    .line 4
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    const-string v7, ""

    .line 5
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "feature"

    .line 6
    invoke-static {v7, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "eventCategory"

    invoke-static {v7, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "eventInfo"

    invoke-static {v7, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v7, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "actionType"

    invoke-static {v7, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "actionInfo"

    invoke-static {v7, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "propertyMap"

    invoke-static {v15, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "important_message_feedback"

    const-string v5, "<set-?>"

    .line 7
    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v1, v2}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-static {v8, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "click"

    .line 10
    invoke-static {v10, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "learn_more"

    .line 11
    invoke-static {v11, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "bottom_sheet"

    .line 12
    invoke-static {v9, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 14
    new-instance v1, Le/a/c/r/d/b;

    .line 15
    new-instance v2, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x1c0

    const/16 v17, 0x0

    move-object v5, v2

    move-object/from16 v18, v15

    move v15, v4

    invoke-direct/range {v5 .. v17}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 16
    invoke-static/range {v18 .. v18}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 17
    invoke-direct {v1, v2, v4}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 18
    invoke-interface {v3, v1}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 19
    sget-object v1, Le/a/c/a/b/a/b;->f:Le/a/c/a/b/a/b$b;

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v2, Le/a/c/a/b/a/b;

    invoke-direct {v2}, Le/a/c/a/b/a/b;-><init>()V

    .line 22
    iget-object v3, v0, Le/a/c/a/b/a/h;->a:Le/a/c/a/b/a/f;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 23
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Le/a/c/a/b/a/b;->e:Ljava/lang/String;

    .line 25
    invoke-virtual {v2, v3, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
