.class public final Lcom/truecaller/messaging/data/types/Message$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/data/types/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public A:Lcom/truecaller/messaging/data/types/ReplySnippet;

.field public B:Ljava/lang/String;

.field public C:J

.field public D:I

.field public E:I

.field public F:J

.field public G:J

.field public H:J

.field public I:J

.field public J:Z

.field public K:Lw3/b/a/b;

.field public L:Lcom/truecaller/messaging/data/types/ImForwardInfo;

.field public M:I

.field public N:J

.field public O:J

.field public a:J

.field public b:J

.field public c:Lcom/truecaller/data/entity/messaging/Participant;

.field public d:Lw3/b/a/b;

.field public e:Lw3/b/a/b;

.field public f:Lw3/b/a/b;

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Lcom/truecaller/messaging/data/types/TransportInfo;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/truecaller/messaging/data/types/Mention;",
            ">;"
        }
    .end annotation
.end field

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Lw3/b/a/b;

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->a:J

    .line 3
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->b:J

    const/4 v2, 0x3

    .line 4
    iput v2, p0, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 5
    iput v2, p0, Lcom/truecaller/messaging/data/types/Message$b;->l:I

    const-string v2, "-1"

    .line 6
    iput-object v2, p0, Lcom/truecaller/messaging/data/types/Message$b;->m:Ljava/lang/String;

    .line 7
    sget-object v2, Lcom/truecaller/messaging/transport/NullTransportInfo;->b:Lcom/truecaller/messaging/transport/NullTransportInfo;

    iput-object v2, p0, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 8
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/truecaller/messaging/data/types/Message$b;->p:Ljava/util/Set;

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, p0, Lcom/truecaller/messaging/data/types/Message$b;->q:Z

    .line 10
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->z:J

    .line 11
    iput v2, p0, Lcom/truecaller/messaging/data/types/Message$b;->M:I

    .line 12
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->N:J

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Message$a;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->a:J

    .line 15
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->b:J

    const/4 p2, 0x3

    .line 16
    iput p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 17
    iput p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->l:I

    const-string p2, "-1"

    .line 18
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->m:Ljava/lang/String;

    .line 19
    sget-object p2, Lcom/truecaller/messaging/transport/NullTransportInfo;->b:Lcom/truecaller/messaging/transport/NullTransportInfo;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 20
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->p:Ljava/util/Set;

    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->q:Z

    .line 22
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->z:J

    .line 23
    iput p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->M:I

    .line 24
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->N:J

    .line 25
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 26
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->a:J

    .line 27
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message;->b:J

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->b:J

    .line 28
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 29
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->e:Lw3/b/a/b;

    .line 30
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->d:Lw3/b/a/b;

    .line 31
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->f:Lw3/b/a/b;

    .line 32
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->g:I

    .line 33
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Message;->h:Z

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->h:Z

    .line 34
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Message;->i:Z

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->i:Z

    .line 35
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Message;->j:Z

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->j:Z

    .line 36
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 37
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->l:I

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->l:I

    .line 38
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 39
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->m:Ljava/lang/String;

    .line 40
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length p2, p2

    if-lez p2, :cond_0

    .line 41
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->o:Ljava/util/List;

    .line 42
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    invoke-static {p2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 43
    :cond_0
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->r:Ljava/lang/String;

    .line 44
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Message;->A:Z

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->q:Z

    .line 45
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->t:I

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->u:I

    .line 46
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->u:I

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->v:I

    .line 47
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->v:I

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->w:I

    .line 48
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->w:I

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->x:I

    .line 49
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->x:Lw3/b/a/b;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->y:Lw3/b/a/b;

    .line 50
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message;->B:J

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->z:J

    .line 51
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->q:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->s:Ljava/lang/String;

    .line 52
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->t:Ljava/lang/String;

    .line 53
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->y:Lcom/truecaller/messaging/data/types/ReplySnippet;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->A:Lcom/truecaller/messaging/data/types/ReplySnippet;

    .line 54
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message;->C:J

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->C:J

    .line 55
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->D:I

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->D:I

    .line 56
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->E:I

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->E:I

    .line 57
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message;->J:J

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->F:J

    .line 58
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message;->K:J

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->G:J

    .line 59
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Message;->N:Z

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->J:Z

    .line 60
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->O:Lw3/b/a/b;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->K:Lw3/b/a/b;

    .line 61
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->P:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->L:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    .line 62
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->Q:I

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->M:I

    .line 63
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message;->S:J

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->N:J

    .line 64
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message;->R:J

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->O:J

    .line 65
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->p:Ljava/util/Set;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->p:[Lcom/truecaller/messaging/data/types/Mention;

    invoke-static {p2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/messaging/data/types/Message;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/truecaller/messaging/data/types/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/messaging/data/types/Message;-><init>(Lcom/truecaller/messaging/data/types/Message$b;Lcom/truecaller/messaging/data/types/Message$a;)V

    return-object v0
.end method

.method public b()Lcom/truecaller/messaging/data/types/Message$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-object p0
.end method

.method public c(J)Lcom/truecaller/messaging/data/types/Message$b;
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0, p1, p2}, Lw3/b/a/b;-><init>(J)V

    .line 2
    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->e:Lw3/b/a/b;

    return-object p0
.end method

.method public d(J)Lcom/truecaller/messaging/data/types/Message$b;
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0, p1, p2}, Lw3/b/a/b;-><init>(J)V

    .line 2
    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->d:Lw3/b/a/b;

    return-object p0
.end method

.method public e(Ljava/lang/Long;)Lcom/truecaller/messaging/data/types/Message$b;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->N:J

    return-object p0
.end method

.method public f(Ljava/util/Collection;)Lcom/truecaller/messaging/data/types/Message$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/truecaller/messaging/data/types/Entity;",
            ">;)",
            "Lcom/truecaller/messaging/data/types/Message$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->o:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->o:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->o:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->o:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public h(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/messaging/data/types/Message$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    return-object p0
.end method

.method public i(J)Lcom/truecaller/messaging/data/types/Message$b;
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0, p1, p2}, Lw3/b/a/b;-><init>(J)V

    .line 2
    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Message$b;->f:Lw3/b/a/b;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message$b;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "-1"

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/truecaller/messaging/data/types/Message$b;->m:Ljava/lang/String;

    return-object p0
.end method

.method public k(ILcom/truecaller/messaging/data/types/TransportInfo;)Lcom/truecaller/messaging/data/types/Message$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 2
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    return-object p0
.end method
