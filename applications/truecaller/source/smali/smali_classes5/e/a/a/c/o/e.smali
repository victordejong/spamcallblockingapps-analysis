.class public final Le/a/a/c/o/e;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/o/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/c/o/d;",
        ">;",
        "Le/a/a/c/o/c;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:Z

.field public final f:Ls1/w/f;

.field public final g:Ls1/w/f;

.field public h:Lcom/truecaller/messaging/data/types/Conversation;

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/a/a/c/o/h;

.field public final k:Le/a/o5/b0;

.field public final l:Le/a/p5/a0;

.field public final m:Le/a/p5/c0;

.field public final n:Le/a/q2/a;

.field public final o:Le/a/o5/l1;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Lcom/truecaller/messaging/data/types/Conversation;Lo3/a;Le/a/a/c/o/h;Le/a/o5/b0;Le/a/p5/a0;Le/a/p5/c0;Le/a/q2/a;Le/a/o5/l1;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .param p3    # Lcom/truecaller/messaging/data/types/Conversation;
        .annotation runtime Ljavax/inject/Named;
            value = "conversation"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;",
            "Le/a/a/c/o/h;",
            "Le/a/o5/b0;",
            "Le/a/p5/a0;",
            "Le/a/p5/c0;",
            "Le/a/q2/a;",
            "Le/a/o5/l1;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationNotificationsManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ringtoneNotificationSettings"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/c/o/e;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/a/c/o/e;->g:Ls1/w/f;

    iput-object p3, p0, Le/a/a/c/o/e;->h:Lcom/truecaller/messaging/data/types/Conversation;

    iput-object p4, p0, Le/a/a/c/o/e;->i:Lo3/a;

    iput-object p5, p0, Le/a/a/c/o/e;->j:Le/a/a/c/o/h;

    iput-object p6, p0, Le/a/a/c/o/e;->k:Le/a/o5/b0;

    iput-object p7, p0, Le/a/a/c/o/e;->l:Le/a/p5/a0;

    iput-object p8, p0, Le/a/a/c/o/e;->m:Le/a/p5/c0;

    iput-object p9, p0, Le/a/a/c/o/e;->n:Le/a/q2/a;

    iput-object p10, p0, Le/a/a/c/o/e;->o:Le/a/o5/l1;

    return-void
.end method


