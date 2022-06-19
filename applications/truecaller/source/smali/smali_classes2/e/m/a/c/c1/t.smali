.class public final Le/m/a/c/c1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/c1/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/c1/t$c;,
        Le/m/a/c/c1/t$f;,
        Le/m/a/c/c1/t$e;,
        Le/m/a/c/c1/t$d;,
        Le/m/a/c/c1/t$b;
    }
.end annotation


# instance fields
.field public A:J

.field public B:F

.field public C:[Le/m/a/c/c1/l;

.field public D:[Ljava/nio/ByteBuffer;

.field public E:Ljava/nio/ByteBuffer;

.field public F:Ljava/nio/ByteBuffer;

.field public G:[B

.field public H:I

.field public I:I

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:I

.field public N:Le/m/a/c/c1/q;

.field public O:Z

.field public P:J

.field public final a:Le/m/a/c/c1/j;

.field public final b:Le/m/a/c/c1/t$b;

.field public final c:Le/m/a/c/c1/s;

.field public final d:Le/m/a/c/c1/b0;

.field public final e:[Le/m/a/c/c1/l;

.field public final f:[Le/m/a/c/c1/l;

.field public final g:Landroid/os/ConditionVariable;

.field public final h:Le/m/a/c/c1/p;

.field public final i:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Le/m/a/c/c1/t$e;",
            ">;"
        }
    .end annotation
.end field

.field public j:Le/m/a/c/c1/n$c;

.field public k:Le/m/a/c/c1/t$c;

.field public l:Le/m/a/c/c1/t$c;

.field public m:Landroid/media/AudioTrack;

.field public n:Le/m/a/c/c1/i;

.field public o:Le/m/a/c/o0;

.field public p:Le/m/a/c/o0;

.field public q:J

.field public r:J

.field public s:Ljava/nio/ByteBuffer;

.field public t:I

.field public u:J

.field public v:J

.field public w:J

.field public x:J

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Le/m/a/c/c1/j;[Le/m/a/c/c1/l;)V
    .locals 6

    .line 1
    new-instance v0, Le/m/a/c/c1/t$d;

    invoke-direct {v0, p2}, Le/m/a/c/c1/t$d;-><init>([Le/m/a/c/c1/l;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Le/m/a/c/c1/t;->a:Le/m/a/c/c1/j;

    .line 4
    iput-object v0, p0, Le/m/a/c/c1/t;->b:Le/m/a/c/c1/t$b;

    .line 5
    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Le/m/a/c/c1/t;->g:Landroid/os/ConditionVariable;

    .line 6
    new-instance p1, Le/m/a/c/c1/p;

    new-instance v1, Le/m/a/c/c1/t$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/m/a/c/c1/t$f;-><init>(Le/m/a/c/c1/t;Le/m/a/c/c1/t$a;)V

    invoke-direct {p1, v1}, Le/m/a/c/c1/p;-><init>(Le/m/a/c/c1/p$a;)V

    iput-object p1, p0, Le/m/a/c/c1/t;->h:Le/m/a/c/c1/p;

    .line 7
    new-instance p1, Le/m/a/c/c1/s;

    invoke-direct {p1}, Le/m/a/c/c1/s;-><init>()V

    iput-object p1, p0, Le/m/a/c/c1/t;->c:Le/m/a/c/c1/s;

    .line 8
    new-instance v1, Le/m/a/c/c1/b0;

    invoke-direct {v1}, Le/m/a/c/c1/b0;-><init>()V

    iput-object v1, p0, Le/m/a/c/c1/t;->d:Le/m/a/c/c1/b0;

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Le/m/a/c/c1/r;

    .line 10
    new-instance v4, Le/m/a/c/c1/x;

    invoke-direct {v4}, Le/m/a/c/c1/x;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object p1, v3, p2

    const/4 p1, 0x2

    aput-object v1, v3, p1

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 11
    iget-object p1, v0, Le/m/a/c/c1/t$d;->a:[Le/m/a/c/c1/l;

    .line 12
    invoke-static {v2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p1, v5, [Le/m/a/c/c1/l;

    .line 13
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Le/m/a/c/c1/l;

    iput-object p1, p0, Le/m/a/c/c1/t;->e:[Le/m/a/c/c1/l;

    new-array p1, p2, [Le/m/a/c/c1/l;

    .line 14
    new-instance p2, Le/m/a/c/c1/v;

    invoke-direct {p2}, Le/m/a/c/c1/v;-><init>()V

    aput-object p2, p1, v5

    iput-object p1, p0, Le/m/a/c/c1/t;->f:[Le/m/a/c/c1/l;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    iput p1, p0, Le/m/a/c/c1/t;->B:F

    .line 16
    iput v5, p0, Le/m/a/c/c1/t;->z:I

    .line 17
    sget-object p1, Le/m/a/c/c1/i;->f:Le/m/a/c/c1/i;

    iput-object p1, p0, Le/m/a/c/c1/t;->n:Le/m/a/c/c1/i;

    .line 18
    iput v5, p0, Le/m/a/c/c1/t;->M:I

    .line 19
    new-instance p1, Le/m/a/c/c1/q;

    const/4 p2, 0x0

    invoke-direct {p1, v5, p2}, Le/m/a/c/c1/q;-><init>(IF)V

    iput-object p1, p0, Le/m/a/c/c1/t;->N:Le/m/a/c/c1/q;

    .line 20
    sget-object p1, Le/m/a/c/o0;->e:Le/m/a/c/o0;

    iput-object p1, p0, Le/m/a/c/c1/t;->p:Le/m/a/c/o0;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Le/m/a/c/c1/t;->I:I

    new-array p1, v5, [Le/m/a/c/c1/l;

    .line 22
    iput-object p1, p0, Le/m/a/c/c1/t;->C:[Le/m/a/c/c1/l;

    new-array p1, v5, [Ljava/nio/ByteBuffer;

    .line 23
    iput-object p1, p0, Le/m/a/c/c1/t;->D:[Ljava/nio/ByteBuffer;

    .line 24
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Le/m/a/c/c1/t;->i:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/c/o0;J)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    iget-boolean v0, v0, Le/m/a/c/c1/t$c;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/c/c1/t;->b:Le/m/a/c/c1/t$b;

    .line 2
    invoke-interface {v0, p1}, Le/m/a/c/c1/t$b;->c(Le/m/a/c/o0;)Le/m/a/c/o0;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Le/m/a/c/o0;->e:Le/m/a/c/o0;

    :goto_0
    move-object v1, p1

    .line 3
    iget-object p1, p0, Le/m/a/c/c1/t;->i:Ljava/util/ArrayDeque;

    new-instance v7, Le/m/a/c/c1/t$e;

    const-wide/16 v2, 0x0

    .line 4
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object p2, p0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    .line 5
    invoke-virtual {p0}, Le/m/a/c/c1/t;->g()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Le/m/a/c/c1/t$c;->a(J)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Le/m/a/c/c1/t$e;-><init>(Le/m/a/c/o0;JJLe/m/a/c/c1/t$a;)V

    .line 6
    invoke-virtual {p1, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    iget-object p1, p1, Le/m/a/c/c1/t$c;->k:[Le/m/a/c/c1/l;

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    array-length p3, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2

    aget-object v1, p1, v0

    .line 10
    invoke-interface {v1}, Le/m/a/c/c1/l;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_1
    invoke-interface {v1}, Le/m/a/c/c1/l;->flush()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 14
    new-array p3, p1, [Le/m/a/c/c1/l;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Le/m/a/c/c1/l;

    iput-object p2, p0, Le/m/a/c/c1/t;->C:[Le/m/a/c/c1/l;

    .line 15
    new-array p1, p1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Le/m/a/c/c1/t;->D:[Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0}, Le/m/a/c/c1/t;->e()V

    return-void
.end method

.method public b(IIII[III)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/c1/n$a;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 1
    sget v2, Le/m/a/c/q1/d0;->a:I

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/16 v5, 0x15

    if-ge v2, v5, :cond_0

    if-ne v0, v4, :cond_0

    if-nez p5, :cond_0

    new-array v2, v3, [I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    .line 2
    aput v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p5

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/m/a/c/q1/d0;->u(I)Z

    move-result v15

    const/4 v6, 0x4

    .line 4
    iget-object v14, v1, Le/m/a/c/c1/t;->e:[Le/m/a/c/c1/l;

    if-eqz v15, :cond_4

    .line 5
    iget-object v7, v1, Le/m/a/c/c1/t;->d:Le/m/a/c/c1/b0;

    move/from16 v8, p6

    .line 6
    iput v8, v7, Le/m/a/c/c1/b0;->i:I

    move/from16 v8, p7

    .line 7
    iput v8, v7, Le/m/a/c/c1/b0;->j:I

    .line 8
    iget-object v7, v1, Le/m/a/c/c1/t;->c:Le/m/a/c/c1/s;

    .line 9
    iput-object v2, v7, Le/m/a/c/c1/s;->i:[I

    .line 10
    new-instance v2, Le/m/a/c/c1/l$a;

    move/from16 v7, p1

    move/from16 v9, p3

    invoke-direct {v2, v9, v0, v7}, Le/m/a/c/c1/l$a;-><init>(III)V

    .line 11
    array-length v8, v14

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_3

    aget-object v11, v14, v10

    .line 12
    :try_start_0
    invoke-interface {v11, v2}, Le/m/a/c/c1/l;->a(Le/m/a/c/c1/l$a;)Le/m/a/c/c1/l$a;

    move-result-object v12

    .line 13
    invoke-interface {v11}, Le/m/a/c/c1/l;->b()Z

    move-result v11
    :try_end_0
    .catch Le/m/a/c/c1/l$b; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v11, :cond_2

    move-object v2, v12

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    new-instance v2, Le/m/a/c/c1/n$a;

    invoke-direct {v2, v0}, Le/m/a/c/c1/n$a;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 15
    :cond_3
    iget v8, v2, Le/m/a/c/c1/l$a;->a:I

    .line 16
    iget v10, v2, Le/m/a/c/c1/l$a;->b:I

    .line 17
    iget v2, v2, Le/m/a/c/c1/l$a;->c:I

    move v13, v2

    move v11, v8

    goto :goto_2

    :cond_4
    move/from16 v7, p1

    move/from16 v9, p3

    move v10, v0

    move v13, v7

    move v11, v9

    .line 18
    :goto_2
    sget v2, Le/m/a/c/q1/d0;->a:I

    const/16 v8, 0x1c

    if-gt v2, v8, :cond_6

    if-nez v15, :cond_6

    const/4 v12, 0x7

    if-ne v10, v12, :cond_5

    move v3, v4

    goto :goto_3

    :cond_5
    const/4 v4, 0x3

    if-eq v10, v4, :cond_7

    if-eq v10, v6, :cond_7

    const/4 v4, 0x5

    if-ne v10, v4, :cond_6

    goto :goto_3

    :cond_6
    move v3, v10

    :cond_7
    :goto_3
    const/16 v4, 0x1a

    const/4 v12, 0x1

    if-gt v2, v4, :cond_8

    .line 19
    sget-object v4, Le/m/a/c/q1/d0;->b:Ljava/lang/String;

    const-string v6, "fugu"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v15, :cond_8

    if-ne v3, v12, :cond_8

    const/4 v3, 0x2

    :cond_8
    packed-switch v3, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const/16 v3, 0x17

    const/16 v4, 0x18fc

    if-lt v2, v3, :cond_9

    goto :goto_4

    :cond_9
    if-lt v2, v5, :cond_a

    :goto_4
    move v2, v4

    goto :goto_6

    :pswitch_1
    const/16 v2, 0x4fc

    goto :goto_6

    :pswitch_2
    const/16 v2, 0xfc

    goto :goto_6

    :pswitch_3
    const/16 v2, 0xdc

    goto :goto_6

    :pswitch_4
    const/16 v2, 0xcc

    goto :goto_6

    :pswitch_5
    move v2, v8

    goto :goto_6

    :pswitch_6
    const/16 v2, 0xc

    goto :goto_6

    :pswitch_7
    const/4 v2, 0x4

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_f

    const/4 v3, -0x1

    if-eqz v15, :cond_b

    .line 20
    invoke-static/range {p1 .. p2}, Le/m/a/c/q1/d0;->m(II)I

    move-result v0

    move v8, v0

    goto :goto_7

    :cond_b
    move v8, v3

    :goto_7
    if-eqz v15, :cond_c

    .line 21
    invoke-static {v13, v10}, Le/m/a/c/q1/d0;->m(II)I

    move-result v0

    move v10, v0

    goto :goto_8

    :cond_c
    move v10, v3

    :goto_8
    if-eqz v15, :cond_d

    move/from16 v16, v12

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    move/from16 v16, v0

    .line 22
    :goto_9
    new-instance v0, Le/m/a/c/c1/t$c;

    move-object v6, v0

    move v7, v15

    move/from16 v9, p3

    move v12, v2

    move-object v2, v14

    move/from16 v14, p4

    move-object/from16 v17, v2

    invoke-direct/range {v6 .. v17}, Le/m/a/c/c1/t$c;-><init>(ZIIIIIIIZZ[Le/m/a/c/c1/l;)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/c1/t;->j()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 24
    iput-object v0, v1, Le/m/a/c/c1/t;->k:Le/m/a/c/c1/t$c;

    goto :goto_a

    .line 25
    :cond_e
    iput-object v0, v1, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    :goto_a
    return-void

    .line 26
    :cond_f
    new-instance v0, Le/m/a/c/c1/n$a;

    const-string v2, "Unsupported channel count: "

    invoke-static {v2, v10}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Le/m/a/c/c1/n$a;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/c1/n$d;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/m/a/c/c1/t;->I:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    iget-boolean v0, v0, Le/m/a/c/c1/t$c;->i:Z

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/a/c/c1/t;->C:[Le/m/a/c/c1/l;

    array-length v0, v0

    :goto_0
    iput v0, p0, Le/m/a/c/c1/t;->I:I

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_1
    move v0, v3

    .line 3
    :goto_2
    iget v4, p0, Le/m/a/c/c1/t;->I:I

    iget-object v5, p0, Le/m/a/c/c1/t;->C:[Le/m/a/c/c1/l;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    .line 4
    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v4}, Le/m/a/c/c1/l;->e()V

    .line 6
    :cond_2
    invoke-virtual {p0, v7, v8}, Le/m/a/c/c1/t;->m(J)V

    .line 7
    invoke-interface {v4}, Le/m/a/c/c1/l;->c()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 8
    :cond_3
    iget v0, p0, Le/m/a/c/c1/t;->I:I

    add-int/2addr v0, v2

    iput v0, p0, Le/m/a/c/c1/t;->I:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object v0, p0, Le/m/a/c/c1/t;->F:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0, v0, v7, v8}, Le/m/a/c/c1/t;->q(Ljava/nio/ByteBuffer;J)V

    .line 11
    iget-object v0, p0, Le/m/a/c/c1/t;->F:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    .line 12
    :cond_5
    iput v1, p0, Le/m/a/c/c1/t;->I:I

    return v2
.end method

.method public d()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/m/a/c/c1/t;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Le/m/a/c/c1/t;->u:J

    .line 3
    iput-wide v0, p0, Le/m/a/c/c1/t;->v:J

    .line 4
    iput-wide v0, p0, Le/m/a/c/c1/t;->w:J

    .line 5
    iput-wide v0, p0, Le/m/a/c/c1/t;->x:J

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Le/m/a/c/c1/t;->y:I

    .line 7
    iget-object v3, p0, Le/m/a/c/c1/t;->o:Le/m/a/c/o0;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 8
    iput-object v3, p0, Le/m/a/c/c1/t;->p:Le/m/a/c/o0;

    .line 9
    iput-object v4, p0, Le/m/a/c/c1/t;->o:Le/m/a/c/o0;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v3, p0, Le/m/a/c/c1/t;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 11
    iget-object v3, p0, Le/m/a/c/c1/t;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/c1/t$e;

    .line 12
    iget-object v3, v3, Le/m/a/c/c1/t$e;->a:Le/m/a/c/o0;

    .line 13
    iput-object v3, p0, Le/m/a/c/c1/t;->p:Le/m/a/c/o0;

    .line 14
    :cond_1
    :goto_0
    iget-object v3, p0, Le/m/a/c/c1/t;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 15
    iput-wide v0, p0, Le/m/a/c/c1/t;->q:J

    .line 16
    iput-wide v0, p0, Le/m/a/c/c1/t;->r:J

    .line 17
    iget-object v3, p0, Le/m/a/c/c1/t;->d:Le/m/a/c/c1/b0;

    .line 18
    iput-wide v0, v3, Le/m/a/c/c1/b0;->o:J

    .line 19
    invoke-virtual {p0}, Le/m/a/c/c1/t;->e()V

    .line 20
    iput-object v4, p0, Le/m/a/c/c1/t;->E:Ljava/nio/ByteBuffer;

    .line 21
    iput-object v4, p0, Le/m/a/c/c1/t;->F:Ljava/nio/ByteBuffer;

    .line 22
    iput-boolean v2, p0, Le/m/a/c/c1/t;->K:Z

    .line 23
    iput-boolean v2, p0, Le/m/a/c/c1/t;->J:Z

    const/4 v3, -0x1

    .line 24
    iput v3, p0, Le/m/a/c/c1/t;->I:I

    .line 25
    iput-object v4, p0, Le/m/a/c/c1/t;->s:Ljava/nio/ByteBuffer;

    .line 26
    iput v2, p0, Le/m/a/c/c1/t;->t:I

    .line 27
    iput v2, p0, Le/m/a/c/c1/t;->z:I

    .line 28
    iget-object v3, p0, Le/m/a/c/c1/t;->h:Le/m/a/c/c1/p;

    .line 29
    iget-object v3, v3, Le/m/a/c/c1/p;->c:Landroid/media/AudioTrack;

    .line 30
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    .line 32
    iget-object v3, p0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->pause()V

    .line 33
    :cond_3
    iget-object v3, p0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    .line 34
    iput-object v4, p0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    .line 35
    iget-object v5, p0, Le/m/a/c/c1/t;->k:Le/m/a/c/c1/t$c;

    if-eqz v5, :cond_4

    .line 36
    iput-object v5, p0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    .line 37
    iput-object v4, p0, Le/m/a/c/c1/t;->k:Le/m/a/c/c1/t$c;

    .line 38
    :cond_4
    iget-object v5, p0, Le/m/a/c/c1/t;->h:Le/m/a/c/c1/p;

    .line 39
    iput-wide v0, v5, Le/m/a/c/c1/p;->j:J

    .line 40
    iput v2, v5, Le/m/a/c/c1/p;->u:I

    .line 41
    iput v2, v5, Le/m/a/c/c1/p;->t:I

    .line 42
    iput-wide v0, v5, Le/m/a/c/c1/p;->k:J

    .line 43
    iput-object v4, v5, Le/m/a/c/c1/p;->c:Landroid/media/AudioTrack;

    .line 44
    iput-object v4, v5, Le/m/a/c/c1/p;->f:Le/m/a/c/c1/o;

    .line 45
    iget-object v0, p0, Le/m/a/c/c1/t;->g:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 46
    new-instance v0, Le/m/a/c/c1/t$a;

    invoke-direct {v0, p0, v3}, Le/m/a/c/c1/t$a;-><init>(Le/m/a/c/c1/t;Landroid/media/AudioTrack;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_5
    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Le/m/a/c/c1/t;->C:[Le/m/a/c/c1/l;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget-object v1, v1, v0

    .line 3
    invoke-interface {v1}, Le/m/a/c/c1/l;->flush()V

    .line 4
    iget-object v2, p0, Le/m/a/c/c1/t;->D:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Le/m/a/c/c1/l;->f()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()Le/m/a/c/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/t;->o:Le/m/a/c/o0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/a/c/c1/t;->i:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/m/a/c/c1/t;->i:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/c1/t$e;

    .line 4
    iget-object v0, v0, Le/m/a/c/c1/t$e;->a:Le/m/a/c/o0;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/m/a/c/c1/t;->p:Le/m/a/c/o0;

    :goto_0
    return-object v0
.end method

.method public final g()J
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    iget-boolean v1, v0, Le/m/a/c/c1/t$c;->a:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Le/m/a/c/c1/t;->w:J

    iget v0, v0, Le/m/a/c/c1/t$c;->d:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Le/m/a/c/c1/t;->x:J

    :goto_0
    return-wide v1
.end method

.method public h(Ljava/nio/ByteBuffer;J)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/c1/n$b;,
            Le/m/a/c/c1/n$d;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 1
    iget-object v4, v0, Le/m/a/c/c1/t;->E:Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    invoke-static {v4}, Ln3/g0/y;->r(Z)V

    .line 2
    iget-object v4, v0, Le/m/a/c/c1/t;->k:Le/m/a/c/c1/t$c;

    const/4 v7, 0x0

    if-eqz v4, :cond_6

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/c1/t;->c()Z

    move-result v4

    if-nez v4, :cond_2

    return v6

    .line 4
    :cond_2
    iget-object v4, v0, Le/m/a/c/c1/t;->k:Le/m/a/c/c1/t$c;

    iget-object v8, v0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    .line 5
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v9, v8, Le/m/a/c/c1/t$c;->g:I

    iget v10, v4, Le/m/a/c/c1/t$c;->g:I

    if-ne v9, v10, :cond_3

    iget v9, v8, Le/m/a/c/c1/t$c;->e:I

    iget v10, v4, Le/m/a/c/c1/t$c;->e:I

    if-ne v9, v10, :cond_3

    iget v8, v8, Le/m/a/c/c1/t$c;->f:I

    iget v4, v4, Le/m/a/c/c1/t$c;->f:I

    if-ne v8, v4, :cond_3

    move v4, v5

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_2
    if-nez v4, :cond_5

    .line 7
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/c1/t;->l()V

    .line 8
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/c1/t;->i()Z

    move-result v4

    if-eqz v4, :cond_4

    return v6

    .line 9
    :cond_4
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/c1/t;->d()V

    goto :goto_3

    .line 10
    :cond_5
    iget-object v4, v0, Le/m/a/c/c1/t;->k:Le/m/a/c/c1/t$c;

    iput-object v4, v0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    .line 11
    iput-object v7, v0, Le/m/a/c/c1/t;->k:Le/m/a/c/c1/t$c;

    .line 12
    :goto_3
    iget-object v4, v0, Le/m/a/c/c1/t;->p:Le/m/a/c/o0;

    invoke-virtual {v0, v4, v2, v3}, Le/m/a/c/c1/t;->a(Le/m/a/c/o0;J)V

    .line 13
    :cond_6
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/c1/t;->j()Z

    move-result v4

    const/4 v6, 0x3

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/16 v9, 0x10

    if-nez v4, :cond_12

    .line 14
    iget-object v4, v0, Le/m/a/c/c1/t;->g:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    .line 15
    iget-object v4, v0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    .line 16
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-boolean v10, v0, Le/m/a/c/c1/t;->O:Z

    iget-object v11, v0, Le/m/a/c/c1/t;->n:Le/m/a/c/c1/i;

    iget v15, v0, Le/m/a/c/c1/t;->M:I

    .line 18
    sget v14, Le/m/a/c/q1/d0;->a:I

    const/16 v12, 0x15

    if-lt v14, v12, :cond_9

    if-eqz v10, :cond_7

    .line 19
    new-instance v10, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v10}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 20
    invoke-virtual {v10, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    .line 21
    invoke-virtual {v10, v9}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v9

    .line 22
    invoke-virtual {v9, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v9

    .line 23
    invoke-virtual {v9}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v9

    goto :goto_4

    .line 24
    :cond_7
    invoke-virtual {v11}, Le/m/a/c/c1/i;->a()Landroid/media/AudioAttributes;

    move-result-object v9

    :goto_4
    move-object/from16 v17, v9

    .line 25
    new-instance v9, Landroid/media/AudioFormat$Builder;

    invoke-direct {v9}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v10, v4, Le/m/a/c/c1/t$c;->f:I

    .line 26
    invoke-virtual {v9, v10}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v9

    iget v10, v4, Le/m/a/c/c1/t$c;->g:I

    .line 27
    invoke-virtual {v9, v10}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v9

    iget v10, v4, Le/m/a/c/c1/t$c;->e:I

    .line 28
    invoke-virtual {v9, v10}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v9

    .line 29
    invoke-virtual {v9}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v18

    .line 30
    new-instance v9, Landroid/media/AudioTrack;

    iget v10, v4, Le/m/a/c/c1/t$c;->h:I

    const/16 v20, 0x1

    if-eqz v15, :cond_8

    goto :goto_5

    :cond_8
    const/4 v15, 0x0

    :goto_5
    move/from16 v21, v15

    move-object/from16 v16, v9

    move/from16 v19, v10

    invoke-direct/range {v16 .. v21}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    goto :goto_6

    .line 31
    :cond_9
    iget v9, v11, Le/m/a/c/c1/i;->c:I

    invoke-static {v9}, Le/m/a/c/q1/d0;->n(I)I

    move-result v17

    if-nez v15, :cond_a

    .line 32
    new-instance v9, Landroid/media/AudioTrack;

    iget v10, v4, Le/m/a/c/c1/t$c;->e:I

    iget v11, v4, Le/m/a/c/c1/t$c;->f:I

    iget v12, v4, Le/m/a/c/c1/t$c;->g:I

    iget v13, v4, Le/m/a/c/c1/t$c;->h:I

    const/16 v22, 0x1

    move-object/from16 v16, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-direct/range {v16 .. v22}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    :goto_6
    move v6, v14

    goto :goto_7

    .line 33
    :cond_a
    new-instance v9, Landroid/media/AudioTrack;

    iget v10, v4, Le/m/a/c/c1/t$c;->e:I

    iget v11, v4, Le/m/a/c/c1/t$c;->f:I

    iget v13, v4, Le/m/a/c/c1/t$c;->g:I

    iget v12, v4, Le/m/a/c/c1/t$c;->h:I

    const/16 v18, 0x1

    move/from16 v19, v12

    move-object v12, v9

    move/from16 v16, v13

    move/from16 v13, v17

    move v6, v14

    move v14, v10

    move v10, v15

    move v15, v11

    move/from16 v17, v19

    move/from16 v19, v10

    invoke-direct/range {v12 .. v19}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 34
    :goto_7
    invoke-virtual {v9}, Landroid/media/AudioTrack;->getState()I

    move-result v10

    if-ne v10, v5, :cond_11

    .line 35
    iput-object v9, v0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    .line 36
    invoke-virtual {v9}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    .line 37
    iget v9, v0, Le/m/a/c/c1/t;->M:I

    if-eq v9, v4, :cond_c

    .line 38
    iput v4, v0, Le/m/a/c/c1/t;->M:I

    .line 39
    iget-object v9, v0, Le/m/a/c/c1/t;->j:Le/m/a/c/c1/n$c;

    if-eqz v9, :cond_c

    .line 40
    check-cast v9, Le/m/a/c/c1/w$b;

    .line 41
    iget-object v10, v9, Le/m/a/c/c1/w$b;->a:Le/m/a/c/c1/w;

    .line 42
    iget-object v10, v10, Le/m/a/c/c1/w;->F0:Le/m/a/c/c1/m$a;

    .line 43
    iget-object v11, v10, Le/m/a/c/c1/m$a;->a:Landroid/os/Handler;

    if-eqz v11, :cond_b

    .line 44
    new-instance v12, Le/m/a/c/c1/c;

    invoke-direct {v12, v10, v4}, Le/m/a/c/c1/c;-><init>(Le/m/a/c/c1/m$a;I)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    :cond_b
    iget-object v4, v9, Le/m/a/c/c1/w$b;->a:Le/m/a/c/c1/w;

    .line 46
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_c
    iget-object v4, v0, Le/m/a/c/c1/t;->p:Le/m/a/c/o0;

    invoke-virtual {v0, v4, v2, v3}, Le/m/a/c/c1/t;->a(Le/m/a/c/o0;J)V

    .line 48
    iget-object v4, v0, Le/m/a/c/c1/t;->h:Le/m/a/c/c1/p;

    iget-object v9, v0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    iget-object v10, v0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    iget v11, v10, Le/m/a/c/c1/t$c;->g:I

    iget v12, v10, Le/m/a/c/c1/t$c;->d:I

    iget v10, v10, Le/m/a/c/c1/t$c;->h:I

    .line 49
    iput-object v9, v4, Le/m/a/c/c1/p;->c:Landroid/media/AudioTrack;

    .line 50
    iput v12, v4, Le/m/a/c/c1/p;->d:I

    .line 51
    iput v10, v4, Le/m/a/c/c1/p;->e:I

    .line 52
    new-instance v13, Le/m/a/c/c1/o;

    invoke-direct {v13, v9}, Le/m/a/c/c1/o;-><init>(Landroid/media/AudioTrack;)V

    iput-object v13, v4, Le/m/a/c/c1/p;->f:Le/m/a/c/c1/o;

    .line 53
    invoke-virtual {v9}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v9

    iput v9, v4, Le/m/a/c/c1/p;->g:I

    const/16 v9, 0x17

    if-ge v6, v9, :cond_e

    if-eq v11, v8, :cond_d

    if-ne v11, v7, :cond_e

    :cond_d
    move v6, v5

    goto :goto_8

    :cond_e
    const/4 v6, 0x0

    .line 54
    :goto_8
    iput-boolean v6, v4, Le/m/a/c/c1/p;->h:Z

    .line 55
    invoke-static {v11}, Le/m/a/c/q1/d0;->u(I)Z

    move-result v6

    iput-boolean v6, v4, Le/m/a/c/c1/p;->o:Z

    if-eqz v6, :cond_f

    .line 56
    div-int/2addr v10, v12

    int-to-long v9, v10

    invoke-virtual {v4, v9, v10}, Le/m/a/c/c1/p;->a(J)J

    move-result-wide v9

    goto :goto_9

    :cond_f
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    :goto_9
    iput-wide v9, v4, Le/m/a/c/c1/p;->i:J

    const-wide/16 v9, 0x0

    .line 57
    iput-wide v9, v4, Le/m/a/c/c1/p;->q:J

    .line 58
    iput-wide v9, v4, Le/m/a/c/c1/p;->r:J

    .line 59
    iput-wide v9, v4, Le/m/a/c/c1/p;->s:J

    const/4 v6, 0x0

    .line 60
    iput-boolean v6, v4, Le/m/a/c/c1/p;->n:Z

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 61
    iput-wide v11, v4, Le/m/a/c/c1/p;->v:J

    .line 62
    iput-wide v11, v4, Le/m/a/c/c1/p;->w:J

    .line 63
    iput-wide v9, v4, Le/m/a/c/c1/p;->m:J

    .line 64
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/c1/t;->o()V

    .line 65
    iget-object v4, v0, Le/m/a/c/c1/t;->N:Le/m/a/c/c1/q;

    iget v4, v4, Le/m/a/c/c1/q;->a:I

    if-eqz v4, :cond_10

    .line 66
    iget-object v6, v0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    invoke-virtual {v6, v4}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 67
    iget-object v4, v0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    iget-object v6, v0, Le/m/a/c/c1/t;->N:Le/m/a/c/c1/q;

    iget v6, v6, Le/m/a/c/c1/q;->b:F

    invoke-virtual {v4, v6}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 68
    :cond_10
    iget-boolean v4, v0, Le/m/a/c/c1/t;->L:Z

    if-eqz v4, :cond_12

    .line 69
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/c1/t;->k()V

    goto :goto_a

    .line 70
    :cond_11
    :try_start_0
    invoke-virtual {v9}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :catch_0
    new-instance v1, Le/m/a/c/c1/n$b;

    iget v2, v4, Le/m/a/c/c1/t$c;->e:I

    iget v3, v4, Le/m/a/c/c1/t$c;->f:I

    iget v4, v4, Le/m/a/c/c1/t$c;->h:I

    invoke-direct {v1, v10, v2, v3, v4}, Le/m/a/c/c1/n$b;-><init>(IIII)V

    throw v1

    .line 72
    :cond_12
    :goto_a
    iget-object v4, v0, Le/m/a/c/c1/t;->h:Le/m/a/c/c1/p;

    invoke-virtual/range {p0 .. p0}, Le/m/a/c/c1/t;->g()J

    move-result-wide v9

    .line 73
    iget-object v6, v4, Le/m/a/c/c1/p;->c:Landroid/media/AudioTrack;

    .line 74
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v6

    .line 76
    iget-boolean v11, v4, Le/m/a/c/c1/p;->h:Z

    const/4 v12, 0x2

    if-eqz v11, :cond_14

    if-ne v6, v12, :cond_13

    const/4 v6, 0x0

    .line 77
    iput-boolean v6, v4, Le/m/a/c/c1/p;->n:Z

    goto :goto_b

    :cond_13
    if-ne v6, v5, :cond_14

    .line 78
    invoke-virtual {v4}, Le/m/a/c/c1/p;->b()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-nez v11, :cond_14

    :goto_b
    const/4 v4, 0x0

    goto :goto_c

    .line 79
    :cond_14
    iget-boolean v11, v4, Le/m/a/c/c1/p;->n:Z

    .line 80
    invoke-virtual {v4, v9, v10}, Le/m/a/c/c1/p;->c(J)Z

    move-result v9

    iput-boolean v9, v4, Le/m/a/c/c1/p;->n:Z

    if-eqz v11, :cond_15

    if-nez v9, :cond_15

    if-eq v6, v5, :cond_15

    .line 81
    iget-object v6, v4, Le/m/a/c/c1/p;->a:Le/m/a/c/c1/p$a;

    if-eqz v6, :cond_15

    .line 82
    iget v9, v4, Le/m/a/c/c1/p;->e:I

    iget-wide v10, v4, Le/m/a/c/c1/p;->i:J

    invoke-static {v10, v11}, Le/m/a/c/v;->b(J)J

    move-result-wide v10

    invoke-interface {v6, v9, v10, v11}, Le/m/a/c/c1/p$a;->c(IJ)V

    :cond_15
    move v4, v5

    :goto_c
    if-nez v4, :cond_16

    const/4 v1, 0x0

    return v1

    .line 83
    :cond_16
    iget-object v4, v0, Le/m/a/c/c1/t;->E:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_33

    .line 84
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_17

    return v5

    .line 85
    :cond_17
    iget-object v4, v0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    iget-boolean v6, v4, Le/m/a/c/c1/t$c;->a:Z

    if-nez v6, :cond_2b

    iget v6, v0, Le/m/a/c/c1/t;->y:I

    if-nez v6, :cond_2b

    .line 86
    iget v4, v4, Le/m/a/c/c1/t$c;->g:I

    const/16 v6, 0xe

    const/4 v9, -0x1

    if-eq v4, v6, :cond_24

    const/16 v6, 0x11

    if-eq v4, v6, :cond_23

    const/16 v6, 0x12

    const/16 v10, 0xa

    if-eq v4, v6, :cond_1f

    packed-switch v4, :pswitch_data_0

    .line 87
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected audio encoding: "

    invoke-static {v2, v4}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 89
    invoke-static {v4}, Le/m/a/c/g1/o;->c(I)Z

    move-result v6

    if-nez v6, :cond_18

    goto/16 :goto_17

    :cond_18
    ushr-int/lit8 v6, v4, 0x13

    const/4 v7, 0x3

    and-int/2addr v6, v7

    if-ne v6, v5, :cond_19

    goto/16 :goto_17

    :cond_19
    ushr-int/lit8 v8, v4, 0x11

    and-int/2addr v8, v7

    if-nez v8, :cond_1a

    goto/16 :goto_17

    :cond_1a
    ushr-int/lit8 v11, v4, 0xc

    const/16 v13, 0xf

    and-int/2addr v11, v13

    ushr-int/2addr v4, v10

    and-int/2addr v4, v7

    if-eqz v11, :cond_2a

    if-eq v11, v13, :cond_2a

    if-ne v4, v7, :cond_1b

    goto/16 :goto_17

    .line 90
    :cond_1b
    invoke-static {v6, v8}, Le/m/a/c/g1/o;->b(II)I

    move-result v9

    goto/16 :goto_17

    .line 91
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 92
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    const/4 v10, -0x2

    if-eq v6, v10, :cond_1e

    if-eq v6, v9, :cond_1d

    const/16 v9, 0x1f

    if-eq v6, v9, :cond_1c

    add-int/lit8 v6, v4, 0x4

    .line 93
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/2addr v6, v5

    shl-int/2addr v6, v7

    add-int/2addr v4, v8

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    goto :goto_e

    :cond_1c
    add-int/lit8 v6, v4, 0x5

    .line 94
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v4, v7

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    goto :goto_d

    :cond_1d
    add-int/lit8 v6, v4, 0x4

    .line 95
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    :goto_d
    and-int/lit8 v4, v4, 0x3c

    goto :goto_f

    :cond_1e
    add-int/lit8 v6, v4, 0x5

    .line 96
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/2addr v6, v5

    shl-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    :goto_e
    and-int/lit16 v4, v4, 0xfc

    :goto_f
    shr-int/2addr v4, v12

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    mul-int/lit8 v9, v4, 0x20

    goto/16 :goto_17

    .line 97
    :cond_1f
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v8

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xf8

    const/4 v6, 0x3

    shr-int/2addr v4, v6

    if-le v4, v10, :cond_20

    move v4, v5

    goto :goto_10

    :cond_20
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_22

    .line 98
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xc0

    shr-int/2addr v4, v7

    const/4 v6, 0x3

    if-ne v4, v6, :cond_21

    goto :goto_11

    .line 99
    :cond_21
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit8 v4, v4, 0x30

    shr-int/lit8 v6, v4, 0x4

    .line 100
    :goto_11
    sget-object v4, Le/m/a/c/c1/g;->a:[I

    aget v4, v4, v6

    mul-int/lit16 v4, v4, 0x100

    goto :goto_14

    :cond_22
    const/16 v4, 0x600

    goto :goto_14

    :cond_23
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 101
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 102
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    new-instance v6, Le/m/a/c/q1/s;

    invoke-direct {v6, v4}, Le/m/a/c/q1/s;-><init>([B)V

    invoke-static {v6}, Le/m/a/c/c1/h;->b(Le/m/a/c/q1/s;)Le/m/a/c/c1/h$b;

    move-result-object v4

    iget v9, v4, Le/m/a/c/c1/h$b;->c:I

    goto :goto_17

    .line 105
    :cond_24
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 106
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    move v7, v4

    :goto_12
    if-gt v7, v6, :cond_26

    add-int/lit8 v8, v7, 0x4

    .line 107
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    const v10, -0x1000001

    and-int/2addr v8, v10

    const v10, -0x45908d08

    if-ne v8, v10, :cond_25

    sub-int/2addr v7, v4

    goto :goto_13

    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_26
    move v7, v9

    :goto_13
    if-ne v7, v9, :cond_27

    const/4 v4, 0x0

    :goto_14
    move v9, v4

    goto :goto_17

    .line 108
    :cond_27
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0xbb

    if-ne v4, v6, :cond_28

    move v4, v5

    goto :goto_15

    :cond_28
    const/4 v4, 0x0

    :goto_15
    const/16 v6, 0x28

    .line 109
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v7

    if-eqz v4, :cond_29

    const/16 v4, 0x9

    goto :goto_16

    :cond_29
    const/16 v4, 0x8

    :goto_16
    add-int/2addr v8, v4

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    shl-int v4, v6, v4

    mul-int/lit8 v4, v4, 0x10

    goto :goto_14

    .line 110
    :cond_2a
    :goto_17
    iput v9, v0, Le/m/a/c/c1/t;->y:I

    if-nez v9, :cond_2b

    return v5

    .line 111
    :cond_2b
    iget-object v4, v0, Le/m/a/c/c1/t;->o:Le/m/a/c/o0;

    if-eqz v4, :cond_2d

    .line 112
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/c1/t;->c()Z

    move-result v4

    if-nez v4, :cond_2c

    const/4 v1, 0x0

    return v1

    .line 113
    :cond_2c
    iget-object v4, v0, Le/m/a/c/c1/t;->o:Le/m/a/c/o0;

    const/4 v6, 0x0

    .line 114
    iput-object v6, v0, Le/m/a/c/c1/t;->o:Le/m/a/c/o0;

    .line 115
    invoke-virtual {v0, v4, v2, v3}, Le/m/a/c/c1/t;->a(Le/m/a/c/o0;J)V

    .line 116
    :cond_2d
    iget v4, v0, Le/m/a/c/c1/t;->z:I

    if-nez v4, :cond_2e

    const-wide/16 v6, 0x0

    .line 117
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Le/m/a/c/c1/t;->A:J

    .line 118
    iput v5, v0, Le/m/a/c/c1/t;->z:I

    goto :goto_19

    .line 119
    :cond_2e
    iget-wide v6, v0, Le/m/a/c/c1/t;->A:J

    iget-object v8, v0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    .line 120
    iget-boolean v9, v8, Le/m/a/c/c1/t$c;->a:Z

    if-eqz v9, :cond_2f

    iget-wide v9, v0, Le/m/a/c/c1/t;->u:J

    iget v11, v8, Le/m/a/c/c1/t$c;->b:I

    int-to-long v13, v11

    div-long/2addr v9, v13

    goto :goto_18

    :cond_2f
    iget-wide v9, v0, Le/m/a/c/c1/t;->v:J

    .line 121
    :goto_18
    iget-object v11, v0, Le/m/a/c/c1/t;->d:Le/m/a/c/c1/b0;

    .line 122
    iget-wide v13, v11, Le/m/a/c/c1/b0;->o:J

    sub-long/2addr v9, v13

    const-wide/32 v13, 0xf4240

    mul-long/2addr v9, v13

    .line 123
    iget v8, v8, Le/m/a/c/c1/t$c;->c:I

    int-to-long v13, v8

    div-long/2addr v9, v13

    add-long/2addr v9, v6

    if-ne v4, v5, :cond_30

    sub-long v6, v9, v2

    .line 124
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v13, 0x30d40

    cmp-long v4, v6, v13

    if-lez v4, :cond_30

    .line 125
    iput v12, v0, Le/m/a/c/c1/t;->z:I

    .line 126
    :cond_30
    iget v4, v0, Le/m/a/c/c1/t;->z:I

    if-ne v4, v12, :cond_31

    sub-long v6, v2, v9

    .line 127
    iget-wide v8, v0, Le/m/a/c/c1/t;->A:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Le/m/a/c/c1/t;->A:J

    .line 128
    iput v5, v0, Le/m/a/c/c1/t;->z:I

    .line 129
    iget-object v4, v0, Le/m/a/c/c1/t;->j:Le/m/a/c/c1/n$c;

    if-eqz v4, :cond_31

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_31

    .line 130
    check-cast v4, Le/m/a/c/c1/w$b;

    .line 131
    iget-object v6, v4, Le/m/a/c/c1/w$b;->a:Le/m/a/c/c1/w;

    .line 132
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v4, v4, Le/m/a/c/c1/w$b;->a:Le/m/a/c/c1/w;

    .line 134
    iput-boolean v5, v4, Le/m/a/c/c1/w;->Q0:Z

    .line 135
    :cond_31
    :goto_19
    iget-object v4, v0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    iget-boolean v4, v4, Le/m/a/c/c1/t$c;->a:Z

    if-eqz v4, :cond_32

    .line 136
    iget-wide v6, v0, Le/m/a/c/c1/t;->u:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v0, Le/m/a/c/c1/t;->u:J

    goto :goto_1a

    .line 137
    :cond_32
    iget-wide v6, v0, Le/m/a/c/c1/t;->v:J

    iget v4, v0, Le/m/a/c/c1/t;->y:I

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v0, Le/m/a/c/c1/t;->v:J

    .line 138
    :goto_1a
    iput-object v1, v0, Le/m/a/c/c1/t;->E:Ljava/nio/ByteBuffer;

    .line 139
    :cond_33
    iget-object v1, v0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    iget-boolean v1, v1, Le/m/a/c/c1/t$c;->i:Z

    if-eqz v1, :cond_34

    .line 140
    invoke-virtual {v0, v2, v3}, Le/m/a/c/c1/t;->m(J)V

    goto :goto_1b

    .line 141
    :cond_34
    iget-object v1, v0, Le/m/a/c/c1/t;->E:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v3}, Le/m/a/c/c1/t;->q(Ljava/nio/ByteBuffer;J)V

    .line 142
    :goto_1b
    iget-object v1, v0, Le/m/a/c/c1/t;->E:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_35

    const/4 v1, 0x0

    .line 143
    iput-object v1, v0, Le/m/a/c/c1/t;->E:Ljava/nio/ByteBuffer;

    return v5

    .line 144
    :cond_35
    iget-object v1, v0, Le/m/a/c/c1/t;->h:Le/m/a/c/c1/p;

    invoke-virtual/range {p0 .. p0}, Le/m/a/c/c1/t;->g()J

    move-result-wide v2

    .line 145
    iget-wide v6, v1, Le/m/a/c/c1/p;->w:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v6, v8

    if-eqz v4, :cond_36

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_36

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v1, Le/m/a/c/c1/p;->w:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0xc8

    cmp-long v1, v2, v6

    if-ltz v1, :cond_36

    move v1, v5

    goto :goto_1c

    :cond_36
    const/4 v1, 0x0

    :goto_1c
    if-eqz v1, :cond_37

    .line 147
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/c1/t;->d()V

    return v5

    :cond_37
    const/4 v1, 0x0

    return v1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/m/a/c/c1/t;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/c/c1/t;->h:Le/m/a/c/c1/p;

    invoke-virtual {p0}, Le/m/a/c/c1/t;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le/m/a/c/c1/p;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/m/a/c/c1/t;->L:Z

    .line 2
    invoke-virtual {p0}, Le/m/a/c/c1/t;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/m/a/c/c1/t;->h:Le/m/a/c/c1/p;

    .line 4
    iget-object v0, v0, Le/m/a/c/c1/p;->f:Le/m/a/c/c1/o;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Le/m/a/c/c1/o;->a()V

    .line 7
    iget-object v0, p0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Le/m/a/c/c1/t;->K:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/m/a/c/c1/t;->K:Z

    .line 3
    iget-object v0, p0, Le/m/a/c/c1/t;->h:Le/m/a/c/c1/p;

    invoke-virtual {p0}, Le/m/a/c/c1/t;->g()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0}, Le/m/a/c/c1/p;->b()J

    move-result-wide v3

    iput-wide v3, v0, Le/m/a/c/c1/p;->x:J

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iput-wide v3, v0, Le/m/a/c/c1/p;->v:J

    .line 6
    iput-wide v1, v0, Le/m/a/c/c1/p;->y:J

    .line 7
    iget-object v0, p0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Le/m/a/c/c1/t;->t:I

    :cond_0
    return-void
.end method

.method public final m(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/c1/n$d;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/t;->C:[Le/m/a/c/c1/l;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    .line 2
    iget-object v2, p0, Le/m/a/c/c1/t;->D:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Le/m/a/c/c1/t;->E:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Le/m/a/c/c1/l;->a:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 3
    invoke-virtual {p0, v2, p1, p2}, Le/m/a/c/c1/t;->q(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 4
    :cond_2
    iget-object v3, p0, Le/m/a/c/c1/t;->C:[Le/m/a/c/c1/l;

    aget-object v3, v3, v1

    .line 5
    invoke-interface {v3, v2}, Le/m/a/c/c1/l;->d(Ljava/nio/ByteBuffer;)V

    .line 6
    invoke-interface {v3}, Le/m/a/c/c1/l;->f()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 7
    iget-object v4, p0, Le/m/a/c/c1/t;->D:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public n()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/m/a/c/c1/t;->d()V

    .line 2
    iget-object v0, p0, Le/m/a/c/c1/t;->e:[Le/m/a/c/c1/l;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 3
    invoke-interface {v4}, Le/m/a/c/c1/l;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/m/a/c/c1/t;->f:[Le/m/a/c/c1/l;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 5
    invoke-interface {v4}, Le/m/a/c/c1/l;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iput v2, p0, Le/m/a/c/c1/t;->M:I

    .line 7
    iput-boolean v2, p0, Le/m/a/c/c1/t;->L:Z

    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/c/c1/t;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Le/m/a/c/q1/d0;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    iget v1, p0, Le/m/a/c/c1/t;->B:F

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    iget v1, p0, Le/m/a/c/c1/t;->B:F

    .line 6
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :goto_0
    return-void
.end method

.method public p(II)Z
    .locals 3

    .line 1
    invoke-static {p2}, Le/m/a/c/q1/d0;->u(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 2
    sget p1, Le/m/a/c/q1/d0;->a:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    .line 3
    :cond_2
    iget-object v0, p0, Le/m/a/c/c1/t;->a:Le/m/a/c/c1/j;

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, v0, Le/m/a/c/c1/j;->a:[I

    invoke-static {v0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p2

    if-ltz p2, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    move p2, v2

    :goto_1
    if-eqz p2, :cond_4

    const/4 p2, -0x1

    if-eq p1, p2, :cond_5

    .line 5
    iget-object p2, p0, Le/m/a/c/c1/t;->a:Le/m/a/c/c1/j;

    .line 6
    iget p2, p2, Le/m/a/c/c1/j;->b:I

    if-gt p1, p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    return v1
.end method

.method public final q(Ljava/nio/ByteBuffer;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/c1/n$d;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/a/c/c1/t;->F:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 3
    :goto_0
    invoke-static {v0}, Ln3/g0/y;->r(Z)V

    goto :goto_1

    .line 4
    :cond_2
    iput-object p1, p0, Le/m/a/c/c1/t;->F:Ljava/nio/ByteBuffer;

    .line 5
    sget v0, Le/m/a/c/q1/d0;->a:I

    if-ge v0, v1, :cond_5

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 7
    iget-object v4, p0, Le/m/a/c/c1/t;->G:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 8
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Le/m/a/c/c1/t;->G:[B

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 10
    iget-object v5, p0, Le/m/a/c/c1/t;->G:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iput v3, p0, Le/m/a/c/c1/t;->H:I

    .line 13
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 14
    sget v4, Le/m/a/c/q1/d0;->a:I

    if-ge v4, v1, :cond_6

    .line 15
    iget-object p2, p0, Le/m/a/c/c1/t;->h:Le/m/a/c/c1/p;

    iget-wide v1, p0, Le/m/a/c/c1/t;->w:J

    .line 16
    invoke-virtual {p2}, Le/m/a/c/c1/p;->b()J

    move-result-wide v4

    iget p3, p2, Le/m/a/c/c1/p;->d:I

    int-to-long v6, p3

    mul-long/2addr v4, v6

    sub-long/2addr v1, v4

    long-to-int p3, v1

    .line 17
    iget p2, p2, Le/m/a/c/c1/p;->e:I

    sub-int/2addr p2, p3

    if-lez p2, :cond_f

    .line 18
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 19
    iget-object p3, p0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    iget-object v1, p0, Le/m/a/c/c1/t;->G:[B

    iget v2, p0, Le/m/a/c/c1/t;->H:I

    invoke-virtual {p3, v1, v2, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    if-lez v3, :cond_f

    .line 20
    iget p2, p0, Le/m/a/c/c1/t;->H:I

    add-int/2addr p2, v3

    iput p2, p0, Le/m/a/c/c1/t;->H:I

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_4

    .line 22
    :cond_6
    iget-boolean v1, p0, Le/m/a/c/c1/t;->O:Z

    if-eqz v1, :cond_e

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v5

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_2

    :cond_7
    move v1, v3

    .line 23
    :goto_2
    invoke-static {v1}, Ln3/g0/y;->x(Z)V

    .line 24
    iget-object v6, p0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    const-wide/16 v7, 0x3e8

    const/16 v1, 0x1a

    if-lt v4, v1, :cond_8

    const/4 v9, 0x1

    mul-long v10, p2, v7

    move-object v7, p1

    move v8, v0

    .line 25
    invoke-virtual/range {v6 .. v11}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result v3

    goto :goto_4

    .line 26
    :cond_8
    iget-object v1, p0, Le/m/a/c/c1/t;->s:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_9

    const/16 v1, 0x10

    .line 27
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Le/m/a/c/c1/t;->s:Ljava/nio/ByteBuffer;

    .line 28
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 29
    iget-object v1, p0, Le/m/a/c/c1/t;->s:Ljava/nio/ByteBuffer;

    const v4, 0x55550001

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 30
    :cond_9
    iget v1, p0, Le/m/a/c/c1/t;->t:I

    if-nez v1, :cond_a

    .line 31
    iget-object v1, p0, Le/m/a/c/c1/t;->s:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 32
    iget-object v1, p0, Le/m/a/c/c1/t;->s:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    mul-long/2addr p2, v7

    invoke-virtual {v1, v4, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 33
    iget-object p2, p0, Le/m/a/c/c1/t;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    iput v0, p0, Le/m/a/c/c1/t;->t:I

    .line 35
    :cond_a
    iget-object p2, p0, Le/m/a/c/c1/t;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_c

    .line 36
    iget-object p3, p0, Le/m/a/c/c1/t;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, p3, p2, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    if-gez p3, :cond_b

    .line 37
    iput v3, p0, Le/m/a/c/c1/t;->t:I

    move v3, p3

    goto :goto_4

    :cond_b
    if-ge p3, p2, :cond_c

    goto :goto_4

    .line 38
    :cond_c
    invoke-virtual {v6, p1, v0, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    if-gez p1, :cond_d

    .line 39
    iput v3, p0, Le/m/a/c/c1/t;->t:I

    goto :goto_3

    .line 40
    :cond_d
    iget p2, p0, Le/m/a/c/c1/t;->t:I

    sub-int/2addr p2, p1

    iput p2, p0, Le/m/a/c/c1/t;->t:I

    :goto_3
    move v3, p1

    goto :goto_4

    .line 41
    :cond_e
    iget-object p2, p0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    .line 42
    invoke-virtual {p2, p1, v0, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v3

    .line 43
    :cond_f
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Le/m/a/c/c1/t;->P:J

    if-ltz v3, :cond_13

    .line 44
    iget-object p1, p0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    iget-boolean p1, p1, Le/m/a/c/c1/t$c;->a:Z

    if-eqz p1, :cond_10

    .line 45
    iget-wide p2, p0, Le/m/a/c/c1/t;->w:J

    int-to-long v1, v3

    add-long/2addr p2, v1

    iput-wide p2, p0, Le/m/a/c/c1/t;->w:J

    :cond_10
    if-ne v3, v0, :cond_12

    if-nez p1, :cond_11

    .line 46
    iget-wide p1, p0, Le/m/a/c/c1/t;->x:J

    iget p3, p0, Le/m/a/c/c1/t;->y:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Le/m/a/c/c1/t;->x:J

    :cond_11
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Le/m/a/c/c1/t;->F:Ljava/nio/ByteBuffer;

    :cond_12
    return-void

    .line 48
    :cond_13
    new-instance p1, Le/m/a/c/c1/n$d;

    invoke-direct {p1, v3}, Le/m/a/c/c1/n$d;-><init>(I)V

    throw p1
.end method
