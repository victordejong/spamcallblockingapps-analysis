.class public final Le/a/a/j/l;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/j/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/j/i;",
        ">;",
        "Le/a/a/j/h;"
    }
.end annotation


# instance fields
.field public d:Z

.field public e:F

.field public final f:I

.field public g:Z

.field public h:Z

.field public i:J

.field public j:J

.field public final k:J

.field public l:Le/a/a/g/j0/o;

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/truecaller/messaging/mediaviewer/MediaPosition;",
            "Le/a/a/g/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ls1/w/f;

.field public final o:Z

.field public p:Lcom/truecaller/messaging/data/types/BinaryEntity;

.field public q:Lcom/truecaller/messaging/data/types/Message;

.field public final r:Lcom/truecaller/messaging/data/types/Conversation;

.field public final s:Le/a/o5/b0;

.field public final t:Le/a/p5/c0;

.field public final u:Le/a/a/j/g;

.field public final v:Le/a/p5/c;

.field public final w:Le/a/a/n/h;

.field public final x:Le/a/a/c/p5;

.field public final y:Le/a/a/i1/d;

.field public final z:Le/a/a/i0;


# direct methods
.method public constructor <init>(Ls1/w/f;ZLcom/truecaller/messaging/data/types/BinaryEntity;Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Conversation;Le/a/o5/b0;Le/a/p5/c0;Le/a/a/j/g;Le/a/p5/c;Le/a/a/n/h;Le/a/a/c/p5;Le/a/a/i1/d;Le/a/a/i0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "is_bubble_intent"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageAttachmentFetcher"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationUtil"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingActionHelper"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/j/l;->n:Ls1/w/f;

    iput-boolean p2, p0, Le/a/a/j/l;->o:Z

    iput-object p3, p0, Le/a/a/j/l;->p:Lcom/truecaller/messaging/data/types/BinaryEntity;

    iput-object p4, p0, Le/a/a/j/l;->q:Lcom/truecaller/messaging/data/types/Message;

    iput-object p5, p0, Le/a/a/j/l;->r:Lcom/truecaller/messaging/data/types/Conversation;

    iput-object p6, p0, Le/a/a/j/l;->s:Le/a/o5/b0;

    iput-object p7, p0, Le/a/a/j/l;->t:Le/a/p5/c0;

    iput-object p8, p0, Le/a/a/j/l;->u:Le/a/a/j/g;

    iput-object p9, p0, Le/a/a/j/l;->v:Le/a/p5/c;

    iput-object p10, p0, Le/a/a/j/l;->w:Le/a/a/n/h;

    iput-object p11, p0, Le/a/a/j/l;->x:Le/a/a/c/p5;

    iput-object p12, p0, Le/a/a/j/l;->y:Le/a/a/i1/d;

    iput-object p13, p0, Le/a/a/j/l;->z:Le/a/a/i0;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/a/j/l;->d:Z

    const p2, 0x7f070358

    .line 3
    invoke-interface {p7, p2}, Le/a/p5/c0;->H(I)I

    move-result p2

    iput p2, p0, Le/a/a/j/l;->f:I

    .line 4
    iput-boolean p1, p0, Le/a/a/j/l;->g:Z

    .line 5
    iget-object p1, p0, Le/a/a/j/l;->p:Lcom/truecaller/messaging/data/types/BinaryEntity;

    iget-wide p1, p1, Lcom/truecaller/messaging/data/types/Entity;->a:J

    iput-wide p1, p0, Le/a/a/j/l;->k:J

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/j/l;->m:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final Ij(Le/a/a/g/l0/c;)V
    .locals 2

    .line 1
    invoke-static {p1}, Le/a/c/p/a;->R2(Le/a/a/g/l0/c;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    iput-object v0, p0, Le/a/a/j/l;->p:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 2
    iget-object v0, p0, Le/a/a/j/l;->q:Lcom/truecaller/messaging/data/types/Message;

    iget-wide v0, v0, Lcom/truecaller/messaging/data/types/Message;->b:J

    invoke-static {p1, v0, v1}, Le/a/c/p/a;->f3(Le/a/a/g/l0/c;J)Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    iput-object p1, p0, Le/a/a/j/l;->q:Lcom/truecaller/messaging/data/types/Message;

    .line 3
    invoke-virtual {p0}, Le/a/a/j/l;->Lj()V

    return-void
.end method

.method public final Jj(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Le/a/a/g/l0/c;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/j/l;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v4, Le/a/a/j/l$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, p1, v0}, Le/a/a/j/l$a;-><init>(Le/a/a/j/l;Le/a/a/g/l0/c;Lcom/truecaller/messaging/mediaviewer/MediaPosition;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final Kj(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/j/i;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/a/j/i;->Gj()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Le/a/a/j/i;->yf()V

    .line 3
    :goto_0
    invoke-interface {v0, p1}, Le/a/a/j/i;->l9(Z)V

    .line 4
    iget-object v1, p0, Le/a/a/j/l;->p:Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/BinaryEntity;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Le/a/a/j/i;->r2(Z)V

    .line 5
    :cond_1
    iput-boolean p1, p0, Le/a/a/j/l;->d:Z

    :cond_2
    return-void
.end method

.method public final Lj()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/j/i;

    if-eqz v0, :cond_5

    .line 2
    iget-object v1, p0, Le/a/a/j/l;->q:Lcom/truecaller/messaging/data/types/Message;

    invoke-static {v1}, Le/a/c/p/a;->l1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/a/j/l;->t:Le/a/p5/c0;

    const v4, 0x7f120390

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "resourceProvider.getString(R.string.MessageDraft)"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/a/j/i;->setTitle(Ljava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_0
    iget-object v1, p0, Le/a/a/j/l;->q:Lcom/truecaller/messaging/data/types/Message;

    invoke-static {v1}, Le/a/c/p/a;->x1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Le/a/a/j/l;->t:Le/a/p5/c0;

    const v4, 0x7f120437

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_4

    .line 6
    iget-object v1, p0, Le/a/a/j/l;->q:Lcom/truecaller/messaging/data/types/Message;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v4, "message.participant"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v4, "when (message.isOutgoing\u2026yName()\n                }"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, v1}, Le/a/a/j/i;->setTitle(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Le/a/a/j/l;->s:Le/a/o5/b0;

    iget-object v4, p0, Le/a/a/j/l;->q:Lcom/truecaller/messaging/data/types/Message;

    iget-object v4, v4, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string v5, "message.date"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-wide v4, v4, Lw3/b/a/e0/e;->a:J

    .line 10
    invoke-interface {v1, v4, v5}, Le/a/o5/b0;->n(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a/j/i;->t4(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p0, Le/a/a/j/l;->q:Lcom/truecaller/messaging/data/types/Message;

    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "message.buildMessageText()"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    iget-object v5, p0, Le/a/a/j/l;->q:Lcom/truecaller/messaging/data/types/Message;

    invoke-static {v5}, Le/a/c/p/a;->z1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v5

    invoke-interface {v0, v4, v1, v5}, Le/a/a/j/i;->cl(ZLjava/lang/String;Z)V

    .line 13
    :goto_2
    iget-object v1, p0, Le/a/a/j/l;->p:Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/BinaryEntity;->w()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/a/j/i;->KA(Z)V

    .line 14
    iget-boolean v1, p0, Le/a/a/j/l;->d:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/a/a/j/l;->p:Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/BinaryEntity;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-interface {v0, v2}, Le/a/a/j/i;->r2(Z)V

    goto :goto_4

    .line 15
    :cond_4
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_5
    :goto_4
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Le/a/a/j/i;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Le/a/a/j/l;->Lj()V

    .line 5
    iget-object v0, p0, Le/a/a/j/l;->p:Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/BinaryEntity;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Le/a/a/j/l;->Kj(Z)V

    .line 7
    sget-object v0, Lcom/truecaller/messaging/mediaviewer/MediaPosition;->CURRENT:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    iget-object v1, p0, Le/a/a/j/l;->p:Lcom/truecaller/messaging/data/types/BinaryEntity;

    iget-object v2, v1, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    iget-wide v3, v1, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-interface {p1, v0, v2, v3, v4}, Le/a/a/j/i;->Nd(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/net/Uri;J)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/a/j/l;->p:Lcom/truecaller/messaging/data/types/BinaryEntity;

    instance-of p1, p1, Lcom/truecaller/messaging/data/types/VideoEntity;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Le/a/a/j/l;->Kj(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/j/l;->l:Le/a/a/g/j0/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/a/j/l;->l:Le/a/a/g/j0/o;

    .line 3
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method

.method public fa()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j/l;->l:Le/a/a/g/j0/o;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Le/a/a/g/j0/o;->f2()Le/a/a/g/l0/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Le/a/a/j/l;->Ij(Le/a/a/g/l0/c;)V

    .line 4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/truecaller/messaging/mediaviewer/MediaPosition;->PREVIOUS:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    invoke-interface {v0}, Le/a/a/g/j0/o;->f2()Le/a/a/g/l0/c;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Le/a/a/j/l;->Jj(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Le/a/a/g/l0/c;)V

    .line 5
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    :cond_2
    return-void
.end method

.method public final finish()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/j/i;

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/a/a/j/l;->p:Lcom/truecaller/messaging/data/types/BinaryEntity;

    iget-wide v1, v1, Lcom/truecaller/messaging/data/types/Entity;->a:J

    iget-wide v3, p0, Le/a/a/j/l;->k:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Le/a/a/j/i;->Y4(Z)V

    :cond_1
    return-void
.end method

.method public pc(ZZ)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Le/a/a/j/l;->g:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/j/i;

    if-eqz v0, :cond_1

    const v1, 0x7f080534

    invoke-interface {v0, v1}, Le/a/a/j/i;->z2(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/j/i;

    if-eqz v0, :cond_1

    const v1, 0x7f080535

    invoke-interface {v0, v1}, Le/a/a/j/i;->z2(I)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/j/i;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/a/j/i;->qa()V

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/j/i;

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Le/a/a/j/i;->Ne(J)V

    :cond_3
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Le/a/a/j/l;->Kj(Z)V

    :cond_4
    return-void
.end method

.method public pf()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j/l;->l:Le/a/a/g/j0/o;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Le/a/a/g/j0/o;->f2()Le/a/a/g/l0/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Le/a/a/j/l;->Ij(Le/a/a/g/l0/c;)V

    .line 4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/truecaller/messaging/mediaviewer/MediaPosition;->NEXT:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    invoke-interface {v0}, Le/a/a/g/j0/o;->f2()Le/a/a/g/l0/c;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Le/a/a/j/l;->Jj(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Le/a/a/g/l0/c;)V

    .line 5
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    :cond_2
    return-void
.end method
