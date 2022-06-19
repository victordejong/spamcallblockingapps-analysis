.class public final Le/a/a/c/e7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/data/types/Message;

.field public final synthetic b:Le/a/a/c/k/a/j$b;

.field public final synthetic c:Le/a/c/b0/b;

.field public final synthetic d:Ls1/z/b/l;

.field public final synthetic e:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

.field public final synthetic f:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/Message;Le/a/a/c/k/a/j$b;Le/a/c/b0/b;Ls1/z/b/l;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/e7;->a:Lcom/truecaller/messaging/data/types/Message;

    iput-object p2, p0, Le/a/a/c/e7;->b:Le/a/a/c/k/a/j$b;

    iput-object p3, p0, Le/a/a/c/e7;->c:Le/a/c/b0/b;

    iput-object p4, p0, Le/a/a/c/e7;->d:Ls1/z/b/l;

    iput-object p5, p0, Le/a/a/c/e7;->e:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    iput-object p6, p0, Le/a/a/c/e7;->f:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/c/e7;->a:Lcom/truecaller/messaging/data/types/Message;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v1, v1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v2, "message.participant.normalizedAddress"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Le/a/a/c/e7;->a:Lcom/truecaller/messaging/data/types/Message;

    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v3, "message.participant"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/data/entity/messaging/Participant;->l()Z

    move-result v2

    .line 3
    iget-object v3, v0, Le/a/a/c/e7;->b:Le/a/a/c/k/a/j$b;

    iget-object v4, v0, Le/a/a/c/e7;->c:Le/a/c/b0/b;

    .line 4
    iget-object v4, v4, Le/a/c/b0/b;->a:Le/a/c/r/m/b;

    .line 5
    iget-object v4, v4, Le/a/c/r/m/b;->a:Ljava/lang/String;

    const-string v5, "senderId"

    .line 6
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    move v7, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v6

    :goto_1
    if-eqz v7, :cond_2

    const-string v7, "add_tag"

    goto :goto_2

    :cond_2
    const-string v7, "edit_tag"

    :goto_2
    move-object v9, v7

    const-string v14, ""

    .line 8
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v8, "feature"

    .line 9
    invoke-static {v14, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "eventCategory"

    invoke-static {v14, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "eventInfo"

    invoke-static {v14, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "context"

    invoke-static {v14, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "actionType"

    invoke-static {v14, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "actionInfo"

    invoke-static {v14, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "propertyMap"

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "<set-?>"

    .line 10
    invoke-static {v9, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v1, v2}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-static {v11, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    move-object v10, v4

    goto :goto_3

    :cond_3
    move-object v10, v14

    .line 13
    :goto_3
    invoke-static {v10, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "click"

    .line 14
    invoke-static {v13, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "conversation_view"

    .line 15
    invoke-static {v12, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    move v5, v6

    :cond_4
    if-eqz v5, :cond_5

    .line 17
    new-instance v4, Le/a/c/r/d/b;

    .line 18
    new-instance v5, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1c0

    const/16 v20, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v20}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 19
    invoke-static {v7}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 20
    invoke-direct {v4, v5, v6}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 21
    invoke-interface {v3, v4}, Le/a/a/c/a/k$a;->Ac(Le/a/c/r/d/b;)V

    .line 22
    sget-object v3, Le/a/c/a/b/a/f;->m:Le/a/c/a/b/a/f$b;

    iget-object v4, v0, Le/a/a/c/e7;->c:Le/a/c/b0/b;

    .line 23
    iget-object v4, v4, Le/a/c/b0/b;->a:Le/a/c/r/m/b;

    .line 24
    iget-object v4, v4, Le/a/c/r/m/b;->a:Ljava/lang/String;

    .line 25
    new-instance v5, Le/a/a/c/e7$a;

    invoke-direct {v5, v0}, Le/a/a/c/e7$a;-><init>(Le/a/a/c/e7;)V

    invoke-virtual {v3, v1, v2, v4, v5}, Le/a/c/a/b/a/f$b;->a(Ljava/lang/String;ZLjava/lang/String;Ls1/z/b/p;)Le/a/c/a/b/a/f;

    move-result-object v1

    .line 26
    iget-object v2, v0, Le/a/a/c/e7;->f:Landroidx/fragment/app/FragmentManager;

    .line 27
    sget-object v3, Le/a/c/a/b/a/f;->l:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v2, v3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 29
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
