.class public final Lcom/truecaller/messaging/data/types/Conversation$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/data/types/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:I

.field public D:I

.field public E:Z

.field public F:Lw3/b/a/b;

.field public G:Lw3/b/a/b;

.field public H:Lw3/b/a/b;

.field public I:Lw3/b/a/b;

.field public final J:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/truecaller/messaging/data/types/Mention;",
            ">;"
        }
    .end annotation
.end field

.field public K:I

.field public L:Ljava/lang/String;

.field public a:J

.field public b:J

.field public c:I

.field public d:J

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lw3/b/a/b;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:I

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z

.field public o:I

.field public p:I

.field public q:Z

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Lcom/truecaller/messaging/data/types/ImGroupInfo;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-1"

    .line 2
    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->h:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->r:I

    const/4 v1, 0x3

    .line 4
    iput v1, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->t:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->D:I

    .line 6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->J:Ljava/util/Set;

    .line 7
    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->K:I

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/messaging/data/types/Conversation;)V
    .locals 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-1"

    .line 10
    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->h:Ljava/lang/String;

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->r:I

    const/4 v1, 0x3

    .line 12
    iput v1, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->t:I

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->D:I

    .line 14
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->J:Ljava/util/Set;

    .line 15
    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->K:I

    .line 16
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->a:J

    .line 17
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Conversation;->b:J

    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->b:J

    .line 18
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->c:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->c:I

    .line 19
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Conversation;->d:J

    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->d:J

    .line 20
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->e:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->e:I

    .line 21
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->f:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->f:I

    .line 22
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->g:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->h:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->i:Lw3/b/a/b;

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->i:Lw3/b/a/b;

    .line 25
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->j:Ljava/lang/String;

    .line 26
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->l:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->l:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->m:Ljava/util/List;

    .line 28
    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 29
    iget-boolean v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->n:Z

    iput-boolean v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->n:Z

    .line 30
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->o:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->o:I

    .line 31
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->p:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->p:I

    .line 32
    iget-boolean v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->q:Z

    iput-boolean v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->q:Z

    .line 33
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->r:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->r:I

    .line 34
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->s:I

    .line 35
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->u:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->t:I

    .line 36
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->v:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->u:I

    .line 37
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->w:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->v:I

    .line 38
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->x:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->w:I

    .line 39
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->y:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->x:I

    .line 40
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->y:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 41
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->A:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->z:I

    .line 42
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->B:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->A:I

    .line 43
    iget-boolean v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->C:Z

    iput-boolean v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->B:Z

    .line 44
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->D:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->C:I

    .line 45
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->E:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->D:I

    .line 46
    iget-boolean v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->K:Z

    iput-boolean v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->E:Z

    .line 47
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->L:Lw3/b/a/b;

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->F:Lw3/b/a/b;

    .line 48
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->M:Lw3/b/a/b;

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->G:Lw3/b/a/b;

    .line 49
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->N:Lw3/b/a/b;

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->H:Lw3/b/a/b;

    .line 50
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->P:Lw3/b/a/b;

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->I:Lw3/b/a/b;

    .line 51
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->O:[Lcom/truecaller/messaging/data/types/Mention;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 52
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->s:I

    iput v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->K:I

    .line 53
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->Q:Ljava/lang/String;

    iput-object p1, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->L:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/messaging/data/types/Conversation$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation$b;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lcom/truecaller/messaging/data/types/Conversation;
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/messaging/data/types/Conversation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/messaging/data/types/Conversation;-><init>(Lcom/truecaller/messaging/data/types/Conversation$b;Lcom/truecaller/messaging/data/types/Conversation$a;)V

    return-object v0
.end method
