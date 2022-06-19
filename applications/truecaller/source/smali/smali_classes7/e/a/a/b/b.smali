.class public final Le/a/a/b/b;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/a/b/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/b/k;",
        ">;",
        "Le/a/a/b/j;"
    }
.end annotation


# instance fields
.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Le/a/a/b/i;

.field public final e:Le/a/a/b/n;

.field public final f:Le/a/o5/f0;

.field public final g:Le/a/a/i1/b;

.field public final h:Le/a/p5/h0;

.field public final i:Le/a/f4/g/j;

.field public final j:Le/a/a/b/h;

.field public final k:Le/a/u3/g;

.field public final l:Le/a/w4/d;

.field public final m:Le/a/d/c0/s1;

.field public final n:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

.field public final o:Le/a/p5/c;

.field public final p:Le/a/z2/a;

.field public final q:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/g0;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Le/a/x2/b;

.field public final s:Le/a/a/k/t;

.field public final t:Le/a/a/u;

.field public final u:Z


# direct methods
.method public constructor <init>(Le/a/a/b/i;Le/a/a/b/n;Le/a/o5/f0;Le/a/a/i1/b;Le/a/p5/h0;Le/a/f4/g/j;Le/a/a/b/h;Le/a/u3/g;Le/a/w4/d;Le/a/d/c0/s1;Lcom/truecaller/calling/initiate_call/InitiateCallHelper;Le/a/p5/c;Le/a/z2/a;Lo3/a;Le/a/x2/b;Le/a/a/k/t;Le/a/a/u;Z)V
    .locals 16
    .param p6    # Le/a/f4/g/j;
        .annotation runtime Ljavax/inject/Named;
            value = "inbox"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/b/i;",
            "Le/a/a/b/n;",
            "Le/a/o5/f0;",
            "Le/a/a/i1/b;",
            "Le/a/p5/h0;",
            "Le/a/f4/g/j;",
            "Le/a/a/b/h;",
            "Le/a/u3/g;",
            "Le/a/w4/d;",
            "Le/a/d/c0/s1;",
            "Lcom/truecaller/calling/initiate_call/InitiateCallHelper;",
            "Le/a/p5/c;",
            "Le/a/z2/a;",
            "Lo3/a<",
            "Le/a/a/g/g0;",
            ">;",
            "Le/a/x2/b;",
            "Le/a/a/k/t;",
            "Le/a/a/u;",
            "Z)V"
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

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "conversationDataHolder"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionModeHandler"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUtil"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bulkSearcher"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationActionHelper"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactStalenessHelper"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipUtil"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initiateCallHelper"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeHelper"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unreadThreadsCounter"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationAvatarXConfigProvider"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportManager"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inboxAvatarPresenterFactory"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Le/a/o2/c;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Le/a/a/b/b;->d:Le/a/a/b/i;

    iput-object v2, v0, Le/a/a/b/b;->e:Le/a/a/b/n;

    iput-object v3, v0, Le/a/a/b/b;->f:Le/a/o5/f0;

    iput-object v4, v0, Le/a/a/b/b;->g:Le/a/a/i1/b;

    iput-object v5, v0, Le/a/a/b/b;->h:Le/a/p5/h0;

    iput-object v6, v0, Le/a/a/b/b;->i:Le/a/f4/g/j;

    iput-object v7, v0, Le/a/a/b/b;->j:Le/a/a/b/h;

    iput-object v8, v0, Le/a/a/b/b;->k:Le/a/u3/g;

    iput-object v9, v0, Le/a/a/b/b;->l:Le/a/w4/d;

    iput-object v10, v0, Le/a/a/b/b;->m:Le/a/d/c0/s1;

    iput-object v11, v0, Le/a/a/b/b;->n:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    iput-object v12, v0, Le/a/a/b/b;->o:Le/a/p5/c;

    iput-object v13, v0, Le/a/a/b/b;->p:Le/a/z2/a;

    iput-object v14, v0, Le/a/a/b/b;->q:Lo3/a;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/a/b/b;->r:Le/a/x2/b;

    iput-object v15, v0, Le/a/a/b/b;->s:Le/a/a/k/t;

    move-object/from16 v1, p17

    iput-object v1, v0, Le/a/a/b/b;->t:Le/a/a/u;

    move/from16 v1, p18

    iput-boolean v1, v0, Le/a/a/b/b;->u:Z

    .line 2
    new-instance v1, Le/a/a/b/b$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Le/a/a/b/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/a/b/b;->b:Ls1/g;

    .line 3
    new-instance v1, Le/a/a/b/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Le/a/a/b/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/a/b/b;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public final A(I)Le/a/a/g/j0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/b;->d:Le/a/a/b/i;

    invoke-interface {v0}, Le/a/a/b/i;->f()Le/a/a/g/j0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final B(Lcom/truecaller/messaging/data/types/Conversation;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/o2/c;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/b/b;->e:Le/a/a/b/n;

    invoke-interface {v0}, Le/a/a/b/n;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/a/b/b;->d:Le/a/a/b/i;

    invoke-interface {v0, p1}, Le/a/a/b/i;->J(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final C(Lcom/truecaller/messaging/data/types/Conversation;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Le/a/c/p/a;->C1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Le/a/a/b/b;->q:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/g0;

    invoke-interface {v0}, Le/a/a/g/g0;->a()Le/a/a/g/k;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object v4, v0, Le/a/a/g/k;->a:Lcom/truecaller/messaging/data/types/InboxTab;

    .line 4
    iget-object v5, p0, Le/a/a/b/b;->d:Le/a/a/b/i;

    invoke-interface {v5}, Le/a/a/b/i;->S5()Lcom/truecaller/messaging/data/types/InboxTab;

    move-result-object v5

    if-ne v4, v5, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 5
    iget-wide v3, v0, Le/a/a/g/k;->c:J

    .line 6
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->i:Lw3/b/a/b;

    const-string v0, "date"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-wide v5, p1, Lw3/b/a/e0/e;->a:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v2

    .line 8
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_3
    invoke-static {v3}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    return v1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v12, p1

    check-cast v12, Le/a/a/b/k;

    const-string v1, "itemView"

    .line 2
    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v1, p2

    .line 3
    invoke-virtual {v0, v1}, Le/a/a/b/b;->A(I)Le/a/a/g/j0/a;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-interface {v1}, Le/a/a/g/j0/a;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v13

    if-eqz v13, :cond_2f

    .line 4
    iget-object v1, v0, Le/a/a/b/b;->g:Le/a/a/i1/b;

    invoke-interface {v1, v13}, Le/a/a/i1/b;->n(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v13}, Le/a/a/b/b;->C(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v2

    invoke-interface {v12, v1, v2}, Le/a/a/b/k;->j1(Ljava/lang/String;Z)V

    .line 5
    iget-boolean v1, v0, Le/a/o2/c;->a:Z

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, v0, Le/a/a/b/b;->d:Le/a/a/b/i;

    invoke-interface {v1, v13}, Le/a/a/b/i;->F1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v15

    goto :goto_0

    :cond_0
    move v1, v14

    :goto_0
    invoke-interface {v12, v1}, Le/a/a/b/k;->R(Z)V

    .line 7
    invoke-virtual {v0, v13}, Le/a/a/b/b;->C(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v1

    .line 8
    iget-object v2, v0, Le/a/a/b/b;->q:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/g0;

    invoke-interface {v2}, Le/a/a/g/g0;->a()Le/a/a/g/k;

    move-result-object v2

    const/4 v11, 0x0

    if-eqz v2, :cond_6

    .line 9
    iget-object v3, v2, Le/a/a/g/k;->a:Lcom/truecaller/messaging/data/types/InboxTab;

    .line 10
    iget-object v4, v0, Le/a/a/b/b;->d:Le/a/a/b/i;

    invoke-interface {v4}, Le/a/a/b/i;->S5()Lcom/truecaller/messaging/data/types/InboxTab;

    move-result-object v4

    if-eq v3, v4, :cond_1

    iget v2, v13, Lcom/truecaller/messaging/data/types/Conversation;->l:I

    goto :goto_4

    .line 11
    :cond_1
    iget-object v2, v2, Le/a/a/g/k;->b:Ljava/util/List;

    .line 12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/truecaller/messaging/data/types/Conversation;

    iget-wide v4, v4, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    iget-wide v6, v13, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    move v4, v15

    goto :goto_1

    :cond_3
    move v4, v14

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_4
    move-object v3, v11

    :goto_2
    check-cast v3, Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz v3, :cond_5

    iget v2, v3, Lcom/truecaller/messaging/data/types/Conversation;->l:I

    goto :goto_3

    :cond_5
    move v2, v14

    .line 13
    :goto_3
    iget v3, v13, Lcom/truecaller/messaging/data/types/Conversation;->l:I

    sub-int/2addr v3, v2

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_4

    .line 14
    :cond_6
    iget v2, v13, Lcom/truecaller/messaging/data/types/Conversation;->l:I

    .line 15
    :goto_4
    invoke-interface {v12, v1, v2}, Le/a/a/b/k;->S(ZI)V

    .line 16
    iget-boolean v1, v13, Lcom/truecaller/messaging/data/types/Conversation;->C:Z

    const-string v10, "it"

    const-string v9, "participants"

    if-eqz v1, :cond_7

    invoke-interface {v12}, Le/a/a/b/k;->u0()V

    goto/16 :goto_a

    .line 17
    :cond_7
    iget-object v1, v13, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v1, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    array-length v2, v1

    move v3, v14

    :goto_5
    if-ge v3, v2, :cond_9

    aget-object v4, v1, v3

    .line 19
    iget-object v5, v0, Le/a/a/b/b;->p:Le/a/z2/a;

    invoke-static {v4, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Le/a/z2/a;->d(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v1, v15

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    move v1, v14

    :goto_6
    if-eqz v1, :cond_a

    .line 20
    invoke-interface {v12}, Le/a/a/b/k;->A2()V

    goto :goto_a

    .line 21
    :cond_a
    iget-object v1, v13, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v1, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    array-length v2, v1

    move v3, v14

    :goto_7
    if-ge v3, v2, :cond_c

    aget-object v4, v1, v3

    .line 23
    iget-object v5, v0, Le/a/a/b/b;->p:Le/a/z2/a;

    invoke-static {v4, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Le/a/z2/a;->c(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v1, v15

    goto :goto_8

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    move v1, v14

    :goto_8
    if-eqz v1, :cond_d

    .line 24
    invoke-interface {v12}, Le/a/a/b/k;->h0()V

    goto :goto_a

    .line 25
    :cond_d
    iget-object v1, v13, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v1, :cond_e

    invoke-static {v1}, Le/a/c/p/a;->w1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z

    move-result v1

    if-ne v1, v15, :cond_e

    .line 26
    invoke-interface {v12}, Le/a/a/b/k;->H1()V

    goto :goto_9

    .line 27
    :cond_e
    iget-object v1, v0, Le/a/a/b/b;->o:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    invoke-static {v13, v1, v2}, Le/a/c/p/a;->v1(Lcom/truecaller/messaging/data/types/Conversation;J)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 28
    invoke-interface {v12}, Le/a/a/b/k;->H1()V

    :goto_9
    move v1, v15

    goto :goto_b

    .line 29
    :cond_f
    invoke-interface {v12}, Le/a/a/b/k;->x0()V

    :goto_a
    move v1, v14

    .line 30
    :goto_b
    iget-boolean v2, v13, Lcom/truecaller/messaging/data/types/Conversation;->K:Z

    if-eqz v2, :cond_10

    .line 31
    iget-object v1, v0, Le/a/a/b/b;->b:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-interface {v12, v1}, Le/a/a/b/k;->z0(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :cond_10
    if-nez v1, :cond_11

    .line 33
    iget-object v1, v0, Le/a/a/b/b;->o:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    invoke-static {v13, v1, v2}, Le/a/c/p/a;->v1(Lcom/truecaller/messaging/data/types/Conversation;J)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 34
    iget-object v1, v0, Le/a/a/b/b;->c:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-interface {v12, v1}, Le/a/a/b/k;->z0(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    .line 36
    :cond_11
    invoke-interface {v12}, Le/a/a/b/k;->K1()V

    .line 37
    :goto_c
    iget-object v1, v0, Le/a/a/b/b;->d:Le/a/a/b/i;

    iget-object v2, v13, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v8, "conversation.participants"

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/a/b/i;->hj([Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x2

    if-eqz v1, :cond_12

    .line 38
    invoke-interface {v12, v11}, Le/a/a/b/k;->f(Ljava/lang/String;)V

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2026

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->BLUE:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x5c

    const/16 v20, 0x0

    move-object v1, v12

    move v15, v7

    move/from16 v7, v16

    move-object/from16 v21, v8

    move-object/from16 v8, v17

    move-object/from16 v22, v9

    move/from16 v9, v18

    move-object/from16 v23, v10

    move/from16 v10, v19

    move-object/from16 v11, v20

    .line 41
    invoke-static/range {v1 .. v11}, Le/a/c/p/a;->F2(Le/a/a/b/k;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZLjava/util/List;ZILjava/lang/Object;)V

    goto/16 :goto_12

    :cond_12
    move v15, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    .line 42
    iget-object v1, v0, Le/a/a/b/b;->g:Le/a/a/i1/b;

    invoke-interface {v1, v13}, Le/a/a/i1/b;->m(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Le/a/a/b/k;->f(Ljava/lang/String;)V

    .line 43
    iget-object v1, v0, Le/a/a/b/b;->g:Le/a/a/i1/b;

    iget-object v2, v0, Le/a/a/b/b;->d:Le/a/a/b/i;

    invoke-interface {v2}, Le/a/a/b/i;->S5()Lcom/truecaller/messaging/data/types/InboxTab;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Le/a/a/i1/b;->D(Lcom/truecaller/messaging/data/types/Conversation;Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v1

    .line 44
    iget v2, v13, Lcom/truecaller/messaging/data/types/Conversation;->y:I

    .line 45
    iget v3, v13, Lcom/truecaller/messaging/data/types/Conversation;->e:I

    .line 46
    iget-object v4, v0, Le/a/a/b/b;->g:Le/a/a/i1/b;

    .line 47
    iget-object v5, v13, Lcom/truecaller/messaging/data/types/Conversation;->j:Ljava/lang/String;

    .line 48
    iget v6, v13, Lcom/truecaller/messaging/data/types/Conversation;->f:I

    .line 49
    iget-object v7, v13, Lcom/truecaller/messaging/data/types/Conversation;->g:Ljava/lang/String;

    .line 50
    invoke-interface {v4, v5, v6, v7}, Le/a/a/i1/b;->t(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {v13}, Le/a/c/p/a;->q1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 52
    iget-object v1, v0, Le/a/a/b/b;->h:Le/a/p5/h0;

    const v2, 0x7f120d62

    new-array v3, v14, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "resourceProvider.getStri\u2026ging_im_group_invitation)"

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v6, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->BLUE:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    .line 54
    iget-object v1, v0, Le/a/a/b/b;->h:Le/a/p5/h0;

    const v3, 0x7f08065b

    invoke-interface {v1, v3}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    .line 55
    invoke-virtual {v0, v13}, Le/a/a/b/b;->C(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x48

    const/4 v11, 0x0

    move-object v1, v12

    move-object v3, v6

    .line 56
    invoke-static/range {v1 .. v11}, Le/a/c/p/a;->F2(Le/a/a/b/k;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZLjava/util/List;ZILjava/lang/Object;)V

    goto/16 :goto_12

    .line 57
    :cond_13
    invoke-static {v13}, Le/a/c/p/a;->k1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 58
    iget-object v1, v0, Le/a/a/b/b;->s:Le/a/a/k/t;

    .line 59
    iget v2, v13, Lcom/truecaller/messaging/data/types/Conversation;->f:I

    if-lez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_d

    :cond_14
    move v2, v14

    .line 60
    :goto_d
    iget-object v3, v13, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 61
    iget v5, v13, Lcom/truecaller/messaging/data/types/Conversation;->u:I

    if-eqz v5, :cond_16

    const/16 v6, 0x8

    if-ne v5, v6, :cond_15

    goto :goto_e

    :cond_15
    move v5, v14

    goto :goto_f

    :cond_16
    :goto_e
    const/4 v5, 0x1

    .line 62
    :goto_f
    invoke-interface {v1, v2, v3, v5}, Le/a/a/k/t;->n(Z[Lcom/truecaller/data/entity/messaging/Participant;Z)I

    move-result v1

    .line 63
    iget-object v2, v0, Le/a/a/b/b;->h:Le/a/p5/h0;

    const v3, 0x7f120390

    new-array v5, v14, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getString(R.string.MessageDraft)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v5, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->BLUE:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    .line 65
    iget-object v3, v0, Le/a/a/b/b;->h:Le/a/p5/h0;

    const v6, 0x7f080659

    invoke-interface {v3, v6}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-ne v1, v15, :cond_17

    const/4 v7, 0x1

    goto :goto_10

    :cond_17
    move v7, v14

    :goto_10
    move-object v1, v12

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    .line 66
    invoke-interface/range {v1 .. v6}, Le/a/a/b/k;->E(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_12

    :cond_18
    if-eqz v1, :cond_19

    move-object v4, v1

    .line 67
    :cond_19
    iget-object v5, v0, Le/a/a/b/b;->g:Le/a/a/i1/b;

    invoke-interface {v5, v1, v2}, Le/a/a/i1/b;->l(Ljava/lang/String;I)Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    move-result-object v5

    .line 68
    iget-object v6, v0, Le/a/a/b/b;->g:Le/a/a/i1/b;

    invoke-interface {v6, v13}, Le/a/a/i1/b;->k(Lcom/truecaller/messaging/data/types/Conversation;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 69
    iget-object v7, v0, Le/a/a/b/b;->g:Le/a/a/i1/b;

    iget v8, v13, Lcom/truecaller/messaging/data/types/Conversation;->f:I

    iget-object v9, v13, Lcom/truecaller/messaging/data/types/Conversation;->g:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Le/a/a/i1/b;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 70
    iget-object v8, v0, Le/a/a/b/b;->g:Le/a/a/i1/b;

    invoke-interface {v8, v1, v2, v3}, Le/a/a/i1/b;->r(Ljava/lang/String;II)Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    move-result-object v8

    .line 71
    invoke-virtual {v0, v13}, Le/a/a/b/b;->C(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v9

    .line 72
    iget-object v1, v13, Lcom/truecaller/messaging/data/types/Conversation;->O:[Lcom/truecaller/messaging/data/types/Mention;

    const-string v2, "conversation.latestMessageMentions"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v10, Ljava/util/ArrayList;

    array-length v2, v1

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    array-length v2, v1

    move v3, v14

    :goto_11
    if-ge v3, v2, :cond_1a

    aget-object v11, v1, v3

    .line 75
    new-instance v14, Ls1/k;

    invoke-virtual {v11}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v16

    invoke-virtual {v11}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result v11

    add-int v11, v11, v16

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v14, v15, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x2

    goto :goto_11

    .line 76
    :cond_1a
    iget-boolean v11, v13, Lcom/truecaller/messaging/data/types/Conversation;->k:Z

    move-object v1, v12

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move v7, v9

    move-object v8, v10

    move v9, v11

    .line 77
    invoke-interface/range {v1 .. v9}, Le/a/a/b/k;->N3(Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZLjava/util/List;Z)V

    .line 78
    :goto_12
    iget-boolean v1, v0, Le/a/a/b/b;->u:Z

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Le/a/a/b/k;->b0(Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V

    goto :goto_13

    :cond_1b
    const/4 v1, 0x0

    .line 79
    invoke-static {v13}, Le/a/c/p/a;->q1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 80
    invoke-interface {v12, v1}, Le/a/a/b/k;->b0(Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V

    :goto_13
    move-object/from16 v3, v21

    goto :goto_14

    .line 81
    :cond_1c
    iget-object v2, v13, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    move-object/from16 v3, v21

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/a/i1/h;->e([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, v13, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    iget v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-nez v2, :cond_1d

    iget-boolean v2, v13, Lcom/truecaller/messaging/data/types/Conversation;->C:Z

    if-nez v2, :cond_1d

    .line 82
    sget-object v2, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->CALL:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    invoke-interface {v12, v2}, Le/a/a/b/k;->b0(Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V

    goto :goto_14

    .line 83
    :cond_1d
    invoke-interface {v12, v1}, Le/a/a/b/k;->b0(Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V

    .line 84
    :goto_14
    iget-object v2, v0, Le/a/a/b/b;->t:Le/a/a/u;

    invoke-interface {v2, v12}, Le/a/a/u;->b(Le/a/a/u$a;)Le/a/b0/a/b/a;

    move-result-object v2

    .line 85
    iget-object v4, v0, Le/a/a/b/b;->r:Le/a/x2/b;

    invoke-virtual {v4, v13}, Le/a/x2/b;->b(Lcom/truecaller/messaging/data/types/Conversation;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 86
    invoke-static {v2, v4, v6, v5, v1}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 87
    invoke-interface {v12, v2}, Le/a/a/b/k;->i(Le/a/b0/a/b/a;)V

    .line 88
    iget-object v2, v0, Le/a/a/b/b;->t:Le/a/a/u;

    invoke-interface {v2, v12}, Le/a/a/u;->a(Le/a/a/u$a;)Le/a/l4/d;

    move-result-object v2

    .line 89
    iget-object v4, v0, Le/a/a/b/b;->d:Le/a/a/b/i;

    invoke-interface {v4}, Le/a/a/b/i;->S5()Lcom/truecaller/messaging/data/types/InboxTab;

    move-result-object v4

    invoke-static {v13, v4}, Le/a/c/p/a;->l0(Lcom/truecaller/messaging/data/types/Conversation;Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Le/a/l4/d;->Kj(Ljava/lang/String;)V

    .line 90
    invoke-interface {v12, v2}, Le/a/a/b/k;->e(Le/a/l4/d;)V

    .line 91
    iget-object v2, v0, Le/a/a/b/b;->f:Le/a/o5/f0;

    invoke-interface {v2}, Le/a/o5/f0;->a()Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v6, 0x0

    invoke-interface {v12, v6}, Le/a/a/b/k;->h(Z)V

    goto/16 :goto_21

    :cond_1e
    const/4 v6, 0x0

    .line 92
    iget-object v2, v0, Le/a/a/b/b;->f:Le/a/o5/f0;

    invoke-interface {v2}, Le/a/o5/f0;->m()Z

    move-result v2

    if-nez v2, :cond_23

    .line 93
    iget-object v1, v13, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    move-object/from16 v2, v22

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    array-length v2, v1

    move v3, v6

    :goto_15
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 95
    iget-object v4, v4, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    if-eqz v4, :cond_20

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_16

    :cond_1f
    move v4, v6

    goto :goto_17

    :cond_20
    :goto_16
    const/4 v4, 0x1

    :goto_17
    if-eqz v4, :cond_21

    const/4 v14, 0x1

    goto :goto_18

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_22
    move v14, v6

    .line 96
    :goto_18
    invoke-interface {v12, v14}, Le/a/a/b/k;->h(Z)V

    goto/16 :goto_21

    .line 97
    :cond_23
    iget-object v2, v13, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    array-length v4, v2

    move v5, v6

    :goto_19
    if-ge v5, v4, :cond_27

    aget-object v7, v2, v5

    move-object/from16 v8, v23

    .line 100
    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget v9, v7, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v10, 0x1

    if-eqz v9, :cond_24

    if-ne v9, v10, :cond_25

    :cond_24
    iget-object v9, v0, Le/a/a/b/b;->l:Le/a/w4/d;

    invoke-interface {v9, v7}, Le/a/w4/d;->c(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v9

    if-eqz v9, :cond_25

    move v9, v10

    goto :goto_1a

    :cond_25
    move v9, v6

    :goto_1a
    if-eqz v9, :cond_26

    .line 102
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v23, v8

    goto :goto_19

    :cond_27
    const/4 v10, 0x1

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 105
    check-cast v4, Lcom/truecaller/data/entity/messaging/Participant;

    .line 106
    iget-object v5, v0, Le/a/a/b/b;->i:Le/a/f4/g/j;

    .line 107
    iget-object v7, v4, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    .line 108
    iget-object v11, v4, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    .line 109
    iget-object v8, v0, Le/a/a/b/b;->k:Le/a/u3/g;

    invoke-virtual {v8}, Le/a/u3/g;->a0()Le/a/u3/b;

    move-result-object v8

    invoke-interface {v8}, Le/a/u3/b;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_29

    const-string v8, "rawAddress"

    invoke-static {v11, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v8, v4, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    invoke-static {v11, v8}, Le/a/b0/q/g0;->M(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_28

    goto :goto_1c

    :cond_28
    move v8, v6

    goto :goto_1d

    :cond_29
    :goto_1c
    move v8, v10

    :goto_1d
    if-eqz v8, :cond_2a

    goto :goto_1e

    :cond_2a
    move-object v11, v1

    .line 110
    :goto_1e
    invoke-interface {v5, v7, v11, v1}, Le/a/f4/g/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v5, v0, Le/a/a/b/b;->i:Le/a/f4/g/j;

    iget-object v4, v4, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-interface {v5, v4}, Le/a/f4/g/j;->a(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 112
    :cond_2b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_1f

    .line 113
    :cond_2c
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2d

    move v14, v10

    goto :goto_20

    :cond_2e
    :goto_1f
    move v14, v6

    .line 114
    :goto_20
    invoke-interface {v12, v14}, Le/a/a/b/k;->h(Z)V

    :cond_2f
    :goto_21
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/b;->d:Le/a/a/b/i;

    invoke-interface {v0}, Le/a/a/b/i;->f()Le/a/a/g/j0/a;

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
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/b/b;->A(I)Le/a/a/g/j0/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/a/g/j0/a;->getId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "event"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v2, v1, Le/a/o2/h;->b:I

    .line 2
    invoke-virtual {v0, v2}, Le/a/a/b/b;->A(I)Le/a/a/g/j0/a;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    invoke-interface {v2}, Le/a/a/g/j0/a;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 3
    iget-object v4, v1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "ItemEvent.ACTION_AVATAR_LONG_CLICK"

    .line 5
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0, v2}, Le/a/a/b/b;->B(Lcom/truecaller/messaging/data/types/Conversation;)Z

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "ItemEvent.ACTION_BUTTON_CLICK"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 7
    iget-object v1, v1, Le/a/o2/h;->e:Ljava/lang/Object;

    .line 8
    instance-of v4, v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    if-nez v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    goto/16 :goto_2

    .line 10
    :cond_2
    iget-object v1, v0, Le/a/a/b/b;->m:Le/a/d/c0/s1;

    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v3, "conversation.participants[0].normalizedAddress"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "inbox"

    invoke-interface {v1, v2, v3}, Le/a/d/c0/s1;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 11
    :cond_3
    iget-object v1, v0, Le/a/a/b/b;->n:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    .line 12
    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    aget-object v2, v2, v3

    iget-object v8, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v9, "inbox"

    const-string v2, "analyticsContext"

    .line 13
    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v16, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;

    const/4 v15, 0x1

    .line 15
    new-instance v2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v16}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 16
    invoke-interface {v1, v2}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "ItemEvent.LONG_CLICKED"

    .line 17
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0, v2}, Le/a/a/b/b;->B(Lcom/truecaller/messaging/data/types/Conversation;)Z

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "ItemEvent.ACTION_AVATAR_CLICK"

    .line 18
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 19
    iget-boolean v1, v0, Le/a/o2/c;->a:Z

    if-eqz v1, :cond_4

    .line 20
    iget-object v1, v0, Le/a/a/b/b;->d:Le/a/a/b/i;

    invoke-interface {v1, v2}, Le/a/a/b/i;->J(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 21
    :cond_4
    iget-object v1, v2, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v3, "conversation.participants"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v4, v2, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/a/i1/h;->f([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 23
    iget-object v1, v2, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v1, :cond_7

    .line 24
    invoke-static {v1}, Le/a/c/p/a;->a1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v1}, Le/a/c/p/a;->t1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 25
    iget-object v1, v0, Le/a/a/b/b;->j:Le/a/a/b/h;

    invoke-interface {v1, v2}, Le/a/a/b/h;->a1(Lcom/truecaller/messaging/data/types/Conversation;)V

    goto :goto_0

    .line 26
    :cond_5
    iget-object v4, v2, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/a/i1/h;->e([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v1}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "participants.first()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v4}, Le/a/a/i1/h;->a(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 27
    invoke-static {v1}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/messaging/Participant;

    .line 28
    iget-object v7, v0, Le/a/a/b/b;->j:Le/a/a/b/h;

    .line 29
    iget-wide v8, v2, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 30
    iget-object v10, v1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v3, "normalizedAddress"

    invoke-static {v10, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v11, v1, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    .line 32
    iget-object v12, v1, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    .line 33
    iget-object v13, v1, Lcom/truecaller/data/entity/messaging/Participant;->g:Ljava/lang/String;

    .line 34
    invoke-virtual {v1}, Lcom/truecaller/data/entity/messaging/Participant;->m()Z

    move-result v14

    .line 35
    iget-boolean v15, v2, Lcom/truecaller/messaging/data/types/Conversation;->C:Z

    .line 36
    invoke-virtual {v1}, Lcom/truecaller/data/entity/messaging/Participant;->l()Z

    move-result v16

    .line 37
    invoke-interface/range {v7 .. v16}, Le/a/a/b/h;->Bl(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_0

    .line 38
    :cond_6
    iget-object v1, v2, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/a/i1/h;->e([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 39
    iget-object v1, v0, Le/a/a/b/b;->j:Le/a/a/b/h;

    invoke-interface {v1, v2}, Le/a/a/b/h;->a1(Lcom/truecaller/messaging/data/types/Conversation;)V

    :cond_7
    :goto_0
    move v3, v6

    goto :goto_2

    :sswitch_4
    const-string v1, "ItemEvent.CLICKED"

    .line 40
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Le/a/a/b/b;->d:Le/a/a/b/i;

    invoke-interface {v1}, Le/a/a/b/i;->S5()Lcom/truecaller/messaging/data/types/InboxTab;

    move-result-object v1

    .line 41
    iget-boolean v4, v0, Le/a/o2/c;->a:Z

    if-eqz v4, :cond_8

    .line 42
    iget-object v1, v0, Le/a/a/b/b;->d:Le/a/a/b/i;

    invoke-interface {v1, v2}, Le/a/a/b/i;->J(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/Object;

    goto :goto_2

    .line 43
    :cond_8
    iget-object v3, v2, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v3, :cond_9

    invoke-static {v3}, Le/a/c/p/a;->t1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z

    move-result v3

    if-ne v3, v6, :cond_9

    .line 44
    iget-object v1, v2, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v1, :cond_7

    iget-object v2, v0, Le/a/a/b/b;->j:Le/a/a/b/h;

    const-string v3, "it"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Le/a/a/b/h;->I(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V

    goto :goto_0

    .line 45
    :cond_9
    iget-boolean v3, v0, Le/a/a/b/b;->u:Z

    if-eqz v3, :cond_a

    sget-object v3, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    if-ne v1, v3, :cond_a

    iget v3, v2, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    if-ne v3, v6, :cond_a

    const/4 v1, 0x2

    goto :goto_1

    .line 46
    :cond_a
    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/InboxTab;->getConversationFilter()I

    move-result v1

    .line 47
    :goto_1
    iget-object v3, v0, Le/a/a/b/b;->j:Le/a/a/b/h;

    invoke-interface {v3, v2, v1}, Le/a/a/b/h;->q2(Lcom/truecaller/messaging/data/types/Conversation;I)V

    goto :goto_0

    :cond_b
    :goto_2
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x67eccfc0 -> :sswitch_4
        -0x6040fadc -> :sswitch_3
        -0x4e5b1355 -> :sswitch_2
        0xeb6e43d -> :sswitch_1
        0x79a05fa9 -> :sswitch_0
    .end sparse-switch
.end method
