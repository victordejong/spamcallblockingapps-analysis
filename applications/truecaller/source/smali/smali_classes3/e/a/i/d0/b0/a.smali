.class public final Le/a/i/d0/b0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/Integer;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Le/a/i/c/a/u;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Le/a/i/f;

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/l5/a/o3;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Le/a/i/f;Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le/a/i/c/a/u;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le/a/i/f;",
            "Ljava/util/List<",
            "+",
            "Le/a/l5/a/o3;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p15

    move-object/from16 v7, p17

    move-object/from16 v8, p18

    const-string v9, "adRequestType"

    invoke-static {p1, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "status"

    invoke-static {p2, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "placement"

    invoke-static {p5, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "connectionInitiated"

    invoke-static {v4, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "connectionFinished"

    invoke-static {v5, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "requestId"

    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "deviceManufacturer"

    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "deviceModel"

    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Le/a/i/d0/b0/a;->a:Ljava/util/List;

    iput-object v2, v0, Le/a/i/d0/b0/a;->b:Ljava/lang/String;

    move-wide v1, p3

    iput-wide v1, v0, Le/a/i/d0/b0/a;->c:J

    iput-object v3, v0, Le/a/i/d0/b0/a;->d:Ljava/lang/String;

    iput-object v4, v0, Le/a/i/d0/b0/a;->e:Ljava/lang/String;

    iput-object v5, v0, Le/a/i/d0/b0/a;->f:Ljava/lang/String;

    move-object/from16 v1, p8

    iput-object v1, v0, Le/a/i/d0/b0/a;->g:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v0, Le/a/i/d0/b0/a;->h:Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, v0, Le/a/i/d0/b0/a;->i:Ljava/lang/String;

    move-object/from16 v1, p11

    iput-object v1, v0, Le/a/i/d0/b0/a;->j:Ljava/lang/Integer;

    move-object/from16 v1, p12

    iput-object v1, v0, Le/a/i/d0/b0/a;->k:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Le/a/i/d0/b0/a;->l:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Le/a/i/d0/b0/a;->m:Ljava/lang/String;

    iput-object v6, v0, Le/a/i/d0/b0/a;->n:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Le/a/i/d0/b0/a;->o:Le/a/i/c/a/u;

    iput-object v7, v0, Le/a/i/d0/b0/a;->p:Ljava/lang/String;

    iput-object v8, v0, Le/a/i/d0/b0/a;->q:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Le/a/i/d0/b0/a;->r:Le/a/i/f;

    move-object/from16 v1, p20

    iput-object v1, v0, Le/a/i/d0/b0/a;->s:Ljava/util/List;

    move-object/from16 v1, p21

    iput-object v1, v0, Le/a/i/d0/b0/a;->t:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Le/a/i/f;Ljava/util/List;Ljava/lang/String;I)V
    .locals 23

    const/high16 v0, 0x40000

    and-int v0, p22, v0

    const/16 v21, 0x0

    const/high16 v0, 0x80000

    and-int v0, p22, v0

    const/16 v22, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    .line 2
    invoke-direct/range {v1 .. v22}, Le/a/i/d0/b0/a;-><init>(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Le/a/i/f;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 12

    .line 1
    new-instance v0, Le/a/q2/x$d;

    .line 2
    sget-object v1, Le/a/l5/a/k;->x:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/k$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/k$b;-><init>(Le/a/l5/a/k$a;)V

    .line 3
    iget-object v2, p0, Le/a/i/d0/b0/a;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-object v2, v1, Le/a/l5/a/k$b;->c:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v3, 0x1

    aput-boolean v3, v2, v4

    .line 7
    iget-object v2, p0, Le/a/i/d0/b0/a;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput-object v2, v1, Le/a/l5/a/k$b;->d:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 11
    iget-object v2, p0, Le/a/i/d0/b0/a;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/16 v5, 0xd

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 13
    iput-object v2, v1, Le/a/l5/a/k$b;->l:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 15
    iget-object v2, p0, Le/a/i/d0/b0/a;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/16 v5, 0xe

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 17
    iput-object v2, v1, Le/a/l5/a/k$b;->m:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 19
    iget-object v2, p0, Le/a/i/d0/b0/a;->p:Ljava/lang/String;

    .line 20
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 21
    iput-object v2, v1, Le/a/l5/a/k$b;->e:Ljava/lang/CharSequence;

    .line 22
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 23
    iget-object v2, p0, Le/a/i/d0/b0/a;->q:Ljava/lang/String;

    .line 24
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 25
    iput-object v2, v1, Le/a/l5/a/k$b;->f:Ljava/lang/CharSequence;

    .line 26
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 27
    iget-wide v4, p0, Le/a/i/d0/b0/a;->c:J

    .line 28
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/16 v6, 0x9

    aget-object v2, v2, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 29
    iput-wide v4, v1, Le/a/l5/a/k$b;->h:J

    .line 30
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v6

    .line 31
    iget-object v2, p0, Le/a/i/d0/b0/a;->n:Ljava/lang/String;

    .line 32
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/16 v5, 0xc

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 33
    iput-object v2, v1, Le/a/l5/a/k$b;->k:Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 35
    iget-object v2, p0, Le/a/i/d0/b0/a;->a:Ljava/util/List;

    .line 36
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 37
    iput-object v2, v1, Le/a/l5/a/k$b;->a:Ljava/util/List;

    .line 38
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 39
    iget-object v2, p0, Le/a/i/d0/b0/a;->h:Ljava/lang/String;

    const-string v4, "NA"

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 40
    :goto_0
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v6

    const/16 v7, 0xa

    aget-object v6, v6, v7

    invoke-virtual {v1, v6, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 41
    iput-object v2, v1, Le/a/l5/a/k$b;->i:Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v7

    .line 43
    iget-object v2, p0, Le/a/i/d0/b0/a;->l:Ljava/lang/String;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    if-eqz v2, :cond_1

    invoke-static {v2}, Ls1/f0/q;->f(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v6

    .line 44
    :goto_1
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/16 v10, 0xb

    aget-object v2, v2, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 45
    iput-wide v8, v1, Le/a/l5/a/k$b;->j:D

    .line 46
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v10

    .line 47
    iget-object v2, p0, Le/a/i/d0/b0/a;->m:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Le/a/i/d0/b0/a;->l:Ljava/lang/String;

    :goto_2
    if-eqz v2, :cond_3

    invoke-static {v2}, Ls1/f0/q;->f(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 48
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v6

    const/16 v7, 0x12

    aget-object v6, v6, v7

    invoke-virtual {v1, v6, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 49
    iput-object v2, v1, Le/a/l5/a/k$b;->q:Ljava/lang/Double;

    .line 50
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v7

    .line 51
    iget-object v2, p0, Le/a/i/d0/b0/a;->i:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v4

    .line 52
    :goto_3
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v6

    const/16 v7, 0x8

    aget-object v6, v6, v7

    invoke-virtual {v1, v6, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 53
    iput-object v2, v1, Le/a/l5/a/k$b;->g:Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v7

    .line 55
    iget-object v2, p0, Le/a/i/d0/b0/a;->g:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    move-object v2, v4

    .line 56
    :goto_4
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v1, v6, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 57
    iput-object v2, v1, Le/a/l5/a/k$b;->b:Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v7

    .line 59
    iget-object v2, p0, Le/a/i/d0/b0/a;->j:Ljava/lang/Integer;

    .line 60
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v6

    const/16 v7, 0xf

    aget-object v6, v6, v7

    invoke-virtual {v1, v6, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 61
    iput-object v2, v1, Le/a/l5/a/k$b;->n:Ljava/lang/Integer;

    .line 62
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v7

    .line 63
    iget-object v2, p0, Le/a/i/d0/b0/a;->k:Ljava/lang/String;

    .line 64
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v6

    const/16 v7, 0x10

    aget-object v6, v6, v7

    invoke-virtual {v1, v6, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 65
    iput-object v2, v1, Le/a/l5/a/k$b;->o:Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v7

    .line 67
    new-instance v2, Le/a/l5/a/a;

    iget-object v6, p0, Le/a/i/d0/b0/a;->r:Le/a/i/f;

    if-eqz v6, :cond_6

    .line 68
    iget-object v7, v6, Le/a/i/f;->b:Ljava/lang/String;

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    move-object v7, v4

    :goto_5
    if-eqz v6, :cond_7

    .line 69
    iget-object v6, v6, Le/a/i/f;->a:Ljava/lang/String;

    if-eqz v6, :cond_7

    goto :goto_6

    :cond_7
    move-object v6, v4

    .line 70
    :goto_6
    invoke-direct {v2, v7, v6}, Le/a/l5/a/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v6

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-virtual {v1, v6, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 72
    iput-object v2, v1, Le/a/l5/a/k$b;->r:Le/a/l5/a/a;

    .line 73
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v7

    .line 74
    iget-object v2, p0, Le/a/i/d0/b0/a;->s:Ljava/util/List;

    .line 75
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v6

    const/16 v7, 0x14

    aget-object v6, v6, v7

    invoke-virtual {v1, v6, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 76
    iput-object v2, v1, Le/a/l5/a/k$b;->s:Ljava/util/List;

    .line 77
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v7

    new-array v2, v5, [Ls1/k;

    const/4 v5, 0x0

    .line 78
    iget-object v6, p0, Le/a/i/d0/b0/a;->o:Le/a/i/c/a/u;

    if-eqz v6, :cond_8

    .line 79
    iget-object v6, v6, Le/a/i/c/a/u;->a:Ljava/lang/String;

    if-eqz v6, :cond_8

    goto :goto_7

    :cond_8
    const-string v6, "network"

    .line 80
    :goto_7
    new-instance v7, Ls1/k;

    const-string v8, "source"

    invoke-direct {v7, v8, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v2, v5

    .line 81
    iget-object v5, p0, Le/a/i/d0/b0/a;->t:Ljava/lang/String;

    if-eqz v5, :cond_9

    move-object v4, v5

    .line 82
    :cond_9
    new-instance v5, Ls1/k;

    const-string v6, "ad_unit_id"

    invoke-direct {v5, v6, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    .line 83
    invoke-static {v2}, Ls1/u/i;->I([Ls1/k;)Ljava/util/HashMap;

    move-result-object v2

    .line 84
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/16 v5, 0x11

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 85
    iput-object v2, v1, Le/a/l5/a/k$b;->p:Ljava/util/Map;

    .line 86
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 87
    invoke-virtual {v1}, Le/a/l5/a/k$b;->a()Le/a/l5/a/k;

    move-result-object v1

    const-string v2, "AppAdRequestInternal.new\u2026      )\n        ).build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {v0, v1}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/i/d0/b0/a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/i/d0/b0/a;

    iget-object v0, p0, Le/a/i/d0/b0/a;->a:Ljava/util/List;

    iget-object v1, p1, Le/a/i/d0/b0/a;->a:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->b:Ljava/lang/String;

    iget-object v1, p1, Le/a/i/d0/b0/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/i/d0/b0/a;->c:J

    iget-wide v2, p1, Le/a/i/d0/b0/a;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->d:Ljava/lang/String;

    iget-object v1, p1, Le/a/i/d0/b0/a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->e:Ljava/lang/String;

    iget-object v1, p1, Le/a/i/d0/b0/a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->f:Ljava/lang/String;

    iget-object v1, p1, Le/a/i/d0/b0/a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->g:Ljava/lang/String;

    iget-object v1, p1, Le/a/i/d0/b0/a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->h:Ljava/lang/String;

    iget-object v1, p1, Le/a/i/d0/b0/a;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->i:Ljava/lang/String;

    iget-object v1, p1, Le/a/i/d0/b0/a;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->j:Ljava/lang/Integer;

    iget-object v1, p1, Le/a/i/d0/b0/a;->j:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->k:Ljava/lang/String;

    iget-object v1, p1, Le/a/i/d0/b0/a;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->l:Ljava/lang/String;

    iget-object v1, p1, Le/a/i/d0/b0/a;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->m:Ljava/lang/String;

    iget-object v1, p1, Le/a/i/d0/b0/a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->n:Ljava/lang/String;

    iget-object v1, p1, Le/a/i/d0/b0/a;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->o:Le/a/i/c/a/u;

    iget-object v1, p1, Le/a/i/d0/b0/a;->o:Le/a/i/c/a/u;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->p:Ljava/lang/String;

    iget-object v1, p1, Le/a/i/d0/b0/a;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->q:Ljava/lang/String;

    iget-object v1, p1, Le/a/i/d0/b0/a;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->r:Le/a/i/f;

    iget-object v1, p1, Le/a/i/d0/b0/a;->r:Le/a/i/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->s:Ljava/util/List;

    iget-object v1, p1, Le/a/i/d0/b0/a;->s:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/b0/a;->t:Ljava/lang/String;

    iget-object p1, p1, Le/a/i/d0/b0/a;->t:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Le/a/i/d0/b0/a;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Le/a/i/d0/b0/a;->c:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->f:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->g:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->h:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->i:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->j:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->k:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->l:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    move v2, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->m:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    move v2, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->n:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    move v2, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->o:Le/a/i/c/a/u;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    move v2, v1

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->p:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    move v2, v1

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->q:Ljava/lang/String;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    move v2, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->r:Le/a/i/f;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Le/a/i/f;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_10
    move v2, v1

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->s:Ljava/util/List;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_11
    move v2, v1

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/i/d0/b0/a;->t:Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_12
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AppAdRequestInternalEvent(adRequestType="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/i/d0/b0/a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", latency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/i/d0/b0/a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", placement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionInitiated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", publisherName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", partnerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->j:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ecpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rawEcpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->o:Le/a/i/c/a/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceManufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adExtraConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->r:Le/a/i/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gamMediationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adUnitId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/b0/a;->t:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
