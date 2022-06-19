.class public final Le/a/d0/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d0/b/d;


# instance fields
.field public final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Le/a/d0/b/i;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Landroid/telecom/TelecomManager;

.field public final e:Lq3/a/e1;

.field public final f:Le/a/p5/g;

.field public final g:Lcom/truecaller/settings/CallingSettings;

.field public final h:Le/a/b0/q/l0;

.field public final i:Le/a/h0/j;

.field public final j:Le/a/e4/p;

.field public final k:Le/a/b0/e/l;

.field public final l:Le/a/b0/q/z;

.field public final m:Le/a/o5/x1;

.field public final n:Le/a/p5/c;

.field public final o:Le/a/p5/a0;

.field public final p:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Le/a/d/f;

.field public final r:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

.field public final s:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/p5/g;Lcom/truecaller/settings/CallingSettings;Le/a/b0/q/l0;Le/a/h0/j;Le/a/e4/p;Le/a/b0/e/l;Le/a/b0/q/z;Le/a/o5/x1;Le/a/p5/c;Le/a/p5/a0;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/r2/f;Le/a/d/f;Lcom/truecaller/callerid/CallerIdPerformanceTracker;Landroid/content/Context;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/g;",
            "Lcom/truecaller/settings/CallingSettings;",
            "Le/a/b0/q/l0;",
            "Le/a/h0/j;",
            "Le/a/e4/p;",
            "Le/a/b0/e/l;",
            "Le/a/b0/q/z;",
            "Le/a/o5/x1;",
            "Le/a/p5/c;",
            "Le/a/p5/a0;",
            "Lcom/truecaller/callrecording/CallRecordingManager;",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;",
            "Le/a/d/f;",
            "Lcom/truecaller/callerid/CallerIdPerformanceTracker;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

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

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    const-string v15, "deviceInfoUtil"

    invoke-static {v1, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "callingSettings"

    invoke-static {v2, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "timestampUtil"

    invoke-static {v3, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "filterManager"

    invoke-static {v4, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "multiSimManager"

    invoke-static {v5, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "tcAccountManager"

    invoke-static {v6, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "phoneNumberHelper"

    invoke-static {v7, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "usageChecker"

    invoke-static {v8, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "clock"

    invoke-static {v9, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "permissionUtil"

    invoke-static {v10, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "callRecordingManager"

    move-object/from16 v10, p11

    invoke-static {v10, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "historyManager"

    invoke-static {v11, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "voip"

    invoke-static {v12, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "perfTracker"

    invoke-static {v13, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "context"

    invoke-static {v14, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Le/a/d0/b/a;->f:Le/a/p5/g;

    iput-object v2, v0, Le/a/d0/b/a;->g:Lcom/truecaller/settings/CallingSettings;

    iput-object v3, v0, Le/a/d0/b/a;->h:Le/a/b0/q/l0;

    iput-object v4, v0, Le/a/d0/b/a;->i:Le/a/h0/j;

    iput-object v5, v0, Le/a/d0/b/a;->j:Le/a/e4/p;

    iput-object v6, v0, Le/a/d0/b/a;->k:Le/a/b0/e/l;

    iput-object v7, v0, Le/a/d0/b/a;->l:Le/a/b0/q/z;

    iput-object v8, v0, Le/a/d0/b/a;->m:Le/a/o5/x1;

    iput-object v9, v0, Le/a/d0/b/a;->n:Le/a/p5/c;

    move-object/from16 v1, p10

    iput-object v1, v0, Le/a/d0/b/a;->o:Le/a/p5/a0;

    iput-object v11, v0, Le/a/d0/b/a;->p:Le/a/r2/f;

    iput-object v12, v0, Le/a/d0/b/a;->q:Le/a/d/f;

    iput-object v13, v0, Le/a/d0/b/a;->r:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    iput-object v14, v0, Le/a/d0/b/a;->s:Landroid/content/Context;

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Le/a/d0/b/a;->a:Ljava/util/LinkedList;

    .line 3
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, v0, Le/a/d0/b/a;->b:Ljava/util/Stack;

    .line 4
    invoke-interface/range {p11 .. p11}, Le/a/k0/a/e;->v()Z

    move-result v1

    iput-boolean v1, v0, Le/a/d0/b/a;->c:Z

    const-string v1, "telecom"

    .line 5
    invoke-virtual {v14, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.telecom.TelecomManager"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/telecom/TelecomManager;

    iput-object v1, v0, Le/a/d0/b/a;->d:Landroid/telecom/TelecomManager;

    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "Executors.newSingleThreadExecutor()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v2, Lq3/a/g1;

    invoke-direct {v2, v1}, Lq3/a/g1;-><init>(Ljava/util/concurrent/Executor;)V

    .line 8
    iput-object v2, v0, Le/a/d0/b/a;->e:Lq3/a/e1;

    return-void
.end method

.method public static final c(Le/a/d0/b/a;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d0/b/a;->r:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    sget-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CPROC_HASMULTISIM:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    new-instance v2, Le/a/d0/b/g;

    invoke-direct {v2, p0}, Le/a/d0/b/g;-><init>(Le/a/d0/b/a;)V

    invoke-interface {v0, v1, v2}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->c(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/d0/b/a;->r:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    sget-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CPROC_GETSIMINDEX:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    new-instance v2, Le/a/d0/b/f;

    invoke-direct {v2, p0, p1}, Le/a/d0/b/f;-><init>(Le/a/d0/b/a;I)V

    invoke-interface {v0, v1, v2}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->c(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static final d(Le/a/d0/b/a;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x23

    const/4 v1, 0x6

    .line 2
    invoke-static {p1, v0, p0, p0, v1}, Ls1/f0/v;->G(Ljava/lang/CharSequence;CIZI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method


# virtual methods
.method public a(Le/a/d0/b/i$c;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d0/b/i$c;",
            "Ls1/w/d<",
            "-",
            "Le/a/d0/b/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d0/b/a;->e:Lq3/a/e1;

    new-instance v1, Le/a/d0/b/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/d0/b/a$b;-><init>(Le/a/d0/b/a;Le/a/d0/b/i$c;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;Le/a/d0/b/i;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/d0/b/i;",
            "Ls1/w/d<",
            "-",
            "Le/a/d0/b/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d0/b/a;->e:Lq3/a/e1;

    new-instance v1, Le/a/d0/b/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Le/a/d0/b/a$a;-><init>(Le/a/d0/b/a;Le/a/d0/b/i;Landroid/content/Context;Ls1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d0/b/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "lastStates.iterator()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "it.next()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/a/d0/b/i;

    .line 4
    iget-object v1, v1, Le/a/d0/b/i;->a:Ljava/lang/String;

    .line 5
    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