# virtual methods
.method public F5(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Le/a/a/c/o/e;->sg()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/a/c/o/e;->g:Ls1/w/f;

    const/4 v2, 0x0

    new-instance v3, Le/a/a/c/o/e$f;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/a/c/o/e$f;-><init>(Le/a/a/c/o/e;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_0
    return-void
.end method

.method public final synthetic Ij(Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p1, Le/a/a/c/o/e$a;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/a/c/o/e$a;

    iget v2, v1, Le/a/a/c/o/e$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/a/c/o/e$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/a/c/o/e$a;

    invoke-direct {v1, p0, p1}, Le/a/a/c/o/e$a;-><init>(Le/a/a/c/o/e;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/a/c/o/e$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/a/c/o/e$a;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v3, v1, Le/a/a/c/o/e$a;->i:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/c0;

    iget-object v5, v1, Le/a/a/c/o/e$a;->h:Ljava/lang/Object;

    check-cast v5, Ls1/z/c/c0;

    iget-object v6, v1, Le/a/a/c/o/e$a;->g:Ljava/lang/Object;

    check-cast v6, Le/a/a/c/o/e;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object v3

    .line 4
    iget-object p1, p0, Le/a/a/c/o/e;->i:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/w;

    iget-object v6, p0, Le/a/a/c/o/e;->h:Lcom/truecaller/messaging/data/types/Conversation;

    iget-wide v6, v6, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    iput-object p0, v1, Le/a/a/c/o/e$a;->g:Ljava/lang/Object;

    iput-object v3, v1, Le/a/a/c/o/e$a;->h:Ljava/lang/Object;

    iput-object v3, v1, Le/a/a/c/o/e$a;->i:Ljava/lang/Object;

    iput v5, v1, Le/a/a/c/o/e$a;->e:I

    invoke-interface {p1, v6, v7, v1}, Le/a/a/g/w;->j(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v6, p0

    move-object v5, v3

    :goto_1
    check-cast p1, Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz p1, :cond_5

    iput-object p1, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 5
    iget-object p1, v6, Le/a/a/c/o/e;->f:Ls1/w/f;

    new-instance v3, Le/a/a/c/o/e$b;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v5, v7}, Le/a/a/c/o/e$b;-><init>(Le/a/a/c/o/e;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v7, v1, Le/a/a/c/o/e$a;->g:Ljava/lang/Object;

    iput-object v7, v1, Le/a/a/c/o/e$a;->h:Ljava/lang/Object;

    iput-object v7, v1, Le/a/a/c/o/e$a;->i:Ljava/lang/Object;

    iput v4, v1, Le/a/a/c/o/e$a;->e:I

    invoke-static {p1, v3, v1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    return-object v2

    :cond_5
    :goto_2
    return-object v0
.end method

.method public final Jj()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/c/o/e;->h:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v1, v0, Lcom/truecaller/messaging/data/types/Conversation;->Q:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v1, "conversation.participants"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, v0, v4

    .line 4
    iget-object v5, v5, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz v5, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    iget-object v0, p0, Le/a/a/c/o/e;->o:Le/a/o5/l1;

    invoke-interface {v0}, Le/a/o5/l1;->g()Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 5
    :cond_4
    iget-object v0, p0, Le/a/a/c/o/e;->o:Le/a/o5/l1;

    invoke-interface {v0}, Le/a/o5/l1;->d()Landroid/net/Uri;

    move-result-object v0

    .line 6
    :goto_3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/o/d;

    if-eqz v1, :cond_5

    invoke-interface {v1, v0, v2}, Le/a/a/c/o/d;->q6(Landroid/net/Uri;I)V

    :cond_5
    return-void
.end method

.method public final Kj()V
    .locals 13

    .line 1
    iget-object v0, p0, Le/a/a/c/o/e;->h:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v1, p0, Le/a/a/c/o/e;->k:Le/a/o5/b0;

    invoke-interface {v1}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v1

    .line 2
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    .line 3
    invoke-static {v0, v1, v2}, Le/a/c/p/a;->v1(Lcom/truecaller/messaging/data/types/Conversation;J)Z

    move-result v0

    .line 4
    iget-object v1, p0, Le/a/a/c/o/e;->h:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Conversation;->P:Lw3/b/a/b;

    const-string v2, "conversation.muted"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-wide v3, v1, Lw3/b/a/e0/e;->a:J

    const/4 v1, -0x1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Le/a/a/c/o/e;->m:Le/a/p5/c0;

    const v2, 0x7f1209e2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-nez v1, :cond_1

    move-object v1, v5

    goto/16 :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Le/a/a/c/o/e;->m:Le/a/p5/c0;

    const v3, 0x7f1209e3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 8
    iget-object v7, p0, Le/a/a/c/o/e;->h:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v7, v7, Lcom/truecaller/messaging/data/types/Conversation;->P:Lw3/b/a/b;

    invoke-static {v7, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-wide v7, v7, Lw3/b/a/e0/e;->a:J

    .line 10
    iget-object v2, p0, Le/a/a/c/o/e;->k:Le/a/o5/b0;

    invoke-interface {v2}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v9

    .line 11
    iget-wide v9, v9, Lw3/b/a/e0/e;->a:J

    .line 12
    invoke-interface {v2, v7, v8, v9, v10}, Le/a/o5/b0;->u(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Le/a/a/c/o/e;->k:Le/a/o5/b0;

    invoke-interface {v2, v7, v8}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 13
    :cond_2
    iget-object v2, p0, Le/a/a/c/o/e;->k:Le/a/o5/b0;

    invoke-interface {v2, v7, v8}, Le/a/o5/b0;->o(J)Z

    move-result v2

    const/16 v9, 0x20

    if-eqz v2, :cond_3

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Le/a/a/c/o/e;->m:Le/a/p5/c0;

    const v11, 0x7f1209dc

    new-array v12, v6, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v9, p0, Le/a/a/c/o/e;->k:Le/a/o5/b0;

    invoke-interface {v9, v7, v8}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 15
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Le/a/a/c/o/e;->k:Le/a/o5/b0;

    const-string v11, "dd MMM YYYY"

    invoke-interface {v10, v7, v8, v11}, Le/a/o5/b0;->t(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v9, p0, Le/a/a/c/o/e;->k:Le/a/o5/b0;

    invoke-interface {v9, v7, v8}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v4, v6

    .line 16
    invoke-interface {v1, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 17
    :goto_1
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a/c/o/d;

    if-eqz v2, :cond_4

    invoke-interface {v2, v0}, Le/a/a/c/o/d;->Uj(Z)V

    .line 18
    :cond_4
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a/c/o/d;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    move-object v5, v1

    :cond_5
    invoke-interface {v2, v5}, Le/a/a/c/o/d;->cf(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public U3()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/a/c/o/e;->Kj()V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/a/c/o/d;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Le/a/a/c/o/e;->g:Ls1/w/f;

    new-instance v4, Le/a/a/c/o/f;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/a/c/o/f;-><init>(Le/a/a/c/o/e;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c()V
    .locals 11

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/a/c/o/e;->d:Ljava/lang/String;

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    const-string v2, "name"

    const-string v3, "type"

    if-eqz v0, :cond_0

    .line 3
    iget-object v4, p0, Le/a/a/c/o/e;->h:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v5, p0, Le/a/a/c/o/e;->k:Le/a/o5/b0;

    invoke-interface {v5}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v5

    .line 4
    iget-wide v5, v5, Lw3/b/a/e0/e;->a:J

    .line 5
    invoke-static {v4, v5, v6}, Le/a/c/p/a;->v1(Lcom/truecaller/messaging/data/types/Conversation;J)Z

    move-result v4

    .line 6
    iget-object v5, p0, Le/a/a/c/o/e;->n:Le/a/q2/a;

    const-string v6, "ConversationMute"

    .line 7
    invoke-static {v6, v3}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 8
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v9, "duration"

    .line 9
    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "value"

    invoke-static {v0, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "muted"

    .line 11
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    invoke-virtual {v0, v6}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v0, v8}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v0, v7}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v0}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {v5, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 15
    :cond_0
    iget-boolean v0, p0, Le/a/a/c/o/e;->e:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Le/a/a/c/o/e;->n:Le/a/q2/a;

    const-string v4, "ConversationMessageSoundSetting"

    .line 17
    invoke-static {v4, v3}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 18
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v6, "customSound"

    .line 19
    iget-object v7, p0, Le/a/a/c/o/e;->h:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v7, v7, Lcom/truecaller/messaging/data/types/Conversation;->Q:Ljava/lang/String;

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 20
    :goto_0
    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v2

    invoke-virtual {v2, v4}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v2, v5}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v2, v3}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v2}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {v0, v2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :goto_1
    return-void
.end method

.method public c2(Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;)V
    .locals 7

    const-string v0, "period"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Le/a/a/c/o/e;->g:Ls1/w/f;

    new-instance v4, Le/a/a/c/o/e$e;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/a/c/o/e$e;-><init>(Le/a/a/c/o/e;Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "forever"

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const-string p1, "24h"

    goto :goto_0

    :cond_2
    const-string p1, "1h"

    .line 4
    :goto_0
    iput-object p1, p0, Le/a/a/c/o/e;->d:Ljava/lang/String;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const-string p2, "android.intent.extra.ringtone.PICKED_URI"

    .line 1
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 2
    :goto_0
    iget-object v2, p0, Le/a/a/c/o/e;->g:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/a/c/o/e$c;

    invoke-direct {v4, p0, p2, p1}, Le/a/a/c/o/e$c;-><init>(Le/a/a/c/o/e;Landroid/net/Uri;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 3
    iput-boolean v0, p0, Le/a/a/c/o/e;->e:Z

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/c/o/e;->l:Le/a/p5/a0;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p1, p2, p3, v0}, Le/a/p5/a0;->g([Ljava/lang/String;[I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Le/a/a/c/o/e;->Jj()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 1
    iget-object v1, p0, Le/a/a/c/o/e;->g:Ls1/w/f;

    new-instance v3, Le/a/a/c/o/g;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/a/c/o/g;-><init>(Le/a/a/c/o/e;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public sg()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/o/e;->l:Le/a/p5/a0;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/a/c/o/e;->Jj()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/o/d;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/a/c/o/d;->Vo(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public u3()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/o/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/c/o/d;->bc()V

    :cond_0
    return-void
.end method

.method public v3(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/o/d;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/a/c/o/d;->bc()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/a/c/o/e;->g:Ls1/w/f;

    const/4 v2, 0x0

    new-instance v3, Le/a/a/c/o/e$d;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/a/c/o/e$d;-><init>(Le/a/a/c/o/e;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const-string p1, "unmuted"

    .line 3
    iput-object p1, p0, Le/a/a/c/o/e;->d:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
