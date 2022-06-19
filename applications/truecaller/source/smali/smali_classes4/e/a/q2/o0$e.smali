.class public final Le/a/q2/o0$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/o0;->v(Ljava/util/List;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.analytics.MessageAnalyticsImpl$logReadEvent$1"
    f = "MessageAnalyticsImpl.kt"
    l = {
        0x164
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/q2/o0;

.field public final synthetic j:Ljava/util/List;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Z


# direct methods
.method public constructor <init>(Le/a/q2/o0;Ljava/util/List;Ljava/lang/String;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/o0$e;->i:Le/a/q2/o0;

    iput-object p2, p0, Le/a/q2/o0$e;->j:Ljava/util/List;

    iput-object p3, p0, Le/a/q2/o0$e;->k:Ljava/lang/String;

    iput-boolean p4, p0, Le/a/q2/o0$e;->l:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/q2/o0$e;

    iget-object v1, p0, Le/a/q2/o0$e;->i:Le/a/q2/o0;

    iget-object v2, p0, Le/a/q2/o0$e;->j:Ljava/util/List;

    iget-object v3, p0, Le/a/q2/o0$e;->k:Ljava/lang/String;

    iget-boolean v4, p0, Le/a/q2/o0$e;->l:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/q2/o0$e;-><init>(Le/a/q2/o0;Ljava/util/List;Ljava/lang/String;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/q2/o0$e;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/q2/o0$e;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/q2/o0$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q2/o0$e;->h:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Le/a/q2/o0$e;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Le/a/q2/o0$e;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Le/a/q2/o0$e;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    move-object v6, v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v4, v0, Le/a/q2/o0$e;->j:Ljava/util/List;

    const/16 v5, 0x3e7

    invoke-static {v4, v5}, Ls1/u/i;->k(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-string v5, ""

    move-object v6, v0

    move-object/from16 v19, v4

    move-object v4, v2

    move-object/from16 v2, v19

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/util/List;

    .line 7
    iget-object v7, v6, Le/a/q2/o0$e;->i:Le/a/q2/o0;

    .line 8
    iget-object v7, v7, Le/a/q2/o0;->c:Le/a/q2/j0;

    .line 9
    iget-object v12, v6, Le/a/q2/o0$e;->k:Ljava/lang/String;

    iget-boolean v11, v6, Le/a/q2/o0$e;->l:Z

    iput-object v5, v6, Le/a/q2/o0$e;->e:Ljava/lang/Object;

    iput-object v4, v6, Le/a/q2/o0$e;->f:Ljava/lang/Object;

    iput-object v2, v6, Le/a/q2/o0$e;->g:Ljava/lang/Object;

    iput v3, v6, Le/a/q2/o0$e;->h:I

    move-object v9, v7

    check-cast v9, Le/a/q2/l0;

    .line 10
    iget-object v7, v9, Le/a/q2/l0;->a:Ls1/w/f;

    new-instance v14, Le/a/q2/m0;

    const/4 v13, 0x0

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Le/a/q2/m0;-><init>(Le/a/q2/l0;Ljava/util/List;ZLjava/lang/String;Ls1/w/d;)V

    invoke-static {v7, v14, v6}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_3

    return-object v1

    .line 11
    :cond_3
    :goto_0
    check-cast v7, Ljava/util/List;

    .line 12
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/q2/p0;

    .line 13
    instance-of v9, v8, Le/a/q2/p0$b;

    const/4 v11, 0x7

    const/4 v12, 0x3

    const/16 v13, 0xa

    const/16 v16, 0x6

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v17, 0x9

    if-eqz v9, :cond_4

    .line 14
    sget-object v9, Le/a/l5/a/w0;->q:Lorg/apache/avro/Schema;

    new-instance v9, Le/a/l5/a/w0$b;

    invoke-direct {v9, v14}, Le/a/l5/a/w0$b;-><init>(Le/a/l5/a/w0$a;)V

    .line 15
    check-cast v8, Le/a/q2/p0$b;

    .line 16
    iget-object v14, v8, Le/a/q2/p0$b;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v18

    aget-object v10, v18, v13

    invoke-virtual {v9, v10, v14}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 18
    iput-object v14, v9, Le/a/l5/a/w0$b;->i:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v13

    .line 20
    iget-object v10, v8, Le/a/q2/p0$b;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v13

    aget-object v13, v13, v15

    invoke-virtual {v9, v13, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 22
    iput-object v10, v9, Le/a/l5/a/w0$b;->a:Ljava/lang/CharSequence;

    .line 23
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v15

    .line 24
    iget-object v10, v8, Le/a/q2/p0$b;->c:Ljava/lang/String;

    .line 25
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v13

    aget-object v13, v13, v12

    invoke-virtual {v9, v13, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 26
    iput-object v10, v9, Le/a/l5/a/w0$b;->b:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v12

    .line 28
    iget-object v10, v8, Le/a/q2/p0$b;->d:Ljava/lang/String;

    .line 29
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-virtual {v9, v12, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 30
    iput-object v10, v9, Le/a/l5/a/w0$b;->f:Ljava/lang/CharSequence;

    .line 31
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v11

    .line 32
    iget-object v10, v8, Le/a/q2/p0$b;->e:Ljava/lang/String;

    .line 33
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    const/16 v12, 0x8

    aget-object v11, v11, v12

    invoke-virtual {v9, v11, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 34
    iput-object v10, v9, Le/a/l5/a/w0$b;->g:Ljava/lang/CharSequence;

    .line 35
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v12

    .line 36
    iget-boolean v10, v8, Le/a/q2/p0$b;->f:Z

    .line 37
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    aget-object v11, v11, v17

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 38
    iput-boolean v10, v9, Le/a/l5/a/w0$b;->h:Z

    .line 39
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v17

    .line 40
    iget-boolean v10, v8, Le/a/q2/p0$b;->g:Z

    .line 41
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    const/16 v12, 0xb

    aget-object v11, v11, v12

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 42
    iput-boolean v10, v9, Le/a/l5/a/w0$b;->j:Z

    .line 43
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v12

    .line 44
    iget-boolean v10, v8, Le/a/q2/p0$b;->h:Z

    .line 45
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    const/16 v12, 0xc

    aget-object v11, v11, v12

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 46
    iput-boolean v10, v9, Le/a/l5/a/w0$b;->k:Z

    .line 47
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v12

    .line 48
    iget-wide v10, v8, Le/a/q2/p0$b;->i:J

    .line 49
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    aget-object v12, v12, v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 50
    iput-wide v10, v9, Le/a/l5/a/w0$b;->e:J

    .line 51
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v16

    .line 52
    iget-object v10, v8, Le/a/q2/p0$b;->j:Ljava/lang/String;

    .line 53
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    const/4 v12, 0x5

    aget-object v11, v11, v12

    invoke-virtual {v9, v11, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 54
    iput-object v10, v9, Le/a/l5/a/w0$b;->d:Ljava/lang/CharSequence;

    .line 55
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v12

    .line 56
    iget-object v10, v8, Le/a/q2/p0$b;->k:Ljava/lang/String;

    .line 57
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    const/4 v12, 0x4

    aget-object v11, v11, v12

    invoke-virtual {v9, v11, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 58
    iput-object v10, v9, Le/a/l5/a/w0$b;->c:Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v12

    .line 60
    iget-object v10, v8, Le/a/q2/p0$b;->l:Le/a/l5/a/m3;

    .line 61
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    const/16 v12, 0xd

    aget-object v11, v11, v12

    invoke-virtual {v9, v11, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 62
    iput-object v10, v9, Le/a/l5/a/w0$b;->l:Le/a/l5/a/m3;

    .line 63
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v12

    .line 64
    iget-object v10, v8, Le/a/q2/p0$b;->m:Ljava/lang/String;

    .line 65
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    const/16 v12, 0xe

    aget-object v11, v11, v12

    invoke-virtual {v9, v11, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 66
    iput-object v10, v9, Le/a/l5/a/w0$b;->m:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v12

    .line 68
    iget-object v8, v8, Le/a/q2/p0$b;->n:Ljava/lang/String;

    .line 69
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v10

    const/16 v11, 0xf

    aget-object v10, v10, v11

    invoke-virtual {v9, v10, v8}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 70
    iput-object v8, v9, Le/a/l5/a/w0$b;->n:Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v8

    aput-boolean v3, v8, v11

    .line 72
    invoke-virtual {v9}, Le/a/l5/a/w0$b;->a()Le/a/l5/a/w0;

    move-result-object v8

    .line 73
    iget-object v9, v6, Le/a/q2/o0$e;->i:Le/a/q2/o0;

    .line 74
    iget-object v9, v9, Le/a/q2/o0;->a:Le/a/r2/f;

    .line 75
    invoke-interface {v9}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/q2/a0;

    invoke-interface {v9, v8}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto/16 :goto_2

    .line 76
    :cond_4
    instance-of v9, v8, Le/a/q2/p0$a;

    if-eqz v9, :cond_5

    .line 77
    sget-object v9, Le/a/l5/a/d1;->l:Lorg/apache/avro/Schema;

    new-instance v9, Le/a/l5/a/d1$b;

    invoke-direct {v9, v14}, Le/a/l5/a/d1$b;-><init>(Le/a/l5/a/d1$a;)V

    .line 78
    check-cast v8, Le/a/q2/p0$a;

    .line 79
    iget-object v10, v8, Le/a/q2/p0$a;->a:Ljava/lang/String;

    .line 80
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v14

    aget-object v14, v14, v15

    invoke-virtual {v9, v14, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 81
    iput-object v10, v9, Le/a/l5/a/d1$b;->a:Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v15

    .line 83
    iget-object v10, v8, Le/a/q2/p0$a;->b:Ljava/lang/String;

    .line 84
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v14

    aget-object v14, v14, v12

    invoke-virtual {v9, v14, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 85
    iput-object v10, v9, Le/a/l5/a/d1$b;->b:Ljava/lang/CharSequence;

    .line 86
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v12

    .line 87
    iget-object v10, v8, Le/a/q2/p0$a;->d:Ljava/lang/String;

    .line 88
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    const/4 v14, 0x4

    aget-object v12, v12, v14

    invoke-virtual {v9, v12, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 89
    iput-object v10, v9, Le/a/l5/a/d1$b;->c:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v14

    .line 91
    iget-object v10, v8, Le/a/q2/p0$a;->c:Ljava/lang/String;

    .line 92
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    const/4 v14, 0x5

    aget-object v12, v12, v14

    invoke-virtual {v9, v12, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 93
    iput-object v10, v9, Le/a/l5/a/d1$b;->d:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v14

    .line 95
    iget-wide v13, v8, Le/a/q2/p0$a;->e:J

    .line 96
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v10

    aget-object v10, v10, v11

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 97
    iput-wide v13, v9, Le/a/l5/a/d1$b;->f:J

    .line 98
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v11

    .line 99
    iget-object v10, v8, Le/a/q2/p0$a;->f:Ljava/lang/String;

    .line 100
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    const/16 v12, 0x8

    aget-object v11, v11, v12

    invoke-virtual {v9, v11, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 101
    iput-object v10, v9, Le/a/l5/a/d1$b;->g:Ljava/lang/CharSequence;

    .line 102
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v12

    .line 103
    iget-object v10, v8, Le/a/q2/p0$a;->g:Ljava/lang/String;

    .line 104
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    aget-object v11, v11, v16

    invoke-virtual {v9, v11, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 105
    iput-object v10, v9, Le/a/l5/a/d1$b;->e:Ljava/lang/CharSequence;

    .line 106
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v16

    .line 107
    iget-object v10, v8, Le/a/q2/p0$a;->h:Le/a/l5/a/m3;

    .line 108
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    aget-object v11, v11, v17

    invoke-virtual {v9, v11, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 109
    iput-object v10, v9, Le/a/l5/a/d1$b;->h:Le/a/l5/a/m3;

    .line 110
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v3, v10, v17

    .line 111
    iget-object v8, v8, Le/a/q2/p0$a;->i:Ljava/lang/String;

    .line 112
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v10

    const/16 v11, 0xa

    aget-object v10, v10, v11

    invoke-virtual {v9, v10, v8}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 113
    iput-object v8, v9, Le/a/l5/a/d1$b;->i:Ljava/lang/CharSequence;

    .line 114
    invoke-virtual {v9}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v8

    aput-boolean v3, v8, v11

    .line 115
    invoke-virtual {v9}, Le/a/l5/a/d1$b;->a()Le/a/l5/a/d1;

    move-result-object v8

    .line 116
    iget-object v9, v6, Le/a/q2/o0$e;->i:Le/a/q2/o0;

    .line 117
    iget-object v9, v9, Le/a/q2/o0;->a:Le/a/r2/f;

    .line 118
    invoke-interface {v9}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/q2/a0;

    invoke-interface {v9, v8}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 119
    :cond_5
    :goto_2
    iget-object v8, v6, Le/a/q2/o0$e;->i:Le/a/q2/o0;

    .line 120
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v9, v15, [Ls1/k;

    .line 121
    new-instance v10, Ls1/k;

    const-string v11, "EventAppVersion"

    invoke-direct {v10, v11, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 122
    new-instance v10, Ls1/k;

    const-string v11, "EventTimestamp"

    invoke-direct {v10, v11, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v9, v3

    .line 123
    invoke-static {v9}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v9

    .line 124
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v10

    const-string v11, "MessagingAppVersionDifference"

    .line 125
    invoke-virtual {v10, v11}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 126
    invoke-virtual {v10, v9}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 127
    invoke-virtual {v10}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v9

    .line 128
    iget-object v8, v8, Le/a/q2/o0;->a:Le/a/r2/f;

    invoke-interface {v8}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/q2/a0;

    invoke-interface {v8, v9}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto/16 :goto_1

    .line 129
    :cond_6
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
