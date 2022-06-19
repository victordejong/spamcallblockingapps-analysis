.class public Lcom/truecaller/messaging/data/types/Draft$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/data/types/Draft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:Lcom/truecaller/messaging/data/types/Conversation;

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/truecaller/messaging/data/types/Mention;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:J

.field public j:Lcom/truecaller/messaging/data/types/ReplySnippet;

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Lcom/truecaller/messaging/data/types/ImForwardInfo;

.field public o:I

.field public p:J

.field public q:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->a:J

    .line 3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->c:Ljava/util/Set;

    .line 4
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->d:Ljava/util/Set;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->f:Z

    .line 6
    iput-boolean v2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->h:Z

    .line 7
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->i:J

    const/4 v3, 0x1

    .line 8
    iput-boolean v3, p0, Lcom/truecaller/messaging/data/types/Draft$b;->k:Z

    .line 9
    iput-boolean v2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->l:Z

    const/4 v2, 0x3

    .line 10
    iput v2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->m:I

    .line 11
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->p:J

    .line 12
    iput v2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->q:I

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/messaging/data/types/Draft;Lcom/truecaller/messaging/data/types/Draft$a;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->a:J

    .line 15
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->c:Ljava/util/Set;

    .line 16
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->d:Ljava/util/Set;

    const/4 p2, 0x0

    .line 17
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->f:Z

    .line 18
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->h:Z

    .line 19
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->i:J

    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->k:Z

    .line 21
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->l:Z

    const/4 p2, 0x3

    .line 22
    iput p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->m:I

    .line 23
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->p:J

    .line 24
    iput p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->q:I

    .line 25
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Draft;->a:J

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->a:J

    .line 26
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->b:Lcom/truecaller/messaging/data/types/Conversation;

    .line 27
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    .line 28
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Draft;->d:Z

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->f:Z

    .line 29
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->c:Ljava/util/Set;

    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {p2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 30
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    array-length p2, p2

    if-lez p2, :cond_0

    .line 31
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    array-length v0, v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->g:Ljava/util/List;

    .line 32
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-static {p2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 33
    :cond_0
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Draft;->h:Z

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->h:Z

    .line 34
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Draft;->m:Lcom/truecaller/messaging/data/types/ReplySnippet;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->j:Lcom/truecaller/messaging/data/types/ReplySnippet;

    .line 35
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Draft;->j:J

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->i:J

    .line 36
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Draft;->k:Z

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->k:Z

    .line 37
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Draft;->l:Z

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->l:Z

    .line 38
    iget p2, p1, Lcom/truecaller/messaging/data/types/Draft;->n:I

    iput p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->m:I

    .line 39
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Draft;->o:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->n:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    .line 40
    iget p2, p1, Lcom/truecaller/messaging/data/types/Draft;->p:I

    iput p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->o:I

    .line 41
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Draft;->q:J

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->p:J

    .line 42
    iget p2, p1, Lcom/truecaller/messaging/data/types/Draft;->r:I

    iput p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->q:I

    .line 43
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/Draft$b;->d:Ljava/util/Set;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Draft;->f:[Lcom/truecaller/messaging/data/types/Mention;

    invoke-static {p2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Lcom/truecaller/messaging/data/types/Draft$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            ">;)",
            "Lcom/truecaller/messaging/data/types/Draft$b;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->g:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object p0
.end method

.method public b(Lcom/truecaller/messaging/data/types/BinaryEntity;)Lcom/truecaller/messaging/data/types/Draft$b;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/BinaryEntity;->r()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isFalse(Z[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->g:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()Lcom/truecaller/messaging/data/types/Draft;
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/messaging/data/types/Draft;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/messaging/data/types/Draft;-><init>(Lcom/truecaller/messaging/data/types/Draft$b;Lcom/truecaller/messaging/data/types/Draft$a;)V

    return-object v0
.end method

.method public d()Lcom/truecaller/messaging/data/types/Draft$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-object p0
.end method

.method public e()Lcom/truecaller/messaging/data/types/Draft$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->j:Lcom/truecaller/messaging/data/types/ReplySnippet;

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->i:J

    return-object p0
.end method

.method public f()Lcom/truecaller/messaging/data/types/Draft$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->f:Z

    return-object p0
.end method

.method public g([Lcom/truecaller/messaging/data/types/Mention;)Lcom/truecaller/messaging/data/types/Draft$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft$b;->d:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method
