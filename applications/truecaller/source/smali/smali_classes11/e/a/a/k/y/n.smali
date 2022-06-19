.class public Le/a/a/k/y/n;
.super Le/a/a/k/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/y/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/k/g<",
        "Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;",
        "Le/a/a/k/y/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final l:Landroid/net/Uri;

.field public static final m:[Ljava/lang/String;

.field public static volatile n:Z

.field public static volatile o:J

.field public static volatile p:I

.field public static volatile q:J

.field public static volatile r:Ljava/lang/Exception;

.field public static final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final t:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final d:Le/a/p5/c0;

.field public final e:Le/a/o5/s0;

.field public f:Ln3/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/e<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ln3/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/StringBuilder;

.field public i:Le/a/b0/q/b;

.field public j:Z

.field public final k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "content://mms/part"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Le/a/a/k/y/n;->l:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "mid"

    const-string v2, "ct"

    const-string v3, "chset"

    const-string v4, "text"

    .line 2
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/a/k/y/n;->m:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Le/a/a/k/y/n;->n:Z

    const-wide/16 v1, -0x1

    .line 4
    sput-wide v1, Le/a/a/k/y/n;->o:J

    const/4 v3, -0x1

    .line 5
    sput v3, Le/a/a/k/y/n;->p:I

    .line 6
    sput-wide v1, Le/a/a/k/y/n;->q:J

    const/4 v1, 0x0

    .line 7
    sput-object v1, Le/a/a/k/y/n;->r:Ljava/lang/Exception;

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Le/a/a/k/y/n;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Le/a/a/k/y/n;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le/a/e4/p;Le/a/p5/c0;Le/a/o5/s0;Le/a/u3/g;Le/a/b0/q/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p5}, Le/a/a/k/g;-><init>(Landroid/content/Context;Le/a/e4/p;Le/a/u3/g;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Le/a/a/k/y/n;->j:Z

    .line 3
    sget-object p1, Le/a/a/k/y/n;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    iput p1, p0, Le/a/a/k/y/n;->k:I

    .line 4
    iput-object p3, p0, Le/a/a/k/y/n;->d:Le/a/p5/c0;

    .line 5
    iput-object p4, p0, Le/a/a/k/y/n;->e:Le/a/o5/s0;

    .line 6
    iput-object p6, p0, Le/a/a/k/y/n;->i:Le/a/b0/q/b;

    return-void
.end method


# virtual methods
.method public c(JLe/a/a/k/j;Le/a/a/k/m;Lcom/truecaller/data/entity/messaging/Participant;Z)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le/a/a/k/j;",
            "Le/a/a/k/m;",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p6, p5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p3, p1, p2}, Le/a/a/k/j;->a(J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 4
    invoke-interface {p4, p2}, Le/a/a/k/m;->a(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p2

    invoke-virtual {p6, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p6
.end method

.method public d(Landroid/content/ContentResolver;Le/a/a/k/j;Le/a/a/k/m;Lw3/b/a/b;Lw3/b/a/b;Z)Le/a/a/k/g$a;
    .locals 14

    move-object v0, p0

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    move-object/from16 v1, p4

    .line 1
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    const-wide/16 v3, 0x3e8

    .line 2
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v6, v2

    const/4 v1, 0x1

    move-object/from16 v2, p5

    .line 3
    iget-wide v7, v2, Lw3/b/a/e0/e;->a:J

    .line 4
    div-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 5
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "date>=? AND date<=? AND msg_box != 3 AND m_type IN (128, 130, 132)"

    const-string v7, "date DESC, _id DESC"

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-nez v12, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Le/a/a/k/y/g;

    iget-object v9, v0, Le/a/a/k/y/n;->d:Le/a/p5/c0;

    iget-object v13, v0, Le/a/a/k/g;->b:Le/a/e4/p;

    move-object v8, v1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v8 .. v13}, Le/a/a/k/y/g;-><init>(Le/a/p5/c0;Le/a/a/k/j;Le/a/a/k/m;Landroid/database/Cursor;Le/a/e4/p;)V

    :goto_0
    return-object v1
.end method

.method public f(Le/a/a/k/j;Lcom/truecaller/messaging/data/types/TransportInfo;I)Landroid/content/ContentValues;
    .locals 2

    .line 1
    check-cast p2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 2
    iget-object p1, p0, Le/a/a/k/y/n;->f:Ln3/g/e;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/a/k/y/n;->g:Ln3/g/e;

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Le/a/a/k/y/n;->h:Ljava/lang/StringBuilder;

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/a/k/y/n;->f:Ln3/g/e;

    invoke-virtual {p1}, Ln3/g/e;->m()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Le/a/a/k/y/n;->g:Ln3/g/e;

    invoke-virtual {p1}, Ln3/g/e;->m()I

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/a/k/y/n;->h:Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    iget-object p1, p0, Le/a/a/k/y/n;->h:Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 8
    iget-object p1, p0, Le/a/a/k/y/n;->f:Ln3/g/e;

    iget-wide v0, p2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, v0, v1, p3}, Ln3/g/e;->k(JLjava/lang/Object;)V

    .line 9
    invoke-static {p2}, Le/a/c/p/a;->Q0(Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Le/a/a/g/j0/g0;Le/a/a/k/g$a;)Z
    .locals 0

    .line 1
    check-cast p2, Le/a/a/k/y/n$a;

    const/4 p1, 0x0

    return p1
.end method

.method public h(Le/a/a/g/j0/g0;Le/a/a/k/g$a;)Z
    .locals 6

    .line 1
    check-cast p2, Le/a/a/k/y/n$a;

    .line 2
    check-cast p1, Le/a/a/g/d0;

    invoke-virtual {p1}, Le/a/a/g/d0;->getStatus()I

    move-result v0

    .line 3
    invoke-interface {p2}, Le/a/a/k/g$a;->getStatus()I

    move-result v1

    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_8

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    .line 4
    iget v0, p1, Le/a/a/g/d0;->e:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 5
    :goto_0
    invoke-interface {p2}, Le/a/a/k/g$a;->q1()Z

    move-result v1

    if-ne v0, v1, :cond_7

    .line 6
    invoke-virtual {p1}, Le/a/a/g/d0;->k()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Le/a/a/g/d0;->X0()Z

    move-result v0

    invoke-interface {p2}, Le/a/a/k/g$a;->X0()Z

    move-result v1

    if-ne v0, v1, :cond_7

    .line 7
    :cond_2
    invoke-virtual {p1}, Le/a/a/g/d0;->k()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Le/a/a/g/d0;->Y()Z

    move-result v0

    invoke-interface {p2}, Le/a/a/k/g$a;->Y()Z

    move-result v1

    if-ne v0, v1, :cond_7

    .line 8
    :cond_3
    invoke-virtual {p1}, Le/a/a/g/d0;->j()J

    move-result-wide v0

    invoke-interface {p2}, Le/a/a/k/g$a;->F()I

    move-result v4

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    .line 9
    invoke-virtual {p1}, Le/a/a/g/d0;->l()J

    move-result-wide v0

    invoke-interface {p2}, Le/a/a/k/g$a;->g0()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    .line 10
    iget v0, p1, Le/a/a/g/d0;->j:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    if-eq v0, v2, :cond_4

    move v0, v3

    goto :goto_1

    .line 11
    :cond_4
    iget v0, p1, Le/a/a/g/d0;->v:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    .line 12
    :goto_1
    invoke-interface {p2}, Le/a/a/k/y/n$a;->V0()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 13
    iget v0, p1, Le/a/a/g/d0;->j:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    if-eq v0, v2, :cond_5

    move v0, v3

    goto :goto_2

    .line 14
    :cond_5
    iget v0, p1, Le/a/a/g/d0;->u:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    .line 15
    :goto_2
    invoke-interface {p2}, Le/a/a/k/y/n$a;->m0()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 16
    iget v0, p1, Le/a/a/g/d0;->j:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    if-eq v0, v2, :cond_6

    move p1, v3

    goto :goto_3

    .line 17
    :cond_6
    iget v0, p1, Le/a/a/g/d0;->w:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p1

    .line 18
    :goto_3
    invoke-interface {p2}, Le/a/a/k/y/n$a;->N()I

    move-result p2

    if-eq p1, p2, :cond_8

    :cond_7
    move v3, v2

    :cond_8
    return v3
.end method

.method public i(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public j(Le/a/a/k/j;Le/a/a/k/m;Le/a/a/g/j0/g0;Lw3/b/a/b;Lw3/b/a/b;ILjava/util/List;Le/a/p5/l0;ZLe/a/c/r/h/d;)J
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/j;",
            "Le/a/a/k/m;",
            "Le/a/a/g/j0/g0;",
            "Lw3/b/a/b;",
            "Lw3/b/a/b;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Le/a/p5/l0;",
            "Z",
            "Le/a/c/r/h/d;",
            ")J"
        }
    .end annotation

    move-object/from16 v13, p0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ct != \'application/smil\' AND mid IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, v13, Le/a/a/k/y/n;->h:Ljava/lang/StringBuilder;

    .line 2
    new-instance v0, Ln3/g/e;

    const/16 v1, 0xa

    .line 3
    invoke-direct {v0, v1}, Ln3/g/e;-><init>(I)V

    .line 4
    iput-object v0, v13, Le/a/a/k/y/n;->f:Ln3/g/e;

    .line 5
    new-instance v0, Ln3/g/e;

    .line 6
    invoke-direct {v0, v1}, Ln3/g/e;-><init>(I)V

    .line 7
    iput-object v0, v13, Le/a/a/k/y/n;->g:Ln3/g/e;

    .line 8
    invoke-super/range {p0 .. p10}, Le/a/a/k/g;->j(Le/a/a/k/j;Le/a/a/k/m;Le/a/a/g/j0/g0;Lw3/b/a/b;Lw3/b/a/b;ILjava/util/List;Le/a/p5/l0;ZLe/a/c/r/h/d;)J

    move-result-wide v14

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    and-long/2addr v0, v14

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    const/4 v10, 0x0

    if-nez v0, :cond_1b

    .line 9
    sget-boolean v0, Le/a/a/k/y/n;->n:Z

    if-eqz v0, :cond_3

    .line 10
    sget-object v0, Le/a/a/k/y/n;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "timeSinceSyncStart: "

    .line 11
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Le/a/a/k/y/n;->q:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " syncingThreadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Le/a/a/k/y/n;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " currentThreadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " syncingInstanceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Le/a/a/k/y/n;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentInstanceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Le/a/a/k/y/n;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " actorsThreadCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Le/a/a/g/i;->b:Le/a/a/g/i;

    .line 13
    sget-object v1, Le/a/a/g/i;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isRecursiveCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v13, Le/a/a/k/y/n;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/truecaller/log/UnmutedException$m;

    invoke-direct {v1, v0}, Lcom/truecaller/log/UnmutedException$m;-><init>(Ljava/lang/String;)V

    .line 16
    sget-object v0, Le/a/a/k/y/n;->r:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 18
    :cond_2
    invoke-static {v1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 19
    :cond_3
    :goto_1
    iput-boolean v12, v13, Le/a/a/k/y/n;->j:Z

    .line 20
    sput-boolean v12, Le/a/a/k/y/n;->n:Z

    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Le/a/a/k/y/n;->o:J

    .line 22
    iget v0, v13, Le/a/a/k/y/n;->k:I

    sput v0, Le/a/a/k/y/n;->p:I

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Le/a/a/k/y/n;->q:J

    .line 24
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    sput-object v0, Le/a/a/k/y/n;->r:Ljava/lang/Exception;

    .line 25
    iget-object v0, v13, Le/a/a/k/y/n;->h:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v0, v13, Le/a/a/k/y/n;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v13, Le/a/a/k/y/n;->f:Ln3/g/e;

    iget-object v8, v13, Le/a/a/k/y/n;->g:Ln3/g/e;

    .line 27
    invoke-virtual {v8}, Ln3/g/e;->m()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v9}, Ln3/g/e;->m()I

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_12

    .line 28
    :cond_4
    iget-object v1, v13, Le/a/a/k/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 29
    :try_start_0
    sget-object v2, Le/a/a/k/y/n;->l:Landroid/net/Uri;

    sget-object v3, Le/a/a/k/y/n;->m:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v0

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    invoke-virtual/range {p1 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v7, :cond_19

    .line 30
    :goto_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    .line 31
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "application/smil"

    .line 32
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 33
    :cond_5
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x3

    .line 35
    invoke-interface {v7, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move v6, v11

    goto :goto_3

    :cond_6
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v6, v3

    :goto_3
    const/4 v3, 0x4

    .line 36
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 37
    sget-object v3, Le/a/a/k/y/n;->l:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 38
    invoke-virtual {v9, v1, v2}, Ln3/g/e;->g(J)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    .line 39
    invoke-virtual {v8, v1, v2}, Ln3/g/e;->g(J)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Long;

    .line 40
    invoke-static {v5}, Lcom/truecaller/messaging/data/types/Entity;->s(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_7

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object v3, v4

    move-object/from16 v4, v17

    move-object/from16 v18, v7

    move-object/from16 v7, v16

    .line 41
    :try_start_2
    invoke-virtual/range {v1 .. v7}, Le/a/a/k/y/n;->n(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v7, v18

    goto :goto_2

    :cond_7
    move-object/from16 v18, v7

    const-string v1, ""

    const/4 v2, -0x1

    .line 42
    :try_start_3
    invoke-static {v5}, Lcom/truecaller/messaging/data/types/Entity;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 43
    iget-object v0, v13, Le/a/a/k/g;->a:Landroid/content/Context;

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 45
    :try_start_4
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 46
    :try_start_5
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 47
    iput-boolean v12, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 48
    invoke-static {v6, v10, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 49
    iget-object v7, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_8

    if-eqz v6, :cond_9

    goto :goto_5

    :cond_8
    if-eqz v6, :cond_a

    .line 50
    :try_start_6
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v10, v6

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v6, v10

    .line 51
    :goto_4
    :try_start_7
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v6, :cond_9

    .line 52
    :goto_5
    :try_start_8
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_2
    :cond_9
    move-object v0, v10

    :catch_3
    :cond_a
    :goto_6
    if-eqz v0, :cond_b

    .line 53
    :try_start_9
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 54
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_d

    :cond_b
    move v0, v2

    move v6, v0

    goto/16 :goto_d

    :goto_7
    if-eqz v10, :cond_c

    .line 55
    :try_start_a
    invoke-interface {v10}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 56
    :catch_4
    :cond_c
    :try_start_b
    throw v0

    .line 57
    :cond_d
    invoke-static {v5}, Lcom/truecaller/messaging/data/types/Entity;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 58
    iget-object v0, v13, Le/a/a/k/y/n;->e:Le/a/o5/s0;

    invoke-interface {v0, v3}, Le/a/o5/s0;->d(Landroid/net/Uri;)Le/a/o5/z1;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 59
    iget v2, v0, Le/a/o5/z1;->a:I

    .line 60
    iget v6, v0, Le/a/o5/z1;->b:I

    .line 61
    iget v0, v0, Le/a/o5/z1;->c:I

    move/from16 v26, v2

    move v2, v0

    move/from16 v0, v26

    goto :goto_8

    :cond_e
    move v0, v2

    move v6, v0

    :goto_8
    move/from16 v26, v6

    move v6, v0

    move/from16 v0, v26

    goto/16 :goto_d

    .line 62
    :cond_f
    invoke-static {v5}, Lcom/truecaller/messaging/data/types/Entity;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 63
    iget-object v0, v13, Le/a/a/k/y/n;->e:Le/a/o5/s0;

    invoke-interface {v0, v3}, Le/a/o5/s0;->b(Landroid/net/Uri;)Le/a/o5/u;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 64
    iget-object v6, v0, Le/a/o5/u;->b:Landroid/net/Uri;

    if-eqz v6, :cond_10

    .line 65
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v6, v7, :cond_11

    .line 66
    :cond_10
    iget-object v6, v0, Le/a/o5/u;->d:[B

    if-eqz v6, :cond_11

    if-eqz v17, :cond_11

    .line 67
    iget-object v6, v13, Le/a/a/k/y/n;->i:Le/a/b0/q/b;

    if-eqz v6, :cond_11

    .line 68
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const/16 v23, 0x0

    const/16 v24, 0x1

    new-instance v7, Le/a/a/k/y/a;

    invoke-direct {v7, v0}, Le/a/a/k/y/a;-><init>(Le/a/o5/u;)V

    const-string v22, "image/jpeg"

    move-object/from16 v19, v6

    move-object/from16 v25, v7

    invoke-interface/range {v19 .. v25}, Le/a/b0/q/b;->d(JLjava/lang/String;ZILs1/z/b/l;)Ls1/k;

    move-result-object v6

    .line 69
    iget-object v6, v6, Ls1/k;->a:Ljava/lang/Object;

    .line 70
    check-cast v6, Landroid/net/Uri;

    .line 71
    iput-object v6, v0, Le/a/o5/u;->b:Landroid/net/Uri;

    :cond_11
    if-eqz v0, :cond_13

    .line 72
    iget-object v6, v0, Le/a/o5/u;->b:Landroid/net/Uri;

    if-nez v6, :cond_12

    goto :goto_9

    .line 73
    :cond_12
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    :cond_13
    :goto_9
    move-object v6, v1

    :goto_a
    if-eqz v0, :cond_15

    .line 74
    iget-object v7, v0, Le/a/o5/u;->c:Ljava/lang/String;

    if-nez v7, :cond_14

    goto :goto_b

    :cond_14
    move-object v1, v7

    :cond_15
    :goto_b
    if-nez v0, :cond_16

    move v0, v2

    goto :goto_c

    .line 75
    :cond_16
    iget v0, v0, Le/a/o5/u;->e:I

    :goto_c
    move-object/from16 v26, v6

    move-object v6, v1

    move-object/from16 v1, v26

    goto :goto_e

    :cond_17
    const-string v0, "contentType"

    .line 76
    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audio/"

    .line 77
    invoke-static {v5, v0, v12}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 78
    iget-object v0, v13, Le/a/a/k/y/n;->e:Le/a/o5/s0;

    invoke-interface {v0, v3}, Le/a/o5/s0;->a(Landroid/net/Uri;)Le/a/o5/l;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 79
    iget v0, v0, Le/a/o5/l;->a:I

    move v6, v2

    move v2, v0

    move v0, v6

    :goto_d
    move-object/from16 v19, v1

    move-object/from16 v21, v19

    move/from16 v16, v2

    move v7, v6

    move/from16 v20, v12

    goto :goto_f

    :cond_18
    move-object v6, v1

    move v0, v12

    :goto_e
    move/from16 v20, v0

    move-object/from16 v19, v1

    move v0, v2

    move v7, v0

    move/from16 v16, v7

    move-object/from16 v21, v6

    .line 80
    :goto_f
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object v3, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v8

    move v8, v0

    move-object/from16 v22, v9

    move/from16 v9, v16

    move-wide/from16 p1, v14

    move-object v14, v10

    move-object/from16 v10, v19

    move v15, v11

    move/from16 v11, v20

    move/from16 v16, v12

    move-object/from16 v12, v21

    invoke-virtual/range {v1 .. v12}, Le/a/a/k/y/n;->m(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object v10, v14

    move v11, v15

    move/from16 v12, v16

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v9, v22

    move-wide/from16 v14, p1

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object/from16 v18, v7

    :goto_10
    move-object/from16 v10, v18

    goto :goto_11

    :cond_19
    move-object/from16 v18, v7

    move-wide/from16 p1, v14

    move-object v14, v10

    move v15, v11

    if-eqz v18, :cond_1c

    .line 81
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_13

    :catchall_4
    move-exception v0

    move-object v14, v10

    move-object v10, v14

    :goto_11
    if-eqz v10, :cond_1a

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_1a
    throw v0

    :cond_1b
    :goto_12
    move-wide/from16 p1, v14

    move-object v14, v10

    move v15, v11

    .line 83
    :cond_1c
    :goto_13
    iput-object v14, v13, Le/a/a/k/y/n;->f:Ln3/g/e;

    .line 84
    iput-object v14, v13, Le/a/a/k/y/n;->g:Ln3/g/e;

    .line 85
    iput-object v14, v13, Le/a/a/k/y/n;->h:Ljava/lang/StringBuilder;

    .line 86
    sput-boolean v15, Le/a/a/k/y/n;->n:Z

    .line 87
    iput-boolean v15, v13, Le/a/a/k/y/n;->j:Z

    move-wide/from16 v1, p1

    return-wide v1
.end method

.method public k(Le/a/a/k/j;Le/a/a/k/m;Ljava/util/List;Le/a/a/g/j0/g0;Le/a/a/k/g$a;Z)Z
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    .line 1
    move-object/from16 v0, p5

    check-cast v0, Le/a/a/k/y/n$a;

    .line 2
    iget-object v1, v7, Le/a/a/k/y/n;->f:Ln3/g/e;

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 3
    iget-object v1, v7, Le/a/a/k/y/n;->g:Ln3/g/e;

    new-array v2, v9, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 4
    iget-object v1, v7, Le/a/a/k/y/n;->h:Ljava/lang/StringBuilder;

    new-array v2, v9, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 5
    move-object/from16 v1, p4

    check-cast v1, Le/a/a/g/d0;

    invoke-virtual {v1}, Le/a/a/g/d0;->l()J

    move-result-wide v2

    .line 6
    invoke-virtual {v1}, Le/a/a/g/d0;->u()J

    move-result-wide v10

    .line 7
    invoke-virtual {v1}, Le/a/a/g/d0;->getStatus()I

    move-result v4

    int-to-long v12, v4

    .line 8
    invoke-interface {v0}, Le/a/a/k/g$a;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    .line 9
    iget-object v4, v0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 10
    move-object v14, v4

    check-cast v14, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 11
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v0

    invoke-virtual {v14}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    move-result-object v4

    .line 12
    iput-wide v10, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->a:J

    .line 13
    invoke-virtual {v4}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    move-result-object v4

    const/4 v15, 0x1

    .line 14
    iput v15, v0, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 15
    iput-object v4, v0, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 16
    iput-wide v10, v0, Lcom/truecaller/messaging/data/types/Message$b;->a:J

    .line 17
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    .line 18
    invoke-virtual {v1}, Le/a/a/g/d0;->k()I

    move-result v4

    if-ne v4, v15, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v0

    .line 20
    invoke-virtual {v1}, Le/a/a/g/d0;->Y()Z

    move-result v4

    .line 21
    iput-boolean v4, v0, Lcom/truecaller/messaging/data/types/Message$b;->h:Z

    .line 22
    invoke-virtual {v1}, Le/a/a/g/d0;->X0()Z

    move-result v1

    .line 23
    iput-boolean v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->i:Z

    .line 24
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    :cond_0
    move-object v6, v0

    const/4 v0, -0x1

    .line 25
    iget-wide v4, v14, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->d:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 26
    iget-object v3, v6, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    move-object/from16 v0, p0

    move-wide v1, v4

    move-object v5, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 p1, v6

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Le/a/a/k/y/n;->c(JLe/a/a/k/j;Le/a/a/k/m;Lcom/truecaller/data/entity/messaging/Participant;Z)Ljava/util/Set;

    move-result-object v0

    .line 27
    move-object v1, v0

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "MMS was moved to conversation without participants"

    .line 28
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 29
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    .line 30
    invoke-static {v8, v2}, Le/a/c/p/a;->e1(Ljava/util/List;Lcom/truecaller/data/entity/messaging/Participant;)I

    goto :goto_0

    .line 31
    :cond_2
    invoke-static {v8, v0, v9}, Le/a/c/p/a;->d1(Ljava/util/List;Ljava/util/Set;Z)I

    move-result v0

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->g()Z

    move-result v1

    const-string v2, "Can update only already stored messages"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    move-object/from16 v1, p1

    .line 33
    iget v2, v1, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-ne v2, v15, :cond_3

    move v2, v15

    goto :goto_1

    :cond_3
    move v2, v9

    :goto_1
    const-string v3, "Only MMS can change conversation id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 34
    iget-object v2, v1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 35
    check-cast v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 36
    iget-wide v3, v1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 37
    invoke-static {v3, v4}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 38
    invoke-static {v2}, Le/a/c/p/a;->Q0(Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 39
    iget-boolean v2, v1, Lcom/truecaller/messaging/data/types/Message;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "locked"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 40
    iget v2, v1, Lcom/truecaller/messaging/data/types/Message;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "status"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 41
    iget-object v2, v1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    .line 42
    iget-wide v4, v2, Lw3/b/a/e0/e;->a:J

    .line 43
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "date"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 44
    iget-object v2, v1, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    .line 45
    iget-wide v4, v2, Lw3/b/a/e0/e;->a:J

    .line 46
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "date_sent"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 47
    iget v2, v1, Lcom/truecaller/messaging/data/types/Message;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "transport"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    if-ltz v0, :cond_4

    const-string v2, "conversation_id"

    .line 48
    invoke-virtual {v3, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 49
    :cond_4
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v1, v6

    .line 50
    invoke-static {v8, v1, v0}, Le/a/c/p/a;->w3(Ljava/util/List;Lcom/truecaller/messaging/data/types/Message;I)V

    :goto_2
    const/4 v0, 0x5

    const/16 v2, 0x21

    const-wide/16 v3, 0x1

    and-long/2addr v3, v12

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    const-wide/16 v3, 0x4

    and-long/2addr v3, v12

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    .line 51
    iget v1, v1, Lcom/truecaller/messaging/data/types/Message;->g:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    :cond_6
    int-to-long v0, v0

    and-long v3, v12, v0

    cmp-long v0, v3, v0

    if-eqz v0, :cond_7

    int-to-long v0, v2

    and-long v2, v12, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_b

    .line 52
    :cond_7
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-array v1, v15, [Ljava/lang/String;

    .line 53
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "message_id=?"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 54
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, v14, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->h:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 56
    iget-object v0, v7, Le/a/a/k/y/n;->d:Le/a/p5/c0;

    invoke-static {v0, v14}, Le/a/a/k/y/g;->b(Le/a/p5/c0;Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 57
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 58
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "message_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "type"

    const-string v3, "text/plain"

    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 60
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "entity_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "entity_info1"

    .line 61
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 62
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_8
    iget-object v0, v7, Le/a/a/k/y/n;->f:Ln3/g/e;

    invoke-virtual {v0}, Ln3/g/e;->m()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v7, Le/a/a/k/y/n;->g:Ln3/g/e;

    invoke-virtual {v0}, Ln3/g/e;->m()I

    move-result v0

    if-eqz v0, :cond_a

    .line 64
    :cond_9
    iget-object v0, v7, Le/a/a/k/y/n;->h:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_a
    iget-object v0, v7, Le/a/a/k/y/n;->h:Ljava/lang/StringBuilder;

    iget-wide v1, v14, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    iget-object v0, v7, Le/a/a/k/y/n;->g:Ln3/g/e;

    iget-wide v1, v14, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ln3/g/e;->a(JLjava/lang/Object;)V

    :cond_b
    move v9, v15

    :goto_3
    return v9
.end method

.method public final m(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p9

    .line 1
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "type"

    .line 2
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3
    invoke-static/range {p4 .. p4}, Lcom/truecaller/messaging/data/types/Entity;->s(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "entity_info1"

    const-string v8, "entity_type"

    if-eqz v5, :cond_0

    .line 4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 5
    invoke-virtual {v4, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_0

    .line 6
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/truecaller/messaging/data/types/Entity;->i(Ljava/lang/String;)Z

    move-result v5

    const-string v9, "entity_info6"

    const-string v10, "entity_info5"

    const-string v11, "entity_info4"

    if-eqz v5, :cond_1

    const/4 v1, 0x3

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 8
    invoke-virtual {v4, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 9
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v10, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 10
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v9, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 11
    invoke-virtual {v4, v11, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_0

    .line 12
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/truecaller/messaging/data/types/Entity;->m(Ljava/lang/String;)Z

    move-result v5

    const/4 v12, 0x1

    if-eqz v5, :cond_2

    .line 13
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 14
    invoke-virtual {v4, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 15
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v10, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 16
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v9, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 17
    invoke-virtual {v4, v11, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_0

    .line 18
    :cond_2
    invoke-static/range {p4 .. p4}, Lcom/truecaller/messaging/data/types/Entity;->x(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x2

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 20
    invoke-virtual {v4, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 21
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v10, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 22
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v9, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 23
    invoke-virtual {v4, v11, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 24
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "entity_info7"

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    :cond_3
    const-string v5, "contentType"

    .line 25
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "audio/"

    .line 26
    invoke-static {v1, v5, v12}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x4

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 28
    invoke-virtual {v4, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 29
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v11, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 30
    :cond_4
    invoke-static/range {p4 .. p4}, Lcom/truecaller/messaging/data/types/Entity;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 32
    invoke-virtual {v4, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 33
    invoke-virtual {v4, v11, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 34
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v9, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-object/from16 v1, p11

    .line 35
    invoke-virtual {v4, v10, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    :cond_5
    const/16 v1, 0x8

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 37
    invoke-virtual {v4, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :goto_0
    const-string v1, "message_id"

    if-nez v0, :cond_6

    new-array v0, v6, [Ljava/lang/String;

    move-object v2, p2

    .line 38
    invoke-static {p2, v0}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 40
    :cond_6
    invoke-virtual {v4, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 41
    :goto_1
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    move-object v1, p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final n(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move/from16 v0, p5

    if-nez p6, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object/from16 v1, p6

    .line 1
    :goto_0
    invoke-static {v1, v0}, Ln3/g0/y;->A0(Ljava/lang/String;I)[B

    move-result-object v1

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 3
    :cond_1
    :try_start_0
    invoke-static/range {p5 .. p5}, Le/d/b/a/b/c;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v2

    goto :goto_2

    .line 5
    :catch_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v2, "iso-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 6
    :catch_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_1
    move-object v6, v0

    .line 7
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v11, -0x1

    const-string v10, ""

    const-string v12, ""

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 8
    invoke-virtual/range {v1 .. v12}, Le/a/a/k/y/n;->m(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;)V

    :cond_2
    return-void
.end method
