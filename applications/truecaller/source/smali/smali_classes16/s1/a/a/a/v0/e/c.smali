.class public final Ls1/a/a/a/v0/e/c;
.super Ls1/a/a/a/v0/h/h$d;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/c$b;,
        Ls1/a/a/a/v0/e/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$d<",
        "Ls1/a/a/a/v0/e/c;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final y:Ls1/a/a/a/v0/e/c;

.field public static z:Ls1/a/a/a/v0/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/r<",
            "Ls1/a/a/a/v0/e/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ls1/a/a/a/v0/h/c;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/s;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/q;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/d;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/i;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/n;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/r;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/g;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public s:I

.field public t:Ls1/a/a/a/v0/e/t;

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ls1/a/a/a/v0/e/w;

.field public w:B

.field public x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/c$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/c$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/c;->z:Ls1/a/a/a/v0/h/r;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/e/c;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/c;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/e/c;->y:Ls1/a/a/a/v0/e/c;

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/c;->l()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$d;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Ls1/a/a/a/v0/e/c;->j:I

    .line 11
    iput v0, p0, Ls1/a/a/a/v0/e/c;->l:I

    .line 12
    iput v0, p0, Ls1/a/a/a/v0/e/c;->s:I

    .line 13
    iput-byte v0, p0, Ls1/a/a/a/v0/e/c;->w:B

    .line 14
    iput v0, p0, Ls1/a/a/a/v0/e/c;->x:I

    .line 15
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/c;->b:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 16
    invoke-direct/range {p0 .. p0}, Ls1/a/a/a/v0/h/h$d;-><init>()V

    const/4 v3, -0x1

    .line 17
    iput v3, v1, Ls1/a/a/a/v0/e/c;->j:I

    .line 18
    iput v3, v1, Ls1/a/a/a/v0/e/c;->l:I

    .line 19
    iput v3, v1, Ls1/a/a/a/v0/e/c;->s:I

    .line 20
    iput-byte v3, v1, Ls1/a/a/a/v0/e/c;->w:B

    .line 21
    iput v3, v1, Ls1/a/a/a/v0/e/c;->x:I

    .line 22
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/e/c;->l()V

    .line 23
    invoke-static {}, Ls1/a/a/a/v0/h/c;->j()Ls1/a/a/a/v0/h/c$b;

    move-result-object v3

    const/4 v4, 0x1

    .line 24
    invoke-static {v3, v4}, Ls1/a/a/a/v0/h/e;->k(Ljava/io/OutputStream;I)Ls1/a/a/a/v0/h/e;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/16 v8, 0x800

    const/16 v9, 0x400

    const/16 v10, 0x200

    const/16 v13, 0x4000

    const/16 v14, 0x1000

    const/16 v4, 0x10

    const/16 v15, 0x8

    if-nez v6, :cond_23

    .line 25
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v12

    const/16 v16, 0x0

    sparse-switch v12, :sswitch_data_0

    const/4 v11, 0x1

    .line 26
    invoke-virtual {v1, v0, v5, v2, v12}, Ls1/a/a/a/v0/h/h$d;->j(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/e;Ls1/a/a/a/v0/h/f;I)Z

    move-result v4

    goto/16 :goto_7

    .line 27
    :sswitch_0
    iget v12, v1, Ls1/a/a/a/v0/e/c;->c:I

    and-int/2addr v12, v4

    if-ne v12, v4, :cond_0

    .line 28
    iget-object v12, v1, Ls1/a/a/a/v0/e/c;->v:Ls1/a/a/a/v0/e/w;

    invoke-virtual {v12}, Ls1/a/a/a/v0/e/w;->e()Ls1/a/a/a/v0/e/w$b;

    move-result-object v16

    :cond_0
    move-object/from16 v12, v16

    .line 29
    sget-object v11, Ls1/a/a/a/v0/e/w;->f:Ls1/a/a/a/v0/h/r;

    invoke-virtual {v0, v11, v2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v11

    check-cast v11, Ls1/a/a/a/v0/e/w;

    iput-object v11, v1, Ls1/a/a/a/v0/e/c;->v:Ls1/a/a/a/v0/e/w;

    if-eqz v12, :cond_1

    .line 30
    invoke-virtual {v12, v11}, Ls1/a/a/a/v0/e/w$b;->g(Ls1/a/a/a/v0/e/w;)Ls1/a/a/a/v0/e/w$b;

    .line 31
    invoke-virtual {v12}, Ls1/a/a/a/v0/e/w$b;->f()Ls1/a/a/a/v0/e/w;

    move-result-object v11

    iput-object v11, v1, Ls1/a/a/a/v0/e/c;->v:Ls1/a/a/a/v0/e/w;

    .line 32
    :cond_1
    iget v11, v1, Ls1/a/a/a/v0/e/c;->c:I

    or-int/2addr v11, v4

    iput v11, v1, Ls1/a/a/a/v0/e/c;->c:I

    goto/16 :goto_5

    .line 33
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v11

    .line 34
    invoke-virtual {v0, v11}, Ls1/a/a/a/v0/h/d;->d(I)I

    move-result v11

    and-int/lit16 v12, v7, 0x4000

    if-eq v12, v13, :cond_2

    .line 35
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result v12

    if-lez v12, :cond_2

    .line 36
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Ls1/a/a/a/v0/e/c;->u:Ljava/util/List;

    or-int/lit16 v7, v7, 0x4000

    .line 37
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result v12

    if-lez v12, :cond_3

    .line 38
    iget-object v12, v1, Ls1/a/a/a/v0/e/c;->u:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->g()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x10

    goto :goto_1

    .line 39
    :cond_3
    invoke-virtual {v0, v11}, Ls1/a/a/a/v0/h/d;->c(I)V

    goto/16 :goto_5

    :sswitch_2
    and-int/lit16 v4, v7, 0x4000

    if-eq v4, v13, :cond_4

    .line 40
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Ls1/a/a/a/v0/e/c;->u:Ljava/util/List;

    or-int/lit16 v7, v7, 0x4000

    .line 41
    :cond_4
    iget-object v4, v1, Ls1/a/a/a/v0/e/c;->u:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->g()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 42
    :sswitch_3
    iget v4, v1, Ls1/a/a/a/v0/e/c;->c:I

    and-int/2addr v4, v15

    if-ne v4, v15, :cond_5

    .line 43
    iget-object v4, v1, Ls1/a/a/a/v0/e/c;->t:Ls1/a/a/a/v0/e/t;

    invoke-virtual {v4}, Ls1/a/a/a/v0/e/t;->e()Ls1/a/a/a/v0/e/t$b;

    move-result-object v16

    :cond_5
    move-object/from16 v4, v16

    .line 44
    sget-object v11, Ls1/a/a/a/v0/e/t;->h:Ls1/a/a/a/v0/h/r;

    invoke-virtual {v0, v11, v2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v11

    check-cast v11, Ls1/a/a/a/v0/e/t;

    iput-object v11, v1, Ls1/a/a/a/v0/e/c;->t:Ls1/a/a/a/v0/e/t;

    if-eqz v4, :cond_6

    .line 45
    invoke-virtual {v4, v11}, Ls1/a/a/a/v0/e/t$b;->g(Ls1/a/a/a/v0/e/t;)Ls1/a/a/a/v0/e/t$b;

    .line 46
    invoke-virtual {v4}, Ls1/a/a/a/v0/e/t$b;->f()Ls1/a/a/a/v0/e/t;

    move-result-object v4

    iput-object v4, v1, Ls1/a/a/a/v0/e/c;->t:Ls1/a/a/a/v0/e/t;

    .line 47
    :cond_6
    iget v4, v1, Ls1/a/a/a/v0/e/c;->c:I

    or-int/2addr v4, v15

    iput v4, v1, Ls1/a/a/a/v0/e/c;->c:I

    goto/16 :goto_5

    .line 48
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v4

    .line 49
    invoke-virtual {v0, v4}, Ls1/a/a/a/v0/h/d;->d(I)I

    move-result v4

    and-int/lit16 v11, v7, 0x1000

    if-eq v11, v14, :cond_7

    .line 50
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result v11

    if-lez v11, :cond_7

    .line 51
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    or-int/lit16 v7, v7, 0x1000

    .line 52
    :cond_7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result v11

    if-lez v11, :cond_8

    .line 53
    iget-object v11, v1, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->g()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 54
    :cond_8
    invoke-virtual {v0, v4}, Ls1/a/a/a/v0/h/d;->c(I)V

    goto/16 :goto_5

    :sswitch_5
    and-int/lit16 v4, v7, 0x1000

    if-eq v4, v14, :cond_9

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    or-int/lit16 v7, v7, 0x1000

    .line 56
    :cond_9
    iget-object v4, v1, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->g()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_6
    and-int/lit16 v4, v7, 0x800

    if-eq v4, v8, :cond_a

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Ls1/a/a/a/v0/e/c;->q:Ljava/util/List;

    or-int/lit16 v7, v7, 0x800

    .line 58
    :cond_a
    iget-object v4, v1, Ls1/a/a/a/v0/e/c;->q:Ljava/util/List;

    sget-object v11, Ls1/a/a/a/v0/e/g;->h:Ls1/a/a/a/v0/h/r;

    invoke-virtual {v0, v11, v2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_7
    and-int/lit16 v4, v7, 0x400

    if-eq v4, v9, :cond_b

    .line 59
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Ls1/a/a/a/v0/e/c;->p:Ljava/util/List;

    or-int/lit16 v7, v7, 0x400

    .line 60
    :cond_b
    iget-object v4, v1, Ls1/a/a/a/v0/e/c;->p:Ljava/util/List;

    sget-object v11, Ls1/a/a/a/v0/e/r;->p:Ls1/a/a/a/v0/h/r;

    invoke-virtual {v0, v11, v2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_8
    and-int/lit16 v4, v7, 0x200

    if-eq v4, v10, :cond_c

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Ls1/a/a/a/v0/e/c;->o:Ljava/util/List;

    or-int/lit16 v7, v7, 0x200

    .line 62
    :cond_c
    iget-object v4, v1, Ls1/a/a/a/v0/e/c;->o:Ljava/util/List;

    sget-object v11, Ls1/a/a/a/v0/e/n;->s:Ls1/a/a/a/v0/h/r;

    invoke-virtual {v0, v11, v2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_9
    and-int/lit16 v4, v7, 0x100

    const/16 v11, 0x100

    if-eq v4, v11, :cond_d

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    or-int/lit16 v7, v7, 0x100

    .line 64
    :cond_d
    iget-object v4, v1, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    sget-object v11, Ls1/a/a/a/v0/e/i;->s:Ls1/a/a/a/v0/h/r;

    invoke-virtual {v0, v11, v2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_a
    and-int/lit16 v4, v7, 0x80

    const/16 v11, 0x80

    if-eq v4, v11, :cond_e

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Ls1/a/a/a/v0/e/c;->m:Ljava/util/List;

    or-int/lit16 v7, v7, 0x80

    .line 66
    :cond_e
    iget-object v4, v1, Ls1/a/a/a/v0/e/c;->m:Ljava/util/List;

    sget-object v11, Ls1/a/a/a/v0/e/d;->j:Ls1/a/a/a/v0/h/r;

    invoke-virtual {v0, v11, v2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 67
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v4

    .line 68
    invoke-virtual {v0, v4}, Ls1/a/a/a/v0/h/d;->d(I)I

    move-result v4

    and-int/lit8 v11, v7, 0x40

    const/16 v12, 0x40

    if-eq v11, v12, :cond_f

    .line 69
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result v11

    if-lez v11, :cond_f

    .line 70
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    or-int/lit8 v7, v7, 0x40

    .line 71
    :cond_f
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result v11

    if-lez v11, :cond_10

    .line 72
    iget-object v11, v1, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->g()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 73
    :cond_10
    invoke-virtual {v0, v4}, Ls1/a/a/a/v0/h/d;->c(I)V

    goto/16 :goto_5

    :sswitch_c
    and-int/lit8 v4, v7, 0x40

    const/16 v11, 0x40

    if-eq v4, v11, :cond_11

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    or-int/lit8 v7, v7, 0x40

    .line 75
    :cond_11
    iget-object v4, v1, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->g()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_d
    and-int/lit8 v4, v7, 0x10

    const/16 v11, 0x10

    if-eq v4, v11, :cond_12

    .line 76
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Ls1/a/a/a/v0/e/c;->h:Ljava/util/List;

    or-int/lit8 v7, v7, 0x10

    .line 77
    :cond_12
    iget-object v4, v1, Ls1/a/a/a/v0/e/c;->h:Ljava/util/List;

    sget-object v11, Ls1/a/a/a/v0/e/q;->u:Ls1/a/a/a/v0/h/r;

    invoke-virtual {v0, v11, v2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_e
    and-int/lit8 v4, v7, 0x8

    if-eq v4, v15, :cond_13

    .line 78
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Ls1/a/a/a/v0/e/c;->g:Ljava/util/List;

    or-int/lit8 v7, v7, 0x8

    .line 79
    :cond_13
    iget-object v4, v1, Ls1/a/a/a/v0/e/c;->g:Ljava/util/List;

    sget-object v11, Ls1/a/a/a/v0/e/s;->n:Ls1/a/a/a/v0/h/r;

    invoke-virtual {v0, v11, v2}, Ls1/a/a/a/v0/h/d;->h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 80
    :sswitch_f
    iget v4, v1, Ls1/a/a/a/v0/e/c;->c:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Ls1/a/a/a/v0/e/c;->c:I

    .line 81
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->g()I

    move-result v4

    iput v4, v1, Ls1/a/a/a/v0/e/c;->f:I

    goto :goto_5

    .line 82
    :sswitch_10
    iget v4, v1, Ls1/a/a/a/v0/e/c;->c:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Ls1/a/a/a/v0/e/c;->c:I

    .line 83
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->g()I

    move-result v4

    iput v4, v1, Ls1/a/a/a/v0/e/c;->e:I

    goto :goto_5

    .line 84
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v4

    .line 85
    invoke-virtual {v0, v4}, Ls1/a/a/a/v0/h/d;->d(I)I

    move-result v4

    and-int/lit8 v11, v7, 0x20

    const/16 v12, 0x20

    if-eq v11, v12, :cond_14

    .line 86
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result v11

    if-lez v11, :cond_14

    .line 87
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    or-int/lit8 v7, v7, 0x20

    .line 88
    :cond_14
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result v11

    if-lez v11, :cond_15

    .line 89
    iget-object v11, v1, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->g()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 90
    :cond_15
    invoke-virtual {v0, v4}, Ls1/a/a/a/v0/h/d;->c(I)V

    goto :goto_5

    :sswitch_12
    and-int/lit8 v4, v7, 0x20

    const/16 v11, 0x20

    if-eq v4, v11, :cond_16

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    or-int/lit8 v7, v7, 0x20

    .line 92
    :cond_16
    iget-object v4, v1, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->g()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    const/4 v11, 0x1

    goto :goto_8

    .line 93
    :sswitch_13
    iget v4, v1, Ls1/a/a/a/v0/e/c;->c:I

    const/4 v11, 0x1

    or-int/2addr v4, v11

    iput v4, v1, Ls1/a/a/a/v0/e/c;->c:I

    .line 94
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/h/d;->g()I

    move-result v4

    iput v4, v1, Ls1/a/a/a/v0/e/c;->d:I
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :sswitch_14
    const/4 v11, 0x1

    :goto_6
    move v6, v11

    goto :goto_8

    :goto_7
    if-nez v4, :cond_17

    goto :goto_6

    :cond_17
    :goto_8
    move v4, v11

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 95
    :try_start_1
    new-instance v2, Ls1/a/a/a/v0/h/j;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ls1/a/a/a/v0/h/j;->c(Ls1/a/a/a/v0/h/p;)Ls1/a/a/a/v0/h/j;

    throw v2

    :catch_1
    move-exception v0

    .line 96
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/h/j;->c(Ls1/a/a/a/v0/h/p;)Ls1/a/a/a/v0/h/j;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    and-int/lit8 v2, v7, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_18

    .line 97
    iget-object v2, v1, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    :cond_18
    and-int/lit8 v2, v7, 0x8

    if-ne v2, v15, :cond_19

    .line 98
    iget-object v2, v1, Ls1/a/a/a/v0/e/c;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ls1/a/a/a/v0/e/c;->g:Ljava/util/List;

    :cond_19
    and-int/lit8 v2, v7, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_1a

    .line 99
    iget-object v2, v1, Ls1/a/a/a/v0/e/c;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ls1/a/a/a/v0/e/c;->h:Ljava/util/List;

    :cond_1a
    and-int/lit8 v2, v7, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_1b

    .line 100
    iget-object v2, v1, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    :cond_1b
    and-int/lit16 v2, v7, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_1c

    .line 101
    iget-object v2, v1, Ls1/a/a/a/v0/e/c;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ls1/a/a/a/v0/e/c;->m:Ljava/util/List;

    :cond_1c
    and-int/lit16 v2, v7, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_1d

    .line 102
    iget-object v2, v1, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    :cond_1d
    and-int/lit16 v2, v7, 0x200

    if-ne v2, v10, :cond_1e

    .line 103
    iget-object v2, v1, Ls1/a/a/a/v0/e/c;->o:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ls1/a/a/a/v0/e/c;->o:Ljava/util/List;

    :cond_1e
    and-int/lit16 v2, v7, 0x400

    if-ne v2, v9, :cond_1f

    .line 104
    iget-object v2, v1, Ls1/a/a/a/v0/e/c;->p:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ls1/a/a/a/v0/e/c;->p:Ljava/util/List;

    :cond_1f
    and-int/lit16 v2, v7, 0x800

    if-ne v2, v8, :cond_20

    .line 105
    iget-object v2, v1, Ls1/a/a/a/v0/e/c;->q:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ls1/a/a/a/v0/e/c;->q:Ljava/util/List;

    :cond_20
    and-int/lit16 v2, v7, 0x1000

    if-ne v2, v14, :cond_21

    .line 106
    iget-object v2, v1, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    :cond_21
    and-int/lit16 v2, v7, 0x4000

    if-ne v2, v13, :cond_22

    .line 107
    iget-object v2, v1, Ls1/a/a/a/v0/e/c;->u:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ls1/a/a/a/v0/e/c;->u:Ljava/util/List;

    .line 108
    :cond_22
    :try_start_2
    invoke-virtual {v5}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    :catch_2
    invoke-virtual {v3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object v2

    iput-object v2, v1, Ls1/a/a/a/v0/e/c;->b:Ls1/a/a/a/v0/h/c;

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object v0

    iput-object v0, v1, Ls1/a/a/a/v0/e/c;->b:Ls1/a/a/a/v0/h/c;

    throw v2

    .line 110
    :goto_a
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/h/h$d;->h()V

    throw v0

    :cond_23
    and-int/lit8 v0, v7, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_24

    .line 111
    iget-object v0, v1, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    :cond_24
    and-int/lit8 v0, v7, 0x8

    if-ne v0, v15, :cond_25

    .line 112
    iget-object v0, v1, Ls1/a/a/a/v0/e/c;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Ls1/a/a/a/v0/e/c;->g:Ljava/util/List;

    :cond_25
    and-int/lit8 v0, v7, 0x10

    const/16 v2, 0x10

    if-ne v0, v2, :cond_26

    .line 113
    iget-object v0, v1, Ls1/a/a/a/v0/e/c;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Ls1/a/a/a/v0/e/c;->h:Ljava/util/List;

    :cond_26
    and-int/lit8 v0, v7, 0x40

    const/16 v2, 0x40

    if-ne v0, v2, :cond_27

    .line 114
    iget-object v0, v1, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    :cond_27
    and-int/lit16 v0, v7, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_28

    .line 115
    iget-object v0, v1, Ls1/a/a/a/v0/e/c;->m:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Ls1/a/a/a/v0/e/c;->m:Ljava/util/List;

    :cond_28
    and-int/lit16 v0, v7, 0x100

    const/16 v2, 0x100

    if-ne v0, v2, :cond_29

    .line 116
    iget-object v0, v1, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    :cond_29
    and-int/lit16 v0, v7, 0x200

    if-ne v0, v10, :cond_2a

    .line 117
    iget-object v0, v1, Ls1/a/a/a/v0/e/c;->o:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Ls1/a/a/a/v0/e/c;->o:Ljava/util/List;

    :cond_2a
    and-int/lit16 v0, v7, 0x400

    if-ne v0, v9, :cond_2b

    .line 118
    iget-object v0, v1, Ls1/a/a/a/v0/e/c;->p:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Ls1/a/a/a/v0/e/c;->p:Ljava/util/List;

    :cond_2b
    and-int/lit16 v0, v7, 0x800

    if-ne v0, v8, :cond_2c

    .line 119
    iget-object v0, v1, Ls1/a/a/a/v0/e/c;->q:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Ls1/a/a/a/v0/e/c;->q:Ljava/util/List;

    :cond_2c
    and-int/lit16 v0, v7, 0x1000

    if-ne v0, v14, :cond_2d

    .line 120
    iget-object v0, v1, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    :cond_2d
    and-int/lit16 v0, v7, 0x4000

    if-ne v0, v13, :cond_2e

    .line 121
    iget-object v0, v1, Ls1/a/a/a/v0/e/c;->u:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Ls1/a/a/a/v0/e/c;->u:Ljava/util/List;

    .line 122
    :cond_2e
    :try_start_3
    invoke-virtual {v5}, Ls1/a/a/a/v0/h/e;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 123
    :catch_3
    invoke-virtual {v3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object v0

    iput-object v0, v1, Ls1/a/a/a/v0/e/c;->b:Ls1/a/a/a/v0/h/c;

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Ls1/a/a/a/v0/h/c$b;->j()Ls1/a/a/a/v0/h/c;

    move-result-object v0

    iput-object v0, v1, Ls1/a/a/a/v0/e/c;->b:Ls1/a/a/a/v0/h/c;

    throw v2

    .line 124
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/h/h$d;->h()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_14
        0x8 -> :sswitch_13
        0x10 -> :sswitch_12
        0x12 -> :sswitch_11
        0x18 -> :sswitch_10
        0x20 -> :sswitch_f
        0x2a -> :sswitch_e
        0x32 -> :sswitch_d
        0x38 -> :sswitch_c
        0x3a -> :sswitch_b
        0x42 -> :sswitch_a
        0x4a -> :sswitch_9
        0x52 -> :sswitch_8
        0x5a -> :sswitch_7
        0x6a -> :sswitch_6
        0x80 -> :sswitch_5
        0x82 -> :sswitch_4
        0xf2 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/h$c;Ls1/a/a/a/v0/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/h/h$d;-><init>(Ls1/a/a/a/v0/h/h$c;)V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Ls1/a/a/a/v0/e/c;->j:I

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/e/c;->l:I

    .line 4
    iput p2, p0, Ls1/a/a/a/v0/e/c;->s:I

    .line 5
    iput-byte p2, p0, Ls1/a/a/a/v0/e/c;->w:B

    .line 6
    iput p2, p0, Ls1/a/a/a/v0/e/c;->x:I

    .line 7
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 8
    iput-object p1, p0, Ls1/a/a/a/v0/e/c;->b:Ls1/a/a/a/v0/h/c;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/h/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/c;->getSerializedSize()I

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->i()Ls1/a/a/a/v0/h/h$d$a;

    move-result-object v0

    .line 3
    iget v1, p0, Ls1/a/a/a/v0/e/c;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Ls1/a/a/a/v0/e/c;->d:I

    invoke-virtual {p1, v2, v1}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 5
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x12

    .line 7
    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 8
    iget v1, p0, Ls1/a/a/a/v0/e/c;->j:I

    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/h/e;->y(I)V

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .line 9
    :goto_0
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 10
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Ls1/a/a/a/v0/h/e;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget v2, p0, Ls1/a/a/a/v0/e/c;->c:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x3

    .line 12
    iget v3, p0, Ls1/a/a/a/v0/e/c;->e:I

    invoke-virtual {p1, v2, v3}, Ls1/a/a/a/v0/h/e;->p(II)V

    .line 13
    :cond_3
    iget v2, p0, Ls1/a/a/a/v0/e/c;->c:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    .line 14
    iget v2, p0, Ls1/a/a/a/v0/e/c;->f:I

    invoke-virtual {p1, v3, v2}, Ls1/a/a/a/v0/h/e;->p(II)V

    :cond_4
    move v2, v1

    .line 15
    :goto_1
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    const/4 v3, 0x5

    .line 16
    iget-object v4, p0, Ls1/a/a/a/v0/e/c;->g:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v3, v4}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v2, v1

    .line 17
    :goto_2
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    const/4 v3, 0x6

    .line 18
    iget-object v4, p0, Ls1/a/a/a/v0/e/c;->h:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v3, v4}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 19
    :cond_6
    iget-object v2, p0, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    .line 20
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    const/16 v2, 0x3a

    .line 21
    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 22
    iget v2, p0, Ls1/a/a/a/v0/e/c;->l:I

    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/h/e;->y(I)V

    :cond_7
    move v2, v1

    .line 23
    :goto_3
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 24
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Ls1/a/a/a/v0/h/e;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    move v2, v1

    .line 25
    :goto_4
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x8

    if-ge v2, v3, :cond_9

    .line 26
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v4, v3}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    move v2, v1

    .line 27
    :goto_5
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    const/16 v3, 0x9

    .line 28
    iget-object v5, p0, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v3, v5}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    move v2, v1

    .line 29
    :goto_6
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    const/16 v3, 0xa

    .line 30
    iget-object v5, p0, Ls1/a/a/a/v0/e/c;->o:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v3, v5}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    move v2, v1

    .line 31
    :goto_7
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    const/16 v3, 0xb

    .line 32
    iget-object v5, p0, Ls1/a/a/a/v0/e/c;->p:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v3, v5}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    move v2, v1

    .line 33
    :goto_8
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    const/16 v3, 0xd

    .line 34
    iget-object v5, p0, Ls1/a/a/a/v0/e/c;->q:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/h/p;

    invoke-virtual {p1, v3, v5}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 35
    :cond_d
    iget-object v2, p0, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    .line 36
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    const/16 v2, 0x82

    .line 37
    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 38
    iget v2, p0, Ls1/a/a/a/v0/e/c;->s:I

    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/h/e;->y(I)V

    :cond_e
    move v2, v1

    .line 39
    :goto_9
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 40
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Ls1/a/a/a/v0/h/e;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 41
    :cond_f
    iget v2, p0, Ls1/a/a/a/v0/e/c;->c:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_10

    const/16 v2, 0x1e

    .line 42
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->t:Ls1/a/a/a/v0/e/t;

    invoke-virtual {p1, v2, v3}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    .line 43
    :cond_10
    :goto_a
    iget-object v2, p0, Ls1/a/a/a/v0/e/c;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    const/16 v2, 0x1f

    .line 44
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->u:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ls1/a/a/a/v0/h/e;->p(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 45
    :cond_11
    iget v1, p0, Ls1/a/a/a/v0/e/c;->c:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    const/16 v1, 0x20

    .line 46
    iget-object v2, p0, Ls1/a/a/a/v0/e/c;->v:Ls1/a/a/a/v0/e/w;

    invoke-virtual {p1, v1, v2}, Ls1/a/a/a/v0/h/e;->r(ILs1/a/a/a/v0/h/p;)V

    :cond_12
    const/16 v1, 0x4a38

    .line 47
    invoke-virtual {v0, v1, p1}, Ls1/a/a/a/v0/h/h$d$a;->a(ILs1/a/a/a/v0/h/e;)V

    .line 48
    iget-object v0, p0, Ls1/a/a/a/v0/e/c;->b:Ls1/a/a/a/v0/h/c;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/e;->u(Ls1/a/a/a/v0/h/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Ls1/a/a/a/v0/h/p;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/c;->y:Ls1/a/a/a/v0/e/c;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/c;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Ls1/a/a/a/v0/e/c;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Ls1/a/a/a/v0/e/c;->d:I

    invoke-static {v1, v0}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v1, v2

    move v3, v1

    .line 4
    :goto_1
    iget-object v4, p0, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 5
    iget-object v4, p0, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ls1/a/a/a/v0/h/e;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    .line 6
    iget-object v1, p0, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 8
    invoke-static {v3}, Ls1/a/a/a/v0/h/e;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iput v3, p0, Ls1/a/a/a/v0/e/c;->j:I

    .line 10
    iget v1, p0, Ls1/a/a/a/v0/e/c;->c:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x3

    .line 11
    iget v4, p0, Ls1/a/a/a/v0/e/c;->e:I

    invoke-static {v1, v4}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget v1, p0, Ls1/a/a/a/v0/e/c;->c:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    .line 13
    iget v1, p0, Ls1/a/a/a/v0/e/c;->f:I

    invoke-static {v4, v1}, Ls1/a/a/a/v0/h/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    move v1, v2

    .line 14
    :goto_2
    iget-object v4, p0, Ls1/a/a/a/v0/e/c;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    const/4 v4, 0x5

    .line 15
    iget-object v5, p0, Ls1/a/a/a/v0/e/c;->g:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/h/p;

    invoke-static {v4, v5}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v1, v2

    .line 16
    :goto_3
    iget-object v4, p0, Ls1/a/a/a/v0/e/c;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    const/4 v4, 0x6

    .line 17
    iget-object v5, p0, Ls1/a/a/a/v0/e/c;->h:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/h/p;

    invoke-static {v4, v5}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v1, v2

    move v4, v1

    .line 18
    :goto_4
    iget-object v5, p0, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 19
    iget-object v5, p0, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ls1/a/a/a/v0/h/e;->d(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    add-int/2addr v0, v4

    .line 20
    iget-object v1, p0, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    .line 21
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    .line 22
    invoke-static {v4}, Ls1/a/a/a/v0/h/e;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_9
    iput v4, p0, Ls1/a/a/a/v0/e/c;->l:I

    move v1, v2

    .line 24
    :goto_5
    iget-object v4, p0, Ls1/a/a/a/v0/e/c;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v1, v4, :cond_a

    .line 25
    iget-object v4, p0, Ls1/a/a/a/v0/e/c;->m:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/h/p;

    invoke-static {v5, v4}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    move v1, v2

    .line 26
    :goto_6
    iget-object v4, p0, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    const/16 v4, 0x9

    .line 27
    iget-object v6, p0, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/h/p;

    invoke-static {v4, v6}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move v1, v2

    .line 28
    :goto_7
    iget-object v4, p0, Ls1/a/a/a/v0/e/c;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    const/16 v4, 0xa

    .line 29
    iget-object v6, p0, Ls1/a/a/a/v0/e/c;->o:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/h/p;

    invoke-static {v4, v6}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    move v1, v2

    .line 30
    :goto_8
    iget-object v4, p0, Ls1/a/a/a/v0/e/c;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    const/16 v4, 0xb

    .line 31
    iget-object v6, p0, Ls1/a/a/a/v0/e/c;->p:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/h/p;

    invoke-static {v4, v6}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    move v1, v2

    .line 32
    :goto_9
    iget-object v4, p0, Ls1/a/a/a/v0/e/c;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    const/16 v4, 0xd

    .line 33
    iget-object v6, p0, Ls1/a/a/a/v0/e/c;->q:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/h/p;

    invoke-static {v4, v6}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    move v1, v2

    move v4, v1

    .line 34
    :goto_a
    iget-object v6, p0, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_f

    .line 35
    iget-object v6, p0, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ls1/a/a/a/v0/h/e;->d(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    add-int/2addr v0, v4

    .line 36
    iget-object v1, p0, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    .line 37
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    add-int/lit8 v0, v0, 0x2

    .line 38
    invoke-static {v4}, Ls1/a/a/a/v0/h/e;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_10
    iput v4, p0, Ls1/a/a/a/v0/e/c;->s:I

    .line 40
    iget v1, p0, Ls1/a/a/a/v0/e/c;->c:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_11

    const/16 v1, 0x1e

    .line 41
    iget-object v4, p0, Ls1/a/a/a/v0/e/c;->t:Ls1/a/a/a/v0/e/t;

    invoke-static {v1, v4}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    move v1, v2

    .line 42
    :goto_b
    iget-object v4, p0, Ls1/a/a/a/v0/e/c;->u:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_12

    .line 43
    iget-object v4, p0, Ls1/a/a/a/v0/e/c;->u:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ls1/a/a/a/v0/h/e;->d(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_12
    add-int/2addr v0, v1

    .line 44
    iget-object v1, p0, Ls1/a/a/a/v0/e/c;->u:Ljava/util/List;

    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v1, v0

    .line 46
    iget v0, p0, Ls1/a/a/a/v0/e/c;->c:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_13

    const/16 v0, 0x20

    .line 47
    iget-object v2, p0, Ls1/a/a/a/v0/e/c;->v:Ls1/a/a/a/v0/e/w;

    invoke-static {v0, v2}, Ls1/a/a/a/v0/h/e;->e(ILs1/a/a/a/v0/h/p;)I

    move-result v0

    add-int/2addr v1, v0

    .line 48
    :cond_13
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->e()I

    move-result v0

    add-int/2addr v0, v1

    .line 49
    iget-object v1, p0, Ls1/a/a/a/v0/e/c;->b:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 50
    iput v1, p0, Ls1/a/a/a/v0/e/c;->x:I

    return v1
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Ls1/a/a/a/v0/e/c;->w:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/e/c;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 3
    iput-byte v2, p0, Ls1/a/a/a/v0/e/c;->w:B

    return v2

    :cond_3
    move v0, v2

    .line 4
    :goto_1
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 5
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/s;

    .line 6
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/s;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 7
    iput-byte v2, p0, Ls1/a/a/a/v0/e/c;->w:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 8
    :goto_2
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 9
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/q;

    .line 10
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/q;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 11
    iput-byte v2, p0, Ls1/a/a/a/v0/e/c;->w:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    .line 12
    :goto_3
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 13
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/d;

    .line 14
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/d;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    .line 15
    iput-byte v2, p0, Ls1/a/a/a/v0/e/c;->w:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v2

    .line 16
    :goto_4
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 17
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/i;

    .line 18
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/i;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_a

    .line 19
    iput-byte v2, p0, Ls1/a/a/a/v0/e/c;->w:B

    return v2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    move v0, v2

    .line 20
    :goto_5
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 21
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/n;

    .line 22
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/n;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_c

    .line 23
    iput-byte v2, p0, Ls1/a/a/a/v0/e/c;->w:B

    return v2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    move v0, v2

    .line 24
    :goto_6
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    .line 25
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/r;

    .line 26
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/r;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_e

    .line 27
    iput-byte v2, p0, Ls1/a/a/a/v0/e/c;->w:B

    return v2

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v0, v2

    .line 28
    :goto_7
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_11

    .line 29
    iget-object v3, p0, Ls1/a/a/a/v0/e/c;->q:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/g;

    .line 30
    invoke-virtual {v3}, Ls1/a/a/a/v0/e/g;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_10

    .line 31
    iput-byte v2, p0, Ls1/a/a/a/v0/e/c;->w:B

    return v2

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 32
    :cond_11
    iget v0, p0, Ls1/a/a/a/v0/e/c;->c:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_12

    move v0, v1

    goto :goto_8

    :cond_12
    move v0, v2

    :goto_8
    if-eqz v0, :cond_13

    .line 33
    iget-object v0, p0, Ls1/a/a/a/v0/e/c;->t:Ls1/a/a/a/v0/e/t;

    .line 34
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/t;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_13

    .line 35
    iput-byte v2, p0, Ls1/a/a/a/v0/e/c;->w:B

    return v2

    .line 36
    :cond_13
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$d;->d()Z

    move-result v0

    if-nez v0, :cond_14

    .line 37
    iput-byte v2, p0, Ls1/a/a/a/v0/e/c;->w:B

    return v2

    .line 38
    :cond_14
    iput-byte v1, p0, Ls1/a/a/a/v0/e/c;->w:B

    return v1
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    iput v0, p0, Ls1/a/a/a/v0/e/c;->d:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls1/a/a/a/v0/e/c;->e:I

    .line 3
    iput v0, p0, Ls1/a/a/a/v0/e/c;->f:I

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/c;->g:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/c;->h:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/c;->i:Ljava/util/List;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/c;->m:Ljava/util/List;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/c;->o:Ljava/util/List;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/c;->p:Ljava/util/List;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/c;->q:Ljava/util/List;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    .line 14
    sget-object v0, Ls1/a/a/a/v0/e/t;->g:Ls1/a/a/a/v0/e/t;

    .line 15
    iput-object v0, p0, Ls1/a/a/a/v0/e/c;->t:Ls1/a/a/a/v0/e/t;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/c;->u:Ljava/util/List;

    .line 17
    sget-object v0, Ls1/a/a/a/v0/e/w;->e:Ls1/a/a/a/v0/e/w;

    .line 18
    iput-object v0, p0, Ls1/a/a/a/v0/e/c;->v:Ls1/a/a/a/v0/e/w;

    return-void
.end method

.method public newBuilderForType()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/c$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/c$b;-><init>()V

    return-object v0
.end method

.method public toBuilder()Ls1/a/a/a/v0/h/p$a;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/c$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/c$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/e/c$b;->h(Ls1/a/a/a/v0/e/c;)Ls1/a/a/a/v0/e/c$b;

    return-object v0
.end method
