.class public final Le/a/a/h1/n/m;
.super Le/a/u2/a/d;
.source "SourceFile"

# interfaces
.implements Le/a/a/h1/n/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/d<",
        "Le/a/a/h1/n/k;",
        "Le/a/a/h1/n/l;",
        ">;",
        "Le/a/a/h1/n/j;"
    }
.end annotation


# instance fields
.field public c:J

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/urgent/UrgentConversation;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/q2/i0;


# direct methods
.method public constructor <init>(Le/a/q2/i0;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/d;-><init>()V

    iput-object p1, p0, Le/a/a/h1/n/m;->e:Le/a/q2/i0;

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Le/a/a/h1/n/m;->c:J

    .line 3
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/a/h1/n/m;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Ca()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/a/a/h1/n/m;->c:J

    return-wide v0
.end method

.method public Ga()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/urgent/UrgentConversation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/h1/n/m;->d:Ljava/util/List;

    return-object v0
.end method

.method public final Hj(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Le/a/a/h1/n/m;->c:J

    .line 2
    iget-object v2, p0, Le/a/a/h1/n/m;->d:Ljava/util/List;

    .line 3
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/urgent/UrgentConversation;

    .line 4
    iget-object v2, v2, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 5
    iget-wide v2, v2, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/a/h1/n/m;->d:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/urgent/UrgentConversation;

    .line 8
    iget-object p1, p1, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 9
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    iput-wide v0, p0, Le/a/a/h1/n/m;->c:J

    .line 10
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/h1/n/l;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0, v1}, Le/a/a/h1/n/l;->Y8(J)V

    .line 11
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/h1/n/l;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/a/a/h1/n/l;->I3(Z)V

    .line 12
    :cond_2
    iget-object p1, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 13
    check-cast p1, Le/a/a/h1/n/k;

    if-eqz p1, :cond_3

    .line 14
    iget-wide v0, p0, Le/a/a/h1/n/m;->c:J

    .line 15
    invoke-interface {p1, v0, v1}, Le/a/a/h1/n/k;->Zd(J)V

    .line 16
    :cond_3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/h1/n/l;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/a/h1/n/l;->c0()V

    :cond_4
    return-void
.end method

.method public L0()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h1/n/l;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p0, Le/a/a/h1/n/m;->c:J

    .line 3
    invoke-interface {v0, v1, v2}, Le/a/a/h1/n/l;->u2(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h1/n/l;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/a/h1/n/l;->finish()V

    :cond_1
    return-void
.end method

.method public S6(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Le/a/a/h1/n/m;->c:J

    .line 2
    iget-object v2, p0, Le/a/a/h1/n/m;->d:Ljava/util/List;

    .line 3
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/urgent/UrgentConversation;

    .line 4
    iget-object v2, v2, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 5
    iget-wide v2, v2, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 6
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/h1/n/l;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/a/h1/n/l;->finish()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Le/a/a/h1/n/m;->Hj(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public W8(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/urgent/UrgentConversation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "conversations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/a/h1/n/m;->d:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-wide v3, p0, Le/a/a/h1/n/m;->c:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    const-wide/16 v5, -0x2

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Le/a/a/h1/n/m;->d:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-le v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0, v2}, Le/a/a/h1/n/m;->Hj(I)V

    return-void

    .line 7
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/truecaller/messaging/urgent/UrgentConversation;

    .line 8
    iget-object v3, v3, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 9
    iget-wide v3, v3, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 10
    iget-wide v5, p0, Le/a/a/h1/n/m;->c:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 11
    :goto_2
    check-cast v0, Lcom/truecaller/messaging/urgent/UrgentConversation;

    if-eqz v0, :cond_6

    .line 12
    iget-wide v0, v0, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_6

    .line 13
    iget-object p1, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 14
    check-cast p1, Le/a/a/h1/n/k;

    if-eqz p1, :cond_7

    .line 15
    iget-wide v0, p0, Le/a/a/h1/n/m;->c:J

    .line 16
    invoke-interface {p1, v0, v1}, Le/a/a/h1/n/k;->Zd(J)V

    goto :goto_3

    .line 17
    :cond_6
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/h1/n/l;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Le/a/a/h1/n/l;->c0()V

    :cond_7
    :goto_3
    return-void
.end method

.method public onCloseClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h1/n/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/h1/n/l;->finish()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h1/n/l;

    if-eqz v0, :cond_1

    .line 3
    iget-wide v1, p0, Le/a/a/h1/n/m;->c:J

    .line 4
    invoke-interface {v0, v1, v2}, Le/a/a/h1/n/l;->w7(J)V

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/a/h1/n/m;->e:Le/a/q2/i0;

    const/4 v1, 0x0

    const-string v2, "close"

    .line 6
    invoke-interface {v0, v2, v1}, Le/a/q2/i0;->j(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public r5()V
    .locals 3

    const-wide/16 v0, -0x2

    .line 1
    iput-wide v0, p0, Le/a/a/h1/n/m;->c:J

    .line 2
    iget-object v2, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 3
    check-cast v2, Le/a/a/h1/n/k;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0, v1}, Le/a/a/h1/n/k;->Zd(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h1/n/l;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/a/h1/n/l;->d1()V

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h1/n/l;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/a/h1/n/l;->I3(Z)V

    .line 6
    :cond_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h1/n/l;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/a/h1/n/l;->c0()V

    :cond_3
    return-void
.end method
