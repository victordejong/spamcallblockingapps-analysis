.class public Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public D:Z

.field public E:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public a:J

.field public b:J

.field public c:I

.field public d:J

.field public e:Landroid/net/Uri;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Landroid/net/Uri;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Lw3/b/a/b;

.field public r:I

.field public s:I

.field public t:I

.field public u:Ljava/lang/String;

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$a;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b:J

    .line 5
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a:J

    iput-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->a:J

    .line 6
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    iput-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b:J

    .line 7
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->c:I

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->c:I

    .line 8
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->d:J

    iput-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->d:J

    .line 9
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->e:Landroid/net/Uri;

    .line 10
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->f:I

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->f:I

    .line 11
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->g:Ljava/lang/String;

    .line 12
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->i:I

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->h:I

    .line 13
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->i:Ljava/lang/String;

    .line 14
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->k:I

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->j:I

    .line 15
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->k:Landroid/net/Uri;

    .line 16
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->l:Ljava/lang/String;

    .line 17
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->n:I

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->m:I

    .line 18
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->t:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->n:Ljava/lang/String;

    .line 19
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->u:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->o:Ljava/lang/String;

    .line 20
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->p:Ljava/lang/String;

    .line 21
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->p:Lw3/b/a/b;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->q:Lw3/b/a/b;

    .line 22
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->q:I

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->r:I

    .line 23
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->r:I

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->s:I

    .line 24
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->s:I

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->t:I

    .line 25
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->v:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->u:Ljava/lang/String;

    .line 26
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->w:I

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->v:I

    .line 27
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->w:I

    .line 28
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->x:I

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->x:I

    .line 29
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->y:I

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->y:I

    .line 30
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->z:J

    iput-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->z:J

    .line 31
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->A:I

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->A:I

    .line 32
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->B:I

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->B:I

    .line 33
    iget-boolean p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->C:Z

    iput-boolean p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->C:Z

    .line 34
    iget-boolean p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->D:Z

    iput-boolean p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->D:Z

    .line 35
    iget-object p1, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->E:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->E:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->E:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->E:Landroid/util/SparseArray;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->E:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->E:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;-><init>(Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$a;)V

    return-object v0
.end method

.method public c(J)Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;
    .locals 3

    .line 1
    new-instance v0, Lw3/b/a/b;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-direct {v0, p1, p2}, Lw3/b/a/b;-><init>(J)V

    .line 2
    iput-object v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->q:Lw3/b/a/b;

    return-object p0
.end method

.method public d(J)Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;
    .locals 1

    .line 1
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->e:Landroid/net/Uri;

    return-object p0
.end method
