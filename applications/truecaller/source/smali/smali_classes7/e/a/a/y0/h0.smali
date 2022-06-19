.class public final Le/a/a/y0/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/y0/g0;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public final c:Landroid/content/Context;

.field public final d:Le/a/p4/b;

.field public final e:Le/a/u3/g;

.field public final f:Le/a/p5/c;

.field public final g:Le/a/a/g/w;

.field public final h:Le/a/p5/a0;

.field public final i:Le/a/a/i0;

.field public final j:Le/a/a/y0/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p4/b;Le/a/u3/g;Le/a/p5/c;Le/a/a/g/w;Le/a/p5/a0;Le/a/a/i0;Le/a/a/y0/l;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qaMenuSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/y0/h0;->c:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/y0/h0;->d:Le/a/p4/b;

    iput-object p3, p0, Le/a/a/y0/h0;->e:Le/a/u3/g;

    iput-object p4, p0, Le/a/a/y0/h0;->f:Le/a/p5/c;

    iput-object p5, p0, Le/a/a/y0/h0;->g:Le/a/a/g/w;

    iput-object p6, p0, Le/a/a/y0/h0;->h:Le/a/p5/a0;

    iput-object p7, p0, Le/a/a/y0/h0;->i:Le/a/a/i0;

    iput-object p8, p0, Le/a/a/y0/h0;->j:Le/a/a/y0/l;

    .line 2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/a/y0/h0;->a:Ljava/util/Set;

    const-wide/16 p1, -0x1

    .line 3
    iput-wide p1, p0, Le/a/a/y0/h0;->b:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Le/a/a/y0/h0;->b:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Le/a/a/y0/h0;->b:J

    return-void
.end method

.method public b(J)V
    .locals 1

    .line 1
    iput-wide p1, p0, Le/a/a/y0/h0;->b:J

    .line 2
    iget-object v0, p0, Le/a/a/y0/h0;->c:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->e(Landroid/content/Context;J)V

    return-void
.end method

.method public c(Lcom/truecaller/messaging/data/types/Message;J)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p3}, Le/a/a/y0/h0;->e(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Le/a/a/y0/h0$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Le/a/a/y0/h0$a;-><init>(Le/a/a/y0/h0;JLs1/w/d;)V

    const/4 p2, 0x1

    invoke-static {v1, v0, p2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz p2, :cond_1

    .line 3
    iget-object p3, p0, Le/a/a/y0/h0;->c:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Le/a/a/y0/h0;->f(Lcom/truecaller/messaging/data/types/Conversation;Lcom/truecaller/messaging/data/types/Message;)Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->f(Landroid/content/Context;Lcom/truecaller/messaging/data/types/Conversation;)V

    :cond_1
    return-void
.end method

.method public d(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Conversation;)V
    .locals 4

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversation"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p2, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-virtual {p0, v0, v1}, Le/a/a/y0/h0;->e(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string v1, "date"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 4
    iget-object v2, p0, Le/a/a/y0/h0;->f:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 5
    sget-wide v2, Le/a/a/y0/i0;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Le/a/a/y0/h0;->d:Le/a/p4/b;

    invoke-interface {v0}, Le/a/p4/b;->p0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Le/a/a/y0/h0;->a:Ljava/util/Set;

    .line 8
    iget-wide v1, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Le/a/a/y0/h0;->h:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Le/a/a/y0/h0;->a:Ljava/util/Set;

    .line 12
    iget-wide v1, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Le/a/a/y0/h0;->c:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Le/a/a/y0/h0;->f(Lcom/truecaller/messaging/data/types/Conversation;Lcom/truecaller/messaging/data/types/Message;)Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->f(Landroid/content/Context;Lcom/truecaller/messaging/data/types/Conversation;)V

    :cond_1
    return-void
.end method

.method public final e(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/y0/h0;->e:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->W()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/y0/h0;->h:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/y0/h0;->i:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->P3()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/a/y0/h0;->b:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f(Lcom/truecaller/messaging/data/types/Conversation;Lcom/truecaller/messaging/data/types/Message;)Lcom/truecaller/messaging/data/types/Conversation;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/y0/h0;->j:Le/a/a/y0/l;

    invoke-static {p2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 2
    new-instance v1, Ls1/k;

    invoke-direct {v1, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-static {v1}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/a/y0/l;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/data/types/Conversation;

    return-object p1
.end method
