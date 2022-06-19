.class public Le/a/a/k/y/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/y/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/a/k/q<",
        "Le/a/a/k/y/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final t:J

.field public static final u:[I

.field public static final v:[Ljava/lang/String;

.field public static final w:[Ljava/lang/String;

.field public static final x:Ljava/lang/String;

.field public static final y:Landroid/net/Uri;

.field public static final z:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/a/i0;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Le/a/e4/p;

.field public final e:Le/a/a/k/y/l;

.field public final f:Le/a/p5/g;

.field public final g:Le/a/a/k/y/n;

.field public final h:Le/a/a/k/y/d;

.field public final i:Landroid/telephony/TelephonyManager;

.field public final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/y0/q;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/a/a/k/w$c;

.field public final n:Le/a/q2/a;

.field public final o:Le/a/p5/a0;

.field public final p:Le/a/a/p;

.field public final q:Le/a/a/k/d0/a;

.field public r:Le/a/a/k/y/o$a;

.field public s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Le/a/a/k/y/o;->t:J

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Le/a/a/k/y/o;->u:[I

    const-string v1, "date"

    const-string v2, "m_cls"

    const-string v3, "pri"

    const-string v4, "d_rpt"

    const-string v5, "rr"

    .line 3
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le/a/a/k/y/o;->v:[Ljava/lang/String;

    const-string v1, "charset"

    const-string v2, "address"

    .line 4
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le/a/a/k/y/o;->w:[Ljava/lang/String;

    const-string v1, "type IN ("

    .line 5
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 6
    :cond_0
    array-length v2, v0

    add-int/lit8 v3, v2, 0x0

    if-gtz v3, :cond_1

    const-string v0, ""

    goto :goto_1

    .line 7
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v3, 0x10

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    if-lez v3, :cond_2

    const/16 v5, 0x2c

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    aget v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, ")"

    .line 11
    invoke-static {v1, v0, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/a/k/y/o;->x:Ljava/lang/String;

    .line 12
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Le/a/a/k/y/o;->y:Landroid/net/Uri;

    .line 13
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/a/k/y/o;->z:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x81
        0x82
        0x97
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lo3/a;Le/a/a/i0;Le/a/p5/g;Le/a/e4/p;Le/a/a/k/y/l;Landroid/telephony/TelephonyManager;Le/a/a/k/y/n;Le/a/r2/f;Le/a/a/k/y/d;Le/a/r2/f;Le/a/a/k/w$c;Le/a/q2/a;Le/a/p5/a0;Le/a/a/p;Le/a/a/k/d0/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Le/a/a/i0;",
            "Le/a/p5/g;",
            "Le/a/e4/p;",
            "Le/a/a/k/y/l;",
            "Landroid/telephony/TelephonyManager;",
            "Le/a/a/k/y/n;",
            "Le/a/r2/f<",
            "Le/a/a/y0/q;",
            ">;",
            "Le/a/a/k/y/d;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/a/k/w$c;",
            "Le/a/q2/a;",
            "Le/a/p5/a0;",
            "Le/a/a/p;",
            "Le/a/a/k/d0/a;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Le/a/a/k/y/o;->j:Ljava/util/Set;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Le/a/a/k/y/o;->r:Le/a/a/k/y/o$a;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Le/a/a/k/y/o;->s:Z

    move-object v1, p1

    .line 5
    iput-object v1, v0, Le/a/a/k/y/o;->a:Landroid/content/Context;

    move-object v1, p3

    .line 6
    iput-object v1, v0, Le/a/a/k/y/o;->b:Le/a/a/i0;

    move-object v1, p2

    .line 7
    iput-object v1, v0, Le/a/a/k/y/o;->c:Lo3/a;

    move-object v1, p4

    .line 8
    iput-object v1, v0, Le/a/a/k/y/o;->f:Le/a/p5/g;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Le/a/a/k/y/o;->g:Le/a/a/k/y/n;

    move-object v1, p5

    .line 10
    iput-object v1, v0, Le/a/a/k/y/o;->d:Le/a/e4/p;

    move-object v1, p6

    .line 11
    iput-object v1, v0, Le/a/a/k/y/o;->e:Le/a/a/k/y/l;

    move-object v1, p7

    .line 12
    iput-object v1, v0, Le/a/a/k/y/o;->i:Landroid/telephony/TelephonyManager;

    move-object v1, p9

    .line 13
    iput-object v1, v0, Le/a/a/k/y/o;->k:Le/a/r2/f;

    move-object v1, p11

    .line 14
    iput-object v1, v0, Le/a/a/k/y/o;->l:Le/a/r2/f;

    move-object v1, p10

    .line 15
    iput-object v1, v0, Le/a/a/k/y/o;->h:Le/a/a/k/y/d;

    move-object v1, p12

    .line 16
    iput-object v1, v0, Le/a/a/k/y/o;->m:Le/a/a/k/w$c;

    move-object v1, p13

    .line 17
    iput-object v1, v0, Le/a/a/k/y/o;->n:Le/a/q2/a;

    move-object/from16 v1, p14

    .line 18
    iput-object v1, v0, Le/a/a/k/y/o;->o:Le/a/p5/a0;

    move-object/from16 v1, p15

    .line 19
    iput-object v1, v0, Le/a/a/k/y/o;->p:Le/a/a/p;

    move-object/from16 v1, p16

    .line 20
    iput-object v1, v0, Le/a/a/k/y/o;->q:Le/a/a/k/d0/a;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/k/y/o;->o:Le/a/p5/a0;

    const-string v1, "android.permission.READ_SMS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/a/k/y/o;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;)Le/a/a/k/q$a;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p1

    .line 2
    iget-object v4, v3, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_3

    aget-object v8, v4, v7

    .line 3
    invoke-virtual {v8}, Lcom/truecaller/messaging/data/types/Entity;->g()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4
    new-instance v0, Le/a/a/k/q$a;

    invoke-direct {v0, v6}, Le/a/a/k/q$a;-><init>(I)V

    return-object v0

    .line 5
    :cond_0
    iget-object v9, v8, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-static {v9}, Lcom/truecaller/messaging/data/types/Entity;->p(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 6
    move-object v9, v8

    check-cast v9, Lcom/truecaller/messaging/data/types/GifEntity;

    .line 7
    iget-object v10, v9, Lcom/truecaller/messaging/data/types/GifEntity;->A:Ljava/lang/String;

    .line 8
    invoke-static {v10}, Lu3/a0;->h(Ljava/lang/String;)Lu3/a0;

    move-result-object v16

    if-nez v16, :cond_1

    move/from16 v22, v7

    goto :goto_2

    .line 9
    :cond_1
    iget-object v10, v1, Le/a/a/k/y/o;->q:Le/a/a/k/d0/a;

    new-instance v14, Le/a/a/k/c0/a;

    const-wide/16 v12, -0x1

    move/from16 v22, v7

    iget-wide v6, v8, Lcom/truecaller/messaging/data/types/Entity;->a:J

    sget-object v17, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-wide/16 v18, 0x0

    iget-object v8, v8, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    iget-object v9, v9, Lcom/truecaller/messaging/data/types/ImageEntity;->x:Landroid/net/Uri;

    move-object v11, v14

    move-object/from16 v23, v14

    move-wide v14, v6

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-direct/range {v11 .. v21}, Le/a/a/k/c0/a;-><init>(JJLu3/a0;Landroid/net/Uri;JLjava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v6, v23

    invoke-interface {v10, v6}, Le/a/a/k/d0/a;->b(Le/a/a/k/c0/a;)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v8

    goto :goto_1

    :cond_2
    move/from16 v22, v7

    .line 10
    :goto_1
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v22, 0x1

    const/4 v6, 0x0

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Message$b;->b()Lcom/truecaller/messaging/data/types/Message$b;

    invoke-virtual {v3, v2}, Lcom/truecaller/messaging/data/types/Message$b;->f(Ljava/util/Collection;)Lcom/truecaller/messaging/data/types/Message$b;

    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v2

    .line 12
    invoke-virtual/range {p0 .. p0}, Le/a/a/k/y/o;->E()Z

    move-result v3

    if-nez v3, :cond_4

    .line 13
    new-instance v0, Le/a/a/k/q$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Le/a/a/k/q$a;-><init>(I)V

    return-object v0

    .line 14
    :cond_4
    iget v3, v2, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v4, 0x3

    const-string v5, "application/vnd.wap.multipart.related"

    const-string v6, "personal"

    const/16 v7, 0x80

    const/16 v8, 0x81

    if-ne v3, v4, :cond_9

    .line 15
    new-instance v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    invoke-direct {v3}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;-><init>()V

    .line 16
    iget-wide v9, v2, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 17
    iput-wide v9, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->a:J

    const/16 v4, 0x6a

    const-string v9, "No title"

    .line 18
    iput-object v9, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->g:Ljava/lang/String;

    .line 19
    iput v4, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->h:I

    .line 20
    iput v7, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->w:I

    .line 21
    sget-wide v9, Le/a/a/k/y/o;->t:J

    .line 22
    invoke-virtual {v3, v9, v10}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->c(J)Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    .line 23
    iput-object v6, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->o:Ljava/lang/String;

    .line 24
    iput v8, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->y:I

    .line 25
    iput v8, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->A:I

    .line 26
    iput v8, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->r:I

    .line 27
    iput-object v5, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->l:Ljava/lang/String;

    const/16 v4, 0x97

    .line 28
    iget-object v5, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->E:Landroid/util/SparseArray;

    if-nez v5, :cond_5

    .line 29
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->E:Landroid/util/SparseArray;

    .line 30
    :cond_5
    iget-object v5, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->E:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-nez v5, :cond_6

    .line 31
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 32
    iget-object v6, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->E:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    :cond_6
    array-length v4, v0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_7

    aget-object v7, v0, v6

    .line 34
    iget-object v7, v7, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 35
    :cond_7
    invoke-virtual {v3}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    move-result-object v0

    const/4 v3, 0x0

    .line 36
    invoke-virtual {v1, v2, v0, v3}, Le/a/a/k/y/o;->R(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;Z)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    if-nez v0, :cond_8

    .line 37
    new-instance v0, Le/a/a/k/q$a;

    invoke-direct {v0, v3}, Le/a/a/k/q$a;-><init>(I)V

    return-object v0

    .line 38
    :cond_8
    new-instance v2, Le/a/a/k/q$a;

    iget-object v0, v0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    invoke-direct {v2, v0}, Le/a/a/k/q$a;-><init>(Lcom/truecaller/messaging/data/types/TransportInfo;)V

    return-object v2

    .line 39
    :cond_9
    iget-object v0, v2, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 40
    check-cast v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    invoke-virtual {v0}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    move-result-object v0

    const/4 v3, 0x4

    .line 41
    iput v3, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->v:I

    .line 42
    iput v7, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->w:I

    .line 43
    sget-wide v9, Le/a/a/k/y/o;->t:J

    .line 44
    invoke-virtual {v0, v9, v10}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->c(J)Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    .line 45
    iput-object v6, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->o:Ljava/lang/String;

    .line 46
    iput v8, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->y:I

    .line 47
    iput v8, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->A:I

    .line 48
    iput v8, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->r:I

    .line 49
    iput-object v5, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->l:Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    move-result-object v4

    .line 51
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 52
    iget-object v5, v2, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    .line 53
    iget-wide v5, v5, Lw3/b/a/e0/e;->a:J

    const-wide/16 v7, 0x3e8

    .line 54
    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "date"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    .line 56
    iget-wide v5, v2, Lw3/b/a/e0/e;->a:J

    .line 57
    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v5, "date_sent"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "msg_box"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    iget-object v2, v1, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 60
    :try_start_0
    sget-object v3, Le/a/a/k/y/o;->y:Landroid/net/Uri;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iget-wide v7, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v3, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 61
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_a

    .line 62
    new-instance v0, Le/a/a/k/q$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Le/a/a/k/q$a;-><init>(I)V

    return-object v0

    .line 63
    :cond_a
    new-instance v0, Le/a/a/k/q$a;

    invoke-direct {v0, v4}, Le/a/a/k/q$a;-><init>(Lcom/truecaller/messaging/data/types/TransportInfo;)V

    return-object v0
.end method

.method public C(Landroid/content/Intent;I)Landroid/os/Bundle;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.provider.Telephony.WAP_PUSH_DELIVER"

    .line 2
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const-string v4, "application/vnd.wap.mms-message"

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual/range {p0 .. p1}, Le/a/a/k/y/o;->I(Landroid/content/Intent;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 5
    iget-object v2, v1, Le/a/a/k/y/o;->c:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/m;

    invoke-interface {v2, v0, v5}, Le/a/a/g/m;->d0(Lcom/truecaller/messaging/data/types/Message;Z)V

    goto/16 :goto_5

    :cond_0
    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    .line 6
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "application/vnd.wap.mms-message"

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual/range {p0 .. p1}, Le/a/a/k/y/o;->I(Landroid/content/Intent;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 9
    iget-object v2, v1, Le/a/a/k/y/o;->k:Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/y0/q;

    invoke-interface {v2, v0}, Le/a/a/y0/q;->d(Lcom/truecaller/messaging/data/types/Message;)V

    goto/16 :goto_5

    :cond_1
    const-string v4, "com.truecaller.messaging.transport.mms.MmsStatusReceiver.MMS_SENT"

    .line 10
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_f

    const-string v3, "pdu_uri"

    .line 11
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 13
    iget-object v4, v1, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    const-string v3, "raw_message_id"

    .line 14
    invoke-virtual {v0, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v10, v3, v7

    if-nez v10, :cond_3

    .line 15
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0

    :cond_3
    const-string v10, "message_date"

    .line 16
    invoke-virtual {v0, v10, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v7, v10, v7

    if-nez v7, :cond_4

    .line 17
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0

    :cond_4
    const-string v7, "sim_token"

    .line 18
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const-string v7, "-1"

    :cond_5
    move-object v13, v7

    const-string v7, "android.telephony.extra.MMS_DATA"

    .line 19
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 20
    new-instance v7, Lw3/b/a/b;

    invoke-direct {v7, v10, v11}, Lw3/b/a/b;-><init>(J)V

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v8, v1, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-interface {v8, v13}, Le/a/e4/p;->i(Ljava/lang/String;)Le/a/e4/i;

    move-result-object v8

    const/4 v14, 0x5

    if-nez v0, :cond_7

    .line 23
    invoke-virtual {v1, v3, v4, v14}, Le/a/a/k/y/o;->T(JI)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, v1, Le/a/a/k/y/o;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    invoke-interface {v0, v5, v7, v5}, Le/a/a/g/m;->d(ILw3/b/a/b;Z)V

    :cond_6
    const-string v0, "Empty PDU"

    .line 25
    invoke-virtual {v1, v0}, Le/a/a/k/y/o;->K(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    monitor-exit p0

    goto/16 :goto_5

    .line 27
    :cond_7
    :try_start_1
    new-instance v10, Le/d/b/a/b/n;

    invoke-interface {v8}, Le/a/e4/i;->f()Z

    move-result v8

    invoke-direct {v10, v0, v8}, Le/d/b/a/b/n;-><init>([BZ)V

    .line 28
    invoke-virtual {v10}, Le/d/b/a/b/n;->b()Le/d/b/a/b/f;

    move-result-object v11

    if-nez v11, :cond_8

    const-string v0, "Invalid PDU"

    .line 29
    invoke-virtual {v1, v0}, Le/a/a/k/y/o;->K(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    monitor-exit p0

    goto/16 :goto_5

    .line 31
    :cond_8
    :try_start_2
    invoke-virtual {v11}, Le/d/b/a/b/f;->a()I

    move-result v0

    const/16 v8, 0x81

    if-eq v0, v8, :cond_9

    const-string v0, "Wrong type"

    .line 32
    invoke-virtual {v1, v0}, Le/a/a/k/y/o;->K(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    monitor-exit p0

    goto/16 :goto_5

    .line 34
    :cond_9
    :try_start_3
    iget-object v10, v1, Le/a/a/k/y/o;->h:Le/a/a/k/y/d;

    invoke-virtual {v1, v13}, Le/a/a/k/y/o;->D(Ljava/lang/String;)Z

    move-result v12

    move v0, v14

    move-wide v14, v3

    invoke-interface/range {v10 .. v15}, Le/a/a/k/y/d;->a(Le/d/b/a/b/f;ZLjava/lang/String;J)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v8

    .line 35
    iget-object v10, v8, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 36
    check-cast v10, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    const/4 v11, 0x2

    .line 37
    iget v12, v10, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    iget v13, v10, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->s:I

    invoke-static {v11, v12, v13}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->c(III)I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_a

    .line 38
    invoke-virtual {v1, v10, v2}, Le/a/a/k/y/o;->L(Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;I)V

    :cond_a
    if-eq v2, v6, :cond_c

    .line 39
    invoke-virtual {v1, v3, v4, v0}, Le/a/a/k/y/o;->T(JI)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 40
    iget-object v0, v1, Le/a/a/k/y/o;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    invoke-interface {v0, v5, v7, v5}, Le/a/a/g/m;->d(ILw3/b/a/b;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    :cond_b
    monitor-exit p0

    goto/16 :goto_5

    .line 42
    :cond_c
    :try_start_4
    iget-object v0, v1, Le/a/a/k/y/o;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    invoke-interface {v0, v8, v5}, Le/a/a/g/m;->d0(Lcom/truecaller/messaging/data/types/Message;Z)V

    .line 43
    iget-object v2, v1, Le/a/a/k/y/o;->r:Le/a/a/k/y/o$a;

    if-eqz v2, :cond_e

    .line 44
    iget-wide v5, v2, Le/a/a/k/y/o$a;->a:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_d

    goto :goto_0

    .line 45
    :cond_d
    iget-object v0, v2, Le/a/a/k/y/o$a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 46
    :try_start_5
    iget-object v0, v2, Le/a/a/k/y/o$a;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 47
    :try_start_6
    iget-object v0, v2, Le/a/a/k/y/o$a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 48
    :goto_0
    iput-object v9, v1, Le/a/a/k/y/o;->r:Le/a/a/k/y/o$a;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 49
    iget-object v2, v2, Le/a/a/k/y/o$a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 51
    :cond_e
    :goto_1
    monitor-exit p0

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_f
    const-string v4, "com.truecaller.messaging.transport.mms.MmsStatusReceiver.MMS_DOWNLOAD"

    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_10

    const-string v0, "Failure"

    .line 54
    invoke-virtual {v1, v0}, Le/a/a/k/y/o;->M(Ljava/lang/String;)V

    .line 55
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0

    :cond_10
    const-string v4, "pdu_uri"

    .line 56
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "raw_message_id"

    .line 57
    invoke-virtual {v0, v10, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    cmp-long v7, v14, v7

    if-nez v7, :cond_11

    .line 58
    iget-object v0, v1, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "Failure"

    .line 59
    invoke-virtual {v1, v0}, Le/a/a/k/y/o;->M(Ljava/lang/String;)V

    .line 60
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0

    :cond_11
    const-string v7, "transaction_id"

    .line 61
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    if-nez v7, :cond_12

    .line 62
    iget-object v0, v1, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "Failure"

    .line 63
    invoke-virtual {v1, v0}, Le/a/a/k/y/o;->M(Ljava/lang/String;)V

    .line 64
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0

    :cond_12
    const-string v8, "sim_token"

    .line 65
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_13

    const-string v8, "-1"

    .line 66
    :cond_13
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v10, "is_auto_download"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    iget-object v10, v1, Le/a/a/k/y/o;->j:Ljava/util/Set;

    monitor-enter v10

    .line 68
    :try_start_7
    iget-object v12, v1, Le/a/a/k/y/o;->j:Ljava/util/Set;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 70
    iget-object v10, v1, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-interface {v10, v8}, Le/a/e4/p;->i(Ljava/lang/String;)Le/a/e4/i;

    move-result-object v10

    if-ne v2, v6, :cond_1a

    if-nez v4, :cond_14

    goto/16 :goto_3

    .line 71
    :cond_14
    :try_start_8
    invoke-interface {v10}, Le/a/e4/i;->f()Z

    move-result v2

    invoke-virtual {v1, v4, v2}, Le/a/a/k/y/o;->Q(Landroid/net/Uri;Z)Le/d/b/a/b/f;

    move-result-object v12
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 72
    iget-object v2, v1, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v4, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-nez v12, :cond_15

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PDU data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "Failure"

    .line 74
    invoke-virtual {v1, v0}, Le/a/a/k/y/o;->M(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 75
    :cond_15
    instance-of v2, v12, Le/d/b/a/b/r;

    if-eqz v2, :cond_18

    .line 76
    move-object v2, v12

    check-cast v2, Le/d/b/a/b/r;

    .line 77
    iget-object v4, v2, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    const/16 v6, 0x98

    invoke-virtual {v4, v6}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v4

    if-eqz v4, :cond_16

    .line 78
    array-length v4, v4

    if-nez v4, :cond_17

    :cond_16
    move v11, v5

    :cond_17
    if-eqz v11, :cond_18

    .line 79
    iget-object v2, v2, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    invoke-virtual {v2, v7, v6}, Le/d/b/a/b/m;->j([BI)V

    .line 80
    :cond_18
    iget-object v11, v1, Le/a/a/k/y/o;->h:Le/a/a/k/y/d;

    const/4 v13, 0x0

    move-wide v6, v14

    move-object v14, v8

    move-wide v15, v6

    invoke-interface/range {v11 .. v16}, Le/a/a/k/y/d;->a(Le/d/b/a/b/f;ZLjava/lang/String;J)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v2

    .line 81
    iget-object v4, v2, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 82
    check-cast v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 83
    invoke-virtual {v4}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    move-result-object v4

    .line 84
    iput-object v3, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->k:Landroid/net/Uri;

    .line 85
    iput-boolean v0, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->D:Z

    .line 86
    invoke-virtual {v4}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    move-result-object v0

    .line 87
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v2

    .line 88
    iput v5, v2, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 89
    iput-object v0, v2, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 90
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message;->f()Z

    move-result v2

    if-nez v2, :cond_19

    const-string v0, "Failure"

    .line 92
    invoke-virtual {v1, v0}, Le/a/a/k/y/o;->M(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_19
    const-string v2, "Success"

    .line 93
    invoke-virtual {v1, v2}, Le/a/a/k/y/o;->M(Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 94
    :try_start_9
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const-string v0, "Failure"

    .line 95
    invoke-virtual {v1, v0}, Le/a/a/k/y/o;->M(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 96
    iget-object v0, v1, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v4, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5

    :goto_2
    iget-object v2, v1, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v4, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 97
    throw v0

    :cond_1a
    :goto_3
    move-wide v10, v14

    if-eqz v0, :cond_1b

    .line 98
    iget-object v2, v1, Le/a/a/k/y/o;->e:Le/a/a/k/y/l;

    iget-object v6, v1, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-virtual {v2, v8, v6}, Le/a/a/k/y/l;->a(Ljava/lang/String;Le/a/e4/p;)Le/a/r2/f;

    move-result-object v2

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/y/k;

    const/16 v6, 0x83

    invoke-interface {v2, v7, v3, v6}, Le/a/a/k/y/k;->a([BLandroid/net/Uri;I)V

    .line 99
    :cond_1b
    new-instance v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    invoke-direct {v2}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;-><init>()V

    .line 100
    iput-wide v10, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b:J

    .line 101
    invoke-virtual {v2, v10, v11}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->d(J)Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    const/16 v3, 0x84

    .line 102
    iput v3, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->w:I

    const/16 v3, 0xc2

    .line 103
    iput v3, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->s:I

    .line 104
    invoke-virtual {v2}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    move-result-object v2

    .line 105
    new-instance v3, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v3}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    sget-object v6, Lcom/truecaller/data/entity/messaging/Participant;->B:Lcom/truecaller/data/entity/messaging/Participant;

    .line 106
    iput-object v6, v3, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    xor-int/2addr v0, v5

    .line 107
    iput-boolean v0, v3, Lcom/truecaller/messaging/data/types/Message$b;->h:Z

    .line 108
    iput v5, v3, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 109
    iput-object v2, v3, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 110
    iput-object v8, v3, Lcom/truecaller/messaging/data/types/Message$b;->m:Ljava/lang/String;

    .line 111
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    if-eqz v4, :cond_1c

    .line 112
    iget-object v2, v1, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v4, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    :cond_1c
    iget-object v2, v1, Le/a/a/k/y/o;->k:Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/y0/q;

    invoke-interface {v2}, Le/a/a/y0/q;->l()V

    const-string v2, "Failure"

    .line 114
    invoke-virtual {v1, v2}, Le/a/a/k/y/o;->M(Ljava/lang/String;)V

    .line 115
    :goto_4
    iget-object v2, v1, Le/a/a/k/y/o;->c:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/m;

    invoke-interface {v2, v0, v5}, Le/a/a/g/m;->d0(Lcom/truecaller/messaging/data/types/Message;Z)V

    goto :goto_5

    :catchall_3
    move-exception v0

    .line 116
    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    .line 117
    :cond_1d
    :goto_5
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public final D(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-interface {v0, p1}, Le/a/e4/p;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/a/k/y/o;->b:Le/a/a/i0;

    iget v2, p1, Lcom/truecaller/multisim/SimInfo;->a:I

    invoke-interface {v1, v2}, Le/a/a/i0;->H0(I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/a/k/y/o;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/a/a/k/y/o;->b:Le/a/a/i0;

    iget p1, p1, Lcom/truecaller/multisim/SimInfo;->a:I

    invoke-interface {v1, p1}, Le/a/a/i0;->B2(I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final E()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/k/y/o;->f:Le/a/p5/g;

    iget-object v1, p0, Le/a/a/k/y/o;->p:Le/a/a/p;

    invoke-interface {v1}, Le/a/a/p;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/g;->o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final F(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;)J
    .locals 6

    .line 1
    iget-object p2, p2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->E:Landroid/util/SparseArray;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 2
    invoke-static {p2, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v3, v0, [Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5
    sget-object v3, Le/a/a/k/y/o;->u:[I

    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_2

    aget v5, v3, v0

    .line 6
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-nez v5, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_2
    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    and-int/2addr v0, v2

    if-nez v0, :cond_4

    .line 9
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result p2

    if-ne p2, v2, :cond_3

    .line 10
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 11
    :cond_3
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-le p1, v2, :cond_5

    const/16 p1, 0x89

    .line 13
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_5

    .line 14
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 15
    :cond_5
    :goto_3
    :try_start_0
    iget-object p1, p0, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 16
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "For some reasons we can not create thread for addresses: ["

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "{"

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isEmpty:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "insert-address-token"

    invoke-static {v1, v0}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", length:"

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    const-string p2, "]"

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public final G(Lcom/truecaller/messaging/data/types/Message;Z)Z
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 2
    check-cast v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 3
    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 4
    iget-wide v2, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-array v4, v1, [Ljava/lang/String;

    .line 5
    invoke-static {v2, v4}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 6
    iget-object v2, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isFalse(Z[Ljava/lang/String;)V

    .line 7
    iget-object v2, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    if-nez v2, :cond_1

    const-string p1, "Should never try to download MMS content without content uri"

    .line 8
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    return v1

    .line 9
    :cond_1
    iget-object v1, p0, Le/a/a/k/y/o;->j:Ljava/util/Set;

    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Le/a/a/k/y/o;->j:Ljava/util/Set;

    iget-wide v4, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    monitor-exit v1

    return v3

    .line 12
    :cond_2
    iget-object v2, p0, Le/a/a/k/y/o;->j:Ljava/util/Set;

    iget-wide v4, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v1, p0, Le/a/a/k/y/o;->e:Le/a/a/k/y/l;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    iget-object v2, p0, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-virtual {v1, p1, v2}, Le/a/a/k/y/l;->a(Ljava/lang/String;Le/a/e4/p;)Le/a/r2/f;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Le/a/a/k/y/k;

    iget-wide v5, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    iget-object p1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iget-object v8, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    xor-int/lit8 v9, p2, 0x1

    invoke-interface/range {v4 .. v9}, Le/a/a/k/y/k;->d(J[BLandroid/net/Uri;Z)V

    return v3

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final H(Landroid/net/Uri;)Lw3/b/a/b;
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "date"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Lw3/b/a/b;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_1
    move-exception p1

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 5
    :cond_2
    throw v0
.end method

.method public final I(Landroid/content/Intent;)Lcom/truecaller/messaging/data/types/Message;
    .locals 8

    const-string v0, "data"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Got new MMS intent without PDU"

    .line 2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    iget-object v2, p0, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-interface {v2, p1}, Le/a/e4/p;->k(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "-1"

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-interface {p1}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v5, p1

    .line 5
    iget-object p1, p0, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-interface {p1, v5}, Le/a/e4/p;->i(Ljava/lang/String;)Le/a/e4/i;

    move-result-object p1

    .line 6
    new-instance v2, Le/d/b/a/b/n;

    invoke-interface {p1}, Le/a/e4/i;->f()Z

    move-result p1

    invoke-direct {v2, v0, p1}, Le/d/b/a/b/n;-><init>([BZ)V

    .line 7
    invoke-virtual {v2}, Le/d/b/a/b/n;->b()Le/d/b/a/b/f;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    .line 8
    :cond_2
    iget-object v2, p0, Le/a/a/k/y/o;->h:Le/a/a/k/y/d;

    invoke-virtual {p0, v5}, Le/a/a/k/y/o;->D(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v6, -0x1

    invoke-interface/range {v2 .. v7}, Le/a/a/k/y/d;->a(Le/d/b/a/b/f;ZLjava/lang/String;J)Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    return-object p1
.end method

.method public final J(Landroid/net/Uri;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    .line 2
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/addr"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 4
    :try_start_0
    iget-object v0, p0, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Le/a/a/k/y/o;->w:[Ljava/lang/String;

    sget-object v6, Le/a/a/k/y/o;->x:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    .line 7
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v0}, Ln3/g0/y;->h0([BI)Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 10
    :try_start_1
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 11
    :catch_1
    :cond_4
    throw p1
.end method

.method public final K(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/a/k/y/o;->n:Le/a/q2/a;

    const-string v1, "DeliverMmsError"

    const-string v7, "type"

    .line 2
    invoke-static {v1, v7}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v9

    const-string v3, "name"

    const-string v5, "value"

    move-object v2, v7

    move-object v4, p1

    move-object v6, v9

    move-object v8, p1

    .line 3
    invoke-static/range {v2 .. v8}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 4
    invoke-static {v1, p1, v9, v2, v0}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public final L(Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;I)V
    .locals 6

    const-string v0, "MmsFailureInfo"

    const-string v1, "type"

    .line 1
    invoke-static {v0, v1}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "resultCode"

    const-string v4, "name"

    .line 4
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "value"

    invoke-static {p2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->s:I

    .line 7
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "responseStatus"

    .line 8
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget p1, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->r:I

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "retrieveStatus"

    .line 12
    invoke-static {p2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Le/a/a/k/y/o;->n:Le/a/q2/a;

    const-string p2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 15
    invoke-static {v0, v2, v1, p2, p1}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public final M(Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    const-string v8, "MessageDownload"

    const-string v14, "type"

    .line 1
    invoke-static {v8, v14}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v7

    const-string v2, "name"

    const-string v15, "mms"

    const-string v4, "value"

    const-string v20, "status"

    move-object v9, v14

    move-object v10, v2

    move-object v11, v15

    move-object v12, v4

    move-object v13, v7

    move-object/from16 v16, v20

    move-object/from16 v17, v2

    move-object/from16 v18, p1

    move-object/from16 v19, v4

    move-object/from16 v21, p1

    .line 2
    invoke-static/range {v9 .. v21}, Le/d/c/a/a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v9

    .line 3
    iget-object v1, v0, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-interface {v1}, Le/a/e4/p;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Multi"

    goto :goto_0

    :cond_0
    const-string v1, "Single"

    :goto_0
    move-object v10, v1

    const-string v6, "sim"

    move-object v1, v6

    move-object v3, v10

    move-object v5, v7

    move-object v11, v7

    move-object v7, v10

    .line 4
    invoke-static/range {v1 .. v9}, Le/d/c/a/a;->v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Le/a/l5/a/p3$b;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v11}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v1

    const-string v2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v2, v0, Le/a/a/k/y/o;->n:Le/a/q2/a;

    invoke-interface {v2, v1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public final N(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-interface {v0, p1}, Le/a/e4/p;->m(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "On"

    :goto_0
    move-object v6, p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "Off"

    goto :goto_0

    :cond_1
    const-string p1, "Unknown"

    goto :goto_0

    :goto_1
    const-string p1, "SendMmsMobileDataState"

    const-string v0, "type"

    .line 2
    invoke-static {p1, v0}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v7

    const-string v5, "state"

    const-string v1, "name"

    const-string v3, "value"

    move-object v0, v5

    move-object v2, v6

    move-object v4, v7

    .line 3
    invoke-static/range {v0 .. v6}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 4
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v1, v0}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1, v7}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    const-string v0, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/a/k/y/o;->n:Le/a/q2/a;

    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public final O(Landroid/net/Uri;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mms/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/addr"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 8
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "address"

    .line 10
    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x6a

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "charset"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public final P(JLcom/truecaller/messaging/transport/mms/PduEntity;)Lcom/truecaller/messaging/data/types/Entity;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 1
    sget-object v3, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const-string v0, "text"

    const-string v13, "file"

    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget-object v5, v1, Le/a/a/k/y/o;->h:Le/a/a/k/y/d;

    invoke-interface {v5, v2, v4}, Le/a/a/k/y/d;->c(Lcom/truecaller/messaging/transport/mms/PduEntity;Landroid/content/ContentValues;)V

    .line 3
    iget-object v5, v1, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "/part"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 5
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v7, 0x0

    .line 6
    :try_start_1
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v8, :cond_1

    .line 7
    iget-object v0, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/io/File;

    iget-object v2, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-object v7

    .line 11
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    iget-object v6, v2, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-wide/16 v5, -0x1

    .line 13
    iget-object v7, v2, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const/4 v8, 0x0

    .line 14
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget-wide v14, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/4 v4, 0x0

    move-wide/from16 v27, v14

    move-object v15, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const v26, 0x3fe00

    move-wide v4, v5

    move-object v6, v7

    move v7, v8

    move-object v8, v0

    move-object v1, v13

    move-wide/from16 v13, v27

    .line 15
    :try_start_3
    invoke-static/range {v3 .. v26}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 16
    iget-object v3, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    new-instance v1, Ljava/io/File;

    iget-object v2, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    return-object v0

    :cond_3
    move-object v1, v13

    .line 20
    :try_start_4
    iget-object v0, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v0, "ct"

    const-string v9, " content type: "

    if-nez v6, :cond_6

    .line 21
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t open input stream for: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_4

    .line 22
    :try_start_6
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 23
    :catch_0
    :cond_4
    iget-object v0, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    new-instance v0, Ljava/io/File;

    iget-object v1, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_5
    return-object v7

    .line 27
    :cond_6
    :try_start_7
    invoke-virtual {v5, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v5, :cond_9

    .line 28
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t open output stream for: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 29
    :try_start_9
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catch_1
    if-eqz v5, :cond_7

    .line 30
    :try_start_a
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 31
    :catch_2
    :cond_7
    iget-object v0, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 32
    new-instance v0, Ljava/io/File;

    iget-object v1, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_8
    return-object v7

    .line 35
    :cond_9
    :try_start_b
    invoke-static {v6, v5}, Le/a/p5/s0/g;->X1(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 36
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 37
    :try_start_c
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 38
    :catch_3
    :try_start_d
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 39
    :catch_4
    :try_start_e
    iget-object v0, v2, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/truecaller/messaging/data/types/Entity;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "image/gif"

    goto :goto_0

    :cond_a
    iget-object v0, v2, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    :goto_0
    move-object v6, v0

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    .line 40
    iget-wide v12, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const v26, 0x3fe00

    .line 41
    invoke-static/range {v3 .. v26}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 42
    iget-object v3, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 43
    new-instance v1, Ljava/io/File;

    iget-object v2, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_b
    return-object v0

    :catch_5
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v7

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v5, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, v7

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v5, v7

    move-object v6, v5

    .line 46
    :goto_1
    :try_start_f
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v6, :cond_c

    .line 47
    :try_start_10
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catch_8
    :cond_c
    if-eqz v5, :cond_d

    .line 48
    :try_start_11
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 49
    :catch_9
    :cond_d
    iget-object v0, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 50
    new-instance v0, Ljava/io/File;

    iget-object v1, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_e
    return-object v7

    :catchall_2
    move-exception v0

    :goto_2
    move-object v7, v6

    :goto_3
    if-eqz v7, :cond_f

    .line 53
    :try_start_12
    invoke-interface {v7}, Ljava/io/Closeable;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :catch_a
    :cond_f
    if-eqz v5, :cond_10

    .line 54
    :try_start_13
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 55
    :catch_b
    :cond_10
    :try_start_14
    throw v0

    :catch_c
    move-exception v0

    move-object v1, v13

    move-object v3, v0

    .line 56
    invoke-static {v3}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 57
    iget-object v0, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v1, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_11
    return-object v7

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v1, v13

    .line 61
    :goto_4
    iget-object v3, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 62
    new-instance v1, Ljava/io/File;

    iget-object v2, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 65
    :cond_12
    throw v0
.end method

.method public final Q(Landroid/net/Uri;Z)Le/d/b/a/b/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Le/d/b/a/b/n;

    const-string v1, "$this$readFully"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Le/q/f/a/d/a;->t2(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 5
    invoke-direct {p1, v1, p2}, Le/d/b/a/b/n;-><init>([BZ)V

    .line 6
    invoke-virtual {p1}, Le/d/b/a/b/n;->b()Le/d/b/a/b/f;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    .line 8
    :cond_0
    :try_start_2
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t open stream with PDU content from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 9
    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 10
    :catch_1
    :cond_1
    throw p1
.end method

.method public final R(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;Z)Lcom/truecaller/messaging/data/types/Message;
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    iget v3, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    const/4 v4, 0x0

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "d_tm"

    const-string v6, "ct_l"

    const-string v7, "For some reasons we can not create thread for address "

    const-string v8, "date_sent"

    const-string v9, "date"

    const-string v10, "retr_txt"

    const-string v11, "read"

    const-string v12, "msg_box"

    const-string v13, "rr"

    const-string v14, "retr_st"

    const-string v15, "seen"

    move-object/from16 v16, v12

    const-string v12, "resp_txt"

    move-object/from16 v17, v13

    const-string v13, "resp_st"

    move-object/from16 v18, v8

    const-string v8, "tr_id"

    move-object/from16 v19, v9

    const-string v9, "m_id"

    move-object/from16 v20, v7

    const-string v7, "m_size"

    const-string v0, "exp"

    move-object/from16 v21, v5

    const-string v5, "m_cls"

    move-object/from16 v22, v12

    const-string v12, "d_rpt"

    move-object/from16 v23, v12

    const-string v12, "pri"

    move-object/from16 v24, v13

    const-string v13, "sub_cs"

    move-object/from16 v25, v5

    const-string v5, "sub"

    move-object/from16 v26, v6

    const-string v6, "ct_t"

    move-object/from16 v27, v6

    const-string v6, "thread_id"

    move-object/from16 v28, v6

    const-string v6, "m_type"

    const-wide/16 v29, -0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x0

    goto/16 :goto_14

    .line 3
    :pswitch_1
    iget-object v3, v1, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v16, v3

    .line 4
    iget-object v3, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 6
    invoke-virtual {v1, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {v1, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    iget v3, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    iget-object v3, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->j:Ljava/lang/String;

    invoke-virtual {v1, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v3

    .line 11
    iget v10, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->r:I

    const/16 v11, 0xc0

    if-lt v10, v11, :cond_0

    const/16 v11, 0xff

    if-ge v10, v11, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-nez v10, :cond_2

    .line 12
    iget-object v10, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->v:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget v9, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    iget-object v6, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    invoke-virtual {v1, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v6, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->h:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget v5, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, v26

    .line 20
    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 21
    iget-object v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->m:Ljava/lang/String;

    move-object/from16 v4, v27

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->u:Ljava/lang/String;

    move-object/from16 v4, v25

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, v24

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    iget-object v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->t:Ljava/lang/String;

    move-object/from16 v4, v22

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, v23

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    iget-wide v4, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->z:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v4, v21

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v4, p0

    .line 27
    iget-object v0, v4, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->f()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p1

    if-eqz v0, :cond_1

    .line 28
    iget-object v6, v5, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_1
    iget-object v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->E:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 30
    invoke-virtual/range {p0 .. p2}, Le/a/a/k/y/o;->F(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;)J

    move-result-wide v6

    cmp-long v0, v6, v29

    if-eqz v0, :cond_3

    .line 31
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v8, v28

    invoke-virtual {v1, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 32
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    move-result-object v0

    .line 33
    iput-wide v6, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->d:J

    .line 34
    invoke-virtual {v0}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    :cond_3
    move-object v0, v2

    .line 35
    :goto_1
    :try_start_0
    iget-object v2, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v7, v16

    invoke-virtual {v7, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    .line 36
    iput v1, v3, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 37
    iput-object v0, v3, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 38
    iget-object v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->E:Landroid/util/SparseArray;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 39
    iget-object v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    iget-object v2, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->E:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Le/a/a/k/y/o;->O(Landroid/net/Uri;Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->f()Z

    move-result v1

    if-nez v1, :cond_6

    .line 41
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    goto :goto_4

    .line 42
    :cond_6
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Message$b;->b()Lcom/truecaller/messaging/data/types/Message$b;

    .line 43
    iget-object v1, v5, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length v2, v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_8

    aget-object v6, v1, v5

    .line 44
    instance-of v7, v6, Lcom/truecaller/messaging/transport/mms/PduEntity;

    const-string v8, "Only new received messages should be processed by this method"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 45
    iget-wide v7, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    check-cast v6, Lcom/truecaller/messaging/transport/mms/PduEntity;

    invoke-virtual {v4, v7, v8, v6}, Le/a/a/k/y/o;->P(JLcom/truecaller/messaging/transport/mms/PduEntity;)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 46
    invoke-virtual {v3, v6}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 47
    :cond_8
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 48
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    const/4 v1, 0x0

    .line 49
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 50
    check-cast v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 51
    iget-object v3, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    if-nez v3, :cond_a

    return-object v1

    .line 52
    :cond_a
    invoke-virtual {v4, v3}, Le/a/a/k/y/o;->H(Landroid/net/Uri;)Lw3/b/a/b;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 53
    invoke-virtual {v4, v1}, Le/a/a/k/y/o;->S(Lw3/b/a/b;)V

    .line 54
    iget-object v3, v4, Le/a/a/k/y/o;->c:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/f;

    invoke-interface {v3}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/g/m;

    const/4 v5, 0x1

    invoke-interface {v3, v5, v1, v5}, Le/a/a/g/m;->d(ILw3/b/a/b;Z)V

    :cond_b
    if-eqz p3, :cond_d

    .line 55
    iget-object v1, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    if-eqz v1, :cond_d

    .line 56
    iget-object v1, v4, Le/a/a/k/y/o;->e:Le/a/a/k/y/l;

    iget-object v3, v0, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    iget-object v5, v4, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-virtual {v1, v3, v5}, Le/a/a/k/y/l;->a(Ljava/lang/String;Le/a/e4/p;)Le/a/r2/f;

    move-result-object v1

    .line 57
    iget-boolean v3, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->D:Z

    if-eqz v3, :cond_c

    .line 58
    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/y/k;

    iget-object v3, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v2, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    const/16 v5, 0x81

    invoke-interface {v1, v3, v2, v5}, Le/a/a/k/y/k;->a([BLandroid/net/Uri;I)V

    goto :goto_5

    .line 59
    :cond_c
    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/y/k;

    iget-object v3, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v2, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    invoke-interface {v1, v3, v2}, Le/a/a/k/y/k;->b([BLandroid/net/Uri;)V

    :cond_d
    :goto_5
    move-object v5, v4

    goto/16 :goto_c

    :pswitch_2
    move-object/from16 v3, p1

    move-object/from16 v31, v23

    move-object/from16 v1, v28

    move-object/from16 v23, v10

    move-object v10, v0

    move-object/from16 v0, v26

    move-object/from16 v26, v24

    move-object/from16 v24, v14

    move-object/from16 v14, v25

    move-object/from16 v25, v8

    move-object/from16 v8, v27

    move-object/from16 v27, v12

    .line 60
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v28, v6

    move-object/from16 v32, v7

    .line 61
    invoke-virtual/range {p0 .. p2}, Le/a/a/k/y/o;->F(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;)J

    move-result-wide v6

    cmp-long v16, v6, v29

    if-nez v16, :cond_e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 62
    invoke-static/range {v20 .. v20}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    move-object/from16 v5, p0

    move-object/from16 v1, v24

    goto/16 :goto_7

    .line 63
    :cond_e
    invoke-virtual {v12, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "locked"

    .line 64
    invoke-virtual {v12, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    iget-boolean v11, v3, Lcom/truecaller/messaging/data/types/Message;->h:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v12, v15, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 66
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v12, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    iget-object v1, v3, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    move-wide/from16 v33, v6

    .line 68
    iget-wide v6, v1, Lw3/b/a/e0/e;->a:J

    const-wide/16 v29, 0x3e8

    .line 69
    div-long v6, v6, v29

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v6, v19

    invoke-virtual {v12, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    iget-object v1, v3, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    .line 71
    iget-wide v6, v1, Lw3/b/a/e0/e;->a:J

    .line 72
    div-long v6, v6, v29

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v7, v18

    invoke-virtual {v12, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    iget-object v1, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->v:Ljava/lang/String;

    invoke-virtual {v12, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->h:Ljava/lang/String;

    invoke-virtual {v12, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget v1, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    iget-object v1, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->m:Ljava/lang/String;

    invoke-virtual {v12, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    if-eqz v1, :cond_f

    .line 78
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_f
    iget-object v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->p:Lw3/b/a/b;

    .line 80
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-lez v7, :cond_10

    const-wide/16 v7, 0x3e8

    .line 81
    div-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    :cond_10
    iget-object v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->u:Ljava/lang/String;

    invoke-virtual {v12, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v9, v28

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v11, v32

    invoke-virtual {v12, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->A:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    iget-boolean v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->C:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rpt_a"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    :cond_11
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->s:I

    if-lez v0, :cond_12

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    :cond_12
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->c:I

    if-lez v0, :cond_13

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "st"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    :cond_13
    iget-object v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    move-object/from16 v7, v25

    invoke-virtual {v12, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->r:I

    if-lez v0, :cond_14

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    :cond_14
    move-object/from16 v1, v24

    .line 97
    :goto_6
    iget-object v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 98
    iget-object v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->j:Ljava/lang/String;

    move-object/from16 v7, v23

    invoke-virtual {v12, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "retr_txt_cs"

    invoke-virtual {v12, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    :cond_15
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->B:I

    if-lez v0, :cond_16

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "read_status"

    invoke-virtual {v12, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    :cond_16
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "ct_cls"

    invoke-virtual {v12, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    iget-object v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->t:Ljava/lang/String;

    move-object/from16 v8, v22

    invoke-virtual {v12, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-wide v7, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->z:J

    cmp-long v0, v7, v5

    if-lez v0, :cond_17

    .line 105
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v5, v21

    invoke-virtual {v12, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    :cond_17
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v5, v31

    invoke-virtual {v12, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->h()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v5, "text_only"

    invoke-virtual {v12, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v5, p0

    .line 108
    iget-object v0, v5, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 109
    iget-object v6, v3, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    invoke-virtual {v12, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_18
    :try_start_1
    iget-object v0, v5, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v6, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v6, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_7

    .line 111
    :cond_19
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 112
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    move-result-object v2

    move-wide/from16 v8, v33

    .line 113
    iput-wide v8, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->d:J

    .line 114
    iput-wide v6, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b:J

    .line 115
    iput-object v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->e:Landroid/net/Uri;

    .line 116
    invoke-virtual {v2}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    move-result-object v2

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v3

    const/4 v6, 0x1

    .line 118
    iput v6, v3, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 119
    iput-object v2, v3, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 120
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v3

    .line 121
    iget-object v6, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->E:Landroid/util/SparseArray;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 122
    iget-object v2, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->E:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, v2}, Le/a/a/k/y/o;->O(Landroid/net/Uri;Landroid/util/SparseArray;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    .line 123
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_7
    const/4 v3, 0x0

    :goto_8
    if-nez v3, :cond_1a

    goto/16 :goto_d

    .line 124
    :cond_1a
    iget-object v0, v3, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 125
    check-cast v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 126
    iget-object v2, v3, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-virtual {v5, v2}, Le/a/a/k/y/o;->S(Lw3/b/a/b;)V

    .line 127
    iget-object v2, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    if-nez v2, :cond_1b

    const-string v0, "Received Notification pdu without location uri.Have no idea what to do with it."

    .line 128
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 129
    :cond_1b
    iget-object v2, v3, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    invoke-virtual {v5, v2}, Le/a/a/k/y/o;->D(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    if-eqz v2, :cond_1d

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v5, v3, v2}, Le/a/a/k/y/o;->G(Lcom/truecaller/messaging/data/types/Message;Z)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 131
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/16 v6, 0xc2

    .line 132
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    invoke-virtual {v2, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    iget-object v1, v5, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    iget-object v1, v5, Le/a/a/k/y/o;->k:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/y0/q;

    invoke-interface {v1}, Le/a/a/y0/q;->l()V

    :cond_1c
    const/4 v1, 0x0

    goto :goto_9

    :cond_1d
    move/from16 v1, p3

    :goto_9
    if-eqz v1, :cond_22

    .line 136
    iget-object v1, v5, Le/a/a/k/y/o;->e:Le/a/a/k/y/l;

    iget-object v2, v3, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    iget-object v4, v5, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-virtual {v1, v2, v4}, Le/a/a/k/y/l;->a(Ljava/lang/String;Le/a/e4/p;)Le/a/r2/f;

    move-result-object v1

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/y/k;

    iget-object v2, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v0, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    const/16 v4, 0x83

    invoke-interface {v1, v2, v0, v4}, Le/a/a/k/y/k;->a([BLandroid/net/Uri;I)V

    goto/16 :goto_d

    :pswitch_3
    move-object/from16 v3, p1

    move-object v5, v1

    move-object v7, v8

    move-object/from16 v8, v22

    move-object/from16 v1, v24

    .line 138
    iget-object v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 139
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 140
    iget-object v4, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->v:Ljava/lang/String;

    invoke-virtual {v0, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v4, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget v4, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->s:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    iget-object v1, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->t:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v12, v16

    invoke-virtual {v0, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    iget-object v4, v5, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 146
    :try_start_2
    iget-object v6, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1e

    goto :goto_a

    .line 147
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    move-result-object v0

    .line 148
    iput v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->v:I

    .line 149
    invoke-virtual {v0}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    move-result-object v0

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v1

    const/4 v2, 0x1

    .line 151
    iput v2, v1, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 152
    iput-object v0, v1, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 153
    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :catch_2
    :goto_a
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_1f

    const/4 v0, 0x0

    return-object v0

    :cond_1f
    const/4 v1, 0x0

    .line 154
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 155
    check-cast v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 156
    iget-object v2, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    if-nez v2, :cond_20

    return-object v1

    .line 157
    :cond_20
    invoke-virtual {v5, v2}, Le/a/a/k/y/o;->H(Landroid/net/Uri;)Lw3/b/a/b;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 158
    invoke-virtual {v5, v1}, Le/a/a/k/y/o;->S(Lw3/b/a/b;)V

    :cond_21
    :goto_c
    move-object v3, v0

    :cond_22
    :goto_d
    move-object v1, v5

    goto/16 :goto_14

    :pswitch_4
    move-object/from16 v3, p1

    move-object v10, v0

    move-object v4, v1

    move-object v9, v6

    move-object/from16 v32, v7

    move-object/from16 v0, v17

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    move-object/from16 v15, v23

    move-object/from16 v14, v25

    move-object/from16 v8, v27

    move-object/from16 v1, v28

    .line 159
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 160
    iget-object v7, v4, Le/a/a/k/y/o;->d:Le/a/e4/p;

    iget-object v6, v3, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    invoke-interface {v7, v6}, Le/a/e4/p;->i(Ljava/lang/String;)Le/a/e4/i;

    move-result-object v6

    .line 161
    iget-object v7, v4, Le/a/a/k/y/o;->h:Le/a/a/k/y/d;

    iget-object v4, v3, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    invoke-interface {v7, v4, v6}, Le/a/a/k/y/d;->d([Lcom/truecaller/messaging/data/types/Entity;Le/a/e4/i;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_23

    goto :goto_f

    .line 162
    :cond_23
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_24

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p3, v6

    move-object/from16 v6, v17

    check-cast v6, Lcom/truecaller/messaging/transport/mms/PduEntity;

    move-object/from16 v25, v14

    move-object/from16 v23, v15

    int-to-long v14, v7

    .line 163
    iget-wide v6, v6, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    add-long/2addr v14, v6

    long-to-int v7, v14

    move-object/from16 v6, p3

    move-object/from16 v15, v23

    move-object/from16 v14, v25

    goto :goto_e

    :cond_24
    move-object/from16 v25, v14

    move-object/from16 v23, v15

    .line 164
    invoke-virtual/range {p0 .. p2}, Le/a/a/k/y/o;->F(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;)J

    move-result-wide v14

    cmp-long v6, v14, v29

    if-nez v6, :cond_25

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 165
    invoke-static/range {v20 .. v20}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    :goto_f
    const/4 v0, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_13

    .line 166
    :cond_25
    iget v6, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v11, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    iget-object v1, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->m:Ljava/lang/String;

    invoke-virtual {v11, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->h:Ljava/lang/String;

    invoke-virtual {v11, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget v1, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    iget v1, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    iget v1, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->A:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    iget v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    iget-object v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->u:Ljava/lang/String;

    move-object/from16 v1, v25

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->p:Lw3/b/a/b;

    .line 176
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    const-wide/16 v5, 0x3e8

    .line 177
    div-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    iget-object v0, v3, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    .line 179
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 180
    div-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    iget-object v0, v3, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    .line 182
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 183
    div-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, v32

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x4

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v1, p0

    .line 186
    iget-object v0, v1, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 187
    iget-object v5, v3, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_26
    iget-object v0, v1, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 189
    :try_start_3
    iget-object v5, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    if-nez v5, :cond_27

    .line 190
    sget-object v5, Le/a/a/k/y/o;->y:Landroid/net/Uri;

    invoke-virtual {v0, v5, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    const/4 v5, 0x0

    goto :goto_10

    :cond_27
    const/4 v6, 0x0

    .line 191
    :try_start_4
    invoke-virtual {v0, v5, v11, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_28

    .line 192
    iget-object v0, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v5, v6

    goto :goto_10

    :cond_28
    move-object v0, v6

    move-object v5, v0

    .line 193
    :goto_10
    :try_start_5
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    cmp-long v0, v6, v29

    if-nez v0, :cond_29

    goto :goto_12

    .line 194
    :cond_29
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    move-result-object v0

    .line 195
    iput-wide v6, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b:J

    .line 196
    iput-wide v14, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->d:J

    .line 197
    invoke-virtual {v0, v6, v7}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->d(J)Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    invoke-virtual {v0}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    move-result-object v0

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v2

    const/4 v6, 0x1

    .line 199
    iput v6, v2, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 200
    iput-object v0, v2, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 201
    iget-object v5, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->E:Landroid/util/SparseArray;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 202
    iget-object v5, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    iget-object v6, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->E:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v6}, Le/a/a/k/y/o;->O(Landroid/net/Uri;Landroid/util/SparseArray;)V

    .line 203
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2a

    move-object v0, v3

    goto :goto_13

    .line 204
    :cond_2a
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Message$b;->b()Lcom/truecaller/messaging/data/types/Message$b;

    .line 205
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/messaging/transport/mms/PduEntity;

    .line 206
    iget-wide v5, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    invoke-virtual {v1, v5, v6, v4}, Le/a/a/k/y/o;->P(JLcom/truecaller/messaging/transport/mms/PduEntity;)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 207
    invoke-virtual {v2, v4}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    goto :goto_11

    .line 208
    :cond_2c
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    goto :goto_13

    :catch_3
    :goto_12
    move-object v0, v5

    goto :goto_13

    :catch_4
    move-object v0, v6

    goto :goto_13

    :catch_5
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_2d

    .line 209
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-virtual {v1, v2}, Le/a/a/k/y/o;->S(Lw3/b/a/b;)V

    :cond_2d
    move-object v3, v0

    :goto_14
    return-object v3

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final S(Lw3/b/a/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/y/o;->b:Le/a/a/i0;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/a/i0;->i2(IJ)J

    move-result-wide v2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lw3/b/a/b;->O(I)Lw3/b/a/b;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v2, v3}, Lw3/b/a/e0/c;->h(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/a/k/y/o;->b:Le/a/a/i0;

    .line 5
    iget-wide v2, p1, Lw3/b/a/e0/e;->a:J

    .line 6
    invoke-interface {v0, v1, v2, v3}, Le/a/a/i0;->S0(IJ)V

    :cond_0
    return-void
.end method

.method public final T(JI)Z
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "msg_box"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    iget-object p3, p0, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 4
    sget-object v1, Le/a/a/k/y/o;->y:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const-string p1, "_id=?"

    invoke-virtual {p3, v1, v0, p1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    return v2
.end method

.method public a(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/p;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 2
    check-cast v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 3
    iget v3, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    const/16 v6, 0x82

    const/4 v7, 0x0

    if-ne v3, v6, :cond_3

    iget-object v3, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v3, v1, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 5
    :try_start_0
    new-instance v3, Lw3/b/a/b;

    invoke-direct {v3}, Lw3/b/a/b;-><init>()V

    const/4 v9, 0x7

    .line 6
    invoke-virtual {v3, v9}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v10

    .line 7
    invoke-virtual {v3, v9}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object v9

    .line 8
    sget-object v11, Le/a/a/k/y/o;->y:Landroid/net/Uri;

    const-string v12, "_id"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "((m_type<>130) OR (exp>?)) AND (date>?) AND (date<?) AND (ct_l=?)"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    .line 9
    iget-wide v4, v3, Lw3/b/a/e0/e;->a:J

    const-wide/16 v15, 0x3e8

    .line 10
    div-long/2addr v4, v15

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v7

    .line 11
    iget-wide v3, v10, Lw3/b/a/e0/e;->a:J

    .line 12
    div-long/2addr v3, v15

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v14, v4

    const/4 v3, 0x2

    .line 13
    iget-wide v4, v9, Lw3/b/a/e0/e;->a:J

    .line 14
    div-long/2addr v4, v15

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v3

    const/4 v3, 0x3

    iget-object v2, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    .line 15
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v2

    move-object v14, v3

    .line 16
    invoke-virtual/range {v8 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 17
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 19
    :cond_2
    throw v0

    :cond_3
    :goto_1
    move v3, v7

    :goto_2
    if-eqz v3, :cond_4

    .line 20
    invoke-static {}, Le/a/a/k/p;->a()Le/a/a/k/p;

    move-result-object v0

    return-object v0

    .line 21
    :cond_4
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 22
    check-cast v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Le/a/a/k/y/o;->R(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;Z)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    if-nez v0, :cond_5

    .line 23
    invoke-static {}, Le/a/a/k/p;->a()Le/a/a/k/p;

    move-result-object v0

    return-object v0

    .line 24
    :cond_5
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 25
    check-cast v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 26
    iget-object v3, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    if-nez v3, :cond_6

    .line 27
    invoke-static {}, Le/a/a/k/p;->a()Le/a/a/k/p;

    move-result-object v0

    return-object v0

    .line 28
    :cond_6
    iget v3, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    if-eq v3, v6, :cond_7

    goto :goto_4

    .line 29
    :cond_7
    iget-object v3, v0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v3, v3, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v4, "+"

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_8
    const/4 v4, 0x1

    .line 32
    :goto_3
    :try_start_2
    iget v5, v0, Lcom/truecaller/messaging/data/types/Message;->g:I

    and-int/2addr v5, v4

    if-nez v5, :cond_9

    .line 33
    sget-object v4, Le/a/l5/a/a1;->g:Lorg/apache/avro/Schema;

    new-instance v4, Le/a/l5/a/a1$b;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Le/a/l5/a/a1$b;-><init>(Le/a/l5/a/a1$a;)V

    const-string v5, "mms"

    .line 34
    invoke-virtual {v4, v5}, Le/a/l5/a/a1$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/a1$b;

    iget-object v5, v0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    .line 35
    invoke-virtual {v2, v5}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->T1(Lw3/b/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Le/a/l5/a/a1$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/a1$b;

    .line 36
    invoke-virtual {v4, v3}, Le/a/l5/a/a1$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/a1$b;

    iget-object v0, v0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 37
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Le/a/l5/a/a1$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/a1$b;

    .line 38
    invoke-virtual {v4}, Le/a/l5/a/a1$b;->a()Le/a/l5/a/a1;

    move-result-object v0

    .line 39
    iget-object v2, v1, Le/a/a/k/y/o;->l:Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/a0;

    invoke-interface {v2, v0}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V
    :try_end_2
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-array v2, v7, [Ljava/lang/String;

    .line 40
    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 41
    :cond_9
    :goto_4
    new-instance v0, Le/a/a/k/p;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v3, v3, v2}, Le/a/a/k/p;-><init>(ZZZLs1/z/c/f;)V

    return-object v0
.end method

.method public declared-synchronized b(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/o;
    .locals 14

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Le/a/a/k/y/o;->N(Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 3
    check-cast v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 4
    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 5
    iget-object v2, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    new-array v3, v1, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 6
    iget-object v2, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Le/a/a/k/y/o;->J(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_0

    .line 7
    new-instance p1, Le/a/a/k/o$b;

    const-string v0, "INTERNAL_CLIENT"

    invoke-direct {p1, v0}, Le/a/a/k/o$b;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    .line 8
    :try_start_1
    iget-object v3, p0, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 9
    iget-object v5, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    sget-object v6, Le/a/a/k/y/o;->v:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v13, :cond_5

    .line 10
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_0

    .line 11
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Le/a/a/k/y/i;->e:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_3

    .line 12
    new-instance p1, Le/a/a/k/o$b;

    const-string v0, "INTERNAL_CLIENT"

    invoke-direct {p1, v0}, Le/a/a/k/o$b;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :try_start_3
    invoke-interface {v13}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    if-eqz v2, :cond_2

    .line 14
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 15
    :catch_1
    :cond_2
    monitor-exit p0

    return-object p1

    .line 16
    :cond_3
    :try_start_5
    iget-object v3, p0, Le/a/a/k/y/o;->h:Le/a/a/k/y/d;

    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v1, 0x2

    .line 18
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v1, 0x3

    .line 19
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v1, 0x4

    .line 20
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    new-instance v11, Le/a/a/k/y/i;

    invoke-direct {v11, v2}, Le/a/a/k/y/i;-><init>(Landroid/database/Cursor;)V

    iget-object v12, p1, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    .line 21
    invoke-interface/range {v3 .. v12}, Le/a/a/k/y/d;->b(Ljava/lang/String;JIIILjava/util/List;Le/a/a/k/y/d$a;Ljava/lang/String;)Le/d/b/a/b/f;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Le/d/b/a/b/t;

    if-nez v8, :cond_4

    .line 22
    new-instance p1, Le/a/a/k/o$b;

    const-string v0, "INTERNAL_CLIENT"

    invoke-direct {p1, v0}, Le/a/a/k/o$b;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 23
    :try_start_6
    invoke-interface {v13}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 24
    :catch_2
    :try_start_7
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 25
    :catch_3
    monitor-exit p0

    return-object p1

    .line 26
    :cond_4
    :try_start_8
    invoke-interface {v13}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 27
    :catch_4
    :try_start_9
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 28
    :catch_5
    :try_start_a
    iget-object v1, p0, Le/a/a/k/y/o;->e:Le/a/a/k/y/l;

    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    iget-object v3, p0, Le/a/a/k/y/o;->d:Le/a/e4/p;

    invoke-virtual {v1, v2, v3}, Le/a/a/k/y/l;->a(Ljava/lang/String;Le/a/e4/p;)Le/a/r2/f;

    move-result-object v1

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Le/a/a/k/y/k;

    iget-wide v4, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    .line 29
    iget-wide v6, p1, Lw3/b/a/e0/e;->a:J

    .line 30
    iget-object v9, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    invoke-interface/range {v3 .. v9}, Le/a/a/k/y/k;->c(JJLe/d/b/a/b/t;Landroid/net/Uri;)V

    .line 31
    new-instance p1, Le/a/a/k/y/o$a;

    iget-wide v0, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    invoke-direct {p1, v0, v1}, Le/a/a/k/y/o$a;-><init>(J)V

    iput-object p1, p0, Le/a/a/k/y/o;->r:Le/a/a/k/y/o$a;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 32
    monitor-exit p0

    return-object p1

    .line 33
    :cond_5
    :goto_0
    :try_start_b
    new-instance p1, Le/a/a/k/o$b;

    const-string v0, "INTERNAL_CLIENT"

    invoke-direct {p1, v0}, Le/a/a/k/o$b;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v13, :cond_6

    .line 34
    :try_start_c
    invoke-interface {v13}, Ljava/io/Closeable;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 35
    :catch_6
    :cond_6
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v2

    move-object v2, v13

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v0, v2

    :goto_1
    if-eqz v2, :cond_7

    .line 36
    :try_start_d
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catch_7
    :cond_7
    if-eqz v0, :cond_8

    .line 37
    :try_start_e
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 38
    :catch_8
    :cond_8
    :try_start_f
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Lcom/truecaller/messaging/data/types/Message;)I
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 2
    check-cast p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 3
    iget-object v0, p0, Le/a/a/k/y/o;->j:Ljava/util/Set;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Le/a/a/k/y/o;->j:Ljava/util/Set;

    iget-wide v2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    .line 5
    monitor-exit v0

    return p1

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget v0, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    const/16 v1, 0x82

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->p:Lw3/b/a/b;

    invoke-virtual {v0}, Lw3/b/a/e0/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget p1, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->r:I

    const/16 v0, 0xc0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_2

    const/16 v0, 0xff

    if-ge p1, v0, :cond_2

    move v2, v1

    :cond_2
    if-eqz v2, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, v2}, Le/a/a/k/y/o;->G(Lcom/truecaller/messaging/data/types/Message;Z)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mms"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/k/y/o;->b:Le/a/a/i0;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lw3/b/a/b;->O(I)Lw3/b/a/b;

    move-result-object p1

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const/4 p1, 0x1

    .line 3
    invoke-interface {v0, p1, v1, v2}, Le/a/a/i0;->S0(IJ)V

    return-void
.end method

.method public i(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public j()Lw3/b/a/b;
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/a/k/y/o;->b:Le/a/a/i0;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/a/i0;->i2(IJ)J

    move-result-wide v2

    .line 2
    iget-boolean v0, p0, Le/a/a/k/y/o;->s:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Le/a/a/k/y/o;->o:Le/a/p5/a0;

    const-string v4, "android.permission.SEND_SMS"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/a/a/k/y/o;->o:Le/a/p5/a0;

    const-string v4, "android.permission.READ_SMS"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Le/a/a/k/y/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v10, 0x0

    .line 4
    :try_start_0
    sget-object v11, Le/a/a/k/y/o;->y:Landroid/net/Uri;

    const-string v4, "date"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "msg_box=4"

    const/4 v8, 0x0

    const-string v9, "date DESC LIMIT 1"

    move-object v4, v0

    move-object v5, v11

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    .line 5
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    .line 6
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    .line 7
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "msg_box"

    const/4 v9, 0x5

    .line 8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "msg_box=4"

    .line 9
    invoke-virtual {v0, v11, v7, v8, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    cmp-long v0, v5, v2

    if-gez v0, :cond_0

    move-wide v2, v5

    .line 10
    :cond_0
    iget-object v0, p0, Le/a/a/k/y/o;->b:Le/a/a/i0;

    invoke-interface {v0, v1, v2, v3}, Le/a/a/i0;->S0(IJ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v10, v4

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v10, v4

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 11
    :try_start_2
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 12
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v10, :cond_2

    .line 13
    :try_start_4
    invoke-interface {v10}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 14
    :catch_2
    :cond_2
    :goto_2
    iput-boolean v1, p0, Le/a/a/k/y/o;->s:Z

    goto :goto_4

    :goto_3
    if-eqz v10, :cond_3

    .line 15
    :try_start_5
    invoke-interface {v10}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 16
    :catch_3
    :cond_3
    throw v0

    .line 17
    :cond_4
    :goto_4
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0, v2, v3}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public k(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 1
    div-long/2addr p1, v0

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public m(Le/a/a/k/j;Le/a/a/k/m;Le/a/a/g/j0/g0;Lw3/b/a/b;Lw3/b/a/b;ILjava/util/List;Le/a/p5/l0;ZLe/a/c/r/h/d;)J
    .locals 14
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

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/k/y/o;->o:Le/a/p5/a0;

    const-string v2, "android.permission.READ_SMS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    return-wide v1

    .line 2
    :cond_0
    iget-object v3, v0, Le/a/a/k/y/o;->g:Le/a/a/k/y/n;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v3 .. v13}, Le/a/a/k/y/n;->j(Le/a/a/k/j;Le/a/a/k/m;Le/a/a/g/j0/g0;Lw3/b/a/b;Lw3/b/a/b;ILjava/util/List;Le/a/p5/l0;ZLe/a/c/r/h/d;)J

    move-result-wide v1

    return-wide v1
.end method

.method public n(Le/a/a/k/w;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Le/a/a/k/w;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Le/a/a/k/w;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Le/a/a/k/y/o;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o(Lcom/truecaller/messaging/data/types/TransportInfo;Le/a/a/k/w;ZLjava/util/Set;)Z
    .locals 1

    .line 1
    check-cast p2, Le/a/a/k/y/p;

    .line 2
    iget-boolean p3, p2, Le/a/a/k/y/p;->d:Z

    const/4 p4, 0x0

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of p3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    new-array v0, p4, [Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    check-cast p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 5
    iget-object p3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    new-array p4, p4, [Ljava/lang/String;

    invoke-static {p3, p4}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Le/a/a/k/w;->d(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object p1

    invoke-virtual {p1}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    const/4 p4, 0x1

    :goto_0
    return p4
.end method

.method public p(Le/a/a/k/w;)Z
    .locals 2

    .line 1
    check-cast p1, Le/a/a/k/y/p;

    .line 2
    iget-boolean v0, p1, Le/a/a/k/y/p;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/a/a/k/y/o;->m:Le/a/a/k/w$c;

    invoke-interface {v0, p1}, Le/a/a/k/w$c;->a(Le/a/a/k/w;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    array-length p1, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v1
.end method

.method public q(Lcom/truecaller/messaging/data/types/BinaryEntity;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Mms transport can not be used to cancel attachments."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s(Lcom/truecaller/messaging/data/types/Message;ILe/a/a/k/w;)Z
    .locals 5

    .line 1
    check-cast p3, Le/a/a/k/y/p;

    .line 2
    iget-boolean v0, p3, Le/a/a/k/y/p;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    instance-of v0, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    check-cast v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 5
    sget-object v2, Le/a/a/k/y/o;->y:Landroid/net/Uri;

    invoke-virtual {p3, v2}, Le/a/a/k/w;->e(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object v2

    .line 6
    invoke-static {p2}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 7
    iget-object v3, v2, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string v4, "msg_box"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    .line 8
    iget-wide v3, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    .line 9
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    iget p1, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    .line 10
    invoke-static {p1}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, p2, v1

    const-string p1, "_id=? AND msg_box = ?"

    .line 11
    iput-object p1, v2, Le/a/a/k/w$b$a;->d:Ljava/lang/String;

    .line 12
    iput-object p2, v2, Le/a/a/k/w$b$a;->e:[Ljava/lang/String;

    .line 13
    invoke-virtual {v2}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object p1

    invoke-virtual {p3, p1}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    :goto_0
    return v1
.end method

.method public t(J)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MMS transport does not support retry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(Lcom/truecaller/messaging/data/types/TransportInfo;JJLe/a/a/k/w;Z)Z
    .locals 0

    .line 1
    check-cast p6, Le/a/a/k/y/p;

    .line 2
    iget-boolean p2, p6, Le/a/a/k/y/p;->d:Z

    const/4 p3, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    new-array p4, p3, [Ljava/lang/String;

    invoke-static {p2, p4}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    check-cast p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 5
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    new-array p3, p3, [Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    invoke-virtual {p6, p1}, Le/a/a/k/w;->e(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object p1

    const/4 p3, 0x1

    if-eqz p7, :cond_1

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 8
    iget-object p4, p1, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string p5, "seen"

    invoke-virtual {p4, p5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 10
    iget-object p4, p1, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string p5, "read"

    invoke-virtual {p4, p5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    invoke-virtual {p1}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object p1

    invoke-virtual {p6, p1}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    :goto_0
    return p3
.end method

.method public v(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/a/k/y/o;->E()Z

    move-result p1

    return p1
.end method

.method public w()Le/a/a/k/w;
    .locals 2

    .line 1
    new-instance v0, Le/a/a/k/y/p;

    invoke-virtual {p0}, Le/a/a/k/y/o;->E()Z

    move-result v1

    invoke-direct {v0, v1}, Le/a/a/k/y/p;-><init>(Z)V

    return-object v0
.end method

.method public x(Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 1

    .line 1
    iget p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public y(Lcom/truecaller/messaging/data/types/TransportInfo;Le/a/a/k/w;)Z
    .locals 4

    .line 1
    check-cast p2, Le/a/a/k/y/p;

    .line 2
    iget-boolean v0, p2, Le/a/a/k/y/p;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    check-cast p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 5
    iget-object v0, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Le/a/a/k/w;->e(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object p1

    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 8
    iget-object v2, p1, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string v3, "seen"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    invoke-virtual {p1}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    :goto_0
    return v1
.end method

.method public z(Ljava/lang/String;Le/a/a/k/e;)Z
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, p1, p1, p1, v0}, Le/a/a/k/e;->a(IIII)V

    return p1
.end method
