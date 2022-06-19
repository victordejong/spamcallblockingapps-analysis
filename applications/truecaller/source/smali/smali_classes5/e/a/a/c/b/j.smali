.class public final Le/a/a/c/b/j;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/c/b/h;",
        ">;",
        "Le/a/a/c/b/g;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Ljava/lang/String;

.field public final g:Ls1/w/f;

.field public final h:Lcom/truecaller/messaging/data/types/Conversation;

.field public final i:I

.field public final j:Le/a/a/c/w3;

.field public final k:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Le/a/a/i0;

.field public final m:Le/a/a/c/l5;

.field public final n:Le/a/q2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Lcom/truecaller/messaging/data/types/Conversation;ILe/a/a/c/w3;Lo3/a;Le/a/a/i0;Le/a/a/c/l5;Le/a/q2/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Lcom/truecaller/messaging/data/types/Conversation;
        .annotation runtime Ljavax/inject/Named;
            value = "conversation"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Ljavax/inject/Named;
            value = "conversation_filter"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "I",
            "Le/a/a/c/w3;",
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;",
            "Le/a/a/i0;",
            "Le/a/a/c/l5;",
            "Le/a/q2/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversation"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationDataSource"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationResourceProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/c/b/j;->g:Ls1/w/f;

    iput-object p2, p0, Le/a/a/c/b/j;->h:Lcom/truecaller/messaging/data/types/Conversation;

    iput p3, p0, Le/a/a/c/b/j;->i:I

    iput-object p4, p0, Le/a/a/c/b/j;->j:Le/a/a/c/w3;

    iput-object p5, p0, Le/a/a/c/b/j;->k:Lo3/a;

    iput-object p6, p0, Le/a/a/c/b/j;->l:Le/a/a/i0;

    iput-object p7, p0, Le/a/a/c/b/j;->m:Le/a/a/c/l5;

    iput-object p8, p0, Le/a/a/c/b/j;->n:Le/a/q2/a;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/a/c/b/j;->d:Ljava/util/List;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Le/a/a/c/b/j;->e:I

    return-void
.end method

