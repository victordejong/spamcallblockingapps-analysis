.class public final Le/a/a/r0/o;
.super Le/a/a/r0/m;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/g0$a;


# instance fields
.field public final A:Z

.field public final B:Le/a/a/d0;

.field public d:Lcom/truecaller/messaging/data/types/InboxTab;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:Z

.field public m:Ljava/lang/String;

.field public final n:Le/a/h5/w;

.field public final o:Le/a/p5/g;

.field public final p:Le/a/q2/a;

.field public final q:Le/a/a/g/g0;

.field public final r:Le/a/l4/c;

.field public final s:Le/a/c/e/c;

.field public final t:Le/a/c/b/j;

.field public final u:Ls1/w/f;

.field public final v:Le/a/a/i0;

.field public final w:Le/a/a/k/a/a/u;

.field public final x:Le/a/a/e/m;

.field public final y:Le/a/a/w;

.field public final z:Le/a/c/c0/o;


# direct methods
.method public constructor <init>(Le/a/h5/w;Le/a/p5/g;Le/a/q2/a;Le/a/a/g/g0;Le/a/l4/c;Le/a/c/e/c;Le/a/c/b/j;Ls1/w/f;Le/a/a/i0;Le/a/a/k/a/a/u;Le/a/a/e/m;Le/a/a/w;Le/a/c/c0/o;ZLe/a/a/d0;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p15

    const-string v15, "tcPermissionUtil"

    invoke-static {v1, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "deviceInfoUtil"

    invoke-static {v2, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "analytics"

    invoke-static {v3, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "unreadThreadsCounter"

    invoke-static {v4, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "availabilityManager"

    invoke-static {v5, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "insightsAnalyticsManager"

    invoke-static {v6, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "insightsStatusProvider"

    invoke-static {v7, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "uiContext"

    invoke-static {v8, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "messageSettings"

    invoke-static {v9, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "reportHelper"

    invoke-static {v10, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "inboxCleaner"

    invoke-static {v11, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "inboxTabsProvider"

    invoke-static {v12, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "insightConfig"

    invoke-static {v13, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "notificationHelper"

    invoke-static {v14, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {v0, v8}, Le/a/a/r0/m;-><init>(Ls1/w/f;)V

    iput-object v1, v0, Le/a/a/r0/o;->n:Le/a/h5/w;

    iput-object v2, v0, Le/a/a/r0/o;->o:Le/a/p5/g;

    iput-object v3, v0, Le/a/a/r0/o;->p:Le/a/q2/a;

    iput-object v4, v0, Le/a/a/r0/o;->q:Le/a/a/g/g0;

    iput-object v5, v0, Le/a/a/r0/o;->r:Le/a/l4/c;

    iput-object v6, v0, Le/a/a/r0/o;->s:Le/a/c/e/c;

    iput-object v7, v0, Le/a/a/r0/o;->t:Le/a/c/b/j;

    iput-object v8, v0, Le/a/a/r0/o;->u:Ls1/w/f;

    iput-object v9, v0, Le/a/a/r0/o;->v:Le/a/a/i0;

    iput-object v10, v0, Le/a/a/r0/o;->w:Le/a/a/k/a/a/u;

    iput-object v11, v0, Le/a/a/r0/o;->x:Le/a/a/e/m;

    iput-object v12, v0, Le/a/a/r0/o;->y:Le/a/a/w;

    iput-object v13, v0, Le/a/a/r0/o;->z:Le/a/c/c0/o;

    move/from16 v1, p14

    iput-boolean v1, v0, Le/a/a/r0/o;->A:Z

    iput-object v14, v0, Le/a/a/r0/o;->B:Le/a/a/d0;

    .line 2
    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    iput-object v1, v0, Le/a/a/r0/o;->d:Lcom/truecaller/messaging/data/types/InboxTab;

    return-void
.end method


# virtual methods
.method public E2()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/r0/o;->r:Le/a/l4/c;

    invoke-interface {v0}, Le/a/l4/c;->Y()V

    return-void
.end method

.method public Ij()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/InboxTab;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/r0/o;->y:Le/a/a/w;

    invoke-interface {v0}, Le/a/a/w;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Jj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/r0/o;->d:Lcom/truecaller/messaging/data/types/InboxTab;

    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Le/a/a/r0/p;->z0(Lcom/truecaller/messaging/data/types/InboxTab;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public Kj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/r0/o;->d:Lcom/truecaller/messaging/data/types/InboxTab;

    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->BUSINESS:Lcom/truecaller/messaging/data/types/InboxTab;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/r0/o;->t:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/a/r0/o;->t:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Lj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/r0/o;->x:Le/a/a/e/m;

    invoke-interface {v0}, Le/a/a/e/m;->j()Z

    move-result v0

    return v0
.end method

.method public Mj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/r0/o;->t:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/a/r0/o;->t:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public Nj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/r0/p;->Gv()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public O()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/a/r0/o;->k:Z

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/r0/p;->g5()V

    :cond_0
    return-void
.end method

.method public Oj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/r0/p;->GA()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public Pj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/r0/p;->co()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public Qj()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/r0/p;->mm()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/r0/o;->p:Le/a/q2/a;

    const-string v1, "HomeScreenFabPress"

    const-string v2, "type"

    .line 3
    invoke-static {v1, v2}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v8, "fab"

    const-string v9, "NewMessage"

    const-string v4, "name"

    const-string v6, "value"

    move-object v3, v8

    move-object v5, v9

    move-object v7, v2

    .line 4
    invoke-static/range {v3 .. v9}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 5
    invoke-static {v1, v3, v2, v4, v0}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public Rj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/a/r0/o;->d:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v0, v1}, Le/a/a/r0/p;->D7(Lcom/truecaller/messaging/data/types/InboxTab;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public Sj(I)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/r0/o;->d:Lcom/truecaller/messaging/data/types/InboxTab;

    .line 2
    invoke-virtual/range {p0 .. p0}, Le/a/a/r0/o;->Ij()Ljava/util/List;

    move-result-object v2

    move/from16 v3, p1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/InboxTab;

    iput-object v2, v0, Le/a/a/r0/o;->d:Lcom/truecaller/messaging/data/types/InboxTab;

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

    const-string v4, "page_view"

    const-string v3, "<set-?>"

    .line 5
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/InboxTab;->getAnalyticsContext()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "view"

    .line 8
    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/InboxTab;->getAnalyticsContext()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v2, v0, Le/a/a/r0/o;->s:Le/a/c/e/c;

    .line 12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v14, 0x1

    if-lez v3, :cond_0

    move v3, v14

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 13
    new-instance v13, Le/a/c/r/d/b;

    .line 14
    new-instance v12, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1c0

    const/16 v19, 0x0

    move-object v3, v12

    move-object v6, v9

    move-object/from16 v20, v12

    move-object/from16 v12, v16

    move-object/from16 v21, v13

    move/from16 v13, v17

    move/from16 v14, v18

    move-object/from16 v16, v15

    move-object/from16 v15, v19

    invoke-direct/range {v3 .. v15}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 15
    invoke-static/range {v16 .. v16}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    .line 16
    invoke-direct {v4, v5, v3}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 17
    invoke-interface {v2, v4}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 18
    iget-object v2, v0, Le/a/a/r0/o;->d:Lcom/truecaller/messaging/data/types/InboxTab;

    if-eq v1, v2, :cond_1

    iget-boolean v1, v0, Le/a/a/r0/o;->l:Z

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual/range {p0 .. p0}, Le/a/a/r0/o;->ck()V

    .line 20
    :cond_1
    iget-object v1, v0, Le/a/a/r0/o;->d:Lcom/truecaller/messaging/data/types/InboxTab;

    sget-object v2, Lcom/truecaller/messaging/data/types/InboxTab;->BUSINESS:Lcom/truecaller/messaging/data/types/InboxTab;

    if-ne v1, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Le/a/a/r0/o;->ak()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Le/a/a/r0/o;->v:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->p3()Z

    move-result v1

    if-nez v1, :cond_3

    .line 21
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/r0/p;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Le/a/a/r0/p;->ln()V

    .line 22
    :cond_2
    iget-object v1, v0, Le/a/a/r0/o;->v:Le/a/a/i0;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Le/a/a/i0;->k4(Z)V

    :cond_3
    return-void

    .line 23
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public Tj()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/a/r0/o;->o:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/a/a/r0/o;->n:Le/a/h5/w;

    invoke-interface {v1}, Le/a/h5/w;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/a/r0/p;->t0()V

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    const/4 v2, 0x0

    const-string v3, "inbox-overflowMenuChangeDma"

    .line 4
    invoke-interface {v0, v1, v2, v3}, Le/a/a/r0/p;->iz(IZLjava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public Uj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/r0/p;->Ju()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/r0/o;->v:Le/a/a/i0;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/a/i0;->a3(Z)V

    return v1
.end method

.method public Vj(Ljava/lang/String;)V
    .locals 3

    const-string v0, "inbox"

    const-string v1, "viewId"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v0, p1, v2}, Le/d/c/a/a;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Le/a/q2/y0/a/a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/a/r0/o;->p:Le/a/q2/a;

    invoke-static {p1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public Wj(Ljava/lang/String;)V
    .locals 10

    const-string v5, "action"

    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v7, p0, Le/a/a/r0/o;->p:Le/a/q2/a;

    const-string v8, "InboxOverflowMenu"

    const-string v0, "type"

    .line 2
    invoke-static {v8, v0}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v9

    const-string v1, "name"

    const-string v3, "value"

    move-object v0, v5

    move-object v2, p1

    move-object v4, v9

    move-object v6, p1

    .line 3
    invoke-static/range {v0 .. v6}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v0, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 4
    invoke-static {v8, p1, v9, v0, v7}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public Xj(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/r0/o;->B:Le/a/a/d0;

    invoke-interface {v0, p1}, Le/a/a/d0;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 13

    .line 1
    move-object v0, p1

    check-cast v0, Le/a/a/r0/p;

    const-string p1, "presenterView"

    .line 2
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/a/r0/o;->t:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->I()Z

    move-result v1

    .line 5
    iget-object p1, p0, Le/a/a/r0/o;->t:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->F()Z

    move-result v2

    .line 6
    invoke-virtual {p0}, Le/a/a/r0/o;->Ij()Ljava/util/List;

    move-result-object p1

    sget-object v3, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 7
    invoke-virtual {p0}, Le/a/a/r0/o;->Ij()Ljava/util/List;

    move-result-object p1

    sget-object v4, Lcom/truecaller/messaging/data/types/InboxTab;->PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 8
    iget-boolean v5, p0, Le/a/a/r0/o;->A:Z

    .line 9
    iget-object p1, p0, Le/a/a/r0/o;->t:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->d()Z

    move-result v6

    .line 10
    invoke-interface/range {v0 .. v6}, Le/a/a/r0/p;->Vs(ZZZZZZ)V

    .line 11
    iget-object v8, p0, Le/a/a/r0/o;->u:Ls1/w/f;

    new-instance v10, Le/a/a/r0/n;

    const/4 p1, 0x0

    invoke-direct {v10, p0, p1}, Le/a/a/r0/n;-><init>(Le/a/a/r0/o;Ls1/w/d;)V

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 12
    iget-object p1, p0, Le/a/a/r0/o;->v:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->K3()Z

    move-result p1

    if-nez p1, :cond_0

    .line 13
    iget-object p1, p0, Le/a/a/r0/o;->w:Le/a/a/k/a/a/u;

    iget-object v0, p0, Le/a/a/r0/o;->v:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->k()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/k/a/a/u;->e(Z)V

    .line 14
    iget-object p1, p0, Le/a/a/r0/o;->v:Le/a/a/i0;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Le/a/a/i0;->H3(Z)V

    .line 15
    :cond_0
    iget-object p1, p0, Le/a/a/r0/o;->t:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/a/a/r0/o;->z:Le/a/c/c0/o;

    invoke-interface {p1}, Le/a/c/c0/o;->Q()Z

    move-result p1

    if-nez p1, :cond_1

    .line 16
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/r0/p;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/a/r0/p;->Fn()V

    :cond_1
    return-void
.end method

.method public Yj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/r0/p;->t0()V

    :cond_0
    return-void
.end method

.method public Zj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/r0/o;->x:Le/a/a/e/m;

    invoke-interface {v0}, Le/a/a/e/m;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/r0/o;->v:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->z0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ak()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/r0/o;->Mj()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/r0/o;->v:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->Z3()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bk()V
    .locals 5

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/r0/p;

    if-eqz v1, :cond_9

    .line 2
    iget-object v2, p0, Le/a/a/r0/o;->d:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    const/4 v0, 0x4

    if-eq v2, v0, :cond_3

    goto :goto_1

    .line 3
    :cond_0
    iget v0, p0, Le/a/a/r0/o;->g:I

    if-lez v0, :cond_1

    move v3, v4

    :cond_1
    invoke-interface {v1, v3}, Le/a/a/r0/p;->jy(Z)V

    .line 4
    iget v0, p0, Le/a/a/r0/o;->g:I

    invoke-interface {v1, v0}, Le/a/a/r0/p;->dk(I)V

    goto :goto_1

    .line 5
    :cond_2
    invoke-interface {v1, v3}, Le/a/a/r0/p;->jy(Z)V

    goto :goto_1

    .line 6
    :cond_3
    iget v0, p0, Le/a/a/r0/o;->f:I

    if-lez v0, :cond_4

    move v3, v4

    :cond_4
    invoke-interface {v1, v3}, Le/a/a/r0/p;->jy(Z)V

    .line 7
    iget v0, p0, Le/a/a/r0/o;->f:I

    invoke-interface {v1, v0}, Le/a/a/r0/p;->dk(I)V

    goto :goto_1

    .line 8
    :cond_5
    iget v2, p0, Le/a/a/r0/o;->e:I

    if-lez v2, :cond_6

    move v3, v4

    :cond_6
    invoke-interface {v1, v3}, Le/a/a/r0/p;->jy(Z)V

    .line 9
    iget v2, p0, Le/a/a/r0/o;->e:I

    invoke-interface {v1, v2}, Le/a/a/r0/p;->dk(I)V

    .line 10
    iget-object v2, p0, Le/a/a/r0/o;->i:Ljava/util/List;

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move-object v2, v0

    :goto_0
    iget-object v3, p0, Le/a/a/r0/o;->j:Ljava/util/List;

    if-eqz v3, :cond_8

    move-object v0, v3

    :cond_8
    invoke-interface {v1, v2, v0}, Le/a/a/r0/p;->Pr(Ljava/util/List;Ljava/util/List;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public final ck()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/r0/o;->d:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "promotional_tab"

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_1
    const-string v0, "spam_tab"

    goto :goto_0

    :cond_2
    const-string v0, "important_tab"

    goto :goto_0

    :cond_3
    const-string v0, "others_tab"

    goto :goto_0

    :cond_4
    const-string v0, "personal_tab"

    .line 3
    :goto_0
    iget-object v1, p0, Le/a/a/r0/o;->m:Ljava/lang/String;

    const-string v2, "viewId"

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v2, v0, v1, v3}, Le/d/c/a/a;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Le/a/q2/y0/a/a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/a/a/r0/o;->p:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public final dk(IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p2}, Le/a/a/r0/p;->im(I)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {v0, p2, p1, p3}, Le/a/a/r0/p;->Aa(IIZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/r0/o;->r:Le/a/l4/c;

    invoke-interface {v0}, Le/a/l4/c;->I1()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/r0/p;

    if-eqz p1, :cond_1

    const p2, 0x7f120d5e

    invoke-interface {p1, p2}, Le/a/a/r0/p;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/r0/o;->q:Le/a/a/g/g0;

    invoke-interface {v0, p0}, Le/a/a/g/g0;->e(Le/a/a/g/g0$a;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/a/r0/o;->l:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/a/r0/o;->l:Z

    .line 2
    iget-object v1, p0, Le/a/a/r0/o;->q:Le/a/a/g/g0;

    invoke-interface {v1, p0}, Le/a/a/g/g0;->b(Le/a/a/g/g0$a;)V

    .line 3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/r0/p;

    if-eqz v1, :cond_0

    iget-object v2, p0, Le/a/a/r0/o;->o:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->c()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-interface {v1, v0}, Le/a/a/r0/p;->Zu(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/a/r0/o;->ck()V

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/a/r0/o;->m:Ljava/lang/String;

    return-void
.end method

.method public s2(Le/a/a/g/f0;Le/a/a/g/i0;)V
    .locals 2

    const-string v0, "unreadThreadsCount"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unseenTab"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Le/a/a/g/f0;->a:I

    .line 2
    iput v0, p0, Le/a/a/r0/o;->e:I

    .line 3
    iget v1, p1, Le/a/a/g/f0;->b:I

    .line 4
    iput v1, p0, Le/a/a/r0/o;->f:I

    .line 5
    iget v1, p1, Le/a/a/g/f0;->c:I

    .line 6
    iput v1, p0, Le/a/a/r0/o;->g:I

    .line 7
    iget v1, p1, Le/a/a/g/f0;->d:I

    .line 8
    iput v1, p0, Le/a/a/r0/o;->h:I

    .line 9
    iget-object v1, p1, Le/a/a/g/f0;->e:Ljava/util/List;

    .line 10
    iput-object v1, p0, Le/a/a/r0/o;->i:Ljava/util/List;

    .line 11
    iget-object p1, p1, Le/a/a/g/f0;->f:Ljava/util/List;

    .line 12
    iput-object p1, p0, Le/a/a/r0/o;->j:Ljava/util/List;

    .line 13
    invoke-virtual {p0}, Le/a/a/r0/o;->Ij()Ljava/util/List;

    move-result-object p1

    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 14
    iget-boolean v1, p2, Le/a/a/g/i0;->a:Z

    .line 15
    invoke-virtual {p0, v0, p1, v1}, Le/a/a/r0/o;->dk(IIZ)V

    .line 16
    invoke-virtual {p0}, Le/a/a/r0/o;->Ij()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/truecaller/messaging/data/types/InboxTab;->PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    iget p1, p0, Le/a/a/r0/o;->f:I

    invoke-virtual {p0}, Le/a/a/r0/o;->Ij()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 18
    iget-boolean v1, p2, Le/a/a/g/i0;->b:Z

    .line 19
    invoke-virtual {p0, p1, v0, v1}, Le/a/a/r0/o;->dk(IIZ)V

    .line 20
    :cond_0
    invoke-virtual {p0}, Le/a/a/r0/o;->Ij()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    iget p1, p0, Le/a/a/r0/o;->f:I

    invoke-virtual {p0}, Le/a/a/r0/o;->Ij()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 22
    iget-boolean v1, p2, Le/a/a/g/i0;->b:Z

    .line 23
    invoke-virtual {p0, p1, v0, v1}, Le/a/a/r0/o;->dk(IIZ)V

    :cond_1
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0}, Le/a/a/r0/o;->Ij()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 25
    iget-boolean v1, p2, Le/a/a/g/i0;->c:Z

    .line 26
    invoke-virtual {p0, p1, v0, v1}, Le/a/a/r0/o;->dk(IIZ)V

    .line 27
    iget p1, p0, Le/a/a/r0/o;->h:I

    invoke-virtual {p0}, Le/a/a/r0/o;->Ij()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->BUSINESS:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 28
    iget-boolean p2, p2, Le/a/a/g/i0;->d:Z

    .line 29
    invoke-virtual {p0, p1, v0, p2}, Le/a/a/r0/o;->dk(IIZ)V

    .line 30
    invoke-virtual {p0}, Le/a/a/r0/o;->bk()V

    return-void
.end method

.method public t9()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/a/r0/o;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/r0/p;->h6()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public x0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/a/r0/o;->k:Z

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/r0/p;->g5()V

    :cond_0
    return-void
.end method

.method public y0()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v0, v1}, Le/a/a/r0/p;->z0(Lcom/truecaller/messaging/data/types/InboxTab;)V

    :cond_0
    return-void
.end method

.method public z6(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inbox_tab"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/truecaller/messaging/data/types/InboxTab;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/truecaller/messaging/data/types/InboxTab;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/r0/p;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Le/a/a/r0/p;->z0(Lcom/truecaller/messaging/data/types/InboxTab;)V

    :cond_1
    const/4 v0, 0x0

    const-string v1, "unread_conv_state"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/p;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/a/r0/p;->F0()V

    :cond_2
    const-string v0, "AppUserInteraction.Context"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/a/r0/o;->m:Ljava/lang/String;

    return-void
.end method
