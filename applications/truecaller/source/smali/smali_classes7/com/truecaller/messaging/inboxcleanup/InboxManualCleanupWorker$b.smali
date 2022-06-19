.class public final Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->r()Landroidx/work/ListenableWorker$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.inboxcleanup.InboxManualCleanupWorker$work$1"
    f = "InboxManualCleanupWorker.kt"
    l = {
        0x64,
        0x6a,
        0x70,
        0x7c,
        0x88,
        0x94,
        0x9f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:I

.field public final synthetic o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;

    iget-object v0, p0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;-><init>(Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;

    iget-object v0, p0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;-><init>(Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->n:I

    const/4 v3, 0x1

    const/16 v4, 0x64

    const/4 v5, 0x0

    const-string v7, "notificationHelper"

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v1, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->h:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/a0;

    iget-object v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->g:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/a0;

    iget-object v4, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->f:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/a0;

    iget-object v8, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->e:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v3, v0

    goto/16 :goto_c

    :pswitch_1
    iget-object v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->m:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->l:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v8, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->k:Ljava/lang/Object;

    check-cast v8, Ls1/z/c/a0;

    iget-object v9, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->j:Ljava/lang/Object;

    check-cast v9, Ls1/z/c/a0;

    iget-object v10, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->i:Ljava/lang/Object;

    check-cast v10, Ls1/z/c/a0;

    iget-object v11, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->h:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->g:Ljava/lang/Object;

    check-cast v12, Ls1/z/c/a0;

    iget-object v13, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->f:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v14, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->e:Ljava/lang/Object;

    check-cast v14, Ln3/k/a/q;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v3, v1

    move-object v6, v4

    move-object v1, v8

    move-object v8, v11

    move-object/from16 v11, p1

    move-object v4, v0

    goto/16 :goto_b

    :pswitch_2
    iget-object v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->m:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v8, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->l:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->k:Ljava/lang/Object;

    check-cast v9, Ls1/z/c/a0;

    iget-object v10, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->j:Ljava/lang/Object;

    check-cast v10, Ls1/z/c/a0;

    iget-object v11, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->i:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->h:Ljava/lang/Object;

    check-cast v12, Ls1/z/c/a0;

    iget-object v13, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->g:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v14, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->f:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    iget-object v15, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->e:Ljava/lang/Object;

    check-cast v15, Ln3/k/a/q;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    move-object v3, v0

    goto/16 :goto_9

    :pswitch_3
    iget-object v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->m:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v8, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->l:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->k:Ljava/lang/Object;

    check-cast v9, Ls1/z/c/a0;

    iget-object v10, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->j:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->i:Ljava/lang/Object;

    check-cast v11, Ls1/z/c/a0;

    iget-object v12, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->h:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->g:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v14, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->f:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    iget-object v15, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->e:Ljava/lang/Object;

    check-cast v15, Ln3/k/a/q;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    move-object v3, v0

    goto/16 :goto_6

    :pswitch_4
    iget-object v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v8, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->g:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->f:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->e:Ljava/lang/Object;

    check-cast v11, Ln3/k/a/q;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v8, p1

    goto/16 :goto_4

    :pswitch_5
    iget-object v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v8, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->g:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->f:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->e:Ljava/lang/Object;

    check-cast v10, Ln3/k/a/q;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v8, p1

    goto/16 :goto_2

    :pswitch_6
    iget-object v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v8, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->f:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->e:Ljava/lang/Object;

    check-cast v9, Ln3/k/a/q;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v8, p1

    goto :goto_0

    :pswitch_7
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    .line 5
    iget-object v2, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->c:Le/a/a/e/o;

    if-eqz v2, :cond_28

    .line 6
    invoke-interface {v2}, Le/a/a/e/o;->f()Ln3/k/a/q;

    move-result-object v9

    .line 7
    iget-object v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v9}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v8

    const-string v10, "notificationBuilder.build()"

    invoke-static {v8, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v10, Ln3/m0/i;

    const v11, 0x7f0a09f6

    invoke-direct {v10, v11, v8}, Ln3/m0/i;-><init>(ILandroid/app/Notification;)V

    invoke-virtual {v2, v10}, Landroidx/work/ListenableWorker;->setForegroundAsync(Ln3/m0/i;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v8, Lw3/b/a/b;

    invoke-direct {v8}, Lw3/b/a/b;-><init>()V

    .line 11
    iget-object v10, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v10}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->v()Le/a/a/i0;

    move-result-object v10

    invoke-interface {v10}, Le/a/a/i0;->R1()I

    move-result v10

    invoke-virtual {v8, v10}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v8

    const-string v10, "DateTime.now().minusDays\u2026s.manualCleanupOtpPeriod)"

    invoke-static {v8, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-wide v10, v8, Lw3/b/a/e0/e;->a:J

    .line 13
    iget-object v8, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v8}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->v()Le/a/a/i0;

    move-result-object v8

    invoke-interface {v8}, Le/a/a/i0;->T1()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 14
    iget-object v8, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v8}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->u()Le/a/a/e/m;

    move-result-object v8

    iput-object v9, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->e:Ljava/lang/Object;

    iput-object v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->f:Ljava/lang/Object;

    iput-object v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->g:Ljava/lang/Object;

    iput v3, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->n:I

    invoke-interface {v8, v10, v11, v0}, Le/a/a/e/m;->d(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_0

    return-object v1

    :cond_0
    move-object v10, v9

    move-object v9, v2

    :goto_0
    check-cast v8, Ljava/util/Collection;

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    move-object v10, v9

    move-object v9, v2

    .line 15
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v8, Lw3/b/a/b;

    invoke-direct {v8}, Lw3/b/a/b;-><init>()V

    .line 17
    iget-object v11, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v11}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->v()Le/a/a/i0;

    move-result-object v11

    invoke-interface {v11}, Le/a/a/i0;->k0()I

    move-result v11

    invoke-virtual {v8, v11}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v8

    const-string v11, "DateTime.now().minusDays\u2026CleanupPromotionalPeriod)"

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-wide v11, v8, Lw3/b/a/e0/e;->a:J

    .line 19
    iget-object v8, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v8}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->v()Le/a/a/i0;

    move-result-object v8

    invoke-interface {v8}, Le/a/a/i0;->L1()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v8}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->o()Le/a/u3/g;

    move-result-object v8

    invoke-virtual {v8}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object v8

    invoke-interface {v8}, Le/a/u3/b;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 20
    iget-object v8, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v8}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->u()Le/a/a/e/m;

    move-result-object v8

    iput-object v10, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->e:Ljava/lang/Object;

    iput-object v9, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->f:Ljava/lang/Object;

    iput-object v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->g:Ljava/lang/Object;

    iput-object v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->h:Ljava/lang/Object;

    const/4 v13, 0x2

    iput v13, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->n:I

    invoke-interface {v8, v11, v12, v0}, Le/a/a/e/m;->n(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_2

    return-object v1

    :cond_2
    move-object v11, v10

    move-object v10, v9

    move-object v9, v2

    :goto_2
    check-cast v8, Ljava/util/Collection;

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_3
    move-object v11, v10

    move-object v10, v9

    move-object v9, v2

    .line 21
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v8, Lw3/b/a/b;

    invoke-direct {v8}, Lw3/b/a/b;-><init>()V

    .line 23
    iget-object v12, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v12}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->v()Le/a/a/i0;

    move-result-object v12

    invoke-interface {v12}, Le/a/a/i0;->y()I

    move-result v12

    invoke-virtual {v8, v12}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v8

    const-string v12, "DateTime.now().minusDays\u2026.manualCleanupSpamPeriod)"

    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-wide v12, v8, Lw3/b/a/e0/e;->a:J

    .line 25
    iget-object v8, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v8}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->v()Le/a/a/i0;

    move-result-object v8

    invoke-interface {v8}, Le/a/a/i0;->m3()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 26
    iget-object v8, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v8}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->u()Le/a/a/e/m;

    move-result-object v8

    iput-object v11, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->e:Ljava/lang/Object;

    iput-object v10, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->f:Ljava/lang/Object;

    iput-object v9, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->g:Ljava/lang/Object;

    iput-object v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->h:Ljava/lang/Object;

    iput-object v2, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->i:Ljava/lang/Object;

    const/4 v14, 0x3

    iput v14, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->n:I

    invoke-interface {v8, v12, v13, v0}, Le/a/a/e/m;->g(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_4

    return-object v1

    :cond_4
    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v2

    :goto_4
    check-cast v8, Ljava/util/Collection;

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v2, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    .line 27
    :cond_5
    invoke-static {v10, v2}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v9}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    .line 28
    new-instance v12, Ls1/z/c/a0;

    invoke-direct {v12}, Ls1/z/c/a0;-><init>()V

    iput v5, v12, Ls1/z/c/a0;->a:I

    .line 29
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v14, Ls1/z/c/a0;

    invoke-direct {v14}, Ls1/z/c/a0;-><init>()V

    iput v5, v14, Ls1/z/c/a0;->a:I

    .line 31
    invoke-static {v10, v4}, Ls1/u/i;->k(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v10

    .line 32
    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v15, v11

    move-object v11, v12

    move-object v12, v8

    move-object v8, v10

    move-object v10, v13

    move-object v13, v2

    move-object v2, v0

    move-object/from16 v17, v14

    move-object v14, v9

    move-object/from16 v9, v17

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/util/List;

    .line 33
    sget-boolean v16, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->i:Z

    if-nez v16, :cond_9

    .line 34
    iget-object v6, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v6}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->t()Le/a/p5/g;

    move-result-object v6

    invoke-interface {v6}, Le/a/p5/g;->c()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v6}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->w()Le/a/h5/w;

    move-result-object v6

    invoke-interface {v6}, Le/a/h5/w;->j()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_7

    .line 35
    :cond_6
    iget-object v6, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v6}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->u()Le/a/a/e/m;

    move-result-object v6

    iput-object v15, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->e:Ljava/lang/Object;

    iput-object v14, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->f:Ljava/lang/Object;

    iput-object v13, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->g:Ljava/lang/Object;

    iput-object v12, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->h:Ljava/lang/Object;

    iput-object v11, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->i:Ljava/lang/Object;

    iput-object v10, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->j:Ljava/lang/Object;

    iput-object v9, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->k:Ljava/lang/Object;

    iput-object v8, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->l:Ljava/lang/Object;

    iput-object v3, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->m:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->n:I

    invoke-interface {v6, v3, v2}, Le/a/a/e/m;->m(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_7

    return-object v1

    :cond_7
    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    :goto_6
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 36
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 37
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_8

    .line 38
    iget v4, v9, Ls1/z/c/a0;->a:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v4

    iput v6, v9, Ls1/z/c/a0;->a:I

    .line 39
    iget v4, v11, Ls1/z/c/a0;->a:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v4

    iput v2, v11, Ls1/z/c/a0;->a:I

    .line 40
    iget-object v4, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v15, v2, v6}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->s(Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;Ln3/k/a/q;II)V

    :cond_8
    move-object v2, v3

    :cond_9
    :goto_7
    const/4 v3, 0x1

    const/16 v4, 0x64

    goto/16 :goto_5

    .line 41
    :cond_a
    new-instance v3, Ls1/z/c/a0;

    invoke-direct {v3}, Ls1/z/c/a0;-><init>()V

    iput v5, v3, Ls1/z/c/a0;->a:I

    const/16 v4, 0x64

    .line 42
    invoke-static {v14, v4}, Ls1/u/i;->k(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v6

    .line 43
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v8, v4

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v3

    :cond_b
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 44
    sget-boolean v4, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->i:Z

    if-nez v4, :cond_b

    .line 45
    iget-object v4, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v4}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->t()Le/a/p5/g;

    move-result-object v4

    invoke-interface {v4}, Le/a/p5/g;->c()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v4}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->w()Le/a/h5/w;

    move-result-object v4

    invoke-interface {v4}, Le/a/h5/w;->j()Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_8

    .line 46
    :cond_c
    iget-object v4, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v4}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->u()Le/a/a/e/m;

    move-result-object v4

    iput-object v15, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->e:Ljava/lang/Object;

    iput-object v14, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->f:Ljava/lang/Object;

    iput-object v13, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->g:Ljava/lang/Object;

    iput-object v12, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->h:Ljava/lang/Object;

    iput-object v11, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->i:Ljava/lang/Object;

    iput-object v10, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->j:Ljava/lang/Object;

    iput-object v9, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->k:Ljava/lang/Object;

    iput-object v8, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->l:Ljava/lang/Object;

    iput-object v3, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->m:Ljava/lang/Object;

    const/4 v6, 0x5

    iput v6, v2, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->n:I

    invoke-interface {v4, v3, v2}, Le/a/a/e/m;->m(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_d

    return-object v1

    :cond_d
    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    :goto_9
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 47
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 48
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_e

    .line 49
    iget v4, v9, Ls1/z/c/a0;->a:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v4

    iput v6, v9, Ls1/z/c/a0;->a:I

    .line 50
    iget v4, v12, Ls1/z/c/a0;->a:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v4

    iput v2, v12, Ls1/z/c/a0;->a:I

    .line 51
    iget-object v4, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v15, v2, v6}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->s(Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;Ln3/k/a/q;II)V

    :cond_e
    move-object v2, v3

    goto :goto_8

    .line 52
    :cond_f
    new-instance v3, Ls1/z/c/a0;

    invoke-direct {v3}, Ls1/z/c/a0;-><init>()V

    iput v5, v3, Ls1/z/c/a0;->a:I

    const/16 v4, 0x64

    .line 53
    invoke-static {v14, v4}, Ls1/u/i;->k(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    .line 54
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v8, v11

    move-object v14, v15

    move-object/from16 v17, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v3, v17

    :cond_10
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 55
    sget-boolean v11, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->i:Z

    if-nez v11, :cond_10

    .line 56
    iget-object v11, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v11}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->t()Le/a/p5/g;

    move-result-object v11

    invoke-interface {v11}, Le/a/p5/g;->c()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v11}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->w()Le/a/h5/w;

    move-result-object v11

    invoke-interface {v11}, Le/a/h5/w;->j()Z

    move-result v11

    if-nez v11, :cond_11

    goto :goto_a

    .line 57
    :cond_11
    iget-object v11, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v11}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->u()Le/a/a/e/m;

    move-result-object v11

    iput-object v14, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->e:Ljava/lang/Object;

    iput-object v13, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->f:Ljava/lang/Object;

    iput-object v12, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->g:Ljava/lang/Object;

    iput-object v8, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->h:Ljava/lang/Object;

    iput-object v10, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->i:Ljava/lang/Object;

    iput-object v9, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->j:Ljava/lang/Object;

    iput-object v1, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->k:Ljava/lang/Object;

    iput-object v4, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->l:Ljava/lang/Object;

    iput-object v6, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->m:Ljava/lang/Object;

    const/4 v15, 0x6

    iput v15, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->n:I

    invoke-interface {v11, v6, v3}, Le/a/a/e/m;->m(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v2, :cond_12

    return-object v2

    :cond_12
    move-object/from16 v17, v3

    move-object v3, v2

    move-object v2, v6

    move-object v6, v4

    move-object/from16 v4, v17

    :goto_b
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 58
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 59
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_13

    .line 60
    iget v11, v1, Ls1/z/c/a0;->a:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    add-int/2addr v15, v11

    iput v15, v1, Ls1/z/c/a0;->a:I

    .line 61
    iget v11, v12, Ls1/z/c/a0;->a:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v11

    iput v2, v12, Ls1/z/c/a0;->a:I

    .line 62
    iget-object v11, v4, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v11, v14, v2, v15}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->s(Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;Ln3/k/a/q;II)V

    :cond_13
    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    goto :goto_a

    :cond_14
    const-wide/16 v11, 0x1f4

    .line 63
    iput-object v8, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->e:Ljava/lang/Object;

    iput-object v10, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->f:Ljava/lang/Object;

    iput-object v9, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->g:Ljava/lang/Object;

    iput-object v1, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->h:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->i:Ljava/lang/Object;

    iput-object v4, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->j:Ljava/lang/Object;

    iput-object v4, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->k:Ljava/lang/Object;

    iput-object v4, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->l:Ljava/lang/Object;

    iput-object v4, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->m:Ljava/lang/Object;

    const/4 v4, 0x7

    iput v4, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->n:I

    invoke-static {v11, v12, v3}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_15

    return-object v2

    :cond_15
    move-object v2, v9

    move-object v4, v10

    .line 64
    :goto_c
    instance-of v6, v8, Ljava/util/Collection;

    if-eqz v6, :cond_16

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_d

    .line 65
    :cond_16
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 66
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 67
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_17

    goto :goto_e

    :cond_18
    :goto_d
    const/4 v5, 0x1

    :goto_e
    if-eqz v5, :cond_19

    iget-object v5, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v5}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->v()Le/a/a/i0;

    move-result-object v5

    invoke-interface {v5}, Le/a/a/i0;->i()V

    goto :goto_f

    .line 68
    :cond_19
    iget-object v5, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    invoke-virtual {v5}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->v()Le/a/a/i0;

    move-result-object v5

    invoke-interface {v5}, Le/a/a/i0;->R()V

    .line 69
    :goto_f
    iget-object v5, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    iget v6, v4, Ls1/z/c/a0;->a:I

    iget v8, v2, Ls1/z/c/a0;->a:I

    iget v9, v1, Ls1/z/c/a0;->a:I

    .line 70
    iget-object v5, v5, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->a:Le/a/a/i0;

    const-string v10, "messageSettings"

    if-eqz v5, :cond_27

    const/4 v11, 0x1

    .line 71
    invoke-interface {v5, v11}, Le/a/a/i0;->p0(Z)V

    .line 72
    new-instance v11, Lw3/b/a/b;

    invoke-direct {v11}, Lw3/b/a/b;-><init>()V

    .line 73
    invoke-interface {v5, v11}, Le/a/a/i0;->G(Lw3/b/a/b;)V

    .line 74
    invoke-interface {v5, v6}, Le/a/a/i0;->h2(I)V

    .line 75
    invoke-interface {v5, v8}, Le/a/a/i0;->w3(I)V

    .line 76
    invoke-interface {v5, v9}, Le/a/a/i0;->k1(I)V

    .line 77
    invoke-interface {v5}, Le/a/a/i0;->K2()I

    move-result v11

    add-int/2addr v11, v6

    invoke-interface {v5, v11}, Le/a/a/i0;->Y(I)V

    .line 78
    invoke-interface {v5}, Le/a/a/i0;->c1()I

    move-result v6

    add-int/2addr v6, v8

    invoke-interface {v5, v6}, Le/a/a/i0;->q(I)V

    .line 79
    invoke-interface {v5}, Le/a/a/i0;->E2()I

    move-result v6

    add-int/2addr v6, v9

    invoke-interface {v5, v6}, Le/a/a/i0;->Z2(I)V

    .line 80
    iget-object v5, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    .line 81
    iget-object v5, v5, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->h:Landroid/content/Context;

    .line 82
    invoke-static {v5}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v5

    .line 83
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.truecaller.inboxcleanup.CLEANUP_DONE"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    iget v8, v4, Ls1/z/c/a0;->a:I

    const-string v9, "deleted_otp"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 85
    iget v8, v2, Ls1/z/c/a0;->a:I

    const-string v9, "deleted_promotional"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 86
    iget v8, v1, Ls1/z/c/a0;->a:I

    const-string v9, "deleted_spam"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 87
    invoke-virtual {v5, v6}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    .line 88
    iget-object v5, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    iget v6, v4, Ls1/z/c/a0;->a:I

    iget v8, v2, Ls1/z/c/a0;->a:I

    iget v9, v1, Ls1/z/c/a0;->a:I

    .line 89
    iget-object v11, v5, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->a:Le/a/a/i0;

    if-eqz v11, :cond_26

    invoke-interface {v11}, Le/a/a/i0;->R1()I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->x(I)Ljava/lang/String;

    move-result-object v11

    .line 90
    iget-object v12, v5, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->a:Le/a/a/i0;

    if-eqz v12, :cond_25

    invoke-interface {v12}, Le/a/a/i0;->k0()I

    move-result v12

    invoke-virtual {v5, v12}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->x(I)Ljava/lang/String;

    move-result-object v12

    .line 91
    iget-object v13, v5, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->a:Le/a/a/i0;

    if-eqz v13, :cond_24

    invoke-interface {v13}, Le/a/a/i0;->y()I

    move-result v13

    invoke-virtual {v5, v13}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->x(I)Ljava/lang/String;

    move-result-object v13

    .line 92
    iget-object v14, v5, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->f:Le/a/q2/a;

    if-eqz v14, :cond_23

    .line 93
    new-instance v15, Le/a/q2/e0;

    const-string v0, "CiCleanup"

    invoke-direct {v15, v0}, Le/a/q2/e0;-><init>(Ljava/lang/String;)V

    const-string v0, "cleanupType"

    move-object/from16 p1, v7

    const-string v7, "manual"

    .line 94
    invoke-virtual {v15, v0, v7}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    const-string v0, "otpFreq"

    .line 95
    invoke-virtual {v15, v0, v11}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    const-string v0, "promotionalFreq"

    .line 96
    invoke-virtual {v15, v0, v12}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    const-string v0, "spamFreq"

    .line 97
    invoke-virtual {v15, v0, v13}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 98
    iget-object v0, v5, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->a:Le/a/a/i0;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Le/a/a/i0;->T1()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "numOtp"

    .line 99
    invoke-virtual {v15, v0, v6}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 100
    :cond_1a
    invoke-virtual {v5}, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->o()Le/a/u3/g;

    move-result-object v0

    invoke-virtual {v0}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v5, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->a:Le/a/a/i0;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Le/a/a/i0;->L1()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "numPromotional"

    .line 101
    invoke-virtual {v15, v0, v8}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    goto :goto_10

    .line 102
    :cond_1b
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 103
    :cond_1c
    :goto_10
    iget-object v0, v5, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->a:Le/a/a/i0;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Le/a/a/i0;->m3()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "numSpam"

    .line 104
    invoke-virtual {v15, v0, v9}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 105
    :cond_1d
    iget-object v0, v5, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->a:Le/a/a/i0;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Le/a/a/i0;->o2()I

    move-result v0

    const-string v6, "lifetimeSuccess"

    invoke-virtual {v15, v6, v0}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 106
    iget-object v0, v5, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->a:Le/a/a/i0;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Le/a/a/i0;->M1()I

    move-result v0

    const-string v5, "lifetimeFailure"

    invoke-virtual {v15, v5, v0}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 107
    invoke-virtual {v15}, Le/a/q2/e0;->a()Le/a/l5/a/p3;

    move-result-object v0

    .line 108
    invoke-interface {v14, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 109
    iget-object v0, v3, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b;->o:Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;

    .line 110
    iget-object v0, v0, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->c:Le/a/a/e/o;

    if-eqz v0, :cond_1e

    .line 111
    new-instance v3, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;

    iget v4, v4, Ls1/z/c/a0;->a:I

    iget v2, v2, Ls1/z/c/a0;->a:I

    iget v1, v1, Ls1/z/c/a0;->a:I

    invoke-direct {v3, v4, v2, v1}, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;-><init>(III)V

    invoke-interface {v0, v3}, Le/a/a/e/o;->c(Lcom/truecaller/messaging/inboxcleanup/CleanupResult;)V

    .line 112
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    .line 113
    :cond_1e
    invoke-static/range {p1 .. p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1f
    const/4 v0, 0x0

    .line 114
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x0

    .line 115
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/4 v0, 0x0

    .line 116
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/4 v0, 0x0

    .line 117
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_23
    const/4 v0, 0x0

    const-string v1, "analytics"

    .line 118
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_24
    const/4 v0, 0x0

    .line 119
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_25
    const/4 v0, 0x0

    .line 120
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_26
    const/4 v0, 0x0

    .line 121
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_27
    const/4 v0, 0x0

    .line 122
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_28
    const/4 v0, 0x0

    .line 123
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
