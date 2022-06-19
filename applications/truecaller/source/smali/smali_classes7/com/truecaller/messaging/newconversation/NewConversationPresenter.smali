.class public final Lcom/truecaller/messaging/newconversation/NewConversationPresenter;
.super Le/a/a/d/t;
.source "SourceFile"

# interfaces
.implements Le/a/a/d/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;
    }
.end annotation


# instance fields
.field public final A:Le/a/u3/g;

.field public final B:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public final C:Le/a/a/i0;

.field public final D:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final E:Le/a/b0/e/r/a;

.field public final J:Le/a/o5/u1;

.field public final K:Landroid/content/Context;

.field public final L:Le/a/r2/l;

.field public final M:Le/a/a/k/a/z0;

.field public final N:Le/a/o5/m;

.field public final O:Le/a/a/i1/b;

.field public final P:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ls1/f0/h;

.field public e:Ljava/lang/String;

.field public f:Landroid/os/CancellationSignal;

.field public g:Lq3/a/p1;

.field public h:Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/messaging/ForwardContentItem;",
            ">;"
        }
    .end annotation
.end field

.field public j:Le/a/r2/a;

.field public final k:Ls1/w/f;

.field public final l:Ls1/w/f;

.field public final m:J

.field public final n:Z

.field public final o:Le/a/b0/q/z;

.field public final p:Le/a/o5/f0;

.field public final q:Le/a/q2/i0;

.field public final r:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Le/a/a/c1/d;

.field public final t:Le/a/e4/p;

.field public final u:Le/a/a/d/f;

.field public final v:Le/a/a/g0;

.field public final w:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/o5/q0;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Le/a/a/d/n;

.field public final y:Le/a/a/d/p;

.field public final z:Le/a/a/d/s;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;JZLe/a/b0/q/z;Le/a/o5/f0;Le/a/q2/i0;Lo3/a;Le/a/a/c1/d;Le/a/e4/p;Le/a/a/d/f;Le/a/a/g0;Le/a/r2/f;Le/a/a/d/n;Le/a/a/d/p;Le/a/a/d/s;Le/a/u3/g;Le/a/r2/f;Le/a/a/i0;Le/a/r2/f;Le/a/b0/e/r/a;Le/a/o5/u1;Landroid/content/Context;Le/a/r2/l;Le/a/a/k/a/z0;Le/a/o5/m;Le/a/a/i1/b;Lo3/a;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Async"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Ljavax/inject/Named;
            value = "new_conversation_search_delay"
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "new_conversation_is_bubble_intent"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "JZ",
            "Le/a/b0/q/z;",
            "Le/a/o5/f0;",
            "Le/a/q2/i0;",
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;",
            "Le/a/a/c1/d;",
            "Le/a/e4/p;",
            "Le/a/a/d/f;",
            "Le/a/a/g0;",
            "Le/a/r2/f<",
            "Le/a/o5/q0;",
            ">;",
            "Le/a/a/d/n;",
            "Le/a/a/d/p;",
            "Le/a/a/d/s;",
            "Le/a/u3/g;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;",
            "Le/a/a/i0;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/b0/e/r/a;",
            "Le/a/o5/u1;",
            "Landroid/content/Context;",
            "Le/a/r2/l;",
            "Le/a/a/k/a/z0;",
            "Le/a/o5/m;",
            "Le/a/a/i1/b;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    move-object/from16 v0, p19

    const-string v0, "uiCoroutineContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutineContext"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftSender"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multisimManager"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSource"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendingResourceProvider"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaHelper"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterPresenter"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupPresenter"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupManager"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tempEntityCleaner"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actorsThreads"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imUploadFileManager"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapConverter"

    move-object/from16 v15, p27

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUtil"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesStorage"

    move-object/from16 v15, p29

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/a/a/d/t;-><init>(Ls1/w/f;)V

    move-object/from16 v0, p0

    move-object/from16 v15, p19

    iput-object v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->k:Ls1/w/f;

    iput-object v2, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->l:Ls1/w/f;

    move-wide/from16 v1, p3

    iput-wide v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->m:J

    move/from16 v1, p5

    iput-boolean v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->n:Z

    iput-object v3, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->o:Le/a/b0/q/z;

    iput-object v4, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->p:Le/a/o5/f0;

    iput-object v5, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->q:Le/a/q2/i0;

    iput-object v6, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->r:Lo3/a;

    iput-object v7, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->s:Le/a/a/c1/d;

    iput-object v8, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->t:Le/a/e4/p;

    iput-object v9, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->u:Le/a/a/d/f;

    iput-object v10, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->v:Le/a/a/g0;

    iput-object v11, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->w:Le/a/r2/f;

    iput-object v12, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    iput-object v13, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    iput-object v14, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->A:Le/a/u3/g;

    iput-object v15, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->B:Le/a/r2/f;

    move-object/from16 v1, p20

    move-object/from16 v2, p21

    iput-object v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->C:Le/a/a/i0;

    iput-object v2, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->D:Le/a/r2/f;

    move-object/from16 v1, p22

    move-object/from16 v2, p23

    iput-object v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->E:Le/a/b0/e/r/a;

    iput-object v2, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->J:Le/a/o5/u1;

    move-object/from16 v1, p24

    move-object/from16 v2, p25

    iput-object v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->K:Landroid/content/Context;

    iput-object v2, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->L:Le/a/r2/l;

    move-object/from16 v1, p26

    move-object/from16 v2, p27

    iput-object v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->M:Le/a/a/k/a/z0;

    iput-object v2, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->N:Le/a/o5/m;

    move-object/from16 v1, p28

    move-object/from16 v2, p29

    iput-object v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->O:Le/a/a/i1/b;

    iput-object v2, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->P:Lo3/a;

    .line 2
    new-instance v1, Ls1/f0/h;

    const-string v2, "\\+?[\\d\\s()-]+"

    invoke-direct {v1, v2}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->d:Ls1/f0/h;

    const-string v1, ""

    .line 3
    iput-object v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->e:Ljava/lang/String;

    return-void
.end method

