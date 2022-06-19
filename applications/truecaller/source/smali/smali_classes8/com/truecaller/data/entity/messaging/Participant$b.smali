.class public Lcom/truecaller/data/entity/messaging/Participant$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/data/entity/messaging/Participant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:I

.field public j:Z

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:J

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:J

.field public t:Lcom/truecaller/data/entity/Contact$PremiumLevel;

.field public u:Ljava/lang/Long;

.field public v:I

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->b:J

    .line 3
    iput-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->h:J

    .line 4
    iput-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->o:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->v:I

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->w:Ljava/util/List;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->x:I

    .line 8
    iput v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->y:I

    .line 9
    iput v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->z:I

    .line 10
    iput p1, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/entity/messaging/Participant;Lcom/truecaller/data/entity/messaging/Participant$a;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->b:J

    .line 13
    iput-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->h:J

    .line 14
    iput-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->o:J

    const/4 p2, 0x0

    .line 15
    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->v:I

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->w:Ljava/util/List;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->x:I

    .line 18
    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->y:I

    .line 19
    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->z:I

    .line 20
    iget p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->a:I

    .line 21
    iget-wide v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->a:J

    iput-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->b:J

    .line 22
    iget-object p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 23
    iget-object p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->d:Ljava/lang/String;

    .line 24
    iget-wide v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->h:J

    iput-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->h:J

    .line 25
    iget-object p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 26
    iget-object p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->f:Ljava/lang/String;

    .line 27
    iget-object p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->g:Ljava/lang/String;

    .line 28
    iget p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->i:I

    .line 29
    iget-boolean p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    iput-boolean p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->j:Z

    .line 30
    iget p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->k:I

    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->k:I

    .line 31
    iget-object p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 32
    iget-object p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 33
    iget p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->n:I

    .line 34
    iget-wide v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    iput-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->o:J

    .line 35
    iget p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->p:I

    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->p:I

    .line 36
    iget-object p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->q:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->q:Ljava/lang/String;

    .line 37
    iget p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->v:I

    .line 38
    iget-object p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->r:Ljava/lang/String;

    .line 39
    iget-wide v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->t:J

    iput-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->s:J

    .line 40
    iget-object p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->u:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    iput-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->t:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 41
    iget-object p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->v:Ljava/lang/Long;

    iput-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->u:Ljava/lang/Long;

    .line 42
    iget-object p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->x:Ljava/util/List;

    .line 43
    iput-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->w:Ljava/util/List;

    .line 44
    iget p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->y:I

    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->x:I

    .line 45
    iget p2, p1, Lcom/truecaller/data/entity/messaging/Participant;->z:I

    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->y:I

    .line 46
    iget p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->A:I

    iput p1, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->z:I

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/data/entity/messaging/Participant;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/data/entity/messaging/Participant;-><init>(Lcom/truecaller/data/entity/messaging/Participant$b;Lcom/truecaller/data/entity/messaging/Participant$a;)V

    return-object v0
.end method
