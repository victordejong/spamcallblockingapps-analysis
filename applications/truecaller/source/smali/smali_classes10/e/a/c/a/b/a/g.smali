.class public final Le/a/c/a/b/a/g;
.super Le/m/a/g/e/d;
.source "SourceFile"


# instance fields
.field public final synthetic o:Le/a/c/a/b/a/f;


# direct methods
.method public constructor <init>(Le/a/c/a/b/a/f;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/c/a/b/a/g;->o:Le/a/c/a/b/a/f;

    invoke-direct {p0, p2, p3}, Le/m/a/g/e/d;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/c/a/b/a/g;->o:Le/a/c/a/b/a/f;

    .line 2
    iget-boolean v2, v1, Le/a/c/a/b/a/f;->j:Z

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v1}, Le/a/c/a/b/a/f;->PA(Le/a/c/a/b/a/f;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, v0, Le/a/c/a/b/a/g;->o:Le/a/c/a/b/a/f;

    invoke-static {v2}, Le/a/c/a/b/a/f;->OA(Le/a/c/a/b/a/f;)Z

    move-result v2

    .line 5
    iget-object v3, v0, Le/a/c/a/b/a/g;->o:Le/a/c/a/b/a/f;

    .line 6
    invoke-virtual {v3}, Le/a/c/a/b/a/f;->SA()Le/a/c/r/m/b;

    move-result-object v3

    .line 7
    iget-object v4, v0, Le/a/c/a/b/a/g;->o:Le/a/c/a/b/a/f;

    invoke-virtual {v4}, Le/a/c/a/b/a/f;->QA()Le/a/c/e/c;

    move-result-object v4

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, v3, Le/a/c/r/m/b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v5, "senderId"

    .line 9
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v6

    :goto_2
    if-eqz v7, :cond_4

    const-string v7, "add_tag"

    goto :goto_3

    :cond_4
    const-string v7, "edit_tag"

    :goto_3
    move-object v9, v7

    const-string v7, ""

    .line 11
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v8, "feature"

    .line 12
    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "eventCategory"

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "eventInfo"

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "context"

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "actionType"

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "actionInfo"

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "propertyMap"

    invoke-static {v15, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "<set-?>"

    .line 13
    invoke-static {v9, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v1, v2}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 15
    invoke-static {v11, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_5

    move-object v10, v3

    goto :goto_4

    :cond_5
    move-object v10, v7

    .line 16
    :goto_4
    invoke-static {v10, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "click"

    .line 17
    invoke-static {v13, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "conversation_view"

    .line 18
    invoke-static {v12, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "back"

    .line 19
    invoke-static {v14, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    move v5, v6

    :cond_6
    if-eqz v5, :cond_7

    .line 21
    new-instance v1, Le/a/c/r/d/b;

    .line 22
    new-instance v2, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v16, 0x0

    const/4 v3, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1c0

    const/16 v20, 0x0

    move-object v8, v2

    move-object v5, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v3

    invoke-direct/range {v8 .. v20}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 23
    invoke-static {v5}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 24
    invoke-direct {v1, v2, v3}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 25
    invoke-interface {v4, v1}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 26
    iget-object v1, v0, Le/a/c/a/b/a/g;->o:Le/a/c/a/b/a/f;

    .line 27
    iput-boolean v6, v1, Le/a/c/a/b/a/f;->i:Z

    .line 28
    invoke-super/range {p0 .. p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void

    .line 29
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
