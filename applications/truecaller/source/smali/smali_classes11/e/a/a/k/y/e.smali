.class public Le/a/a/k/y/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/y/d;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/b0/q/z;

.field public final c:Ljava/io/File;

.field public final d:Le/a/a/i0;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/b0/q/z;Ljava/io/File;Le/a/a/i0;Le/a/u3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/k/y/e;->a:Landroid/content/ContentResolver;

    .line 3
    iput-object p2, p0, Le/a/a/k/y/e;->b:Le/a/b0/q/z;

    .line 4
    new-instance p1, Ljava/io/File;

    const-string p2, "pdu_parts"

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/a/k/y/e;->c:Ljava/io/File;

    .line 5
    iput-object p4, p0, Le/a/a/k/y/e;->d:Le/a/a/i0;

    return-void
.end method


# virtual methods
.method public a(Le/d/b/a/b/f;ZLjava/lang/String;J)Lcom/truecaller/messaging/data/types/Message;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    .line 1
    new-instance v5, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v5}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    .line 2
    iget-object v6, v0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    .line 3
    new-instance v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    invoke-direct {v7}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;-><init>()V

    const/16 v8, 0x96

    .line 4
    invoke-virtual {v6, v8}, Le/d/b/a/b/m;->b(I)Le/d/b/a/b/e;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 5
    invoke-virtual {v8}, Le/d/b/a/b/e;->c()[B

    move-result-object v9

    invoke-static {v9}, Ln3/g0/y;->Z1([B)Ljava/lang/String;

    move-result-object v9

    .line 6
    iget v8, v8, Le/d/b/a/b/e;->a:I

    .line 7
    iput-object v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->g:Ljava/lang/String;

    .line 8
    iput v8, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->h:I

    :cond_0
    const/16 v8, 0x9a

    .line 9
    invoke-virtual {v6, v8}, Le/d/b/a/b/m;->b(I)Le/d/b/a/b/e;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 10
    invoke-virtual {v8}, Le/d/b/a/b/e;->c()[B

    move-result-object v9

    invoke-static {v9}, Ln3/g0/y;->Z1([B)Ljava/lang/String;

    move-result-object v9

    .line 11
    iget v8, v8, Le/d/b/a/b/e;->a:I

    .line 12
    iput-object v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->i:Ljava/lang/String;

    .line 13
    iput v8, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->j:I

    :cond_1
    const/16 v8, 0x83

    .line 14
    invoke-virtual {v6, v8}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v8

    if-eqz v8, :cond_2

    .line 15
    invoke-static {v8}, Ln3/g0/y;->Z1([B)Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    .line 17
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 18
    iput-object v8, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->k:Landroid/net/Uri;

    :cond_2
    const/16 v8, 0x84

    .line 19
    invoke-virtual {v6, v8}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v9

    if-eqz v9, :cond_3

    .line 20
    invoke-static {v9}, Ln3/g0/y;->Z1([B)Ljava/lang/String;

    move-result-object v9

    .line 21
    iput-object v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->l:Ljava/lang/String;

    :cond_3
    const/16 v9, 0x98

    .line 22
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v9

    if-eqz v9, :cond_4

    .line 23
    invoke-static {v9}, Ln3/g0/y;->Z1([B)Ljava/lang/String;

    move-result-object v9

    .line 24
    iput-object v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->p:Ljava/lang/String;

    :cond_4
    const/16 v9, 0x93

    .line 25
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->b(I)Le/d/b/a/b/e;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 26
    invoke-virtual {v9}, Le/d/b/a/b/e;->b()Ljava/lang/String;

    move-result-object v9

    .line 27
    iput-object v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->n:Ljava/lang/String;

    :cond_5
    const/16 v9, 0x8b

    .line 28
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v9

    if-eqz v9, :cond_6

    .line 29
    invoke-static {v9}, Ln3/g0/y;->Z1([B)Ljava/lang/String;

    move-result-object v9

    .line 30
    iput-object v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->u:Ljava/lang/String;

    :cond_6
    const/16 v9, 0x8a

    .line 31
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v9

    if-eqz v9, :cond_7

    .line 32
    invoke-static {v9}, Ln3/g0/y;->Z1([B)Ljava/lang/String;

    move-result-object v9

    .line 33
    iput-object v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->o:Ljava/lang/String;

    :cond_7
    const/16 v9, 0x95

    .line 34
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->e(I)I

    move-result v9

    if-eqz v9, :cond_8

    .line 35
    iput v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->c:I

    :cond_8
    const/16 v9, 0x99

    .line 36
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->e(I)I

    move-result v9

    if-eqz v9, :cond_9

    .line 37
    iput v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->s:I

    :cond_9
    const/16 v9, 0x92

    .line 38
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->e(I)I

    move-result v9

    if-eqz v9, :cond_a

    .line 39
    iput v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->t:I

    :cond_a
    const/16 v9, 0x8c

    .line 40
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->e(I)I

    move-result v9

    if-eqz v9, :cond_b

    .line 41
    iput v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->w:I

    :cond_b
    const/16 v9, 0x8f

    .line 42
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->e(I)I

    move-result v9

    if-eqz v9, :cond_c

    .line 43
    iput v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->r:I

    :cond_c
    const/16 v9, 0x8d

    .line 44
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->e(I)I

    move-result v9

    if-eqz v9, :cond_d

    .line 45
    iput v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->f:I

    :cond_d
    const/16 v9, 0xba

    .line 46
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->e(I)I

    move-result v9

    if-eqz v9, :cond_e

    .line 47
    iput v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->m:I

    :cond_e
    const/16 v9, 0x86

    .line 48
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->e(I)I

    move-result v9

    if-eqz v9, :cond_f

    .line 49
    iput v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->y:I

    :cond_f
    const/16 v9, 0x90

    .line 50
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->e(I)I

    move-result v9

    if-eqz v9, :cond_10

    .line 51
    iput v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->A:I

    :cond_10
    const/16 v9, 0x9b

    .line 52
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->e(I)I

    move-result v9

    if-eqz v9, :cond_11

    .line 53
    iput v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->B:I

    :cond_11
    const/16 v9, 0x91

    .line 54
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->e(I)I

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_12

    .line 55
    iput-boolean v10, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->C:Z

    :cond_12
    const/16 v9, 0x87

    .line 56
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->d(I)J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v9, v11, v13

    if-eqz v9, :cond_13

    .line 57
    iput-wide v11, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->z:J

    :cond_13
    const/16 v9, 0x88

    .line 58
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->d(I)J

    move-result-wide v11

    cmp-long v9, v11, v13

    if-eqz v9, :cond_14

    .line 59
    invoke-virtual {v7, v11, v12}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->c(J)Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    :cond_14
    const/16 v9, 0x8e

    .line 60
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->d(I)J

    move-result-wide v11

    cmp-long v9, v11, v13

    if-eqz v9, :cond_15

    long-to-int v9, v11

    .line 61
    iput v9, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->x:I

    :cond_15
    const/16 v9, 0x89

    .line 62
    invoke-virtual {v6, v9}, Le/d/b/a/b/m;->b(I)Le/d/b/a/b/e;

    move-result-object v11

    if-eqz v11, :cond_16

    .line 63
    invoke-virtual {v11}, Le/d/b/a/b/e;->b()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_16
    const/4 v11, 0x0

    :goto_0
    const-string v15, "Unknown sender"

    if-nez v11, :cond_17

    move-object v11, v15

    .line 64
    :cond_17
    invoke-virtual {v7, v9, v11}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->a(ILjava/lang/String;)Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    .line 65
    sget-object v11, Le/a/a/k/y/o;->u:[I

    array-length v12, v11

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v12, :cond_1b

    aget v10, v11, v8

    .line 66
    invoke-virtual {v6, v10}, Le/d/b/a/b/m;->c(I)[Le/d/b/a/b/e;

    move-result-object v9

    if-nez v9, :cond_18

    goto :goto_4

    .line 67
    :cond_18
    array-length v13, v9

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_1a

    aget-object v16, v9, v14

    move-object/from16 v17, v9

    .line 68
    invoke-virtual/range {v16 .. v16}, Le/d/b/a/b/e;->b()Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-static {v9}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_19

    goto :goto_3

    .line 70
    :cond_19
    invoke-virtual {v7, v10, v9}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->a(ILjava/lang/String;)Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, v17

    goto :goto_2

    :cond_1a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    const-wide/16 v13, -0x1

    goto :goto_1

    :cond_1b
    move-wide v8, v13

    cmp-long v10, v3, v8

    if-eqz v10, :cond_1c

    .line 71
    iput-wide v3, v7, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b:J

    .line 72
    invoke-virtual {v7, v3, v4}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->d(J)Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    .line 73
    :cond_1c
    invoke-virtual {v7}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    move-result-object v3

    const/4 v4, 0x0

    .line 74
    iput-boolean v4, v5, Lcom/truecaller/messaging/data/types/Message$b;->h:Z

    .line 75
    iput-boolean v4, v5, Lcom/truecaller/messaging/data/types/Message$b;->i:Z

    .line 76
    iput-boolean v4, v5, Lcom/truecaller/messaging/data/types/Message$b;->j:Z

    const/4 v4, 0x3

    .line 77
    iput v4, v5, Lcom/truecaller/messaging/data/types/Message$b;->l:I

    const/16 v4, 0x85

    .line 78
    invoke-virtual {v6, v4}, Le/d/b/a/b/m;->d(I)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-eqz v4, :cond_1d

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 79
    invoke-virtual {v5, v6, v7}, Lcom/truecaller/messaging/data/types/Message$b;->c(J)Lcom/truecaller/messaging/data/types/Message$b;

    goto :goto_5

    .line 80
    :cond_1d
    new-instance v4, Lw3/b/a/b;

    invoke-direct {v4}, Lw3/b/a/b;-><init>()V

    const/4 v6, 0x0

    .line 81
    invoke-virtual {v4, v6}, Lw3/b/a/b;->O(I)Lw3/b/a/b;

    move-result-object v4

    .line 82
    iput-object v4, v5, Lcom/truecaller/messaging/data/types/Message$b;->e:Lw3/b/a/b;

    .line 83
    :goto_5
    iget v4, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->w:I

    iget v6, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    iget v7, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->s:I

    invoke-static {v4, v6, v7}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->c(III)I

    move-result v4

    .line 84
    iput v4, v5, Lcom/truecaller/messaging/data/types/Message$b;->g:I

    const/4 v4, 0x1

    .line 85
    iput v4, v5, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 86
    iput-object v3, v5, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    if-nez v2, :cond_1e

    const-string v4, "-1"

    goto :goto_6

    :cond_1e
    move-object v4, v2

    .line 87
    :goto_6
    iput-object v4, v5, Lcom/truecaller/messaging/data/types/Message$b;->m:Ljava/lang/String;

    .line 88
    invoke-virtual/range {p1 .. p1}, Le/d/b/a/b/f;->a()I

    move-result v4

    const/16 v6, 0x80

    if-eq v4, v6, :cond_21

    const/16 v6, 0x82

    if-eq v4, v6, :cond_1f

    const/16 v6, 0x84

    if-eq v4, v6, :cond_20

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_7

    :cond_1f
    move/from16 v4, p2

    .line 89
    iput-boolean v4, v5, Lcom/truecaller/messaging/data/types/Message$b;->h:Z

    .line 90
    :cond_20
    iget-object v4, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->E:Landroid/util/SparseArray;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 91
    iget-object v3, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->E:Landroid/util/SparseArray;

    const/16 v4, 0x89

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    new-array v4, v6, [Ljava/lang/String;

    .line 92
    invoke-static {v3, v4}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 93
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Le/a/a/k/y/e;->b:Le/a/b0/q/z;

    invoke-static {v3, v4, v2}, Lcom/truecaller/data/entity/messaging/Participant;->a(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v2

    goto :goto_7

    :cond_21
    const/4 v6, 0x0

    .line 94
    iget-object v4, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->E:Landroid/util/SparseArray;

    new-array v7, v6, [Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 95
    iget-object v3, v3, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->E:Landroid/util/SparseArray;

    const/16 v4, 0x97

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    new-array v4, v6, [Ljava/lang/String;

    .line 96
    invoke-static {v3, v4}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 97
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Le/a/a/k/y/e;->b:Le/a/b0/q/z;

    invoke-static {v3, v4, v2}, Lcom/truecaller/data/entity/messaging/Participant;->a(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v2

    :goto_7
    if-nez v2, :cond_22

    .line 98
    new-instance v2, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 99
    iput-object v15, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->d:Ljava/lang/String;

    .line 100
    iput-object v15, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 101
    invoke-virtual {v2}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v2

    goto :goto_8

    :cond_22
    const/4 v4, 0x1

    .line 102
    :goto_8
    iput-object v2, v5, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 103
    instance-of v2, v0, Le/d/b/a/b/g;

    if-eqz v2, :cond_2b

    .line 104
    check-cast v0, Le/d/b/a/b/g;

    .line 105
    iget-object v2, v0, Le/d/b/a/b/g;->b:Le/d/b/a/b/j;

    if-eqz v2, :cond_2b

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v0, v1, Le/a/a/k/y/e;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v1, Le/a/a/k/y/e;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_f

    .line 108
    :cond_23
    invoke-virtual {v2}, Le/d/b/a/b/j;->b()I

    move-result v7

    move v8, v6

    :goto_9
    if-ge v8, v7, :cond_2a

    .line 109
    invoke-virtual {v2, v8}, Le/d/b/a/b/j;->a(I)Le/d/b/a/b/o;

    move-result-object v0

    .line 110
    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Le/a/a/k/y/e;->c:Ljava/io/File;

    const/16 v11, 0x2d

    invoke-static {v11}, Lw3/c/a/a/a/f;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    iget-object v11, v0, Le/d/b/a/b/o;->c:[B

    if-eqz v11, :cond_24

    .line 113
    invoke-virtual {v10, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 114
    array-length v11, v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v12, v11

    move v11, v6

    goto :goto_a

    :cond_24
    move v11, v4

    move v12, v6

    .line 115
    :goto_a
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    if-eqz v11, :cond_25

    .line 116
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_25

    .line 117
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 118
    :cond_25
    new-instance v10, Lcom/truecaller/messaging/transport/mms/PduEntity;

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v10, v0, v9, v12}, Lcom/truecaller/messaging/transport/mms/PduEntity;-><init>(Le/d/b/a/b/o;Landroid/net/Uri;I)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    const/4 v12, 0x0

    goto :goto_d

    :catch_2
    move-exception v0

    const/4 v10, 0x0

    .line 119
    :goto_b
    :try_start_3
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v10, :cond_26

    .line 120
    :try_start_4
    invoke-interface {v10}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 121
    :catch_3
    :cond_26
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 122
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_27
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v12, v10

    :goto_d
    move-object v10, v12

    :goto_e
    if-eqz v10, :cond_28

    .line 123
    :try_start_5
    invoke-interface {v10}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 124
    :catch_4
    :cond_28
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 125
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 126
    :cond_29
    throw v0

    .line 127
    :cond_2a
    :goto_f
    invoke-virtual {v5, v3}, Lcom/truecaller/messaging/data/types/Message$b;->f(Ljava/util/Collection;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 128
    :cond_2b
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;JIIILjava/util/List;Le/a/a/k/y/d$a;Ljava/lang/String;)Le/d/b/a/b/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JIII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Le/a/a/k/y/d$a;",
            "Ljava/lang/String;",
            ")",
            "Le/d/b/a/b/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/d/b/a/b/t;

    invoke-direct {v0}, Le/d/b/a/b/t;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/a/k/y/e;->b:Le/a/b0/q/z;

    invoke-interface {v1, p9}, Le/a/b0/q/z;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p7

    :cond_0
    :goto_0
    invoke-interface {p7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p9, v2}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v3, Le/d/b/a/b/e;

    invoke-direct {v3, v2}, Le/d/b/a/b/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p7

    new-array p7, p7, [Le/d/b/a/b/e;

    invoke-virtual {v1, p7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p7

    check-cast p7, [Le/d/b/a/b/e;

    .line 8
    iget-object p9, v0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    .line 9
    invoke-static {p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 10
    invoke-static {p7, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-static {v2, p7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 13
    iget-object p7, p9, Le/d/b/a/b/m;->a:Landroid/util/SparseArray;

    const/16 p9, 0x97

    invoke-virtual {p7, p9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object p7, v0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    const/16 p9, 0x85

    invoke-virtual {p7, p2, p3, p9}, Le/d/b/a/b/m;->h(JI)V

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 16
    iget-object p2, v0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    const/16 p3, 0x8a

    invoke-virtual {p2, p1, p3}, Le/d/b/a/b/m;->j([BI)V

    :cond_3
    const/4 p1, 0x0

    .line 17
    :try_start_0
    iget-object p2, v0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    const/16 p3, 0x8f

    invoke-virtual {p2, p4, p3}, Le/d/b/a/b/m;->i(II)V

    .line 18
    iget-object p2, v0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    const/16 p3, 0x86

    invoke-virtual {p2, p5, p3}, Le/d/b/a/b/m;->i(II)V

    .line 19
    iget-object p2, v0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    const/16 p3, 0x90

    invoke-virtual {p2, p6, p3}, Le/d/b/a/b/m;->i(II)V
    :try_end_0
    .catch Le/d/b/a/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    new-instance p2, Le/d/b/a/b/j;

    invoke-direct {p2}, Le/d/b/a/b/j;-><init>()V

    move p3, v1

    .line 21
    :goto_1
    invoke-interface {p8}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_10

    .line 22
    move-object p4, p8

    check-cast p4, Le/a/a/k/y/i;

    .line 23
    iget p5, p4, Le/a/a/k/y/i;->b:I

    invoke-virtual {p4, p5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string p6, ""

    if-nez p5, :cond_4

    move-object p5, p6

    .line 24
    :cond_4
    invoke-static {p5}, Lcom/truecaller/messaging/data/types/Entity;->s(Ljava/lang/String;)Z

    move-result p7

    const/16 p9, 0x6a

    const/4 v2, 0x1

    if-nez p7, :cond_c

    const-string p7, "contentType"

    .line 25
    invoke-static {p5, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "application/smil"

    .line 26
    invoke-static {p7, p5, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p7

    if-eqz p7, :cond_5

    goto/16 :goto_3

    .line 27
    :cond_5
    invoke-static {p5}, Lcom/truecaller/messaging/data/types/Entity;->m(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_7

    .line 28
    invoke-virtual {p4}, Le/a/a/k/y/i;->b()Landroid/net/Uri;

    move-result-object p6

    invoke-virtual {p4}, Le/a/a/k/y/i;->d()Ljava/lang/String;

    move-result-object p4

    add-int/lit8 p7, p3, 0x1

    .line 29
    invoke-virtual {p0, p6}, Le/a/a/k/y/e;->g(Landroid/net/Uri;)I

    move-result p9

    if-gez p9, :cond_6

    goto/16 :goto_2

    .line 30
    :cond_6
    new-instance v3, Le/d/b/a/b/o;

    invoke-direct {v3}, Le/d/b/a/b/o;-><init>()V

    .line 31
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p5

    invoke-virtual {v3, p5}, Le/d/b/a/b/o;->k([B)V

    .line 32
    iput-object p6, v3, Le/d/b/a/b/o;->b:Landroid/net/Uri;

    .line 33
    iput p9, v3, Le/d/b/a/b/o;->d:I

    .line 34
    sget-object p5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p6, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p6, v1

    const-string p3, "image.%06d"

    invoke-static {p5, p3, p6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 35
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {v3, p3}, Le/d/b/a/b/o;->i([B)V

    .line 36
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {v3, p3}, Le/d/b/a/b/o;->j([B)V

    goto/16 :goto_5

    .line 37
    :cond_7
    invoke-static {p5}, Lcom/truecaller/messaging/data/types/Entity;->v(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_9

    .line 38
    invoke-virtual {p4}, Le/a/a/k/y/i;->b()Landroid/net/Uri;

    move-result-object p6

    invoke-virtual {p4}, Le/a/a/k/y/i;->d()Ljava/lang/String;

    move-result-object p4

    add-int/lit8 p7, p3, 0x1

    .line 39
    invoke-virtual {p0, p6}, Le/a/a/k/y/e;->g(Landroid/net/Uri;)I

    move-result v3

    if-gez v3, :cond_8

    goto :goto_2

    .line 40
    :cond_8
    new-instance v4, Le/d/b/a/b/o;

    invoke-direct {v4}, Le/d/b/a/b/o;-><init>()V

    .line 41
    invoke-virtual {v4, p9}, Le/d/b/a/b/o;->g(I)V

    .line 42
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p5

    invoke-virtual {v4, p5}, Le/d/b/a/b/o;->k([B)V

    .line 43
    sget-object p5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p9, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p9, v1

    const-string p3, "vcard.%06d"

    invoke-static {p5, p3, p9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 44
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {v4, p3}, Le/d/b/a/b/o;->i([B)V

    .line 45
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {v4, p3}, Le/d/b/a/b/o;->j([B)V

    .line 46
    iput-object p6, v4, Le/d/b/a/b/o;->b:Landroid/net/Uri;

    .line 47
    iput v3, v4, Le/d/b/a/b/o;->d:I

    move p3, p7

    goto/16 :goto_6

    .line 48
    :cond_9
    invoke-static {p5}, Lcom/truecaller/messaging/data/types/Entity;->x(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_b

    .line 49
    invoke-virtual {p4}, Le/a/a/k/y/i;->b()Landroid/net/Uri;

    move-result-object p6

    invoke-virtual {p4}, Le/a/a/k/y/i;->d()Ljava/lang/String;

    move-result-object p4

    add-int/lit8 p7, p3, 0x1

    .line 50
    invoke-virtual {p0, p6}, Le/a/a/k/y/e;->g(Landroid/net/Uri;)I

    move-result p9

    if-gez p9, :cond_a

    :goto_2
    move-object v3, p1

    goto/16 :goto_5

    .line 51
    :cond_a
    new-instance v3, Le/d/b/a/b/o;

    invoke-direct {v3}, Le/d/b/a/b/o;-><init>()V

    .line 52
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p5

    invoke-virtual {v3, p5}, Le/d/b/a/b/o;->k([B)V

    .line 53
    iput-object p6, v3, Le/d/b/a/b/o;->b:Landroid/net/Uri;

    .line 54
    iput p9, v3, Le/d/b/a/b/o;->d:I

    .line 55
    sget-object p5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p6, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p6, v1

    const-string p3, "video.%06d"

    invoke-static {p5, p3, p6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 56
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {v3, p3}, Le/d/b/a/b/o;->i([B)V

    .line 57
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {v3, p3}, Le/d/b/a/b/o;->j([B)V

    goto :goto_5

    :cond_b
    move-object v4, p1

    goto :goto_6

    .line 58
    :cond_c
    :goto_3
    iget p7, p4, Le/a/a/k/y/i;->c:I

    invoke-virtual {p4, p7}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p7

    if-nez p7, :cond_d

    goto :goto_4

    :cond_d
    move-object p6, p7

    .line 59
    :goto_4
    invoke-virtual {p4}, Le/a/a/k/y/i;->d()Ljava/lang/String;

    move-result-object p4

    add-int/lit8 p7, p3, 0x1

    .line 60
    new-instance v3, Le/d/b/a/b/o;

    invoke-direct {v3}, Le/d/b/a/b/o;-><init>()V

    .line 61
    invoke-virtual {v3, p9}, Le/d/b/a/b/o;->g(I)V

    .line 62
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p5

    invoke-virtual {v3, p5}, Le/d/b/a/b/o;->k([B)V

    .line 63
    sget-object p5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p9, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p9, v1

    const-string p3, "text.%06d"

    invoke-static {p5, p3, p9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 64
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {v3, p3}, Le/d/b/a/b/o;->i([B)V

    .line 65
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {v3, p3}, Le/d/b/a/b/o;->j([B)V

    .line 66
    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    .line 67
    iput-object p3, v3, Le/d/b/a/b/o;->c:[B

    if-eqz p3, :cond_e

    .line 68
    array-length p3, p3

    iput p3, v3, Le/d/b/a/b/o;->d:I

    :cond_e
    :goto_5
    move p3, p7

    move-object v4, v3

    :goto_6
    if-nez v4, :cond_f

    goto/16 :goto_1

    .line 69
    :cond_f
    iget-object p4, p2, Le/d/b/a/b/j;->a:Ljava/util/Vector;

    invoke-virtual {p4, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 70
    :cond_10
    invoke-virtual {p2}, Le/d/b/a/b/j;->c()I

    move-result p3

    if-nez p3, :cond_11

    return-object p1

    .line 71
    :cond_11
    iput-object p2, v0, Le/d/b/a/b/g;->b:Le/d/b/a/b/j;

    .line 72
    invoke-virtual {p2}, Le/d/b/a/b/j;->c()I

    move-result p1

    int-to-long p1, p1

    .line 73
    iget-object p3, v0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    const/16 p4, 0x8e

    invoke-virtual {p3, p1, p2, p4}, Le/d/b/a/b/m;->h(JI)V

    return-object v0

    :catch_0
    return-object p1
.end method

.method public c(Lcom/truecaller/messaging/transport/mms/PduEntity;Landroid/content/ContentValues;)V
    .locals 10

    .line 1
    iget v0, p1, Lcom/truecaller/messaging/transport/mms/PduEntity;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "chset"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const-string v2, "ct"

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const-string v3, "text/plain"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "iso-8859-1"

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, "text"

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0, p1}, Le/a/a/k/y/e;->f(Lcom/truecaller/messaging/transport/mms/PduEntity;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget v7, p1, Lcom/truecaller/messaging/transport/mms/PduEntity;->v:I

    .line 6
    array-length v8, v0

    new-array v8, v8, [B

    .line 7
    array-length v9, v0

    invoke-static {v0, v4, v8, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v7, :cond_0

    .line 8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {v7}, Le/d/b/a/b/c;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v8, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto :goto_0

    .line 11
    :catch_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 12
    :catch_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    move-object v0, v5

    :goto_0
    const-string v7, "BEGIN:VCARD"

    .line 13
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 14
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const-string v7, "application/smil"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    invoke-virtual {p0, p1}, Le/a/a/k/y/e;->f(Lcom/truecaller/messaging/transport/mms/PduEntity;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 19
    iget v1, p1, Lcom/truecaller/messaging/transport/mms/PduEntity;->v:I

    .line 20
    array-length v5, v0

    new-array v5, v5, [B

    .line 21
    array-length v7, v0

    invoke-static {v0, v4, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v1, :cond_4

    .line 22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    .line 23
    :cond_4
    :try_start_2
    invoke-static {v1}, Le/d/b/a/b/c;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    goto :goto_2

    .line 25
    :catch_2
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 26
    :catch_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 27
    :goto_2
    invoke-virtual {p2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 28
    :cond_5
    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_6
    :goto_3
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/truecaller/messaging/data/types/Entity;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "text/x-vcard"

    .line 30
    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_7
    iget-object v0, p1, Lcom/truecaller/messaging/transport/mms/PduEntity;->w:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v1, "fn"

    .line 32
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_8
    iget-object v0, p1, Lcom/truecaller/messaging/transport/mms/PduEntity;->x:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v1, "name"

    .line 34
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_9
    iget-object v0, p1, Lcom/truecaller/messaging/transport/mms/PduEntity;->y:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v1, "cd"

    .line 36
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_a
    iget-object v0, p1, Lcom/truecaller/messaging/transport/mms/PduEntity;->z:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v1, "cid"

    .line 38
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_b
    iget-object p1, p1, Lcom/truecaller/messaging/transport/mms/PduEntity;->A:Ljava/lang/String;

    if-eqz p1, :cond_c

    const-string v0, "cl"

    .line 40
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public d([Lcom/truecaller/messaging/data/types/Entity;Le/a/e4/i;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/messaging/data/types/Entity;",
            "Le/a/e4/i;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/transport/mms/PduEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface/range {p2 .. p2}, Le/a/e4/i;->g()I

    move-result v4

    if-gtz v4, :cond_0

    .line 4
    iget-object v4, v1, Le/a/a/k/y/e;->d:Le/a/a/i0;

    invoke-interface {v4}, Le/a/a/i0;->x1()I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-interface/range {p2 .. p2}, Le/a/e4/i;->g()I

    move-result v4

    :goto_0
    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    .line 5
    :goto_1
    array-length v10, v0

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v5, v10, :cond_e

    .line 6
    aget-object v10, v0, v5

    .line 7
    invoke-virtual {v10}, Lcom/truecaller/messaging/data/types/Entity;->l()Z

    move-result v13

    if-eqz v13, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    .line 8
    :cond_1
    instance-of v13, v10, Lcom/truecaller/messaging/transport/mms/PduEntity;

    if-eqz v13, :cond_2

    .line 9
    move-object v9, v10

    check-cast v9, Lcom/truecaller/messaging/transport/mms/PduEntity;

    move/from16 v16, v6

    goto/16 :goto_5

    .line 10
    :cond_2
    invoke-virtual {v10}, Lcom/truecaller/messaging/data/types/Entity;->l()Z

    move-result v13

    new-array v14, v9, [Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isFalse(Z[Ljava/lang/String;)V

    .line 11
    invoke-virtual {v10}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v13

    const-string v14, "<par dur=\"5000ms\"><text src=\"%s\" region=\"Text\" /></par>"

    if-eqz v13, :cond_4

    .line 12
    move-object v11, v10

    check-cast v11, Lcom/truecaller/messaging/data/types/TextEntity;

    .line 13
    iget-object v13, v11, Lcom/truecaller/messaging/data/types/TextEntity;->i:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 14
    invoke-virtual {v1, v13}, Le/a/a/k/y/e;->h([B)Ljava/io/File;

    move-result-object v15

    if-nez v15, :cond_3

    move/from16 v16, v6

    goto/16 :goto_4

    .line 15
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    move/from16 v16, v6

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v6, v9

    const-string v9, "text.%06d"

    invoke-static {v0, v9, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v6, v12, [Ljava/lang/Object;

    const-string v9, ".txt"

    .line 16
    invoke-static {v0, v9}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    aput-object v12, v6, v17

    invoke-static {v14, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    new-instance v6, Lcom/truecaller/messaging/transport/mms/PduEntity;

    iget-object v11, v11, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    array-length v12, v13

    const/16 v21, 0x6a

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static {v0, v9}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v17, v6

    move-object/from16 v18, v11

    move/from16 v20, v12

    move-object/from16 v25, v0

    invoke-direct/range {v17 .. v26}, Lcom/truecaller/messaging/transport/mms/PduEntity;-><init>(Ljava/lang/String;Landroid/net/Uri;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v9, v6

    goto/16 :goto_5

    :cond_4
    move/from16 v16, v6

    .line 18
    invoke-virtual {v10}, Lcom/truecaller/messaging/data/types/Entity;->t()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    move-object v0, v10

    check-cast v0, Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 20
    iget-object v6, v0, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v1, v6}, Le/a/a/k/y/e;->g(Landroid/net/Uri;)I

    move-result v20

    if-gez v20, :cond_5

    goto/16 :goto_4

    .line 21
    :cond_5
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v9, v13

    const-string v11, "vcard.%06d"

    invoke-static {v6, v11, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v9, ".vcf"

    .line 22
    invoke-static {v6, v9}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v26, v9, v13

    .line 23
    invoke-static {v14, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    new-instance v9, Lcom/truecaller/messaging/transport/mms/PduEntity;

    iget-object v11, v0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    const/16 v21, 0x6a

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v9

    move-object/from16 v18, v11

    move-object/from16 v19, v0

    move-object/from16 v25, v6

    invoke-direct/range {v17 .. v26}, Lcom/truecaller/messaging/transport/mms/PduEntity;-><init>(Ljava/lang/String;Landroid/net/Uri;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 25
    :cond_6
    invoke-virtual {v10}, Lcom/truecaller/messaging/data/types/Entity;->w()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    move-object v0, v10

    check-cast v0, Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 27
    iget-object v6, v0, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v1, v6}, Le/a/a/k/y/e;->g(Landroid/net/Uri;)I

    move-result v20

    if-gez v20, :cond_7

    goto :goto_4

    .line 28
    :cond_7
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v9, v14

    const-string v13, "video.%06d"

    invoke-static {v6, v13, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 29
    iget-object v13, v0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    const-string v14, "video/3gpp"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "video/mp4"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    goto :goto_4

    :cond_8
    const-string v13, ".mp4"

    .line 30
    invoke-static {v9, v13}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_9
    const-string v13, ".3gp"

    .line 31
    invoke-static {v9, v13}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_3
    move-object/from16 v26, v13

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v26, v11, v13

    const/16 v13, 0x1388

    .line 32
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const-string v12, "<par dur=\"%2$dms\"><video src=\"%1$s\" dur=\"%2$dms\" /></par>"

    invoke-static {v6, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    new-instance v6, Lcom/truecaller/messaging/transport/mms/PduEntity;

    iget-object v11, v0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v6

    move-object/from16 v18, v11

    move-object/from16 v19, v0

    move-object/from16 v25, v9

    invoke-direct/range {v17 .. v26}, Lcom/truecaller/messaging/transport/mms/PduEntity;-><init>(Ljava/lang/String;Landroid/net/Uri;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    :goto_4
    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_b

    goto :goto_7

    .line 34
    :cond_b
    invoke-virtual {v10}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v0

    or-int/2addr v0, v7

    .line 35
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v6, v8

    .line 36
    iget-wide v8, v9, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    add-long/2addr v6, v8

    long-to-int v6, v6

    if-le v6, v4, :cond_d

    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/transport/mms/PduEntity;

    .line 38
    iget-object v2, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Le/a/a/k/y/e;->e(Landroid/net/Uri;)V

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :cond_d
    move v7, v0

    move v8, v6

    :goto_7
    move/from16 v6, v16

    :goto_8
    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p1

    goto/16 :goto_1

    :cond_e
    move/from16 v16, v6

    if-lez v16, :cond_25

    sub-int/2addr v4, v8

    .line 39
    div-int v4, v4, v16

    const/16 v0, 0x800

    if-ge v4, v0, :cond_10

    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/transport/mms/PduEntity;

    .line 41
    iget-object v2, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Le/a/a/k/y/e;->e(Landroid/net/Uri;)V

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_10
    invoke-interface/range {p2 .. p2}, Le/a/e4/i;->a()I

    move-result v0

    if-gtz v0, :cond_11

    .line 43
    iget-object v0, v1, Le/a/a/k/y/e;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->T0()I

    goto :goto_a

    :cond_11
    invoke-interface/range {p2 .. p2}, Le/a/e4/i;->a()I

    .line 44
    :goto_a
    invoke-interface/range {p2 .. p2}, Le/a/e4/i;->c()I

    move-result v0

    if-gtz v0, :cond_12

    .line 45
    iget-object v0, v1, Le/a/a/k/y/e;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->Q0()I

    goto :goto_b

    :cond_12
    invoke-interface/range {p2 .. p2}, Le/a/e4/i;->c()I

    :goto_b
    const/4 v0, 0x0

    :goto_c
    move-object/from16 v5, p1

    .line 46
    array-length v6, v5

    if-ge v0, v6, :cond_26

    .line 47
    aget-object v6, v5, v0

    .line 48
    invoke-virtual {v6}, Lcom/truecaller/messaging/data/types/Entity;->l()Z

    move-result v8

    if-nez v8, :cond_13

    move-object/from16 v23, v2

    goto/16 :goto_1a

    .line 49
    :cond_13
    check-cast v6, Lcom/truecaller/messaging/data/types/ImageEntity;

    .line 50
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 51
    :try_start_0
    iget-object v9, v1, Le/a/a/k/y/e;->a:Landroid/content/ContentResolver;

    iget-object v10, v6, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v9, :cond_15

    if-eqz v9, :cond_14

    .line 52
    :try_start_1
    invoke-interface {v9}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_14
    const/4 v6, 0x0

    move-object/from16 v23, v2

    goto/16 :goto_19

    .line 53
    :cond_15
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v10

    .line 54
    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v11, 0x0

    .line 55
    invoke-static {v9, v11, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 56
    :try_start_3
    invoke-interface {v9}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 57
    :catch_1
    iget-object v9, v6, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    .line 58
    iget v11, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 59
    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 60
    invoke-static {v9}, Lcom/truecaller/messaging/data/types/Entity;->i(Ljava/lang/String;)Z

    move-result v13

    const-string v14, "image/jpg"

    if-nez v13, :cond_18

    if-le v10, v4, :cond_18

    .line 61
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x5f

    :goto_d
    const/16 v13, 0x32

    if-le v15, v13, :cond_16

    move-object/from16 v22, v14

    int-to-double v13, v15

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    int-to-double v2, v4

    mul-double/2addr v2, v15

    move/from16 v25, v4

    int-to-double v4, v10

    div-double/2addr v2, v4

    .line 62
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v2, v13

    double-to-int v2, v2

    const-wide v3, 0x3feb333340000000L    # 0.8500000238418579

    mul-double/2addr v13, v3

    double-to-int v3, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_e

    :cond_16
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v22, v14

    int-to-float v2, v11

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v4, v12

    mul-float/2addr v4, v3

    float-to-int v3, v4

    move v11, v2

    move v12, v3

    const/16 v2, 0x5f

    .line 63
    :goto_e
    :try_start_4
    iget-object v15, v1, Le/a/a/k/y/e;->a:Landroid/content/ContentResolver;

    iget-object v3, v6, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    iget v4, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v11

    move/from16 v19, v12

    move-object/from16 v20, v9

    move/from16 v21, v2

    invoke-static/range {v15 .. v21}, Le/a/b0/q/s;->i(Landroid/content/ContentResolver;Landroid/net/Uri;IIILandroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v3

    .line 64
    array-length v10, v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v4, v25

    if-gt v10, v4, :cond_17

    move v11, v10

    move-object/from16 v9, v22

    goto :goto_f

    :cond_17
    move-object/from16 v5, p1

    move v15, v2

    move-object/from16 v14, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    goto :goto_d

    :catch_2
    move/from16 v4, v25

    goto/16 :goto_14

    :cond_18
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    const/4 v3, 0x0

    move v11, v10

    .line 65
    :goto_f
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v5, v10

    const-string v8, "image.%06d"

    invoke-static {v2, v8, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_10

    :sswitch_0
    const-string v8, "image/png"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    goto :goto_10

    :cond_19
    const/4 v5, 0x4

    goto :goto_10

    :sswitch_1
    const-string v8, "image/jpg"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    goto :goto_10

    :cond_1a
    const/4 v5, 0x3

    goto :goto_10

    :sswitch_2
    const-string v8, "image/gif"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 v5, 0x2

    goto :goto_10

    :sswitch_3
    const-string v8, "tenor/gif"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    goto :goto_10

    :cond_1c
    const/4 v5, 0x1

    goto :goto_10

    :sswitch_4
    const-string v8, "image/jpeg"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    goto :goto_10

    :cond_1d
    const/4 v5, 0x0

    :goto_10
    packed-switch v5, :pswitch_data_0

    goto :goto_14

    :pswitch_0
    const-string v5, ".png"

    .line 67
    invoke-static {v2, v5}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_11

    :pswitch_1
    const-string v5, ".gif"

    .line 68
    invoke-static {v2, v5}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_11

    :pswitch_2
    const-string v5, ".jpg"

    .line 69
    invoke-static {v2, v5}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_11
    move-object/from16 v17, v5

    if-eqz v3, :cond_21

    .line 70
    :try_start_5
    iget-object v5, v1, Le/a/a/k/y/e;->a:Landroid/content/ContentResolver;

    iget-object v8, v6, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v5, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v5, :cond_1e

    if-eqz v5, :cond_20

    .line 71
    :goto_12
    :try_start_6
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_14

    .line 72
    :cond_1e
    :try_start_7
    invoke-virtual {v5, v3}, Ljava/io/OutputStream;->write([B)V

    .line 73
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 74
    :try_start_8
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_15

    :catchall_0
    move-exception v0

    goto :goto_13

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    :goto_13
    if-eqz v5, :cond_1f

    :try_start_9
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 75
    :catch_3
    :cond_1f
    throw v0

    :catch_4
    const/4 v5, 0x0

    :catch_5
    if-eqz v5, :cond_20

    goto :goto_12

    :catch_6
    :cond_20
    :goto_14
    const/4 v12, 0x1

    move-object/from16 v3, v24

    goto :goto_18

    :catch_7
    :cond_21
    :goto_15
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v17, v5, v8

    const-string v8, "<par dur=\"5000ms\"><img src=\"%s\" region=\"Image\" /></par>"

    .line 76
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v15, v24

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v5, Lcom/truecaller/messaging/transport/mms/PduEntity;

    iget-object v10, v6, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    move-object v8, v5

    move-object v3, v15

    move-object v15, v6

    move-object/from16 v16, v2

    invoke-direct/range {v8 .. v17}, Lcom/truecaller/messaging/transport/mms/PduEntity;-><init>(Ljava/lang/String;Landroid/net/Uri;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    const/4 v12, 0x1

    goto :goto_19

    :catchall_2
    move-exception v0

    goto :goto_16

    :catch_8
    move-object/from16 v23, v2

    goto :goto_17

    :catchall_3
    move-exception v0

    const/4 v9, 0x0

    :goto_16
    if-eqz v9, :cond_22

    .line 78
    :try_start_a
    invoke-interface {v9}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 79
    :catch_9
    :cond_22
    throw v0

    :catch_a
    move-object/from16 v23, v2

    const/4 v9, 0x0

    :goto_17
    if-eqz v9, :cond_23

    .line 80
    :try_start_b
    invoke-interface {v9}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :cond_23
    :goto_18
    const/4 v6, 0x0

    :goto_19
    if-nez v6, :cond_24

    :goto_1a
    move-object/from16 v2, v23

    goto :goto_1b

    :cond_24
    move-object/from16 v2, v23

    .line 81
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    :cond_25
    const/4 v12, 0x0

    :cond_26
    if-eqz v12, :cond_28

    if-eqz v7, :cond_27

    const-string v0, "<smil><head><layout><root-layout/><region id=\"Image\" fit=\"meet\" top=\"0\" left=\"0\" height=\"80%%\" width=\"100%%\"/><region id=\"Text\" top=\"80%%\" left=\"0\" height=\"20%%\" width=\"100%%\"/></layout></head><body>"

    const/4 v4, 0x0

    .line 82
    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_27
    const/4 v0, 0x0

    const-string v4, "<smil><head><layout><root-layout/><region id=\"Image\" fit=\"meet\" top=\"0\" left=\"0\" height=\"100%%\" width=\"100%%\"/></layout></head><body>"

    .line 83
    invoke-virtual {v3, v0, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_28
    const-string v0, "<smil><head><layout><root-layout/><region id=\"Text\" top=\"0\" left=\"0\" height=\"100%%\" width=\"100%%\"/></layout></head><body>"

    .line 84
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c
    const-string v0, "</body></smil>"

    .line 85
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Le/a/a/k/y/e;->h([B)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_29

    const/4 v0, 0x0

    goto :goto_1d

    .line 88
    :cond_29
    new-instance v13, Lcom/truecaller/messaging/transport/mms/PduEntity;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    array-length v6, v0

    const/16 v7, 0x6a

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "application/smil"

    const-string v11, "smil"

    const-string v12, "smil.xml"

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/truecaller/messaging/transport/mms/PduEntity;-><init>(Ljava/lang/String;Landroid/net/Uri;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v13

    :goto_1d
    if-eqz v0, :cond_2a

    const/4 v3, 0x0

    .line 89
    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2a
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58a7d764 -> :sswitch_4
        -0x5672380b -> :sswitch_3
        -0x34688ef0 -> :sswitch_2
        -0x346882d3 -> :sswitch_1
        -0x34686c8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Le/a/a/k/y/e;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public final f(Lcom/truecaller/messaging/transport/mms/PduEntity;)[B
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/a/k/y/e;->a:Landroid/content/ContentResolver;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-object v0

    :cond_1
    :try_start_2
    const-string v1, "$this$readFully"

    .line 3
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Le/q/f/a/d/a;->t2(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    :try_start_3
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-object v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    move-object v1, p1

    move-object p1, v0

    :goto_0
    const/4 v2, 0x0

    :try_start_4
    new-array v2, v2, [Ljava/lang/String;

    .line 6
    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_2

    .line 7
    :try_start_5
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_1
    if-eqz v0, :cond_3

    :try_start_6
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 8
    :catch_5
    :cond_3
    throw p1
.end method

.method public final g(Landroid/net/Uri;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/a/k/y/e;->a:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return p1

    :cond_0
    if-eqz v0, :cond_2

    :goto_0
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4
    :catch_1
    :cond_1
    throw p1

    :catch_2
    if-eqz v0, :cond_2

    goto :goto_0

    :catch_3
    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public final h([B)Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/y/e;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/a/k/y/e;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Le/a/a/k/y/e;->c:Ljava/io/File;

    const/16 v3, 0x2d

    invoke-static {v3}, Lw3/c/a/a/a/f;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v2, v1

    .line 6
    :goto_0
    :try_start_3
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 7
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 8
    :catch_3
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-object v1

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 10
    :try_start_5
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 11
    :catch_4
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 13
    :cond_4
    throw p1
.end method
