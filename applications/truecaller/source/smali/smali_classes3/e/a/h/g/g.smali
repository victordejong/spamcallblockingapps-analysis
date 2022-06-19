.class public final Le/a/h/g/g;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/g/d;
.implements Le/a/h/g/x;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/h/g/e;",
        ">;",
        "Le/a/h/g/d;",
        "Le/a/h/g/x;"
    }
.end annotation


# static fields
.field public static final synthetic y:[Ls1/a/l;


# instance fields
.field public final b:Le/a/h/g/n;

.field public final c:Le/a/h/b/d/b/k;

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/truecaller/data/entity/CallRecording;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Le/a/h/g/e;",
            "Lq3/a/p1;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/h/g/n;

.field public final g:Le/a/b0/q/h0;

.field public final h:Le/a/p5/c0;

.field public final i:Le/a/h/b/o;

.field public final j:Le/a/k0/a/h;

.field public final k:Le/a/h/g/b;

.field public final l:Le/a/p5/j0;

.field public final m:Le/a/h/g/l;

.field public final n:Le/a/h/b/f;

.field public final o:Le/a/r2/l;

.field public final p:Le/a/f4/g/j;

.field public final q:Ls1/w/f;

.field public final r:Le/a/k0/a/s;

.field public final s:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final t:Ls1/w/f;

.field public final u:Le/a/z2/a;

.field public final v:Le/a/k0/n/e/e;

.field public final w:Le/a/k0/i/a;

.field public final x:Le/a/x2/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/h/g/g;

    const-string v2, "callRecordingsCursor"

    const-string v3, "getCallRecordingsCursor()Lcom/truecaller/callhistory/data/cursor/HistoryEventCursor;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/h/g/g;->y:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/h/g/n;Le/a/b0/q/h0;Le/a/p5/c0;Le/a/h/b/o;Le/a/k0/a/h;Le/a/h/g/b;Le/a/p5/j0;Le/a/h/g/l;Le/a/h/b/f;Le/a/r2/l;Le/a/f4/g/j;Ls1/w/f;Le/a/k0/a/s;Lcom/truecaller/callrecording/CallRecordingManager;Ls1/w/f;Le/a/z2/a;Le/a/k0/n/e/e;Le/a/k0/i/a;Le/a/x2/a;)V
    .locals 16
    .param p11    # Le/a/f4/g/j;
        .annotation runtime Ljavax/inject/Named;
            value = "call_recording_bulk_searcher"
        .end annotation
    .end param
    .param p12    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p15    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

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

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "callRecordingDataHolder"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialNumberResolver"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactDetailOpenable"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingIntentDelegate"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "popupMenu"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toastUtil"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deletePrompter"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionModeHandler"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actorsThreads"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bulkSearcher"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiCoroutineContext"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaMetadataRetrieverProvider"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingManager"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutine"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeHelper"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingPlayerProvider"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordingAnalytics"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactAvatarXConfigProvider"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Le/a/o2/c;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Le/a/h/g/g;->f:Le/a/h/g/n;

    iput-object v2, v0, Le/a/h/g/g;->g:Le/a/b0/q/h0;

    iput-object v3, v0, Le/a/h/g/g;->h:Le/a/p5/c0;

    iput-object v4, v0, Le/a/h/g/g;->i:Le/a/h/b/o;

    iput-object v5, v0, Le/a/h/g/g;->j:Le/a/k0/a/h;

    iput-object v6, v0, Le/a/h/g/g;->k:Le/a/h/g/b;

    iput-object v7, v0, Le/a/h/g/g;->l:Le/a/p5/j0;

    iput-object v8, v0, Le/a/h/g/g;->m:Le/a/h/g/l;

    iput-object v9, v0, Le/a/h/g/g;->n:Le/a/h/b/f;

    iput-object v10, v0, Le/a/h/g/g;->o:Le/a/r2/l;

    iput-object v11, v0, Le/a/h/g/g;->p:Le/a/f4/g/j;

    iput-object v12, v0, Le/a/h/g/g;->q:Ls1/w/f;

    iput-object v13, v0, Le/a/h/g/g;->r:Le/a/k0/a/s;

    iput-object v14, v0, Le/a/h/g/g;->s:Lcom/truecaller/callrecording/CallRecordingManager;

    move-object/from16 v2, p15

    iput-object v2, v0, Le/a/h/g/g;->t:Ls1/w/f;

    iput-object v15, v0, Le/a/h/g/g;->u:Le/a/z2/a;

    move-object/from16 v2, p17

    move-object/from16 v3, p18

    iput-object v2, v0, Le/a/h/g/g;->v:Le/a/k0/n/e/e;

    iput-object v3, v0, Le/a/h/g/g;->w:Le/a/k0/i/a;

    move-object/from16 v2, p19

    iput-object v2, v0, Le/a/h/g/g;->x:Le/a/x2/a;

    .line 2
    iput-object v1, v0, Le/a/h/g/g;->b:Le/a/h/g/n;

    .line 3
    invoke-interface {v1, v0}, Le/a/h/g/n;->Jd(Le/a/h/g/d;)Le/a/h/b/d/b/k;

    move-result-object v1

    iput-object v1, v0, Le/a/h/g/g;->c:Le/a/h/b/d/b/k;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Le/a/h/g/g;->d:Ljava/util/HashMap;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Le/a/h/g/g;->e:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final A()Le/a/l0/u/d/b;
    .locals 3

    iget-object v0, p0, Le/a/h/g/g;->b:Le/a/h/g/n;

    sget-object v1, Le/a/h/g/g;->y:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/h/g/n;->t8(Le/a/h/g/g;Ls1/a/l;)Le/a/l0/u/d/b;

    move-result-object v0

    return-object v0
.end method

.method public final B(I)Lcom/truecaller/data/entity/HistoryEvent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/g/g;->A()Le/a/l0/u/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/h/g/g;->A()Le/a/l0/u/d/b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final C(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Le/a/h/g/g;->B(I)Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Le/a/h/g/g;->i:Le/a/h/b/o;

    .line 3
    sget-object v2, Lcom/truecaller/details_view/analytics/SourceType;->CallRecording:Lcom/truecaller/details_view/analytics/SourceType;

    .line 4
    invoke-interface {v1, p1, v2, v0, v0}, Le/a/h/b/o;->Bp(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/details_view/analytics/SourceType;ZZ)V

    .line 5
    iget-object p1, p0, Le/a/h/g/g;->w:Le/a/k0/i/a;

    sget-object v0, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->RECORDING_LIST:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    sget-object v1, Lcom/truecaller/callrecording/analytics/RecordingAction;->VIEW_PROFILE:Lcom/truecaller/callrecording/analytics/RecordingAction;

    invoke-interface {p1, v0, v1}, Le/a/k0/i/a;->e(Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;Lcom/truecaller/callrecording/analytics/RecordingAction;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final E(I)Ls1/s;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Le/a/h/g/g;->B(I)Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/h/g/g;->f:Le/a/h/g/n;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/h/g/n;->fb(Lcom/truecaller/data/entity/CallRecording;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 25

    move-object/from16 v10, p0

    move/from16 v11, p2

    .line 1
    move-object/from16 v12, p1

    check-cast v12, Le/a/h/g/e;

    const-string v0, "itemView"

    .line 2
    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/a/h/g/g;->A()Le/a/l0/u/d/b;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    const/4 v13, 0x1

    if-eq v0, v13, :cond_0

    goto/16 :goto_e

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Le/a/h/g/g;->A()Le/a/l0/u/d/b;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v14

    if-eqz v14, :cond_11

    const-string v0, "callRecordingsCursor?.historyEvent ?: return"

    invoke-static {v14, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v14, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result v7

    .line 7
    iget-object v0, v14, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v0, :cond_4

    if-nez v7, :cond_3

    const-string v1, "it"

    .line 8
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v13

    goto :goto_0

    :cond_1
    move/from16 v1, v16

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v1, v16

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v13

    :goto_2
    if-nez v1, :cond_4

    move-object v9, v0

    goto :goto_3

    :cond_4
    move-object v9, v15

    :goto_3
    if-eqz v7, :cond_5

    move-object v8, v15

    goto :goto_4

    :cond_5
    if-eqz v9, :cond_6

    move-object v8, v9

    goto :goto_4

    .line 9
    :cond_6
    iget-object v0, v14, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    move-object v8, v0

    .line 10
    :goto_4
    iget-object v0, v14, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 11
    invoke-static {v0}, Le/a/n/g0;->c0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move-object v0, v15

    .line 12
    :goto_5
    iget-object v1, v10, Le/a/h/g/g;->h:Le/a/p5/c0;

    iget-object v2, v10, Le/a/h/g/g;->g:Le/a/b0/q/h0;

    invoke-static {v0, v14, v1, v2}, Le/a/n/g0;->J0(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/HistoryEvent;Le/a/p5/c0;Le/a/b0/q/h0;)Lcom/truecaller/data/entity/Contact;

    move-result-object v6

    .line 13
    iget-object v5, v14, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    .line 14
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GUIUtils.bidiFormat(contact.displayNameOrNumber)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12, v0}, Le/a/h/g/e;->setName(Ljava/lang/String;)V

    .line 15
    iget-object v0, v10, Le/a/h/g/g;->x:Le/a/x2/a;

    invoke-virtual {v0, v6}, Le/a/x2/a;->b(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v0

    invoke-interface {v12, v0}, Le/a/h/g/e;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 16
    invoke-static {v6}, Le/a/n/g0;->c0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v10, Le/a/h/g/g;->u:Le/a/z2/a;

    invoke-interface {v0, v6}, Le/a/z2/a;->a(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v13

    goto :goto_6

    :cond_8
    move/from16 v0, v16

    :goto_6
    invoke-interface {v12, v0}, Le/a/h/g/e;->K(Z)V

    .line 17
    iget-wide v0, v14, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 18
    invoke-interface {v12, v0, v1}, Le/a/h/g/e;->T(J)V

    .line 19
    iget-boolean v0, v10, Le/a/o2/c;->a:Z

    if-eqz v0, :cond_a

    if-eqz v5, :cond_9

    .line 20
    iget-object v0, v10, Le/a/h/g/g;->f:Le/a/h/g/n;

    invoke-interface {v0, v5}, Le/a/h/g/n;->mb(Lcom/truecaller/data/entity/CallRecording;)Z

    move-result v0

    goto :goto_7

    :cond_9
    move/from16 v0, v16

    :goto_7
    if-eqz v0, :cond_a

    move v0, v13

    goto :goto_8

    :cond_a
    move/from16 v0, v16

    :goto_8
    invoke-interface {v12, v0}, Le/a/h/g/e;->b(Z)V

    .line 21
    iget-boolean v0, v10, Le/a/o2/c;->a:Z

    if-nez v0, :cond_b

    if-nez v7, :cond_b

    move v0, v13

    goto :goto_9

    :cond_b
    move/from16 v0, v16

    .line 22
    :goto_9
    invoke-interface {v12, v0}, Le/a/h/g/e;->q(Z)V

    if-eqz v5, :cond_d

    .line 23
    iget-object v0, v10, Le/a/h/g/g;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_c

    .line 24
    invoke-interface {v12, v0}, Le/a/h/g/e;->C2(Ljava/lang/Long;)V

    move-object/from16 v23, v6

    move-object v13, v8

    move-object/from16 v24, v9

    goto :goto_a

    .line 25
    :cond_c
    sget-object v17, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v4, v10, Le/a/h/g/g;->q:Ls1/w/f;

    const/16 v19, 0x0

    new-instance v20, Le/a/h/g/f;

    const/4 v1, 0x0

    move-object/from16 v0, v20

    move-object v2, v12

    move-object/from16 v3, p0

    move-object/from16 v18, v4

    move-object v4, v6

    move-object/from16 v21, v5

    move-object v5, v14

    move-object/from16 v23, v6

    move-object/from16 v6, v21

    move-object v13, v8

    move-object v8, v12

    move-object/from16 v24, v9

    invoke-direct/range {v0 .. v9}, Le/a/h/g/f;-><init>(Ls1/w/d;Le/a/h/g/e;Le/a/h/g/g;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/data/entity/CallRecording;ZLe/a/h/g/e;Ljava/lang/String;)V

    const/16 v21, 0x2

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    .line 26
    iget-object v1, v10, Le/a/h/g/g;->e:Ljava/util/HashMap;

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    move-object/from16 v0, v24

    goto :goto_b

    :cond_d
    move-object/from16 v23, v6

    move-object v13, v8

    move-object v0, v9

    .line 27
    :goto_b
    invoke-interface {v12, v0}, Le/a/h/g/e;->j(Ljava/lang/String;)V

    .line 28
    iget-object v0, v14, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz v0, :cond_e

    .line 29
    iget-wide v0, v0, Lcom/truecaller/data/entity/CallRecording;->a:J

    goto :goto_c

    :cond_e
    const-wide/16 v0, -0x1

    .line 30
    :goto_c
    invoke-interface {v12, v0, v1}, Le/a/h/g/e;->R1(J)V

    .line 31
    invoke-static/range {v23 .. v23}, Le/a/n/g0;->C0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v13, :cond_f

    iget-object v0, v10, Le/a/h/g/g;->c:Le/a/h/b/d/b/k;

    invoke-interface {v0, v11}, Le/a/h/b/d/b/k;->b(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 32
    iget-object v0, v10, Le/a/h/g/g;->p:Le/a/f4/g/j;

    invoke-interface {v0, v13, v15, v15}, Le/a/f4/g/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, v10, Le/a/h/g/g;->p:Le/a/f4/g/j;

    invoke-interface {v0, v13}, Le/a/f4/g/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v10, Le/a/h/g/g;->c:Le/a/h/b/d/b/k;

    invoke-interface {v0, v13, v11}, Le/a/h/b/d/b/k;->c(Ljava/lang/String;I)V

    .line 34
    :cond_f
    iget-object v0, v10, Le/a/h/g/g;->p:Le/a/f4/g/j;

    invoke-interface {v0, v13}, Le/a/f4/g/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v10, Le/a/h/g/g;->c:Le/a/h/b/d/b/k;

    invoke-interface {v0, v11}, Le/a/h/b/d/b/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v13, 0x1

    goto :goto_d

    :cond_10
    move/from16 v13, v16

    .line 35
    :goto_d
    invoke-interface {v12, v13}, Le/a/h/g/e;->s(Z)V

    :cond_11
    :goto_e
    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/h/g/g;->C(I)Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/g/g;->A()Le/a/l0/u/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/h/g/g;->A()Le/a/l0/u/d/b;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/h/g/g;->A()Le/a/l0/u/d/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3
    :cond_1
    invoke-virtual {p0}, Le/a/h/g/g;->A()Le/a/l0/u/d/b;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz p1, :cond_2

    .line 5
    iget-wide v1, p1, Lcom/truecaller/data/entity/CallRecording;->a:J

    :cond_2
    :goto_0
    return-wide v1
.end method

.method public t(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Le/a/h/g/g;->B(I)Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/h/g/g;->m:Le/a/h/g/l;

    const-string v1, "callRecording"

    .line 4
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Le/a/h/g/g$a;

    invoke-direct {v1, p0}, Le/a/h/g/g$a;-><init>(Le/a/h/g/g;)V

    .line 6
    invoke-interface {v0, p1, v1}, Le/a/h/g/l;->re(Ljava/lang/Object;Le/a/h/g/m;)V

    :cond_0
    return-void
.end method

.method public u(I)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Le/a/h/g/g;->B(I)Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p1, Lcom/truecaller/data/entity/CallRecording;->c:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 4
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 5
    iget-object v0, p0, Le/a/h/g/g;->j:Le/a/k0/a/h;

    .line 6
    invoke-interface {v0, p1}, Le/a/k0/a/h;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 7
    iget-object v1, p0, Le/a/h/g/g;->l:Le/a/p5/j0;

    const v2, 0x7f12027f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {v0, p1}, Le/a/k0/a/h;->c(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object v0, p0, Le/a/h/g/g;->l:Le/a/p5/j0;

    const v1, 0x7f12094a

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Le/a/h/g/g;->w:Le/a/k0/i/a;

    sget-object v0, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->RECORDING_LIST:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    sget-object v1, Lcom/truecaller/callrecording/analytics/RecordingAction;->SHARE:Lcom/truecaller/callrecording/analytics/RecordingAction;

    invoke-interface {p1, v0, v1}, Le/a/k0/i/a;->e(Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;Lcom/truecaller/callrecording/analytics/RecordingAction;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public v(Le/a/o2/h;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Le/a/o2/h;->b:I

    .line 2
    iget-object v1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v2, "ItemEvent.LONG_CLICKED"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 4
    iget-boolean p1, p0, Le/a/o2/c;->a:Z

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/h/g/g;->n:Le/a/h/b/f;

    invoke-interface {p1, v3}, Le/a/h/b/f;->h8(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 6
    iput-boolean v3, p0, Le/a/o2/c;->a:Z

    .line 7
    invoke-virtual {p0, v0}, Le/a/h/g/g;->E(I)Ls1/s;

    goto/16 :goto_2

    :cond_1
    const-string v2, "ItemEvent.CLICKED"

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iget-boolean p1, p0, Le/a/o2/c;->a:Z

    if-eqz p1, :cond_9

    .line 10
    invoke-virtual {p0, v0}, Le/a/h/g/g;->E(I)Ls1/s;

    goto/16 :goto_2

    .line 11
    :cond_2
    sget-object v2, Lcom/truecaller/calling/ActionType;->PROFILE:Lcom/truecaller/calling/ActionType;

    invoke-virtual {v2}, Lcom/truecaller/calling/ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Le/a/h/g/g;->C(I)Z

    move-result v3

    goto/16 :goto_2

    .line 13
    :cond_3
    sget-object v2, Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;->PLAY_CALL_RECORDING:Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;

    invoke-virtual {v2}, Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 14
    iget-boolean p1, p0, Le/a/o2/c;->a:Z

    if-eqz p1, :cond_4

    if-eqz p1, :cond_9

    .line 15
    invoke-virtual {p0, v0}, Le/a/h/g/g;->E(I)Ls1/s;

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p0, v0}, Le/a/h/g/g;->B(I)Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 17
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz p1, :cond_9

    .line 18
    iget-object v0, p0, Le/a/h/g/g;->v:Le/a/k0/n/e/e;

    invoke-interface {v0}, Le/a/k0/n/e/e;->isEnabled()Z

    move-result v0

    const-string v1, "it"

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Le/a/h/g/g;->v:Le/a/k0/n/e/e;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$uriPath"

    .line 20
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    :try_start_0
    iget-object p1, p1, Lcom/truecaller/data/entity/CallRecording;->c:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 23
    :goto_0
    instance-of v1, p1, Ls1/l$a;

    if-eqz v1, :cond_5

    const/4 p1, 0x0

    .line 24
    :cond_5
    check-cast p1, Landroid/net/Uri;

    .line 25
    sget-object v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->RECORDING_LIST:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    invoke-interface {v0, p1, v1}, Le/a/k0/n/e/e;->b(Landroid/net/Uri;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V

    goto :goto_2

    .line 26
    :cond_6
    iget-object v0, p0, Le/a/h/g/g;->s:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->RECORDING_LIST:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    invoke-interface {v0, p1, v1}, Lcom/truecaller/callrecording/CallRecordingManager;->C(Lcom/truecaller/data/entity/CallRecording;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V

    goto :goto_2

    .line 27
    :cond_7
    sget-object v2, Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;->SHOW_CALL_RECORDING_MENU_OPTIONS:Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;

    invoke-virtual {v2}, Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 28
    iget-object p1, p1, Le/a/o2/h;->d:Landroid/view/View;

    .line 29
    iget-object v1, p0, Le/a/h/g/g;->k:Le/a/h/g/b;

    invoke-interface {v1, v0, p1, p0}, Le/a/h/g/b;->a(ILandroid/view/View;Le/a/h/g/x;)V

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v3, 0x0

    :cond_9
    :goto_2
    return v3
.end method

.method public y(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/h/g/e;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/h/g/g;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq3/a/p1;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
