.class public final Le/a/c/a/b/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Le/a/c/a/b/a/f;


# direct methods
.method public constructor <init>(Le/a/c/a/b/a/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/b/a/i;->a:Le/a/c/a/b/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/c/a/b/a/i;->a:Le/a/c/a/b/a/f;

    invoke-static {v1}, Le/a/c/a/b/a/f;->PA(Le/a/c/a/b/a/f;)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, v0, Le/a/c/a/b/a/i;->a:Le/a/c/a/b/a/f;

    invoke-static {v2}, Le/a/c/a/b/a/f;->OA(Le/a/c/a/b/a/f;)Z

    move-result v2

    .line 3
    iget-object v3, v0, Le/a/c/a/b/a/i;->a:Le/a/c/a/b/a/f;

    .line 4
    invoke-virtual {v3}, Le/a/c/a/b/a/f;->SA()Le/a/c/r/m/b;

    move-result-object v3

    .line 5
    iget-object v4, v0, Le/a/c/a/b/a/i;->a:Le/a/c/a/b/a/f;

    invoke-virtual {v4}, Le/a/c/a/b/a/f;->QA()Le/a/c/e/c;

    move-result-object v4

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, v3, Le/a/c/r/m/b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v5, "senderId"

    .line 7
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v6

    :goto_2
    if-eqz v7, :cond_3

    const-string v7, "add_tag"

    goto :goto_3

    :cond_3
    const-string v7, "edit_tag"

    :goto_3
    move-object v9, v7

    if-eqz p2, :cond_4

    const-string v7, "allow"

    goto :goto_4

    :cond_4
    const-string v7, "disallow"

    :goto_4
    move-object v14, v7

    const-string v12, ""

    .line 9
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v8, "feature"

    .line 10
    invoke-static {v12, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "eventCategory"

    invoke-static {v12, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "eventInfo"

    invoke-static {v12, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "context"

    invoke-static {v12, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "actionType"

    invoke-static {v12, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "actionInfo"

    invoke-static {v12, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "propertyMap"

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "<set-?>"

    .line 11
    invoke-static {v9, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v1, v2}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-static {v11, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_5

    move-object v10, v3

    goto :goto_5

    :cond_5
    move-object v10, v12

    .line 14
    :goto_5
    invoke-static {v10, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "attach_message_preference"

    .line 15
    invoke-static {v13, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {v14, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    move v5, v6

    :cond_6
    if-eqz v5, :cond_7

    .line 18
    new-instance v1, Le/a/c/r/d/b;

    .line 19
    new-instance v2, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1c0

    const/16 v20, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v20}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 20
    invoke-static {v7}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 21
    invoke-direct {v1, v2, v3}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 22
    invoke-interface {v4, v1}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    return-void

    .line 23
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