.method public static Nj(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Lcom/truecaller/data/entity/messaging/Participant;Lcom/truecaller/messaging/data/types/Conversation;Ljava/lang/Integer;Lcom/truecaller/messaging/ForwardContentItem;Ljava/lang/String;I)Lcom/truecaller/messaging/data/types/Draft;
    .locals 1

    and-int/lit8 p4, p6, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p6, 0x2

    if-eqz p4, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p6, 0x8

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_2

    move-object p5, v0

    .line 1
    :cond_2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p0, Lcom/truecaller/messaging/data/types/Draft$b;

    invoke-direct {p0}, Lcom/truecaller/messaging/data/types/Draft$b;-><init>()V

    if-eqz p2, :cond_3

    .line 3
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->b:Lcom/truecaller/messaging/data/types/Conversation;

    .line 4
    iget-object p1, p2, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 5
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->c:Ljava/util/Set;

    invoke-static {p2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string p1, "addParticipants(targetConversation.participants)"

    .line 6
    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 7
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->c:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    if-eqz p5, :cond_5

    .line 8
    iput-object p5, p0, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    :cond_5
    if-nez p3, :cond_6

    goto :goto_1

    .line 9
    :cond_6
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    :goto_1
    if-eqz p3, :cond_7

    .line 10
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 11
    iput p1, p0, Lcom/truecaller/messaging/data/types/Draft$b;->m:I

    .line 12
    :cond_7
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object p0

    const-string p1, "Draft.Builder().run {\n  \u2026        build()\n        }"

    .line 13
    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static Uj(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/util/ArrayList;Lcom/truecaller/data/entity/messaging/Participant;Lcom/truecaller/messaging/data/types/Conversation;Ljava/lang/Integer;Ljava/util/ArrayList;I)Ljava/util/List;
    .locals 7

    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p6, v0

    if-eqz p6, :cond_1

    move-object p3, v1

    .line 1
    :cond_1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    const/16 p6, 0xa

    invoke-static {p1, p6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p6

    invoke-direct {p0, p6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p6, 0x0

    move v2, p6

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lcom/truecaller/messaging/ForwardContentItem;

    .line 5
    new-instance v4, Lcom/truecaller/messaging/data/types/Draft$b;

    invoke-direct {v4}, Lcom/truecaller/messaging/data/types/Draft$b;-><init>()V

    if-eqz p3, :cond_2

    .line 6
    iput-object p3, v4, Lcom/truecaller/messaging/data/types/Draft$b;->b:Lcom/truecaller/messaging/data/types/Conversation;

    .line 7
    iget-object v5, p3, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 8
    iget-object v6, v4, Lcom/truecaller/messaging/data/types/Draft$b;->c:Ljava/util/Set;

    invoke-static {v6, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v5, "addParticipants(targetConversation.participants)"

    .line 9
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 10
    iget-object v5, v4, Lcom/truecaller/messaging/data/types/Draft$b;->c:Ljava/util/Set;

    invoke-interface {v5, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    :goto_1
    iget-object v5, v3, Lcom/truecaller/messaging/ForwardContentItem;->a:Ljava/lang/String;

    .line 12
    iput-object v5, v4, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    if-nez p4, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_6

    .line 14
    iget-object v5, v3, Lcom/truecaller/messaging/ForwardContentItem;->e:Ljava/util/List;

    if-eqz v5, :cond_5

    new-array v6, p6, [Lcom/truecaller/messaging/data/types/Mention;

    .line 15
    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, [Lcom/truecaller/messaging/data/types/Mention;

    goto :goto_2

    :cond_5
    new-array v5, p6, [Lcom/truecaller/messaging/data/types/Mention;

    .line 16
    :goto_2
    iget-object v6, v4, Lcom/truecaller/messaging/data/types/Draft$b;->d:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 17
    iget-object v6, v4, Lcom/truecaller/messaging/data/types/Draft$b;->d:Ljava/util/Set;

    invoke-static {v6, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 18
    iget-boolean v5, v3, Lcom/truecaller/messaging/ForwardContentItem;->b:Z

    .line 19
    iput-boolean v5, v4, Lcom/truecaller/messaging/data/types/Draft$b;->f:Z

    .line 20
    iget-object v5, v3, Lcom/truecaller/messaging/ForwardContentItem;->f:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    .line 21
    iput-object v5, v4, Lcom/truecaller/messaging/data/types/Draft$b;->n:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    :cond_6
    :goto_3
    if-eqz p4, :cond_7

    .line 22
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 23
    iput v5, v4, Lcom/truecaller/messaging/data/types/Draft$b;->m:I

    .line 24
    :cond_7
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v4

    const-string v5, "Draft.Builder().run {\n  \u2026    build()\n            }"

    .line 25
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v3, v3, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v3, :cond_8

    add-int/lit8 v3, v2, 0x1

    .line 27
    invoke-static {p5, v2}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/BinaryEntity;

    goto :goto_4

    :cond_8
    move v3, v2

    move-object v2, v1

    .line 28
    :goto_4
    new-instance v5, Ls1/k;

    invoke-static {v2}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method


# virtual methods
.method public D4(Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/a/g/l0/f;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "destinations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/d/v;->l2()V

    .line 2
    :cond_0
    invoke-static {p1}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/v;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 4
    invoke-interface {p1, v1, p2, p2, v1}, Le/a/a/d/v;->eA(ZLjava/lang/String;Ljava/lang/Integer;I)V

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/v;

    if-eqz p1, :cond_9

    invoke-interface {p1, v1}, Le/a/a/d/v;->Vy(Z)V

    goto :goto_3

    .line 6
    :cond_2
    invoke-static {p1}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$d;->b:Lcom/truecaller/messaging/newconversation/NewConversationPresenter$d;

    const/16 v9, 0x1f

    invoke-static/range {v2 .. v9}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a/d/v;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 10
    invoke-interface {v2, v3, v0, p2, v4}, Le/a/a/d/v;->eA(ZLjava/lang/String;Ljava/lang/Integer;I)V

    .line 11
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    move v1, v3

    goto :goto_1

    .line 12
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/a/g/l0/f;

    if-eqz p2, :cond_7

    .line 13
    invoke-virtual {p0, p2}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Qj(Le/a/a/g/l0/f;)I

    move-result p2

    if-nez p2, :cond_7

    move p2, v3

    goto :goto_0

    :cond_7
    move p2, v1

    :goto_0
    if-nez p2, :cond_6

    :goto_1
    if-eqz v1, :cond_8

    sget-object p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;->SMS:Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;

    goto :goto_2

    :cond_8
    sget-object p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;->IM:Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Xj(Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public Ij(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    instance-of v0, v0, Le/a/a/d/s$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-virtual {v0}, Le/a/a/d/p;->Jj()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/v;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Tj(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const p1, 0x7f1203db

    .line 4
    invoke-interface {v0, p1}, Le/a/a/d/v;->w2(I)V

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Wj(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public Jj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/v;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Le/a/a/d/v;->jg()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/16 v1, 0x60

    .line 3
    invoke-interface {v0, v1}, Le/a/a/d/v;->lr(I)V

    const v1, 0x7f080451

    .line 4
    invoke-interface {v0, v1}, Le/a/a/d/v;->Pp(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v2}, Le/a/a/d/v;->lr(I)V

    const v1, 0x7f08073a

    .line 6
    invoke-interface {v0, v1}, Le/a/a/d/v;->Pp(I)V

    .line 7
    :goto_0
    invoke-interface {v0}, Le/a/a/d/v;->rr()V

    :cond_1
    return-void
.end method

.method public Kj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-virtual {v1}, Le/a/a/d/p;->o()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/a/d/n;->N(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/d/v;->l2()V

    :cond_0
    return-void
.end method

.method public Lj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {v0}, Le/a/a/d/n;->A()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Rb(Ljava/util/List;)V

    return-void
.end method

.method public Mj()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {v0}, Le/a/a/d/n;->A()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    instance-of v1, v1, Le/a/a/d/s$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_b

    if-eqz v1, :cond_9

    .line 3
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/g/l0/f;

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {p0, v4}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Qj(Le/a/a/g/l0/f;)I

    move-result v4

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    move v1, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_8

    .line 6
    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    check-cast v1, Le/a/a/d/s$c;

    .line 7
    iget-object v1, v1, Le/a/a/d/s$c;->a:Ljava/util/ArrayList;

    .line 8
    instance-of v4, v1, Ljava/util/Collection;

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    .line 9
    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/messaging/ForwardContentItem;

    .line 10
    iget-object v4, v4, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v4, :cond_6

    .line 11
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/BinaryEntity;->e()Z

    move-result v4

    if-ne v4, v3, :cond_6

    move v4, v3

    goto :goto_3

    :cond_6
    move v4, v2

    :goto_3
    if-eqz v4, :cond_5

    move v1, v3

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v2

    :goto_5
    if-nez v1, :cond_9

    :cond_8
    move v1, v3

    goto :goto_6

    :cond_9
    move v1, v2

    :goto_6
    if-nez v1, :cond_b

    .line 12
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/v;

    if-eqz v0, :cond_a

    const v1, 0x7f1203e0

    invoke-interface {v0, v1}, Le/a/a/d/v;->w2(I)V

    :cond_a
    return-void

    .line 13
    :cond_b
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_c

    .line 14
    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Rb(Ljava/util/List;)V

    return-void

    .line 15
    :cond_c
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-virtual {v0}, Le/a/a/d/p;->Jj()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 16
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-virtual {v0}, Le/a/a/d/p;->o()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Vj(Ljava/lang/Long;Ljava/util/List;)V

    .line 17
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-virtual {v0}, Le/a/a/d/p;->Ij()Ljava/lang/String;

    move-result-object v0

    const-string v4, "im_group_type"

    invoke-static {v0, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 18
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->D:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 19
    sget-object v4, Le/a/l5/a/j0;->d:Lorg/apache/avro/Schema;

    new-instance v4, Le/a/l5/a/j0$b;

    invoke-direct {v4, v1}, Le/a/l5/a/j0$b;-><init>(Le/a/l5/a/j0$a;)V

    .line 20
    iget-object v5, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-virtual {v5}, Le/a/a/d/p;->o()Ljava/util/List;

    move-result-object v5

    .line 21
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 23
    check-cast v7, Lcom/truecaller/data/entity/messaging/Participant;

    .line 24
    sget-object v9, Le/a/l5/a/r3;->d:Lorg/apache/avro/Schema;

    new-instance v9, Le/a/l5/a/r3$b;

    invoke-direct {v9, v1}, Le/a/l5/a/r3$b;-><init>(Le/a/l5/a/r3$a;)V

    .line 25
    iget-object v10, v7, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    if-eqz v10, :cond_d

    goto :goto_8

    :cond_d
    const-string v10, ""

    .line 26
    :goto_8
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    aget-object v11, v11, v2

    invoke-virtual {v9, v11, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 27
    iput-object v10, v9, Le/a/l5/a/r3$b;->a:Ljava/lang/CharSequence;

    .line 28
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v2

    .line 29
    iget-object v10, v7, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    .line 30
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-virtual {v9, v11, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 31
    iput-object v10, v9, Le/a/l5/a/r3$b;->b:Ljava/lang/CharSequence;

    .line 32
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v3

    .line 33
    invoke-static {}, Le/a/l5/a/m3;->a()Le/a/l5/a/m3$b;

    move-result-object v10

    .line 34
    iget-object v11, v7, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/2addr v11, v3

    invoke-virtual {v10, v11}, Le/a/l5/a/m3$b;->b(Z)Le/a/l5/a/m3$b;

    .line 35
    invoke-virtual {v7}, Lcom/truecaller/data/entity/messaging/Participant;->m()Z

    move-result v11

    invoke-virtual {v10, v11}, Le/a/l5/a/m3$b;->d(Z)Le/a/l5/a/m3$b;

    .line 36
    iget v11, v7, Lcom/truecaller/data/entity/messaging/Participant;->p:I

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Le/a/l5/a/m3$b;->h(Ljava/lang/Integer;)Le/a/l5/a/m3$b;

    .line 37
    invoke-virtual {v7}, Lcom/truecaller/data/entity/messaging/Participant;->o()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Le/a/l5/a/m3$b;->i(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 38
    iget v11, v7, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    if-ne v11, v3, :cond_e

    move v11, v3

    goto :goto_9

    :cond_e
    move v11, v2

    :goto_9
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Le/a/l5/a/m3$b;->f(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 39
    iget v11, v7, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    if-ne v11, v8, :cond_f

    move v11, v3

    goto :goto_a

    :cond_f
    move v11, v2

    :goto_a
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Le/a/l5/a/m3$b;->g(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 40
    iget-boolean v11, v7, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Le/a/l5/a/m3$b;->e(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 41
    iget v7, v7, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_10

    move v7, v3

    goto :goto_b

    :cond_10
    move v7, v2

    :goto_b
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v7}, Le/a/l5/a/m3$b;->c(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 42
    invoke-virtual {v10}, Le/a/l5/a/m3$b;->a()Le/a/l5/a/m3;

    move-result-object v7

    .line 43
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-virtual {v9, v10, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 44
    iput-object v7, v9, Le/a/l5/a/r3$b;->c:Le/a/l5/a/m3;

    .line 45
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v3, v7, v8

    .line 46
    invoke-virtual {v9}, Le/a/l5/a/r3$b;->a()Le/a/l5/a/r3;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 47
    :cond_11
    invoke-static {v6}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 48
    invoke-virtual {v4}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    aget-object v2, v2, v8

    invoke-virtual {v4, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 49
    iput-object v1, v4, Le/a/l5/a/j0$b;->a:Ljava/util/List;

    .line 50
    invoke-virtual {v4}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v3, v1, v8

    .line 51
    invoke-virtual {v4}, Le/a/l5/a/j0$b;->a()Le/a/l5/a/j0;

    move-result-object v1

    .line 52
    invoke-interface {v0, v1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_c

    .line 53
    :cond_12
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Wj(Ljava/lang/String;)V

    :cond_13
    :goto_c
    return-void
.end method

.method public O7()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/d/v;->l0()V

    :cond_0
    return-void
.end method

.method public final synthetic Oj(Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$a;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$a;

    iget v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$a;

    invoke-direct {v0, p0, p4}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$a;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$a;->i:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$a;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p3, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$a;->g:Ljava/lang/Object;

    check-cast p3, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p3, :cond_4

    .line 4
    iput-object p0, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$a;->h:Ljava/lang/Object;

    iput-object p2, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$a;->i:Ljava/lang/Object;

    iput v3, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$a;->e:I

    invoke-virtual {p0, p3, v0}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Yj(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move-object p3, p0

    :goto_1
    check-cast p4, Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 p4, 0x0

    move-object p3, p0

    .line 5
    :goto_2
    iget-object v0, p3, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->B:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/a/m;

    invoke-interface {v0, p1, p2, p4}, Le/a/a/k/a/a/m;->s(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Le/a/r2/x;

    move-result-object p2

    iget-object p4, p3, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->L:Le/a/r2/l;

    invoke-interface {p4}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object p4

    new-instance v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$b;

    invoke-direct {v0, p3, p1}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$b;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/util/List;)V

    invoke-virtual {p2, p4, v0}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object p1

    iput-object p1, p3, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->j:Le/a/r2/a;

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final Pj(I)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/messaging/ForwardContentItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    .line 2
    instance-of v1, v0, Le/a/a/d/s$c;

    if-eqz v1, :cond_8

    check-cast v0, Le/a/a/d/s$c;

    .line 3
    iget-object v0, v0, Le/a/a/d/s$c;->a:Ljava/util/ArrayList;

    if-nez p1, :cond_a

    .line 4
    instance-of p1, v0, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/ForwardContentItem;

    .line 6
    iget-object v3, v3, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v3, :cond_2

    .line 7
    iget-boolean v3, v3, Lcom/truecaller/messaging/data/types/BinaryEntity;->u:Z

    if-ne v3, v1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    move p1, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v2

    :goto_2
    if-eqz p1, :cond_a

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/ForwardContentItem;

    .line 10
    iget-object v4, v3, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 11
    instance-of v4, v4, Lcom/truecaller/messaging/data/types/LocationEntity;

    if-eqz v4, :cond_6

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    iget-object v5, v3, Lcom/truecaller/messaging/ForwardContentItem;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v5, v3, Lcom/truecaller/messaging/ForwardContentItem;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    move v5, v1

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    const-string v6, "append(\'\\n\')"

    const/16 v7, 0xa

    if-eqz v5, :cond_5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    :cond_5
    iget-object v8, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->O:Le/a/a/i1/b;

    .line 18
    iget-object v5, v3, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 19
    check-cast v5, Lcom/truecaller/messaging/data/types/LocationEntity;

    .line 20
    iget-wide v9, v5, Lcom/truecaller/messaging/data/types/LocationEntity;->w:D

    .line 21
    iget-wide v11, v5, Lcom/truecaller/messaging/data/types/LocationEntity;->x:D

    const/4 v13, 0x0

    .line 22
    invoke-interface/range {v8 .. v13}, Le/a/a/i1/b;->C(DDLjava/lang/CharSequence;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v5, v3, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 25
    check-cast v5, Lcom/truecaller/messaging/data/types/LocationEntity;

    .line 26
    iget-object v5, v5, Lcom/truecaller/messaging/data/types/LocationEntity;->v:Ljava/lang/String;

    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v4, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v7, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v4, Lcom/truecaller/messaging/ForwardContentItem;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 30
    iget v10, v3, Lcom/truecaller/messaging/ForwardContentItem;->d:I

    .line 31
    iget-object v11, v3, Lcom/truecaller/messaging/ForwardContentItem;->e:Ljava/util/List;

    const/4 v12, 0x0

    const/16 v13, 0x20

    move-object v6, v4

    .line 32
    invoke-direct/range {v6 .. v13}, Lcom/truecaller/messaging/ForwardContentItem;-><init>(Ljava/lang/String;ZLcom/truecaller/messaging/data/types/BinaryEntity;ILjava/util/List;Lcom/truecaller/messaging/data/types/ImForwardInfo;I)V

    .line 33
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 34
    :cond_6
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move-object v0, p1

    goto :goto_5

    .line 35
    :cond_8
    instance-of p1, v0, Le/a/a/d/s$b;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->i:Ljava/util/ArrayList;

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_5
    return-object v0
.end method

.method public final Qj(Le/a/a/g/l0/f;)I
    .locals 2

    .line 1
    iget-boolean v0, p1, Le/a/a/g/l0/f;->a:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2
    iget p1, p1, Le/a/a/g/l0/f;->v:I

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public Rb(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/a/g/l0/f;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    const-string v0, "destinations"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static/range {p1 .. p1}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Le/a/a/g/l0/f;

    .line 5
    iget-object v5, v3, Le/a/a/g/l0/f;->b:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 6
    new-instance v4, Ls1/k;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v3}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Qj(Le/a/a/g/l0/f;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Le/a/a/g/l0/f;

    if-eqz v8, :cond_4

    .line 11
    iget-object v8, v8, Le/a/a/g/l0/f;->b:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v8, v4

    :goto_2
    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    move v6, v7

    :goto_3
    if-eqz v6, :cond_3

    .line 12
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/g/l0/f;

    if-eqz v3, :cond_7

    .line 14
    iget-object v5, v3, Le/a/a/g/l0/f;->m:Ljava/util/List;

    if-eqz v5, :cond_7

    .line 15
    invoke-static {v5}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/data/entity/Number;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    iget-object v5, v9, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->e:Ljava/lang/String;

    .line 16
    :goto_5
    iget-object v8, v9, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->o:Le/a/b0/q/z;

    invoke-interface {v8}, Le/a/b0/q/z;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v8, v10}, Lcom/truecaller/data/entity/messaging/Participant;->a(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v5

    const-string v8, "Participant.buildFromAdd\u2026per.getDefaultSimToken())"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_10

    .line 17
    invoke-virtual {v5}, Lcom/truecaller/data/entity/messaging/Participant;->e()Lcom/truecaller/data/entity/messaging/Participant$b;

    move-result-object v5

    .line 18
    iget-object v8, v3, Le/a/a/g/l0/f;->e:Ljava/util/List;

    .line 19
    invoke-static {v8}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 20
    iput-wide v10, v5, Lcom/truecaller/data/entity/messaging/Participant$b;->o:J

    .line 21
    :cond_8
    iget-object v8, v3, Le/a/a/g/l0/f;->f:Ljava/util/List;

    .line 22
    invoke-static {v8}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 23
    iput v8, v5, Lcom/truecaller/data/entity/messaging/Participant$b;->n:I

    .line 24
    :cond_9
    iget-object v8, v3, Le/a/a/g/l0/f;->g:Ljava/util/List;

    .line 25
    invoke-static {v8}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 26
    iput v8, v5, Lcom/truecaller/data/entity/messaging/Participant$b;->p:I

    .line 27
    :cond_a
    iget-object v8, v3, Le/a/a/g/l0/f;->i:Ljava/util/List;

    .line 28
    invoke-static {v8}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 29
    iput-boolean v8, v5, Lcom/truecaller/data/entity/messaging/Participant$b;->j:Z

    .line 30
    :cond_b
    iget-object v8, v3, Le/a/a/g/l0/f;->h:Ljava/util/List;

    .line 31
    invoke-static {v8}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 32
    iput-object v8, v5, Lcom/truecaller/data/entity/messaging/Participant$b;->q:Ljava/lang/String;

    .line 33
    :cond_c
    iget-object v8, v3, Le/a/a/g/l0/f;->j:Ljava/util/List;

    .line 34
    invoke-static {v8}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 35
    iput v8, v5, Lcom/truecaller/data/entity/messaging/Participant$b;->i:I

    .line 36
    :cond_d
    iget-object v8, v3, Le/a/a/g/l0/f;->l:Ljava/lang/String;

    if-eqz v8, :cond_e

    .line 37
    iput-object v8, v5, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 38
    :cond_e
    iget-object v8, v3, Le/a/a/g/l0/f;->d:Ljava/util/List;

    .line 39
    invoke-static {v8}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_f

    .line 40
    iput-object v8, v5, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 41
    :cond_f
    iget-object v8, v3, Le/a/a/g/l0/f;->n:Ljava/lang/String;

    .line 42
    iput-object v8, v5, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {v5}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v5

    const-string v8, "with(participant.buildUp\u2026build()\n                }"

    .line 44
    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    :cond_10
    iget-object v8, v9, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-virtual {v8}, Le/a/a/d/p;->Jj()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 46
    iget-object v0, v9, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-virtual {v0}, Le/a/a/d/p;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 47
    iget-object v0, v9, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-virtual {v0, v5}, Le/a/a/d/p;->Mj(Lcom/truecaller/data/entity/messaging/Participant;)V

    goto :goto_6

    .line 48
    :cond_11
    iget-object v0, v9, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-static {v5}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/a/d/p;->Hj(Ljava/util/List;)V

    :goto_6
    return-void

    .line 49
    :cond_12
    new-instance v8, Ls1/k;

    if-eqz v3, :cond_13

    invoke-virtual {v9, v3}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Qj(Le/a/a/g/l0/f;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_7

    :cond_13
    move-object v3, v4

    :goto_7
    invoke-direct {v8, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 50
    :cond_14
    iget-object v1, v9, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    .line 51
    instance-of v3, v1, Le/a/a/d/s$c;

    if-eqz v3, :cond_15

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-virtual {v9, v0, v2, v7}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Sj(Ljava/util/List;Ljava/util/List;Z)V

    goto/16 :goto_13

    .line 53
    :cond_15
    instance-of v1, v1, Le/a/a/d/s$b;

    if-eqz v1, :cond_25

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 54
    sget-object v15, Ls1/u/s;->a:Ls1/u/s;

    iget-object v0, v9, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    const-string v1, "null cannot be cast to non-null type com.truecaller.messaging.newconversation.NewConversationMvp.Mode.ForwardExternal"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/a/d/s$b;

    .line 55
    iget-object v0, v0, Le/a/a/d/s$b;->a:Landroid/content/Intent;

    .line 56
    invoke-static {v0}, Le/a/b0/q/t;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    goto :goto_8

    :cond_16
    const-string v0, ""

    :goto_8
    move-object v11, v0

    .line 57
    iget-object v0, v9, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    check-cast v0, Le/a/a/d/s$b;

    .line 58
    iget-object v0, v0, Le/a/a/d/s$b;->a:Landroid/content/Intent;

    .line 59
    invoke-static {v0}, Le/a/b0/q/t;->a(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xa

    if-eqz v0, :cond_19

    .line 60
    invoke-static {v0}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/net/Uri;

    .line 63
    iget-object v10, v9, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->K:Landroid/content/Context;

    invoke-static {v8, v10}, Le/a/p5/s0/f;->i(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "application/octet-stream"

    invoke-static {v8, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 64
    :cond_18
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 66
    check-cast v3, Landroid/net/Uri;

    .line 67
    new-instance v8, Lcom/truecaller/messaging/conversation/draft/DraftUri;

    sget-object v10, Lcom/truecaller/messaging/conversation/draft/UriTypeHint;->UNKNOWN:Lcom/truecaller/messaging/conversation/draft/UriTypeHint;

    invoke-direct {v8, v3, v10, v7}, Lcom/truecaller/messaging/conversation/draft/DraftUri;-><init>(Landroid/net/Uri;Lcom/truecaller/messaging/conversation/draft/UriTypeHint;Z)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 68
    :cond_19
    invoke-static {v5, v2}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_1c

    if-eqz v4, :cond_1b

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_b

    :cond_1a
    move v0, v7

    goto :goto_c

    :cond_1b
    :goto_b
    move v0, v6

    :goto_c
    if-eqz v0, :cond_1c

    new-array v0, v6, [Lcom/truecaller/messaging/ForwardContentItem;

    .line 69
    new-instance v1, Lcom/truecaller/messaging/ForwardContentItem;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x20

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/truecaller/messaging/ForwardContentItem;-><init>(Ljava/lang/String;ZLcom/truecaller/messaging/data/types/BinaryEntity;ILjava/util/List;Lcom/truecaller/messaging/data/types/ImForwardInfo;I)V

    aput-object v1, v0, v7

    invoke-static {v0}, Ls1/u/i;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->i:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v9, v5, v2, v6}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Sj(Ljava/util/List;Ljava/util/List;Z)V

    goto/16 :goto_13

    .line 71
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 73
    check-cast v10, Ls1/k;

    .line 74
    iget-object v10, v10, Ls1/k;->b:Ljava/lang/Object;

    .line 75
    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 76
    :cond_1d
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v5, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 78
    check-cast v10, Ls1/k;

    .line 79
    iget-object v10, v10, Ls1/k;->b:Ljava/lang/Object;

    .line 80
    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1e
    invoke-static {v0, v8}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 81
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_11

    .line 82
    :cond_1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_21

    goto :goto_f

    .line 83
    :cond_21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_22

    move v1, v6

    goto :goto_10

    :cond_22
    :goto_f
    move v1, v7

    :goto_10
    if-nez v1, :cond_20

    move v6, v7

    :cond_23
    :goto_11
    if-eqz v4, :cond_24

    move-object v15, v4

    :cond_24
    const/4 v7, 0x1

    .line 84
    new-instance v10, Le/a/a/d/z;

    const/4 v8, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v3, v11

    move-object v4, v5

    move-object v5, v15

    invoke-direct/range {v0 .. v8}, Le/a/a/d/z;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v3, v10

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_13

    .line 85
    :cond_25
    invoke-static {v0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/k;

    if-eqz v0, :cond_26

    .line 86
    iget-object v0, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 87
    check-cast v0, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v0, :cond_26

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_12

    :cond_26
    move-object v0, v4

    .line 88
    :goto_12
    invoke-static {v2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/k;

    if-eqz v1, :cond_27

    .line 89
    iget-object v1, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 90
    move-object v4, v1

    check-cast v4, Ljava/lang/Long;

    .line 91
    :cond_27
    invoke-virtual {v9, v4, v0}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Vj(Ljava/lang/Long;Ljava/util/List;)V

    :goto_13
    return-void
.end method

.method public final Rj(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/Draft;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            ">;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/k;

    .line 2
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 5
    iget-object v2, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->J:Le/a/o5/u1;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-interface {v2, v1}, Le/a/o5/u1;->b(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 6
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/v;

    if-eqz p1, :cond_2

    const p2, 0x7f1203d5

    invoke-interface {p1, p2}, Le/a/a/c1/j;->Hc(I)V

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/v;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/a/d/v;->C()V

    :cond_3
    return-void
.end method

.method public final Sj(Ljava/util/List;Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ls1/k<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Pj(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Neither participant nor conversation is selected to forward to"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    new-instance v9, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$c;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/util/List;Ljava/util/List;ZLs1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final Tj(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->d:Ls1/f0/h;

    invoke-virtual {v0, p1}, Ls1/f0/h;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v2

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 3
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public final Vj(Ljava/lang/Long;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    iget-object v3, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/a/d/v;

    if-eqz v3, :cond_11

    .line 2
    iget-object v4, v6, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-virtual {v4}, Le/a/a/d/p;->Kj()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v6, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    instance-of v4, v4, Le/a/a/d/s$d;

    if-eqz v4, :cond_1

    :cond_0
    iget-boolean v4, v6, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->n:Z

    if-eqz v4, :cond_3

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v0}, Le/a/a/d/v;->vd(Ljava/util/ArrayList;)V

    .line 4
    invoke-interface {v3}, Le/a/a/d/v;->C()V

    return-void

    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_4

    new-array v4, v7, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 5
    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, [Lcom/truecaller/data/entity/messaging/Participant;

    goto :goto_1

    :cond_4
    move-object v4, v8

    .line 6
    :goto_1
    iget-object v5, v6, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    .line 7
    instance-of v9, v5, Le/a/a/d/s$c;

    if-eqz v9, :cond_5

    goto :goto_2

    .line 8
    :cond_5
    instance-of v9, v5, Le/a/a/d/s$b;

    if-eqz v9, :cond_6

    :goto_2
    invoke-interface {v3, v0, v4, v8}, Le/a/a/d/v;->L3(Ljava/lang/Long;[Lcom/truecaller/data/entity/messaging/Participant;Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 9
    :cond_6
    instance-of v9, v5, Le/a/a/d/s$a;

    if-eqz v9, :cond_8

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move-object v1, v2

    :goto_3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-interface {v3, v0}, Le/a/a/d/v;->vd(Ljava/util/ArrayList;)V

    goto/16 :goto_8

    .line 12
    :cond_8
    instance-of v2, v5, Le/a/a/d/s$d;

    if-eqz v2, :cond_10

    .line 13
    iget-object v2, v6, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-virtual {v2}, Le/a/a/d/p;->Ij()Ljava/lang/String;

    move-result-object v2

    const-string v5, "im_group_type"

    invoke-static {v2, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v4, :cond_e

    .line 14
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v9, 0x1

    xor-int/2addr v2, v9

    if-eqz v2, :cond_e

    .line 15
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    .line 16
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    .line 17
    iget-object v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    if-eqz v2, :cond_b

    move v2, v9

    goto :goto_4

    :cond_b
    move v2, v7

    :goto_4
    if-nez v2, :cond_a

    move v1, v7

    goto :goto_6

    :cond_c
    :goto_5
    move v1, v9

    :goto_6
    if-eqz v1, :cond_e

    .line 18
    iget-object v0, v6, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    check-cast v0, Le/a/a/d/s$d;

    .line 19
    iget-object v10, v0, Le/a/a/d/s$d;->b:Ljava/lang/String;

    if-eqz v10, :cond_f

    .line 20
    invoke-interface {v3, v9}, Le/a/a/d/v;->f(Z)V

    .line 21
    iget-object v0, v6, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    check-cast v0, Le/a/a/d/s$d;

    .line 22
    iget-object v11, v0, Le/a/a/d/s$d;->c:Landroid/net/Uri;

    .line 23
    invoke-static {v4}, Ls1/u/i;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 24
    new-instance v14, Le/a/a/d/w;

    const/4 v15, 0x0

    const/4 v5, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v3, v10

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Le/a/a/d/w;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;Ls1/w/d;)V

    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v5, v15

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 25
    iget-object v0, v6, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->D:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 26
    sget-object v1, Le/a/l5/a/k0;->e:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/k0$b;

    invoke-direct {v1, v8}, Le/a/l5/a/k0$b;-><init>(Le/a/l5/a/k0$a;)V

    .line 27
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    .line 28
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 29
    iput v2, v1, Le/a/l5/a/k0$b;->a:I

    .line 30
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v9, v2, v4

    if-eqz v11, :cond_d

    move v7, v9

    .line 31
    :cond_d
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 32
    iput-boolean v7, v1, Le/a/l5/a/k0$b;->b:Z

    .line 33
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v9, v2, v3

    .line 34
    invoke-virtual {v1}, Le/a/l5/a/k0$b;->a()Le/a/l5/a/k0;

    move-result-object v1

    .line 35
    invoke-interface {v0, v1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_7

    .line 36
    :cond_e
    invoke-interface {v3, v0, v4, v8}, Le/a/a/d/v;->L3(Ljava/lang/Long;[Lcom/truecaller/data/entity/messaging/Participant;Landroid/content/Intent;)V

    .line 37
    invoke-interface {v3}, Le/a/a/d/v;->C()V

    :cond_f
    :goto_7
    return-void

    .line 38
    :cond_10
    :goto_8
    invoke-interface {v3}, Le/a/a/d/v;->C()V

    :cond_11
    return-void
.end method

.method public final Wj(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->o:Le/a/b0/q/z;

    invoke-interface {v0}, Le/a/b0/q/z;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/truecaller/data/entity/messaging/Participant;->a(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p1

    const-string v0, "Participant.buildFromAdd\u2026per.getDefaultSimToken())"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Vj(Ljava/lang/Long;Ljava/util/List;)V

    return-void
.end method

.method public final Xj(Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->h:Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;

    .line 2
    sget-object v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;->IM:Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p1, :cond_3

    if-ne p1, v0, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    invoke-static {p1}, Le/a/c/p/a;->u1(Le/a/a/d/s;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 4
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz v3, :cond_4

    .line 6
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->v:Le/a/a/g0;

    invoke-interface {v0}, Le/a/a/g0;->b()I

    move-result v0

    goto :goto_3

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->v:Le/a/a/g0;

    invoke-interface {v0}, Le/a/a/g0;->t()I

    move-result v0

    .line 8
    :goto_3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/d/v;

    if-eqz v1, :cond_5

    .line 9
    iget-object v2, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->v:Le/a/a/g0;

    invoke-interface {v2, p1}, Le/a/a/g0;->B(I)I

    move-result v2

    .line 10
    iget-object v3, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->v:Le/a/a/g0;

    invoke-interface {v3, p1}, Le/a/a/g0;->H(I)I

    move-result p1

    .line 11
    invoke-interface {v1, v2, p1, v0}, Le/a/a/d/v;->db(III)V

    :cond_5
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Le/a/a/d/v;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {v0, p0}, Le/a/a/d/n;->B(Le/a/a/d/u;)V

    const/4 v0, 0x1

    .line 5
    invoke-interface {p1, v0}, Le/a/a/d/v;->i2(Z)V

    .line 6
    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->ha(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    instance-of v1, v1, Le/a/a/d/s$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-virtual {v1}, Le/a/a/d/p;->Jj()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 8
    :goto_0
    invoke-interface {p1, v0}, Le/a/a/d/v;->i2(Z)V

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->C:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->D2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-interface {p1}, Le/a/a/d/v;->Lg()V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    .line 12
    instance-of v1, v0, Le/a/a/d/s$c;

    if-eqz v1, :cond_2

    const v0, 0x7f1203e9

    goto :goto_1

    .line 13
    :cond_2
    instance-of v1, v0, Le/a/a/d/s$b;

    if-eqz v1, :cond_3

    const v0, 0x7f1203ea

    goto :goto_1

    .line 14
    :cond_3
    instance-of v1, v0, Le/a/a/d/s$a;

    if-eqz v1, :cond_4

    const v0, 0x7f1203e8

    goto :goto_1

    .line 15
    :cond_4
    instance-of v0, v0, Le/a/a/d/s$d;

    if-eqz v0, :cond_8

    const v0, 0x7f1203e7

    .line 16
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 17
    invoke-interface {p1, v0}, Le/a/a/d/v;->c2(Ljava/lang/Integer;)V

    .line 18
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    instance-of v1, v0, Le/a/a/d/s$a;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 19
    check-cast v0, Le/a/a/d/s$a;

    .line 20
    iget-object v0, v0, Le/a/a/d/s$a;->a:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 21
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 22
    new-instance v7, Le/a/a/d/y;

    invoke-direct {v7, p0, v0, v3}, Le/a/a/d/y;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/lang/String;Ls1/w/d;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->q:Le/a/q2/i0;

    const-string v1, "newConversation"

    const-string v4, "viewId"

    .line 24
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v4, Le/a/q2/y0/a/a;

    .line 26
    invoke-direct {v4, v1, v3, v3}, Le/a/q2/y0/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    invoke-interface {v0, v4}, Le/a/q2/i0;->b(Le/a/q2/v;)V

    .line 28
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    instance-of v1, v0, Le/a/a/d/s$d;

    if-eqz v1, :cond_7

    check-cast v0, Le/a/a/d/s$d;

    .line 29
    iget-boolean v1, v0, Le/a/a/d/s$d;->a:Z

    if-eqz v1, :cond_7

    .line 30
    iget-object v0, v0, Le/a/a/d/s$d;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 31
    invoke-interface {p1}, Le/a/a/d/v;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "pre_fill_participants"

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 33
    :cond_6
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_2
    new-array v1, v2, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 34
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 35
    invoke-interface {p1, v0}, Le/a/a/d/v;->oz([Lcom/truecaller/data/entity/messaging/Participant;)V

    :cond_7
    return-void

    .line 36
    :cond_8
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public final Yj(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$e;

    iget v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$e;

    invoke-direct {v0, p0, p2}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$e;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$e;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$e;->g:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->l:Ls1/w/f;

    new-instance v2, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$f;

    invoke-direct {v2, p0, p1, v3}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$f;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Landroid/net/Uri;Ls1/w/d;)V

    iput-object p0, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$e;->g:Ljava/lang/Object;

    iput v4, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$e;->e:I

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p2, Le/a/a/k/a/d2;

    .line 6
    iget-boolean v0, p2, Le/a/a/k/a/d2;->a:Z

    if-eqz v0, :cond_4

    .line 7
    iget-object p1, p2, Le/a/a/k/a/d2;->b:Ljava/lang/String;

    return-object p1

    .line 8
    :cond_4
    iget-object p2, p2, Le/a/a/k/a/d2;->c:Ljava/lang/Integer;

    if-eqz p2, :cond_5

    .line 9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/v;

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Le/a/a/d/v;->w2(I)V

    :cond_5
    return-object v3
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->j:Le/a/r2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/r2/a;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->j:Le/a/r2/a;

    .line 4
    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {v1}, Le/a/a/d/n;->C()V

    .line 5
    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {v1, v0}, Le/a/a/d/n;->E(Le/a/a/g/j0/a0;)V

    return-void
.end method

.method public ha(Ljava/lang/String;)V
    .locals 12

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->e:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->g:Lq3/a/p1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iput-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->g:Lq3/a/p1;

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/v;

    if-eqz v0, :cond_c

    .line 5
    iget-object v3, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Le/a/a/d/n;->L(Z)V

    .line 6
    iget-object v3, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->f:Landroid/os/CancellationSignal;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/CancellationSignal;->cancel()V

    .line 7
    :cond_2
    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    .line 8
    iput-object v3, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->f:Landroid/os/CancellationSignal;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 9
    new-instance v9, Le/a/a/d/x;

    invoke-direct {v9, p0, p1, v3, v1}, Le/a/a/d/x;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/lang/String;Landroid/os/CancellationSignal;Ls1/w/d;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v5

    :goto_1
    invoke-interface {v0, v1}, Le/a/a/d/v;->th(Z)V

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v5

    :goto_2
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {v1}, Le/a/a/d/n;->A()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v5

    :goto_3
    invoke-interface {v0, v1}, Le/a/a/d/v;->Sw(Z)V

    .line 12
    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    instance-of v3, v1, Le/a/a/d/s$d;

    if-nez v3, :cond_9

    instance-of v1, v1, Le/a/a/d/s$a;

    if-eqz v1, :cond_6

    goto :goto_6

    .line 13
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_7

    move p1, v2

    goto :goto_4

    :cond_7
    move p1, v5

    :goto_4
    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {p1}, Le/a/a/d/n;->A()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v5

    :goto_5
    invoke-interface {v0, v2}, Le/a/a/d/v;->Vy(Z)V

    goto :goto_8

    .line 14
    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-virtual {v1}, Le/a/a/d/p;->Jj()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-virtual {p1}, Le/a/a/d/p;->o()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    move v2, v5

    goto :goto_7

    :cond_b
    invoke-virtual {p0, p1}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Tj(Ljava/lang/String;)Z

    move-result v2

    .line 15
    :goto_7
    invoke-interface {v0, v2}, Le/a/a/d/v;->m3(Z)V

    :cond_c
    :goto_8
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/v;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->p:Le/a/o5/f0;

    invoke-interface {v1}, Le/a/o5/f0;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->p:Le/a/o5/f0;

    invoke-interface {v1}, Le/a/o5/f0;->Q0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/a/d/v;->h0()V

    .line 4
    invoke-interface {v0}, Le/a/a/d/v;->C()V

    :cond_0
    return-void
.end method

.method public r0()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/a/d/v;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public s3(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/a/g/l0/f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "destinations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    goto :goto_1

    .line 2
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/l0/f;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Qj(Le/a/a/g/l0/f;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    if-eqz v1, :cond_4

    sget-object p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;->SMS:Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;->IM:Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Xj(Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;)V

    return-void
.end method
