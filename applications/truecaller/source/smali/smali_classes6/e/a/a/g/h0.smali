.class public final Le/a/a/g/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/g0;
.implements Le/a/f4/g/j$a;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/a/g/g0$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Le/a/a/g/f0;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:Z

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/InboxTab;",
            ">;"
        }
    .end annotation
.end field

.field public l:Le/a/a/g/k;

.field public final m:Landroid/database/ContentObserver;

.field public final n:Le/a/a/g/h0$c;

.field public final o:Landroid/content/ContentResolver;

.field public final p:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ls1/w/f;

.field public final r:Le/a/o5/f0;

.field public final s:Le/a/f4/g/j;

.field public final t:Le/a/a/i0;

.field public final u:Le/a/b0/q/l0;

.field public final v:Le/a/a/w;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lo3/a;Ls1/w/f;Le/a/o5/f0;Le/a/f4/g/j;Le/a/a/i0;Le/a/b0/q/l0;Le/a/a/w;)V
    .locals 10
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p5    # Le/a/f4/g/j;
        .annotation runtime Ljavax/inject/Named;
            value = "inbox"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;",
            "Ls1/w/f;",
            "Le/a/o5/f0;",
            "Le/a/f4/g/j;",
            "Le/a/a/i0;",
            "Le/a/b0/q/l0;",
            "Le/a/a/w;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    const-string v9, "contentResolver"

    invoke-static {p1, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "readMessageStorage"

    invoke-static {p2, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "uiContext"

    invoke-static {p3, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "deviceManager"

    invoke-static {p4, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "bulkSearcher"

    invoke-static {p5, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "settings"

    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "timestampUtil"

    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "inboxTabsProvider"

    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Le/a/a/g/h0;->o:Landroid/content/ContentResolver;

    iput-object v2, v0, Le/a/a/g/h0;->p:Lo3/a;

    iput-object v3, v0, Le/a/a/g/h0;->q:Ls1/w/f;

    iput-object v4, v0, Le/a/a/g/h0;->r:Le/a/o5/f0;

    iput-object v5, v0, Le/a/a/g/h0;->s:Le/a/f4/g/j;

    iput-object v6, v0, Le/a/a/g/h0;->t:Le/a/a/i0;

    iput-object v7, v0, Le/a/a/g/h0;->u:Le/a/b0/q/l0;

    iput-object v8, v0, Le/a/a/g/h0;->v:Le/a/a/w;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Le/a/a/g/h0;->a:Ljava/util/List;

    .line 3
    new-instance v1, Le/a/a/g/f0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object p1, v1

    move p2, v2

    move p3, v3

    move p4, v4

    move p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move/from16 p8, v8

    invoke-direct/range {p1 .. p8}, Le/a/a/g/f0;-><init>(IIIILjava/util/List;Ljava/util/List;I)V

    iput-object v1, v0, Le/a/a/g/h0;->b:Le/a/a/g/f0;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Le/a/a/g/h0;->k:Ljava/util/List;

    .line 5
    new-instance v1, Le/a/a/g/h0$a;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v3, 0x258

    invoke-direct {v1, p0, v2, v3, v4}, Le/a/a/g/h0$a;-><init>(Le/a/a/g/h0;Landroid/os/Handler;J)V

    iput-object v1, v0, Le/a/a/g/h0;->m:Landroid/database/ContentObserver;

    .line 6
    new-instance v1, Le/a/a/g/h0$c;

    invoke-direct {v1, p0}, Le/a/a/g/h0$c;-><init>(Le/a/a/g/h0;)V

    iput-object v1, v0, Le/a/a/g/h0;->n:Le/a/a/g/h0$c;

    return-void
.end method


# virtual methods
.method public a()Le/a/a/g/k;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/g/h0;->l:Le/a/a/g/k;

    return-object v0
.end method

.method public b(Le/a/a/g/g0$a;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/a/g/h0;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/a/g/h0;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Le/a/a/g/h0;->m(Le/a/a/g/g0$a;)V

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/a/g/h0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/g/h0;->u:Le/a/b0/q/l0;

    invoke-virtual {p1}, Le/a/b0/q/l0;->c()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/a/g/h0;->i:J

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/a/g/h0;->t:Le/a/a/i0;

    iget-object v0, p0, Le/a/a/g/h0;->u:Le/a/b0/q/l0;

    invoke-virtual {v0}, Le/a/b0/q/l0;->c()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Le/a/a/i0;->x0(J)V

    .line 3
    :goto_0
    iget-object p1, p0, Le/a/a/g/h0;->b:Le/a/a/g/f0;

    .line 4
    iput p2, p1, Le/a/a/g/f0;->d:I

    .line 5
    invoke-virtual {p0}, Le/a/a/g/h0;->n()V

    return-void
.end method

.method public d()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Le/a/a/g/h0;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/g/h0;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Le/a/a/g/h0;->k:Ljava/util/List;

    iget-object v1, p0, Le/a/a/g/h0;->v:Le/a/a/w;

    invoke-interface {v1}, Le/a/a/w;->a()Ljava/util/List;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/truecaller/messaging/data/types/InboxTab;

    .line 6
    sget-object v6, Lcom/truecaller/messaging/data/types/InboxTab;->BUSINESS:Lcom/truecaller/messaging/data/types/InboxTab;

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v0, p0, Le/a/a/g/h0;->k:Ljava/util/List;

    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Le/a/a/g/h0;->j:Z

    .line 8
    iget-object v0, p0, Le/a/a/g/h0;->o:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/b0/q/g0;->n()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Le/a/a/g/h0;->m:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 9
    iget-object v0, p0, Le/a/a/g/h0;->r:Le/a/o5/f0;

    iget-object v1, p0, Le/a/a/g/h0;->n:Le/a/a/g/h0$c;

    const-string v2, "com.truecaller.messaging.spam.SEARCH_COMPLETED"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Le/a/o5/f0;->e(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Le/a/a/g/h0;->s:Le/a/f4/g/j;

    invoke-interface {v0, p0}, Le/a/f4/g/j;->b(Le/a/f4/g/j$a;)V

    .line 11
    iput-boolean v4, p0, Le/a/a/g/h0;->c:Z

    .line 12
    invoke-virtual {p0}, Le/a/a/g/h0;->l()V

    return-void
.end method

.method public e(Le/a/a/g/g0$a;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/g/h0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/g/h0;->o:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/a/g/h0;->m:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2
    iget-object v0, p0, Le/a/a/g/h0;->r:Le/a/o5/f0;

    iget-object v1, p0, Le/a/a/g/h0;->n:Le/a/a/g/h0$c;

    invoke-interface {v0, v1}, Le/a/o5/f0;->h(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Le/a/a/g/h0;->s:Le/a/f4/g/j;

    invoke-interface {v0, p0}, Le/a/f4/g/j;->c(Le/a/f4/g/j$a;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Le/a/a/g/h0;->c:Z

    return-void
.end method

.method public g(Lcom/truecaller/messaging/data/types/InboxTab;)V
    .locals 1

    const-string v0, "tab"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Le/a/a/g/h0;->l:Le/a/a/g/k;

    .line 2
    invoke-virtual {p0}, Le/a/a/g/h0;->l()V

    return-void
.end method

.method public g6(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "normalizedNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/g/h0;->l()V

    return-void
.end method

.method public h(Lcom/truecaller/messaging/data/types/InboxTab;)V
    .locals 9

    const-string v0, "tab"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Le/a/a/g/f0;

    iget-object v0, p0, Le/a/a/g/h0;->b:Le/a/a/g/f0;

    .line 3
    iget v2, v0, Le/a/a/g/f0;->a:I

    .line 4
    iget v3, v0, Le/a/a/g/f0;->b:I

    .line 5
    iget v4, v0, Le/a/a/g/f0;->c:I

    .line 6
    iget v5, v0, Le/a/a/g/f0;->d:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x20

    move-object v1, p1

    .line 7
    invoke-direct/range {v1 .. v8}, Le/a/a/g/f0;-><init>(IIIILjava/util/List;Ljava/util/List;I)V

    iput-object p1, p0, Le/a/a/g/h0;->b:Le/a/a/g/f0;

    .line 8
    iget-object p1, p0, Le/a/a/g/h0;->t:Le/a/a/i0;

    iget-object v0, p0, Le/a/a/g/h0;->u:Le/a/b0/q/l0;

    invoke-virtual {v0}, Le/a/b0/q/l0;->c()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Le/a/a/i0;->y3(J)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Le/a/a/g/h0;->t:Le/a/a/i0;

    iget-object v0, p0, Le/a/a/g/h0;->u:Le/a/b0/q/l0;

    invoke-virtual {v0}, Le/a/b0/q/l0;->c()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Le/a/a/i0;->L2(J)V

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Business tab doesn\'t have unseen badge"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Le/a/a/g/f0;

    iget-object v0, p0, Le/a/a/g/h0;->b:Le/a/a/g/f0;

    .line 12
    iget v2, v0, Le/a/a/g/f0;->a:I

    .line 13
    iget v3, v0, Le/a/a/g/f0;->b:I

    .line 14
    iget v4, v0, Le/a/a/g/f0;->c:I

    .line 15
    iget v5, v0, Le/a/a/g/f0;->d:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x20

    move-object v1, p1

    .line 16
    invoke-direct/range {v1 .. v8}, Le/a/a/g/f0;-><init>(IIIILjava/util/List;Ljava/util/List;I)V

    iput-object p1, p0, Le/a/a/g/h0;->b:Le/a/a/g/f0;

    .line 17
    iget-object p1, p0, Le/a/a/g/h0;->t:Le/a/a/i0;

    iget-object v0, p0, Le/a/a/g/h0;->u:Le/a/b0/q/l0;

    invoke-virtual {v0}, Le/a/b0/q/l0;->c()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Le/a/a/i0;->T3(J)V

    goto :goto_0

    .line 18
    :cond_4
    iget-object p1, p0, Le/a/a/g/h0;->t:Le/a/a/i0;

    iget-object v0, p0, Le/a/a/g/h0;->u:Le/a/b0/q/l0;

    invoke-virtual {v0}, Le/a/b0/q/l0;->c()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Le/a/a/i0;->o3(J)V

    .line 19
    :goto_0
    invoke-virtual {p0}, Le/a/a/g/h0;->n()V

    return-void
.end method

.method public i(Lcom/truecaller/messaging/data/types/InboxTab;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/InboxTab;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tab"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversations"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/a/g/k;

    iget-object v1, p0, Le/a/a/g/h0;->u:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v1

    invoke-static {p2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/truecaller/messaging/data/types/Conversation;->i:Lw3/b/a/b;

    if-eqz v3, :cond_0

    .line 2
    iget-wide v3, v3, Lw3/b/a/e0/e;->a:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 3
    :goto_0
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Le/a/a/g/k;-><init>(Lcom/truecaller/messaging/data/types/InboxTab;Ljava/util/List;J)V

    .line 4
    iput-object v0, p0, Le/a/a/g/h0;->l:Le/a/a/g/k;

    .line 5
    invoke-virtual {p0}, Le/a/a/g/h0;->l()V

    return-void
.end method

.method public k(Lcom/truecaller/messaging/data/types/InboxTab;)V
    .locals 1

    const-string v0, "tab"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Le/a/a/g/h0;->l:Le/a/a/g/k;

    .line 2
    invoke-virtual {p0}, Le/a/a/g/h0;->l()V

    return-void
.end method

.method public l()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Le/a/a/g/h0;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/a/a/g/h0;->d:Z

    return-void

    .line 3
    :cond_0
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/a/g/h0;->q:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/a/g/h0$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/a/g/h0$b;-><init>(Le/a/a/g/h0;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public la(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "normalizedNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final m(Le/a/a/g/g0$a;)V
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/a/g/h0;->b:Le/a/a/g/f0;

    .line 2
    new-instance v1, Le/a/a/g/i0;

    .line 3
    iget-wide v2, p0, Le/a/a/g/h0;->f:J

    iget-object v4, p0, Le/a/a/g/h0;->t:Le/a/a/i0;

    invoke-interface {v4}, Le/a/a/i0;->d1()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 4
    :goto_0
    iget-wide v5, p0, Le/a/a/g/h0;->g:J

    iget-boolean v7, p0, Le/a/a/g/h0;->j:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Le/a/a/g/h0;->t:Le/a/a/i0;

    invoke-interface {v7}, Le/a/a/i0;->P1()J

    move-result-wide v7

    goto :goto_1

    :cond_1
    iget-object v7, p0, Le/a/a/g/h0;->t:Le/a/a/i0;

    invoke-interface {v7}, Le/a/a/i0;->w()J

    move-result-wide v7

    :goto_1
    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    .line 5
    :goto_2
    iget-wide v6, p0, Le/a/a/g/h0;->h:J

    iget-object v8, p0, Le/a/a/g/h0;->t:Le/a/a/i0;

    invoke-interface {v8}, Le/a/a/i0;->J0()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v4

    .line 6
    :goto_3
    iget-wide v7, p0, Le/a/a/g/h0;->i:J

    iget-object v9, p0, Le/a/a/g/h0;->t:Le/a/a/i0;

    invoke-interface {v9}, Le/a/a/i0;->M()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    .line 7
    :goto_4
    invoke-direct {v1, v2, v5, v6, v3}, Le/a/a/g/i0;-><init>(ZZZZ)V

    .line 8
    invoke-interface {p1, v0, v1}, Le/a/a/g/g0$a;->s2(Le/a/a/g/f0;Le/a/a/g/i0;)V

    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/g/h0;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/g0$a;

    .line 3
    invoke-virtual {p0, v1}, Le/a/a/g/h0;->m(Le/a/a/g/g0$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o(Ljava/util/Map;Lcom/truecaller/messaging/data/types/InboxTab;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/truecaller/messaging/data/types/InboxTab;",
            "+",
            "Ljava/util/List<",
            "Le/a/a/g/e0;",
            ">;>;",
            "Lcom/truecaller/messaging/data/types/InboxTab;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 2
    :goto_0
    iget-object v1, p0, Le/a/a/g/h0;->l:Le/a/a/g/k;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, v1, Le/a/a/g/k;->a:Lcom/truecaller/messaging/data/types/InboxTab;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eq v2, p2, :cond_2

    return p1

    :cond_2
    if-eqz v1, :cond_3

    .line 4
    iget-object p2, v1, Le/a/a/g/k;->b:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_2

    :cond_3
    move p2, v0

    :goto_2
    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final p(Lcom/truecaller/messaging/data/types/InboxTab;J)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 2
    :cond_0
    iput-wide p2, p0, Le/a/a/g/h0;->h:J

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Business tab doesn\'t have unseen badge"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    iput-wide p2, p0, Le/a/a/g/h0;->g:J

    goto :goto_0

    .line 5
    :cond_3
    iput-wide p2, p0, Le/a/a/g/h0;->f:J

    :goto_0
    return-void
.end method
