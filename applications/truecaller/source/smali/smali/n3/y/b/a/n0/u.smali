.class public final Ln3/y/b/a/n0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/n0/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/n0/u$c;,
        Ln3/y/b/a/n0/u$f;,
        Ln3/y/b/a/n0/u$e;,
        Ln3/y/b/a/n0/u$d;,
        Ln3/y/b/a/n0/u$b;
    }
.end annotation


# instance fields
.field public A:J

.field public B:F

.field public C:[Ln3/y/b/a/n0/g;

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

.field public N:Ln3/y/b/a/n0/r;

.field public O:Z

.field public P:J

.field public final a:Ln3/y/b/a/n0/d;

.field public final b:Ln3/y/b/a/n0/u$b;

.field public final c:Ln3/y/b/a/n0/t;

.field public final d:Ln3/y/b/a/n0/c0;

.field public final e:[Ln3/y/b/a/n0/g;

.field public final f:[Ln3/y/b/a/n0/g;

.field public final g:Landroid/os/ConditionVariable;

.field public final h:Ln3/y/b/a/n0/q;

.field public final i:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ln3/y/b/a/n0/u$e;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ln3/y/b/a/n0/o$c;

.field public k:Ln3/y/b/a/n0/u$c;

.field public l:Ln3/y/b/a/n0/u$c;

.field public m:Landroid/media/AudioTrack;

.field public n:Ln3/y/b/a/n0/c;

.field public o:Ln3/y/b/a/e0;

.field public p:Ln3/y/b/a/e0;

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
.method public constructor <init>(Ln3/y/b/a/n0/d;[Ln3/y/b/a/n0/g;)V
    .locals 6

    .line 1
    new-instance v0, Ln3/y/b/a/n0/u$d;

    invoke-direct {v0, p2}, Ln3/y/b/a/n0/u$d;-><init>([Ln3/y/b/a/n0/g;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ln3/y/b/a/n0/u;->a:Ln3/y/b/a/n0/d;

    .line 4
    iput-object v0, p0, Ln3/y/b/a/n0/u;->b:Ln3/y/b/a/n0/u$b;

    .line 5
    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Ln3/y/b/a/n0/u;->g:Landroid/os/ConditionVariable;

    .line 6
    new-instance p1, Ln3/y/b/a/n0/q;

    new-instance v1, Ln3/y/b/a/n0/u$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ln3/y/b/a/n0/u$f;-><init>(Ln3/y/b/a/n0/u;Ln3/y/b/a/n0/u$a;)V

    invoke-direct {p1, v1}, Ln3/y/b/a/n0/q;-><init>(Ln3/y/b/a/n0/q$a;)V

    iput-object p1, p0, Ln3/y/b/a/n0/u;->h:Ln3/y/b/a/n0/q;

    .line 7
    new-instance p1, Ln3/y/b/a/n0/t;

    invoke-direct {p1}, Ln3/y/b/a/n0/t;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/n0/u;->c:Ln3/y/b/a/n0/t;

    .line 8
    new-instance v1, Ln3/y/b/a/n0/c0;

    invoke-direct {v1}, Ln3/y/b/a/n0/c0;-><init>()V

    iput-object v1, p0, Ln3/y/b/a/n0/u;->d:Ln3/y/b/a/n0/c0;

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Ln3/y/b/a/n0/s;

    .line 10
    new-instance v4, Ln3/y/b/a/n0/y;

    invoke-direct {v4}, Ln3/y/b/a/n0/y;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object p1, v3, p2

    const/4 p1, 0x2

    aput-object v1, v3, p1

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 11
    iget-object p1, v0, Ln3/y/b/a/n0/u$d;->a:[Ln3/y/b/a/n0/g;

    .line 12
    invoke-static {v2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p1, v5, [Ln3/y/b/a/n0/g;

    .line 13
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ln3/y/b/a/n0/g;

    iput-object p1, p0, Ln3/y/b/a/n0/u;->e:[Ln3/y/b/a/n0/g;

    new-array p1, p2, [Ln3/y/b/a/n0/g;

    .line 14
    new-instance p2, Ln3/y/b/a/n0/w;

    invoke-direct {p2}, Ln3/y/b/a/n0/w;-><init>()V

    aput-object p2, p1, v5

    iput-object p1, p0, Ln3/y/b/a/n0/u;->f:[Ln3/y/b/a/n0/g;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    iput p1, p0, Ln3/y/b/a/n0/u;->B:F

    .line 16
    iput v5, p0, Ln3/y/b/a/n0/u;->z:I

    .line 17
    sget-object p1, Ln3/y/b/a/n0/c;->e:Ln3/y/b/a/n0/c;

    iput-object p1, p0, Ln3/y/b/a/n0/u;->n:Ln3/y/b/a/n0/c;

    .line 18
    iput v5, p0, Ln3/y/b/a/n0/u;->M:I

    .line 19
    new-instance p1, Ln3/y/b/a/n0/r;

    const/4 p2, 0x0

    invoke-direct {p1, v5, p2}, Ln3/y/b/a/n0/r;-><init>(IF)V

    iput-object p1, p0, Ln3/y/b/a/n0/u;->N:Ln3/y/b/a/n0/r;

    .line 20
    sget-object p1, Ln3/y/b/a/e0;->e:Ln3/y/b/a/e0;

    iput-object p1, p0, Ln3/y/b/a/n0/u;->p:Ln3/y/b/a/e0;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Ln3/y/b/a/n0/u;->I:I

    new-array p1, v5, [Ln3/y/b/a/n0/g;

    .line 22
    iput-object p1, p0, Ln3/y/b/a/n0/u;->C:[Ln3/y/b/a/n0/g;

    new-array p1, v5, [Ljava/nio/ByteBuffer;

    .line 23
    iput-object p1, p0, Ln3/y/b/a/n0/u;->D:[Ljava/nio/ByteBuffer;

    .line 24
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/n0/u;->i:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final a(Ln3/y/b/a/e0;J)V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    iget-boolean v0, v0, Ln3/y/b/a/n0/u$c;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/n0/u;->b:Ln3/y/b/a/n0/u$b;

    invoke-interface {v0, p1}, Ln3/y/b/a/n0/u$b;->c(Ln3/y/b/a/e0;)Ln3/y/b/a/e0;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Ln3/y/b/a/e0;->e:Ln3/y/b/a/e0;

    :goto_0
    move-object v1, p1

    .line 4
    iget-object p1, p0, Ln3/y/b/a/n0/u;->i:Ljava/util/ArrayDeque;

    new-instance v7, Ln3/y/b/a/n0/u$e;

    const-wide/16 v2, 0x0

    .line 5
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object p2, p0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    .line 6
    invoke-virtual {p0}, Ln3/y/b/a/n0/u;->g()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ln3/y/b/a/n0/u$c;->b(J)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ln3/y/b/a/n0/u$e;-><init>(Ln3/y/b/a/e0;JJLn3/y/b/a/n0/u$a;)V

    .line 7
    invoke-virtual {p1, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    iget-object p1, p1, Ln3/y/b/a/n0/u$c;->k:[Ln3/y/b/a/n0/g;

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    array-length p3, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2

    aget-object v1, p1, v0

    .line 11
    invoke-interface {v1}, Ln3/y/b/a/n0/g;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_1
    invoke-interface {v1}, Ln3/y/b/a/n0/g;->flush()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 15
    new-array p3, p1, [Ln3/y/b/a/n0/g;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ln3/y/b/a/n0/g;

    iput-object p2, p0, Ln3/y/b/a/n0/u;->C:[Ln3/y/b/a/n0/g;

    .line 16
    new-array p1, p1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Ln3/y/b/a/n0/u;->D:[Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {p0}, Ln3/y/b/a/n0/u;->e()V

    return-void
.end method

.method public b(IIII[III)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/n0/o$a;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    sget v0, Ln3/y/b/a/x0/x;->a:I

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/16 v4, 0x15

    if-ge v0, v4, :cond_0

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    if-nez p5, :cond_1

    new-array v2, v3, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 2
    aput v5, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move/from16 v0, p2

    :cond_1
    move-object/from16 v2, p5

    .line 3
    :cond_2
    invoke-static/range {p1 .. p1}, Ln3/y/b/a/x0/x;->s(I)Z

    move-result v6

    const/4 v3, 0x4

    const/4 v15, 0x1

    move/from16 v5, p1

    if-eqz v6, :cond_3

    if-eq v5, v3, :cond_3

    move v14, v15

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    move v14, v7

    .line 4
    :goto_1
    iget-object v13, v1, Ln3/y/b/a/n0/u;->e:[Ln3/y/b/a/n0/g;

    if-eqz v14, :cond_6

    .line 5
    iget-object v7, v1, Ln3/y/b/a/n0/u;->d:Ln3/y/b/a/n0/c0;

    move/from16 v8, p6

    .line 6
    iput v8, v7, Ln3/y/b/a/n0/c0;->i:I

    move/from16 v8, p7

    .line 7
    iput v8, v7, Ln3/y/b/a/n0/c0;->j:I

    .line 8
    iget-object v7, v1, Ln3/y/b/a/n0/u;->c:Ln3/y/b/a/n0/t;

    .line 9
    iput-object v2, v7, Ln3/y/b/a/n0/t;->h:[I

    .line 10
    array-length v2, v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v11, p3

    move v10, v0

    move v9, v5

    :goto_2
    if-ge v7, v2, :cond_5

    aget-object v12, v13, v7

    .line 11
    :try_start_0
    invoke-interface {v12, v11, v10, v9}, Ln3/y/b/a/n0/g;->j(III)Z

    move-result v16
    :try_end_0
    .catch Ln3/y/b/a/n0/g$a; {:try_start_0 .. :try_end_0} :catch_0

    or-int v8, v8, v16

    .line 12
    invoke-interface {v12}, Ln3/y/b/a/n0/g;->b()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 13
    invoke-interface {v12}, Ln3/y/b/a/n0/g;->g()I

    move-result v10

    .line 14
    invoke-interface {v12}, Ln3/y/b/a/n0/g;->h()I

    move-result v11

    .line 15
    invoke-interface {v12}, Ln3/y/b/a/n0/g;->i()I

    move-result v9

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 16
    new-instance v0, Ln3/y/b/a/n0/o$a;

    invoke-direct {v0, v2}, Ln3/y/b/a/n0/o$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    move v2, v8

    move v12, v9

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    move/from16 v11, p3

    move v10, v0

    move v12, v5

    move v2, v8

    .line 17
    :goto_3
    sget v7, Ln3/y/b/a/x0/x;->a:I

    const/16 v8, 0x1c

    if-gt v7, v8, :cond_9

    if-nez v6, :cond_9

    const/4 v9, 0x7

    if-ne v10, v9, :cond_7

    const/16 v3, 0x8

    goto :goto_4

    :cond_7
    const/4 v9, 0x3

    if-eq v10, v9, :cond_8

    if-eq v10, v3, :cond_8

    const/4 v3, 0x5

    if-ne v10, v3, :cond_9

    :cond_8
    const/4 v3, 0x6

    goto :goto_4

    :cond_9
    move v3, v10

    :goto_4
    const/16 v9, 0x1a

    if-gt v7, v9, :cond_a

    .line 18
    sget-object v9, Ln3/y/b/a/x0/x;->b:Ljava/lang/String;

    const-string v8, "fugu"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    if-nez v6, :cond_a

    if-ne v3, v15, :cond_a

    const/4 v3, 0x2

    :cond_a
    packed-switch v3, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const/16 v3, 0x17

    const/16 v8, 0x18fc

    if-lt v7, v3, :cond_b

    goto :goto_5

    :cond_b
    if-lt v7, v4, :cond_c

    :goto_5
    move v3, v8

    goto :goto_7

    :pswitch_1
    const/16 v3, 0x4fc

    goto :goto_7

    :pswitch_2
    const/16 v3, 0xfc

    goto :goto_7

    :pswitch_3
    const/16 v3, 0xdc

    goto :goto_7

    :pswitch_4
    const/16 v3, 0xcc

    goto :goto_7

    :pswitch_5
    const/16 v3, 0x1c

    goto :goto_7

    :pswitch_6
    const/16 v3, 0xc

    goto :goto_7

    :pswitch_7
    const/4 v3, 0x4

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_14

    const/4 v4, -0x1

    if-eqz v6, :cond_d

    .line 19
    invoke-static/range {p1 .. p2}, Ln3/y/b/a/x0/x;->n(II)I

    move-result v0

    move v7, v0

    goto :goto_8

    :cond_d
    move v7, v4

    :goto_8
    if-eqz v6, :cond_e

    .line 20
    invoke-static {v12, v10}, Ln3/y/b/a/x0/x;->n(II)I

    move-result v0

    move v9, v0

    goto :goto_9

    :cond_e
    move v9, v4

    :goto_9
    if-eqz v14, :cond_f

    move v0, v15

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    .line 21
    :goto_a
    new-instance v4, Ln3/y/b/a/n0/u$c;

    move-object v5, v4

    move/from16 v8, p3

    move v10, v11

    move v11, v3

    move-object v3, v13

    move/from16 v13, p4

    move/from16 v17, v15

    move v15, v0

    move-object/from16 v16, v3

    invoke-direct/range {v5 .. v16}, Ln3/y/b/a/n0/u$c;-><init>(ZIIIIIIIZZ[Ln3/y/b/a/n0/g;)V

    if-nez v2, :cond_11

    .line 22
    iget-object v0, v1, Ln3/y/b/a/n0/u;->k:Ln3/y/b/a/n0/u$c;

    if-eqz v0, :cond_10

    goto :goto_b

    :cond_10
    const/4 v15, 0x0

    goto :goto_c

    :cond_11
    :goto_b
    move/from16 v15, v17

    .line 23
    :goto_c
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/n0/u;->j()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    .line 24
    invoke-virtual {v4, v0}, Ln3/y/b/a/n0/u$c;->a(Ln3/y/b/a/n0/u$c;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v15, :cond_13

    .line 25
    :cond_12
    iput-object v4, v1, Ln3/y/b/a/n0/u;->k:Ln3/y/b/a/n0/u$c;

    goto :goto_d

    .line 26
    :cond_13
    iput-object v4, v1, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    :goto_d
    return-void

    .line 27
    :cond_14
    new-instance v0, Ln3/y/b/a/n0/o$a;

    const/16 v2, 0x26

    const-string v3, "Unsupported channel count: "

    invoke-static {v2, v3, v10}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ln3/y/b/a/n0/o$a;-><init>(Ljava/lang/String;)V

    throw v0

    nop

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
            Ln3/y/b/a/n0/o$d;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/u;->I:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    iget-boolean v0, v0, Ln3/y/b/a/n0/u$c;->i:Z

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln3/y/b/a/n0/u;->C:[Ln3/y/b/a/n0/g;

    array-length v0, v0

    :goto_0
    iput v0, p0, Ln3/y/b/a/n0/u;->I:I

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_1
    move v0, v3

    .line 3
    :goto_2
    iget v4, p0, Ln3/y/b/a/n0/u;->I:I

    iget-object v5, p0, Ln3/y/b/a/n0/u;->C:[Ln3/y/b/a/n0/g;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    .line 4
    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v4}, Ln3/y/b/a/n0/g;->e()V

    .line 6
    :cond_2
    invoke-virtual {p0, v7, v8}, Ln3/y/b/a/n0/u;->m(J)V

    .line 7
    invoke-interface {v4}, Ln3/y/b/a/n0/g;->c()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 8
    :cond_3
    iget v0, p0, Ln3/y/b/a/n0/u;->I:I

    add-int/2addr v0, v2

    iput v0, p0, Ln3/y/b/a/n0/u;->I:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object v0, p0, Ln3/y/b/a/n0/u;->F:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0, v0, v7, v8}, Ln3/y/b/a/n0/u;->q(Ljava/nio/ByteBuffer;J)V

    .line 11
    iget-object v0, p0, Ln3/y/b/a/n0/u;->F:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    .line 12
    :cond_5
    iput v1, p0, Ln3/y/b/a/n0/u;->I:I

    return v2
.end method

.method public d()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/n0/u;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Ln3/y/b/a/n0/u;->u:J

    .line 3
    iput-wide v0, p0, Ln3/y/b/a/n0/u;->v:J

    .line 4
    iput-wide v0, p0, Ln3/y/b/a/n0/u;->w:J

    .line 5
    iput-wide v0, p0, Ln3/y/b/a/n0/u;->x:J

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Ln3/y/b/a/n0/u;->y:I

    .line 7
    iget-object v3, p0, Ln3/y/b/a/n0/u;->o:Ln3/y/b/a/e0;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 8
    iput-object v3, p0, Ln3/y/b/a/n0/u;->p:Ln3/y/b/a/e0;

    .line 9
    iput-object v4, p0, Ln3/y/b/a/n0/u;->o:Ln3/y/b/a/e0;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v3, p0, Ln3/y/b/a/n0/u;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 11
    iget-object v3, p0, Ln3/y/b/a/n0/u;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/n0/u$e;

    .line 12
    iget-object v3, v3, Ln3/y/b/a/n0/u$e;->a:Ln3/y/b/a/e0;

    .line 13
    iput-object v3, p0, Ln3/y/b/a/n0/u;->p:Ln3/y/b/a/e0;

    .line 14
    :cond_1
    :goto_0
    iget-object v3, p0, Ln3/y/b/a/n0/u;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 15
    iput-wide v0, p0, Ln3/y/b/a/n0/u;->q:J

    .line 16
    iput-wide v0, p0, Ln3/y/b/a/n0/u;->r:J

    .line 17
    iget-object v3, p0, Ln3/y/b/a/n0/u;->d:Ln3/y/b/a/n0/c0;

    .line 18
    iput-wide v0, v3, Ln3/y/b/a/n0/c0;->p:J

    .line 19
    invoke-virtual {p0}, Ln3/y/b/a/n0/u;->e()V

    .line 20
    iput-object v4, p0, Ln3/y/b/a/n0/u;->E:Ljava/nio/ByteBuffer;

    .line 21
    iput-object v4, p0, Ln3/y/b/a/n0/u;->F:Ljava/nio/ByteBuffer;

    .line 22
    iput-boolean v2, p0, Ln3/y/b/a/n0/u;->K:Z

    .line 23
    iput-boolean v2, p0, Ln3/y/b/a/n0/u;->J:Z

    const/4 v3, -0x1

    .line 24
    iput v3, p0, Ln3/y/b/a/n0/u;->I:I

    .line 25
    iput-object v4, p0, Ln3/y/b/a/n0/u;->s:Ljava/nio/ByteBuffer;

    .line 26
    iput v2, p0, Ln3/y/b/a/n0/u;->t:I

    .line 27
    iput v2, p0, Ln3/y/b/a/n0/u;->z:I

    .line 28
    iget-object v3, p0, Ln3/y/b/a/n0/u;->h:Ln3/y/b/a/n0/q;

    .line 29
    iget-object v3, v3, Ln3/y/b/a/n0/q;->c:Landroid/media/AudioTrack;

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
    iget-object v3, p0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->pause()V

    .line 33
    :cond_3
    iget-object v3, p0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    .line 34
    iput-object v4, p0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    .line 35
    iget-object v5, p0, Ln3/y/b/a/n0/u;->k:Ln3/y/b/a/n0/u$c;

    if-eqz v5, :cond_4

    .line 36
    iput-object v5, p0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    .line 37
    iput-object v4, p0, Ln3/y/b/a/n0/u;->k:Ln3/y/b/a/n0/u$c;

    .line 38
    :cond_4
    iget-object v5, p0, Ln3/y/b/a/n0/u;->h:Ln3/y/b/a/n0/q;

    .line 39
    iput-wide v0, v5, Ln3/y/b/a/n0/q;->j:J

    .line 40
    iput v2, v5, Ln3/y/b/a/n0/q;->u:I

    .line 41
    iput v2, v5, Ln3/y/b/a/n0/q;->t:I

    .line 42
    iput-wide v0, v5, Ln3/y/b/a/n0/q;->k:J

    .line 43
    iput-object v4, v5, Ln3/y/b/a/n0/q;->c:Landroid/media/AudioTrack;

    .line 44
    iput-object v4, v5, Ln3/y/b/a/n0/q;->f:Ln3/y/b/a/n0/p;

    .line 45
    iget-object v0, p0, Ln3/y/b/a/n0/u;->g:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 46
    new-instance v0, Ln3/y/b/a/n0/u$a;

    invoke-direct {v0, p0, v3}, Ln3/y/b/a/n0/u$a;-><init>(Ln3/y/b/a/n0/u;Landroid/media/AudioTrack;)V

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
    iget-object v1, p0, Ln3/y/b/a/n0/u;->C:[Ln3/y/b/a/n0/g;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget-object v1, v1, v0

    .line 3
    invoke-interface {v1}, Ln3/y/b/a/n0/g;->flush()V

    .line 4
    iget-object v2, p0, Ln3/y/b/a/n0/u;->D:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Ln3/y/b/a/n0/g;->f()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()Ln3/y/b/a/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/u;->o:Ln3/y/b/a/e0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/n0/u;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Ln3/y/b/a/n0/u;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/n0/u$e;

    .line 4
    iget-object v0, v0, Ln3/y/b/a/n0/u$e;->a:Ln3/y/b/a/e0;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Ln3/y/b/a/n0/u;->p:Ln3/y/b/a/e0;

    :goto_0
    return-object v0
.end method

.method public final g()J
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    iget-boolean v1, v0, Ln3/y/b/a/n0/u$c;->a:Z

    if-eqz v1, :cond_0

    .line 2
    iget-wide v1, p0, Ln3/y/b/a/n0/u;->w:J

    iget v0, v0, Ln3/y/b/a/n0/u$c;->d:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v1, p0, Ln3/y/b/a/n0/u;->x:J

    :goto_0
    return-wide v1
.end method

.method public h(Ljava/nio/ByteBuffer;J)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/n0/o$b;,
            Ln3/y/b/a/n0/o$d;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 1
    iget-object v4, v0, Ln3/y/b/a/n0/u;->E:Ljava/nio/ByteBuffer;

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
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    .line 2
    iget-object v4, v0, Ln3/y/b/a/n0/u;->k:Ln3/y/b/a/n0/u$c;

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    .line 3
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/n0/u;->c()Z

    move-result v4

    if-nez v4, :cond_2

    return v6

    .line 4
    :cond_2
    iget-object v4, v0, Ln3/y/b/a/n0/u;->k:Ln3/y/b/a/n0/u$c;

    iget-object v8, v0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    invoke-virtual {v4, v8}, Ln3/y/b/a/n0/u$c;->a(Ln3/y/b/a/n0/u$c;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 5
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/n0/u;->l()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/n0/u;->i()Z

    move-result v4

    if-eqz v4, :cond_3

    return v6

    .line 7
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/n0/u;->d()V

    goto :goto_2

    .line 8
    :cond_4
    iget-object v4, v0, Ln3/y/b/a/n0/u;->k:Ln3/y/b/a/n0/u$c;

    iput-object v4, v0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    .line 9
    iput-object v7, v0, Ln3/y/b/a/n0/u;->k:Ln3/y/b/a/n0/u$c;

    .line 10
    :goto_2
    iget-object v4, v0, Ln3/y/b/a/n0/u;->p:Ln3/y/b/a/e0;

    invoke-virtual {v0, v4, v2, v3}, Ln3/y/b/a/n0/u;->a(Ln3/y/b/a/e0;J)V

    .line 11
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/n0/u;->j()Z

    move-result v4

    const/4 v6, 0x6

    const/16 v7, 0x10

    const/4 v8, 0x3

    const/4 v9, 0x5

    if-nez v4, :cond_11

    .line 12
    iget-object v4, v0, Ln3/y/b/a/n0/u;->g:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    .line 13
    iget-object v4, v0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    .line 14
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-boolean v10, v0, Ln3/y/b/a/n0/u;->O:Z

    iget-object v11, v0, Ln3/y/b/a/n0/u;->n:Ln3/y/b/a/n0/c;

    iget v15, v0, Ln3/y/b/a/n0/u;->M:I

    .line 16
    sget v14, Ln3/y/b/a/x0/x;->a:I

    const/16 v12, 0x15

    if-lt v14, v12, :cond_8

    if-eqz v10, :cond_6

    .line 17
    new-instance v10, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v10}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 18
    invoke-virtual {v10, v8}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v8

    .line 19
    invoke-virtual {v8, v7}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v8

    .line 20
    invoke-virtual {v8, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v8

    .line 21
    invoke-virtual {v8}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v8

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {v11}, Ln3/y/b/a/n0/c;->a()Landroid/media/AudioAttributes;

    move-result-object v8

    :goto_3
    move-object/from16 v17, v8

    .line 23
    new-instance v8, Landroid/media/AudioFormat$Builder;

    invoke-direct {v8}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v10, v4, Ln3/y/b/a/n0/u$c;->f:I

    .line 24
    invoke-virtual {v8, v10}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    iget v10, v4, Ln3/y/b/a/n0/u$c;->g:I

    .line 25
    invoke-virtual {v8, v10}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    iget v10, v4, Ln3/y/b/a/n0/u$c;->e:I

    .line 26
    invoke-virtual {v8, v10}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    .line 27
    invoke-virtual {v8}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v18

    .line 28
    new-instance v8, Landroid/media/AudioTrack;

    iget v10, v4, Ln3/y/b/a/n0/u$c;->h:I

    const/16 v20, 0x1

    if-eqz v15, :cond_7

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    move/from16 v21, v15

    move-object/from16 v16, v8

    move/from16 v19, v10

    .line 29
    invoke-direct/range {v16 .. v21}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    goto :goto_5

    .line 30
    :cond_8
    iget v8, v11, Ln3/y/b/a/n0/c;->c:I

    invoke-static {v8}, Ln3/y/b/a/x0/x;->o(I)I

    move-result v17

    if-nez v15, :cond_9

    .line 31
    new-instance v8, Landroid/media/AudioTrack;

    iget v10, v4, Ln3/y/b/a/n0/u$c;->e:I

    iget v11, v4, Ln3/y/b/a/n0/u$c;->f:I

    iget v12, v4, Ln3/y/b/a/n0/u$c;->g:I

    iget v13, v4, Ln3/y/b/a/n0/u$c;->h:I

    const/16 v22, 0x1

    move-object/from16 v16, v8

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-direct/range {v16 .. v22}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    :goto_5
    move v7, v14

    goto :goto_6

    .line 32
    :cond_9
    new-instance v8, Landroid/media/AudioTrack;

    iget v10, v4, Ln3/y/b/a/n0/u$c;->e:I

    iget v11, v4, Ln3/y/b/a/n0/u$c;->f:I

    iget v13, v4, Ln3/y/b/a/n0/u$c;->g:I

    iget v12, v4, Ln3/y/b/a/n0/u$c;->h:I

    const/16 v18, 0x1

    move/from16 v19, v12

    move-object v12, v8

    move/from16 v16, v13

    move/from16 v13, v17

    move v7, v14

    move v14, v10

    move v10, v15

    move v15, v11

    move/from16 v17, v19

    move/from16 v19, v10

    invoke-direct/range {v12 .. v19}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 33
    :goto_6
    invoke-virtual {v8}, Landroid/media/AudioTrack;->getState()I

    move-result v10

    if-ne v10, v5, :cond_10

    .line 34
    iput-object v8, v0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    .line 35
    invoke-virtual {v8}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    .line 36
    iget v8, v0, Ln3/y/b/a/n0/u;->M:I

    if-eq v8, v4, :cond_b

    .line 37
    iput v4, v0, Ln3/y/b/a/n0/u;->M:I

    .line 38
    iget-object v8, v0, Ln3/y/b/a/n0/u;->j:Ln3/y/b/a/n0/o$c;

    if-eqz v8, :cond_b

    .line 39
    check-cast v8, Ln3/y/b/a/n0/x$b;

    .line 40
    iget-object v10, v8, Ln3/y/b/a/n0/x$b;->a:Ln3/y/b/a/n0/x;

    .line 41
    iget-object v10, v10, Ln3/y/b/a/n0/x;->A0:Ln3/y/b/a/n0/n$a;

    .line 42
    iget-object v11, v10, Ln3/y/b/a/n0/n$a;->b:Ln3/y/b/a/n0/n;

    if-eqz v11, :cond_a

    .line 43
    iget-object v11, v10, Ln3/y/b/a/n0/n$a;->a:Landroid/os/Handler;

    new-instance v12, Ln3/y/b/a/n0/m;

    invoke-direct {v12, v10, v4}, Ln3/y/b/a/n0/m;-><init>(Ln3/y/b/a/n0/n$a;I)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    :cond_a
    iget-object v4, v8, Ln3/y/b/a/n0/x$b;->a:Ln3/y/b/a/n0/x;

    .line 45
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_b
    iget-object v4, v0, Ln3/y/b/a/n0/u;->p:Ln3/y/b/a/e0;

    invoke-virtual {v0, v4, v2, v3}, Ln3/y/b/a/n0/u;->a(Ln3/y/b/a/e0;J)V

    .line 47
    iget-object v4, v0, Ln3/y/b/a/n0/u;->h:Ln3/y/b/a/n0/q;

    iget-object v8, v0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    iget-object v10, v0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    iget v11, v10, Ln3/y/b/a/n0/u$c;->g:I

    iget v12, v10, Ln3/y/b/a/n0/u$c;->d:I

    iget v10, v10, Ln3/y/b/a/n0/u$c;->h:I

    .line 48
    iput-object v8, v4, Ln3/y/b/a/n0/q;->c:Landroid/media/AudioTrack;

    .line 49
    iput v12, v4, Ln3/y/b/a/n0/q;->d:I

    .line 50
    iput v10, v4, Ln3/y/b/a/n0/q;->e:I

    .line 51
    new-instance v13, Ln3/y/b/a/n0/p;

    invoke-direct {v13, v8}, Ln3/y/b/a/n0/p;-><init>(Landroid/media/AudioTrack;)V

    iput-object v13, v4, Ln3/y/b/a/n0/q;->f:Ln3/y/b/a/n0/p;

    .line 52
    invoke-virtual {v8}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v8

    iput v8, v4, Ln3/y/b/a/n0/q;->g:I

    const/16 v8, 0x17

    if-ge v7, v8, :cond_d

    if-eq v11, v9, :cond_c

    if-ne v11, v6, :cond_d

    :cond_c
    move v7, v5

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    .line 53
    :goto_7
    iput-boolean v7, v4, Ln3/y/b/a/n0/q;->h:Z

    .line 54
    invoke-static {v11}, Ln3/y/b/a/x0/x;->s(I)Z

    move-result v7

    iput-boolean v7, v4, Ln3/y/b/a/n0/q;->o:Z

    if-eqz v7, :cond_e

    .line 55
    div-int/2addr v10, v12

    int-to-long v7, v10

    invoke-virtual {v4, v7, v8}, Ln3/y/b/a/n0/q;->a(J)J

    move-result-wide v7

    goto :goto_8

    :cond_e
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    :goto_8
    iput-wide v7, v4, Ln3/y/b/a/n0/q;->i:J

    const-wide/16 v7, 0x0

    .line 56
    iput-wide v7, v4, Ln3/y/b/a/n0/q;->q:J

    .line 57
    iput-wide v7, v4, Ln3/y/b/a/n0/q;->r:J

    .line 58
    iput-wide v7, v4, Ln3/y/b/a/n0/q;->s:J

    const/4 v10, 0x0

    .line 59
    iput-boolean v10, v4, Ln3/y/b/a/n0/q;->n:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 60
    iput-wide v10, v4, Ln3/y/b/a/n0/q;->v:J

    .line 61
    iput-wide v10, v4, Ln3/y/b/a/n0/q;->w:J

    .line 62
    iput-wide v7, v4, Ln3/y/b/a/n0/q;->m:J

    .line 63
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/n0/u;->o()V

    .line 64
    iget-object v4, v0, Ln3/y/b/a/n0/u;->N:Ln3/y/b/a/n0/r;

    iget v4, v4, Ln3/y/b/a/n0/r;->a:I

    if-eqz v4, :cond_f

    .line 65
    iget-object v7, v0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    invoke-virtual {v7, v4}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 66
    iget-object v4, v0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    iget-object v7, v0, Ln3/y/b/a/n0/u;->N:Ln3/y/b/a/n0/r;

    iget v7, v7, Ln3/y/b/a/n0/r;->b:F

    invoke-virtual {v4, v7}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 67
    :cond_f
    iget-boolean v4, v0, Ln3/y/b/a/n0/u;->L:Z

    if-eqz v4, :cond_11

    .line 68
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/n0/u;->k()V

    goto :goto_9

    .line 69
    :cond_10
    :try_start_0
    invoke-virtual {v8}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :catch_0
    new-instance v1, Ln3/y/b/a/n0/o$b;

    iget v2, v4, Ln3/y/b/a/n0/u$c;->e:I

    iget v3, v4, Ln3/y/b/a/n0/u$c;->f:I

    iget v4, v4, Ln3/y/b/a/n0/u$c;->h:I

    invoke-direct {v1, v10, v2, v3, v4}, Ln3/y/b/a/n0/o$b;-><init>(IIII)V

    throw v1

    .line 71
    :cond_11
    :goto_9
    iget-object v4, v0, Ln3/y/b/a/n0/u;->h:Ln3/y/b/a/n0/q;

    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/n0/u;->g()J

    move-result-wide v7

    .line 72
    iget-object v10, v4, Ln3/y/b/a/n0/q;->c:Landroid/media/AudioTrack;

    .line 73
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {v10}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v10

    .line 75
    iget-boolean v11, v4, Ln3/y/b/a/n0/q;->h:Z

    const/4 v12, 0x2

    if-eqz v11, :cond_13

    if-ne v10, v12, :cond_12

    const/4 v7, 0x0

    .line 76
    iput-boolean v7, v4, Ln3/y/b/a/n0/q;->n:Z

    goto :goto_a

    :cond_12
    if-ne v10, v5, :cond_13

    .line 77
    invoke-virtual {v4}, Ln3/y/b/a/n0/q;->b()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-nez v11, :cond_13

    :goto_a
    const/4 v4, 0x0

    goto :goto_b

    .line 78
    :cond_13
    iget-boolean v11, v4, Ln3/y/b/a/n0/q;->n:Z

    .line 79
    invoke-virtual {v4, v7, v8}, Ln3/y/b/a/n0/q;->c(J)Z

    move-result v7

    iput-boolean v7, v4, Ln3/y/b/a/n0/q;->n:Z

    if-eqz v11, :cond_14

    if-nez v7, :cond_14

    if-eq v10, v5, :cond_14

    .line 80
    iget-object v7, v4, Ln3/y/b/a/n0/q;->a:Ln3/y/b/a/n0/q$a;

    if-eqz v7, :cond_14

    .line 81
    iget v8, v4, Ln3/y/b/a/n0/q;->e:I

    iget-wide v10, v4, Ln3/y/b/a/n0/q;->i:J

    invoke-static {v10, v11}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v10

    invoke-interface {v7, v8, v10, v11}, Ln3/y/b/a/n0/q$a;->c(IJ)V

    :cond_14
    move v4, v5

    :goto_b
    if-nez v4, :cond_15

    const/4 v1, 0x0

    return v1

    .line 82
    :cond_15
    iget-object v4, v0, Ln3/y/b/a/n0/u;->E:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_2f

    .line 83
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_16

    return v5

    .line 84
    :cond_16
    iget-object v4, v0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    iget-boolean v7, v4, Ln3/y/b/a/n0/u$c;->a:Z

    if-nez v7, :cond_27

    iget v7, v0, Ln3/y/b/a/n0/u;->y:I

    if-nez v7, :cond_27

    .line 85
    iget v4, v4, Ln3/y/b/a/n0/u$c;->g:I

    const/4 v7, -0x1

    const/4 v8, 0x7

    if-eq v4, v8, :cond_23

    const/16 v10, 0x8

    if-ne v4, v10, :cond_17

    goto/16 :goto_11

    :cond_17
    if-ne v4, v9, :cond_18

    const/16 v4, 0x600

    goto/16 :goto_15

    :cond_18
    if-eq v4, v6, :cond_21

    const/16 v9, 0x12

    if-ne v4, v9, :cond_19

    goto/16 :goto_f

    :cond_19
    const/16 v6, 0x11

    if-ne v4, v6, :cond_1a

    const/16 v6, 0x10

    new-array v4, v6, [B

    .line 86
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 87
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 89
    new-instance v6, Ln3/y/b/a/x0/l;

    invoke-direct {v6, v4}, Ln3/y/b/a/x0/l;-><init>([B)V

    invoke-static {v6}, Ln3/y/b/a/n0/b;->b(Ln3/y/b/a/x0/l;)Ln3/y/b/a/n0/b$b;

    move-result-object v4

    iget v4, v4, Ln3/y/b/a/n0/b$b;->c:I

    goto/16 :goto_15

    :cond_1a
    const/16 v6, 0xe

    if-ne v4, v6, :cond_20

    .line 90
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 91
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    move v9, v4

    :goto_c
    if-gt v9, v6, :cond_1c

    add-int/lit8 v11, v9, 0x4

    .line 92
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    const v13, -0x1000001

    and-int/2addr v11, v13

    const v13, -0x45908d08

    if-ne v11, v13, :cond_1b

    sub-int/2addr v9, v4

    goto :goto_d

    :cond_1b
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_1c
    move v9, v7

    :goto_d
    if-ne v9, v7, :cond_1d

    const/4 v4, 0x0

    goto/16 :goto_15

    .line 93
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v9

    add-int/2addr v4, v8

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0xbb

    if-ne v4, v6, :cond_1e

    move v4, v5

    goto :goto_e

    :cond_1e
    const/4 v4, 0x0

    :goto_e
    const/16 v6, 0x28

    .line 94
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v9

    if-eqz v4, :cond_1f

    const/16 v10, 0x9

    :cond_1f
    add-int/2addr v7, v10

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    shr-int/lit8 v4, v4, 0x4

    and-int/2addr v4, v8

    shl-int v4, v6, v4

    const/16 v6, 0x10

    mul-int/2addr v4, v6

    goto/16 :goto_15

    .line 95
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x26

    const-string v3, "Unexpected audio encoding: "

    invoke-static {v2, v3, v4}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_21
    :goto_f
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xc0

    shr-int/2addr v4, v6

    const/4 v7, 0x3

    if-ne v4, v7, :cond_22

    goto :goto_10

    .line 97
    :cond_22
    sget-object v4, Ln3/y/b/a/n0/a;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit8 v6, v6, 0x30

    shr-int/lit8 v6, v6, 0x4

    aget v6, v4, v6

    :goto_10
    mul-int/lit16 v4, v6, 0x100

    goto :goto_15

    .line 98
    :cond_23
    :goto_11
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 99
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    const/4 v11, -0x2

    if-eq v10, v11, :cond_26

    if-eq v10, v7, :cond_25

    const/16 v7, 0x1f

    if-eq v10, v7, :cond_24

    add-int/lit8 v7, v4, 0x4

    .line 100
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/2addr v7, v5

    shl-int/lit8 v6, v7, 0x6

    add-int/2addr v4, v9

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    goto :goto_13

    :cond_24
    add-int/lit8 v7, v4, 0x5

    .line 101
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/2addr v7, v8

    shl-int/lit8 v7, v7, 0x4

    add-int/2addr v4, v6

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    goto :goto_12

    :cond_25
    add-int/lit8 v6, v4, 0x4

    .line 102
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/2addr v6, v8

    shl-int/lit8 v7, v6, 0x4

    add-int/2addr v4, v8

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    :goto_12
    and-int/lit8 v4, v4, 0x3c

    goto :goto_14

    :cond_26
    add-int/lit8 v7, v4, 0x5

    .line 103
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/2addr v7, v5

    shl-int/lit8 v6, v7, 0x6

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    :goto_13
    and-int/lit16 v4, v4, 0xfc

    move v7, v6

    :goto_14
    shr-int/2addr v4, v12

    or-int/2addr v4, v7

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x20

    .line 104
    :goto_15
    iput v4, v0, Ln3/y/b/a/n0/u;->y:I

    if-nez v4, :cond_27

    return v5

    .line 105
    :cond_27
    iget-object v4, v0, Ln3/y/b/a/n0/u;->o:Ln3/y/b/a/e0;

    if-eqz v4, :cond_29

    .line 106
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/n0/u;->c()Z

    move-result v4

    if-nez v4, :cond_28

    const/4 v1, 0x0

    return v1

    .line 107
    :cond_28
    iget-object v4, v0, Ln3/y/b/a/n0/u;->o:Ln3/y/b/a/e0;

    const/4 v6, 0x0

    .line 108
    iput-object v6, v0, Ln3/y/b/a/n0/u;->o:Ln3/y/b/a/e0;

    .line 109
    invoke-virtual {v0, v4, v2, v3}, Ln3/y/b/a/n0/u;->a(Ln3/y/b/a/e0;J)V

    .line 110
    :cond_29
    iget v4, v0, Ln3/y/b/a/n0/u;->z:I

    if-nez v4, :cond_2a

    const-wide/16 v6, 0x0

    .line 111
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Ln3/y/b/a/n0/u;->A:J

    .line 112
    iput v5, v0, Ln3/y/b/a/n0/u;->z:I

    goto :goto_17

    .line 113
    :cond_2a
    iget-wide v6, v0, Ln3/y/b/a/n0/u;->A:J

    iget-object v8, v0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    .line 114
    iget-boolean v9, v8, Ln3/y/b/a/n0/u$c;->a:Z

    if-eqz v9, :cond_2b

    .line 115
    iget-wide v9, v0, Ln3/y/b/a/n0/u;->u:J

    iget v11, v8, Ln3/y/b/a/n0/u$c;->b:I

    int-to-long v13, v11

    div-long/2addr v9, v13

    goto :goto_16

    .line 116
    :cond_2b
    iget-wide v9, v0, Ln3/y/b/a/n0/u;->v:J

    .line 117
    :goto_16
    iget-object v11, v0, Ln3/y/b/a/n0/u;->d:Ln3/y/b/a/n0/c0;

    .line 118
    iget-wide v13, v11, Ln3/y/b/a/n0/c0;->p:J

    sub-long/2addr v9, v13

    const-wide/32 v13, 0xf4240

    mul-long/2addr v9, v13

    .line 119
    iget v8, v8, Ln3/y/b/a/n0/u$c;->c:I

    int-to-long v13, v8

    div-long/2addr v9, v13

    add-long/2addr v9, v6

    if-ne v4, v5, :cond_2c

    sub-long v6, v9, v2

    .line 120
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v13, 0x30d40

    cmp-long v4, v6, v13

    if-lez v4, :cond_2c

    .line 121
    iput v12, v0, Ln3/y/b/a/n0/u;->z:I

    .line 122
    :cond_2c
    iget v4, v0, Ln3/y/b/a/n0/u;->z:I

    if-ne v4, v12, :cond_2d

    sub-long v6, v2, v9

    .line 123
    iget-wide v8, v0, Ln3/y/b/a/n0/u;->A:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Ln3/y/b/a/n0/u;->A:J

    .line 124
    iput v5, v0, Ln3/y/b/a/n0/u;->z:I

    .line 125
    iget-object v4, v0, Ln3/y/b/a/n0/u;->j:Ln3/y/b/a/n0/o$c;

    if-eqz v4, :cond_2d

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2d

    .line 126
    check-cast v4, Ln3/y/b/a/n0/x$b;

    .line 127
    iget-object v6, v4, Ln3/y/b/a/n0/x$b;->a:Ln3/y/b/a/n0/x;

    .line 128
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v4, v4, Ln3/y/b/a/n0/x$b;->a:Ln3/y/b/a/n0/x;

    .line 130
    iput-boolean v5, v4, Ln3/y/b/a/n0/x;->O0:Z

    .line 131
    :cond_2d
    :goto_17
    iget-object v4, v0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    iget-boolean v4, v4, Ln3/y/b/a/n0/u$c;->a:Z

    if-eqz v4, :cond_2e

    .line 132
    iget-wide v6, v0, Ln3/y/b/a/n0/u;->u:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v0, Ln3/y/b/a/n0/u;->u:J

    goto :goto_18

    .line 133
    :cond_2e
    iget-wide v6, v0, Ln3/y/b/a/n0/u;->v:J

    iget v4, v0, Ln3/y/b/a/n0/u;->y:I

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v0, Ln3/y/b/a/n0/u;->v:J

    .line 134
    :goto_18
    iput-object v1, v0, Ln3/y/b/a/n0/u;->E:Ljava/nio/ByteBuffer;

    .line 135
    :cond_2f
    iget-object v1, v0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    iget-boolean v1, v1, Ln3/y/b/a/n0/u$c;->i:Z

    if-eqz v1, :cond_30

    .line 136
    invoke-virtual {v0, v2, v3}, Ln3/y/b/a/n0/u;->m(J)V

    goto :goto_19

    .line 137
    :cond_30
    iget-object v1, v0, Ln3/y/b/a/n0/u;->E:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v3}, Ln3/y/b/a/n0/u;->q(Ljava/nio/ByteBuffer;J)V

    .line 138
    :goto_19
    iget-object v1, v0, Ln3/y/b/a/n0/u;->E:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_31

    const/4 v1, 0x0

    .line 139
    iput-object v1, v0, Ln3/y/b/a/n0/u;->E:Ljava/nio/ByteBuffer;

    return v5

    .line 140
    :cond_31
    iget-object v1, v0, Ln3/y/b/a/n0/u;->h:Ln3/y/b/a/n0/q;

    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/n0/u;->g()J

    move-result-wide v2

    .line 141
    iget-wide v6, v1, Ln3/y/b/a/n0/q;->w:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v6, v8

    if-eqz v4, :cond_32

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_32

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v1, Ln3/y/b/a/n0/q;->w:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0xc8

    cmp-long v1, v2, v6

    if-ltz v1, :cond_32

    move v1, v5

    goto :goto_1a

    :cond_32
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_33

    .line 143
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/n0/u;->d()V

    return v5

    :cond_33
    const/4 v1, 0x0

    return v1
.end method

.method public i()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/n0/u;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/y/b/a/n0/u;->h:Ln3/y/b/a/n0/q;

    invoke-virtual {p0}, Ln3/y/b/a/n0/u;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ln3/y/b/a/n0/q;->c(J)Z

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
    iget-object v0, p0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

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
    iput-boolean v0, p0, Ln3/y/b/a/n0/u;->L:Z

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/n0/u;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/y/b/a/n0/u;->h:Ln3/y/b/a/n0/q;

    .line 4
    iget-object v0, v0, Ln3/y/b/a/n0/q;->f:Ln3/y/b/a/n0/p;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Ln3/y/b/a/n0/p;->a()V

    .line 7
    iget-object v0, p0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/n0/u;->K:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln3/y/b/a/n0/u;->K:Z

    .line 3
    iget-object v0, p0, Ln3/y/b/a/n0/u;->h:Ln3/y/b/a/n0/q;

    invoke-virtual {p0}, Ln3/y/b/a/n0/u;->g()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0}, Ln3/y/b/a/n0/q;->b()J

    move-result-wide v3

    iput-wide v3, v0, Ln3/y/b/a/n0/q;->x:J

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iput-wide v3, v0, Ln3/y/b/a/n0/q;->v:J

    .line 6
    iput-wide v1, v0, Ln3/y/b/a/n0/q;->y:J

    .line 7
    iget-object v0, p0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Ln3/y/b/a/n0/u;->t:I

    :cond_0
    return-void
.end method

.method public final m(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/n0/o$d;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/u;->C:[Ln3/y/b/a/n0/g;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    .line 2
    iget-object v2, p0, Ln3/y/b/a/n0/u;->D:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Ln3/y/b/a/n0/u;->E:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Ln3/y/b/a/n0/g;->a:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2, p1, p2}, Ln3/y/b/a/n0/u;->q(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 5
    :cond_2
    iget-object v3, p0, Ln3/y/b/a/n0/u;->C:[Ln3/y/b/a/n0/g;

    aget-object v3, v3, v1

    .line 6
    invoke-interface {v3, v2}, Ln3/y/b/a/n0/g;->d(Ljava/nio/ByteBuffer;)V

    .line 7
    invoke-interface {v3}, Ln3/y/b/a/n0/g;->f()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 8
    iget-object v4, p0, Ln3/y/b/a/n0/u;->D:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 9
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
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
    invoke-virtual {p0}, Ln3/y/b/a/n0/u;->d()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/n0/u;->e:[Ln3/y/b/a/n0/g;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 3
    invoke-interface {v4}, Ln3/y/b/a/n0/g;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/n0/u;->f:[Ln3/y/b/a/n0/g;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 5
    invoke-interface {v4}, Ln3/y/b/a/n0/g;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iput v2, p0, Ln3/y/b/a/n0/u;->M:I

    .line 7
    iput-boolean v2, p0, Ln3/y/b/a/n0/u;->L:Z

    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/n0/u;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Ln3/y/b/a/x0/x;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    iget v1, p0, Ln3/y/b/a/n0/u;->B:F

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    iget v1, p0, Ln3/y/b/a/n0/u;->B:F

    .line 6
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :goto_0
    return-void
.end method

.method public p(II)Z
    .locals 3

    .line 1
    invoke-static {p2}, Ln3/y/b/a/x0/x;->s(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 2
    sget p1, Ln3/y/b/a/x0/x;->a:I

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
    iget-object v0, p0, Ln3/y/b/a/n0/u;->a:Ln3/y/b/a/n0/d;

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, v0, Ln3/y/b/a/n0/d;->a:[I

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
    iget-object p2, p0, Ln3/y/b/a/n0/u;->a:Ln3/y/b/a/n0/d;

    .line 6
    iget p2, p2, Ln3/y/b/a/n0/d;->b:I

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
            Ln3/y/b/a/n0/o$d;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/n0/u;->F:Ljava/nio/ByteBuffer;

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
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    goto :goto_1

    .line 4
    :cond_2
    iput-object p1, p0, Ln3/y/b/a/n0/u;->F:Ljava/nio/ByteBuffer;

    .line 5
    sget v0, Ln3/y/b/a/x0/x;->a:I

    if-ge v0, v1, :cond_5

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 7
    iget-object v4, p0, Ln3/y/b/a/n0/u;->G:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 8
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Ln3/y/b/a/n0/u;->G:[B

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 10
    iget-object v5, p0, Ln3/y/b/a/n0/u;->G:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iput v3, p0, Ln3/y/b/a/n0/u;->H:I

    .line 13
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 14
    sget v4, Ln3/y/b/a/x0/x;->a:I

    if-ge v4, v1, :cond_6

    .line 15
    iget-object p2, p0, Ln3/y/b/a/n0/u;->h:Ln3/y/b/a/n0/q;

    iget-wide v1, p0, Ln3/y/b/a/n0/u;->w:J

    .line 16
    invoke-virtual {p2}, Ln3/y/b/a/n0/q;->b()J

    move-result-wide v4

    iget p3, p2, Ln3/y/b/a/n0/q;->d:I

    int-to-long v6, p3

    mul-long/2addr v4, v6

    sub-long/2addr v1, v4

    long-to-int p3, v1

    .line 17
    iget p2, p2, Ln3/y/b/a/n0/q;->e:I

    sub-int/2addr p2, p3

    if-lez p2, :cond_f

    .line 18
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 19
    iget-object p3, p0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    iget-object v1, p0, Ln3/y/b/a/n0/u;->G:[B

    iget v2, p0, Ln3/y/b/a/n0/u;->H:I

    invoke-virtual {p3, v1, v2, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    if-lez v3, :cond_f

    .line 20
    iget p2, p0, Ln3/y/b/a/n0/u;->H:I

    add-int/2addr p2, v3

    iput p2, p0, Ln3/y/b/a/n0/u;->H:I

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_4

    .line 22
    :cond_6
    iget-boolean v1, p0, Ln3/y/b/a/n0/u;->O:Z

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
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 24
    iget-object v6, p0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

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
    iget-object v1, p0, Ln3/y/b/a/n0/u;->s:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_9

    const/16 v1, 0x10

    .line 27
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Ln3/y/b/a/n0/u;->s:Ljava/nio/ByteBuffer;

    .line 28
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 29
    iget-object v1, p0, Ln3/y/b/a/n0/u;->s:Ljava/nio/ByteBuffer;

    const v4, 0x55550001

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 30
    :cond_9
    iget v1, p0, Ln3/y/b/a/n0/u;->t:I

    if-nez v1, :cond_a

    .line 31
    iget-object v1, p0, Ln3/y/b/a/n0/u;->s:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 32
    iget-object v1, p0, Ln3/y/b/a/n0/u;->s:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    mul-long/2addr p2, v7

    invoke-virtual {v1, v4, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 33
    iget-object p2, p0, Ln3/y/b/a/n0/u;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    iput v0, p0, Ln3/y/b/a/n0/u;->t:I

    .line 35
    :cond_a
    iget-object p2, p0, Ln3/y/b/a/n0/u;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_c

    .line 36
    iget-object p3, p0, Ln3/y/b/a/n0/u;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, p3, p2, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    if-gez p3, :cond_b

    .line 37
    iput v3, p0, Ln3/y/b/a/n0/u;->t:I

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
    iput v3, p0, Ln3/y/b/a/n0/u;->t:I

    goto :goto_3

    .line 40
    :cond_d
    iget p2, p0, Ln3/y/b/a/n0/u;->t:I

    sub-int/2addr p2, p1

    iput p2, p0, Ln3/y/b/a/n0/u;->t:I

    :goto_3
    move v3, p1

    goto :goto_4

    .line 41
    :cond_e
    iget-object p2, p0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    .line 42
    invoke-virtual {p2, p1, v0, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v3

    .line 43
    :cond_f
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Ln3/y/b/a/n0/u;->P:J

    if-ltz v3, :cond_13

    .line 44
    iget-object p1, p0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    iget-boolean p1, p1, Ln3/y/b/a/n0/u$c;->a:Z

    if-eqz p1, :cond_10

    .line 45
    iget-wide p2, p0, Ln3/y/b/a/n0/u;->w:J

    int-to-long v1, v3

    add-long/2addr p2, v1

    iput-wide p2, p0, Ln3/y/b/a/n0/u;->w:J

    :cond_10
    if-ne v3, v0, :cond_12

    if-nez p1, :cond_11

    .line 46
    iget-wide p1, p0, Ln3/y/b/a/n0/u;->x:J

    iget p3, p0, Ln3/y/b/a/n0/u;->y:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ln3/y/b/a/n0/u;->x:J

    :cond_11
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Ln3/y/b/a/n0/u;->F:Ljava/nio/ByteBuffer;

    :cond_12
    return-void

    .line 48
    :cond_13
    new-instance p1, Ln3/y/b/a/n0/o$d;

    invoke-direct {p1, v3}, Ln3/y/b/a/n0/o$d;-><init>(I)V

    throw p1
.end method