.method public static final Ij(Le/a/a/c/b/j;Le/a/a/g/j0/q;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Le/a/a/c/b/j;->Lj(Le/a/a/g/j0/q;Z)V

    .line 2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    sget-object v0, Lcom/truecaller/messaging/conversation/search/SearchFilter;->MEMBER:Lcom/truecaller/messaging/conversation/search/SearchFilter;

    invoke-virtual {p0, v0, p2}, Le/a/a/c/b/j;->Oj(Lcom/truecaller/messaging/conversation/search/SearchFilter;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "member"

    invoke-virtual {p0, p2, p1}, Le/a/a/c/b/j;->Kj(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final Jj(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/c/b/j;->d:Ljava/util/List;

    invoke-static {v0, p1}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-wide v2, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 4
    iget-object v0, p0, Le/a/a/c/b/j;->j:Le/a/a/c/w3;

    invoke-interface {v0, v2, v3}, Le/a/a/c/w3;->a(J)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 6
    invoke-virtual {p0, v2, v3, v0, v1}, Le/a/a/c/b/j;->Nj(JIZ)V

    .line 7
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/h;

    if-eqz v0, :cond_1

    add-int/2addr p1, v1

    iget-object v1, p0, Le/a/a/c/b/j;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p1, v1}, Le/a/a/c/b/h;->Fh(II)V

    :cond_1
    return-void
.end method

.method public final Kj(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/a/c/b/j;->n:Le/a/q2/a;

    const-string v1, "ConversationSearch"

    const-string v2, "type"

    .line 2
    invoke-static {v1, v2}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v8, "searchType"

    const-string v10, "name"

    const-string v11, "value"

    move-object v3, v8

    move-object v4, v10

    move-object v5, p1

    move-object v6, v11

    move-object v7, v2

    move-object v9, p1

    .line 3
    invoke-static/range {v3 .. v9}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v8, "conversation"

    .line 4
    iget-object v3, p0, Le/a/a/c/b/j;->h:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v3, v3, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v4, "conversation.participants"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/a/i1/h;->e([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "group"

    goto :goto_0

    :cond_0
    const-string v3, "121"

    :goto_0
    move-object v9, v3

    move-object v3, v8

    move-object v4, v10

    move-object v5, v9

    move-object v6, v11

    move-object v7, v2

    .line 5
    invoke-static/range {v3 .. v9}, Le/d/c/a/a;->K0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    const-string v3, "numResults"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 7
    invoke-static {v3, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v4, p2

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 9
    invoke-static {v1, p1, v2, p2, v0}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public final Lj(Le/a/a/g/j0/q;Z)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {p1}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 5
    iput-object v0, p0, Le/a/a/c/b/j;->d:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/b/h;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/a/c/b/h;->m9()V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Le/a/a/c/b/j;->e:I

    .line 9
    iget-object v0, p0, Le/a/a/c/b/j;->d:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    .line 10
    iget-wide v0, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 11
    iget-object v2, p0, Le/a/a/c/b/j;->j:Le/a/a/c/w3;

    invoke-interface {v2, v0, v1}, Le/a/a/c/w3;->a(J)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Le/a/a/c/b/j;->d:Ljava/util/List;

    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Message;

    .line 13
    iget-wide v1, v1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 14
    invoke-virtual {p0, v1, v2, v0, p2}, Le/a/a/c/b/j;->Nj(JIZ)V

    .line 15
    :cond_4
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/a/c/b/h;

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    .line 16
    invoke-interface {p2, v0}, Le/a/a/c/b/h;->yz(Z)V

    .line 17
    invoke-interface {p2, p1}, Le/a/a/c/b/h;->fk(Z)V

    .line 18
    iget p1, p0, Le/a/a/c/b/j;->e:I

    add-int/2addr p1, v0

    iget-object v0, p0, Le/a/a/c/b/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2, p1, v0}, Le/a/a/c/b/h;->Fh(II)V

    :cond_5
    return-void

    :catchall_0
    move-exception p2

    .line 19
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final Mj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Le/a/a/c/b/h;->yz(Z)V

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Le/a/a/c/b/h;->fk(Z)V

    .line 4
    invoke-interface {v0, v1}, Le/a/a/c/b/h;->Ok(Z)V

    .line 5
    invoke-interface {v0}, Le/a/a/c/b/h;->zs()V

    .line 6
    invoke-interface {v0}, Le/a/a/c/b/h;->A()V

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Le/a/a/c/b/j;->f:Ljava/lang/String;

    .line 8
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    iput-object v0, p0, Le/a/a/c/b/j;->d:Ljava/util/List;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Le/a/a/c/b/j;->e:I

    return-void
.end method

.method public final Nj(JIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p3}, Le/a/a/c/b/h;->A3(I)V

    .line 3
    invoke-interface {v0, p3}, Le/a/a/c/b/h;->C4(I)V

    if-eqz p4, :cond_0

    .line 4
    iget-object p3, p0, Le/a/a/c/b/j;->f:Ljava/lang/String;

    invoke-interface {v0, p1, p2, p3}, Le/a/a/c/b/h;->Eb(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public O7()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/c/b/h;->MA()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/h;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/c/b/h;->Wr(Z)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Le/a/a/c/b/j;->Mj()V

    return-void
.end method

.method public final Oj(Lcom/truecaller/messaging/conversation/search/SearchFilter;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Le/a/a/c/b/h;->fk(Z)V

    .line 3
    invoke-interface {v0, v1}, Le/a/a/c/b/h;->Ok(Z)V

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Le/a/a/c/b/h;->Wr(Z)V

    .line 5
    invoke-interface {v0, p1, p2}, Le/a/a/c/b/h;->Um(Lcom/truecaller/messaging/conversation/search/SearchFilter;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Pd(Ljava/lang/String;)V
    .locals 8

    const-string v0, "string"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2, v3}, Le/a/a/c/b/h;->f3(ZJ)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    return-void

    .line 4
    :cond_2
    iput-object p1, p0, Le/a/a/c/b/j;->f:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    new-instance v5, Le/a/a/c/b/j$d;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Le/a/a/c/b/j$d;-><init>(Le/a/a/c/b/j;Ljava/lang/String;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "email"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/a/c/b/h;->Q(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/a/c/b/h;->X(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Xg()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/c/b/h;->to()V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Le/a/a/c/b/h;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/a/c/b/j;->l:Le/a/a/i0;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/a/i0;->i0(Z)V

    .line 5
    new-instance v5, Le/a/a/c/b/i;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Le/a/a/c/b/i;-><init>(Le/a/a/c/b/j;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const-wide/16 v2, 0x12c

    .line 6
    invoke-interface {p1, v1, v2, v3}, Le/a/a/c/b/h;->f3(ZJ)V

    .line 7
    invoke-interface {p1}, Le/a/a/c/b/h;->Qr()V

    .line 8
    iget-object v0, p0, Le/a/a/c/b/j;->h:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v0, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v1, "conversation.participants"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/a/i1/h;->f([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/c/b/h;->lh(Z)V

    return-void
.end method

.method public Ye()V
    .locals 6

    .line 1
    new-instance v3, Le/a/a/c/b/j$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/a/c/b/j$a;-><init>(Le/a/a/c/b/j;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public aa()V
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/c/b/j;->e:I

    iget-object v1, p0, Le/a/a/c/b/j;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Le/a/a/c/b/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Le/a/a/c/b/j;->e:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 2
    iput v1, p0, Le/a/a/c/b/j;->e:I

    invoke-virtual {p0, v1}, Le/a/a/c/b/j;->Jj(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/a/c/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/a/c/b/j;->j:Le/a/a/c/w3;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/c/w3;->e(Le/a/a/g/j0/q;)V

    return-void
.end method

.method public ha(Ljava/lang/String;)V
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/h;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Le/a/a/c/b/h;->Wr(Z)V

    .line 2
    :cond_1
    invoke-virtual {p0}, Le/a/a/c/b/j;->Mj()V

    return-void
.end method

.method public l5(Lcom/truecaller/data/entity/messaging/Participant;)V
    .locals 7

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/a/c/b/j$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/a/c/b/j$c;-><init>(Le/a/a/c/b/j;Lcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public n5()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Le/a/a/c/b/h;->a2(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/h;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Le/a/a/c/b/h;->it(Z)V

    :cond_1
    return-void
.end method

.method public nb(Lw3/b/a/b;)V
    .locals 7

    const-string v0, "date"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/a/c/b/j$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/a/c/b/j$b;-><init>(Le/a/a/c/b/j;Lw3/b/a/b;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public pd()V
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/b/j;->e:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Le/a/a/c/b/j;->e:I

    invoke-virtual {p0, v0}, Le/a/a/c/b/j;->Jj(I)V

    return-void
.end method

.method public uh()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/b/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/c/b/h;->x9()V

    :cond_0
    return-void
.end method
