.class public final Le/a/t1$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/p/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation


# instance fields
.field public final a:Le/a/t1;


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/t1$o;->a:Le/a/t1;

    return-void
.end method


# virtual methods
.method public a(Le/a/p/a/b;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v13, Le/a/p/a/m;

    iget-object v2, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 2
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 3
    invoke-interface {v2}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    const-string v12, "Cannot return null from a non-@Nullable component method"

    .line 4
    invoke-static {v3, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v2, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 6
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 7
    invoke-interface {v2}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v4

    .line 8
    invoke-static {v4, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v2, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 10
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 11
    invoke-interface {v2}, Le/a/j2;->C()Le/a/b0/n/g;

    move-result-object v5

    .line 12
    invoke-static {v5, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iget-object v2, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 14
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 15
    invoke-interface {v2}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v6

    .line 16
    invoke-static {v6, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iget-object v2, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 18
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 19
    invoke-interface {v2}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v7

    .line 20
    invoke-static {v7, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iget-object v2, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 22
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 23
    invoke-interface {v2}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v8

    .line 24
    invoke-static {v8, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iget-object v2, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 26
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 27
    invoke-interface {v2}, Le/a/j2;->V()Le/a/b0/e/f;

    move-result-object v9

    .line 28
    invoke-static {v9, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iget-object v2, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 30
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 31
    invoke-interface {v2}, Le/a/j2;->E3()Le/a/u3/g;

    move-result-object v10

    .line 32
    invoke-static {v10, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    sget v2, Le/a/p/b;->a:I

    .line 34
    sget-object v11, Le/a/p/b$a;->a:Le/a/p/e;

    if-eqz v11, :cond_1

    .line 35
    iget-object v2, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 36
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 37
    invoke-interface {v2}, Le/a/j2;->X7()Le/a/d3/h;

    move-result-object v2

    .line 38
    invoke-static {v2, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    sget-object v24, Le/a/p/b$a;->b:Le/a/p/c;

    if-eqz v24, :cond_0

    .line 40
    new-instance v15, Le/a/p/l;

    move-object v14, v15

    move-object/from16 v25, v2

    iget-object v2, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 41
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 42
    invoke-interface {v2}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v2

    .line 43
    invoke-static {v2, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    invoke-direct {v15, v2}, Le/a/p/l;-><init>(Landroid/content/Context;)V

    .line 45
    iget-object v2, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 46
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 47
    invoke-interface {v2}, Le/a/j2;->y2()Le/a/d4/c;

    move-result-object v2

    move-object v15, v2

    .line 48
    invoke-static {v2, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iget-object v2, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 50
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 51
    invoke-interface {v2}, Le/a/j2;->O()Le/a/g5/p;

    move-result-object v2

    move-object/from16 v16, v2

    .line 52
    invoke-static {v2, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iget-object v2, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 54
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 55
    invoke-interface {v2}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v2

    move-object/from16 v17, v2

    .line 56
    invoke-static {v2, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iget-object v2, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 58
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 59
    invoke-interface {v2}, Le/a/j2;->J5()Le/a/p5/a;

    move-result-object v2

    move-object/from16 v18, v2

    .line 60
    invoke-static {v2, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    new-instance v2, Le/a/p/i;

    move-object/from16 v19, v2

    iget-object v1, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 62
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 63
    invoke-interface {v1}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v1

    .line 64
    invoke-static {v1, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v26, v14

    .line 65
    iget-object v14, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 66
    iget-object v14, v14, Le/a/t1;->b:Le/a/j2;

    .line 67
    invoke-interface {v14}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v14

    .line 68
    invoke-static {v14, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    invoke-direct {v2, v1, v14}, Le/a/p/i;-><init>(Landroid/content/Context;Ls1/w/f;)V

    .line 70
    iget-object v1, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 71
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 72
    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    move-object/from16 v20, v1

    .line 73
    invoke-static {v1, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iget-object v1, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 75
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 76
    invoke-interface {v1}, Le/a/j2;->X()Le/a/m4/c/i/a/b;

    move-result-object v1

    move-object/from16 v21, v1

    .line 77
    invoke-static {v1, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-object v1, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 79
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 80
    invoke-interface {v1}, Le/a/j2;->O3()Le/a/b0/n/b;

    move-result-object v1

    move-object/from16 v22, v1

    .line 81
    invoke-static {v1, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    iget-object v1, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 83
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 84
    invoke-interface {v1}, Le/a/j2;->y()Le/a/k/h;

    move-result-object v1

    move-object/from16 v23, v1

    .line 85
    invoke-static {v1, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v1, v25

    move-object v2, v13

    move-object v14, v12

    move-object v12, v1

    move-object v1, v13

    move-object/from16 v13, v24

    move-object/from16 v27, v14

    move-object/from16 v14, v26

    .line 86
    invoke-direct/range {v2 .. v23}, Le/a/p/a/m;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b0/n/g;Le/a/b0/o/a;Le/a/p5/c0;Le/a/p5/c;Le/a/b0/e/f;Le/a/u3/g;Le/a/p/e;Le/a/d3/h;Le/a/p/c;Le/a/p/l;Le/a/d4/c;Le/a/g5/p;Le/a/p5/a0;Le/a/p5/a;Le/a/p/g;Le/a/q2/a;Le/a/m4/c/i/a/b;Le/a/b0/n/b;Le/a/k/h;)V

    move-object/from16 v2, p1

    .line 87
    iput-object v1, v2, Le/a/p/a/b;->a:Le/a/p/a/l;

    .line 88
    iget-object v1, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 89
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 90
    invoke-interface {v1}, Le/a/j2;->E3()Le/a/u3/g;

    move-result-object v1

    move-object/from16 v3, v27

    .line 91
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iput-object v1, v2, Le/a/p/a/b;->b:Le/a/u3/g;

    .line 93
    iget-object v1, v0, Le/a/t1$o;->a:Le/a/t1;

    .line 94
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 95
    invoke-interface {v1}, Le/a/j2;->y()Le/a/k/h;

    move-result-object v1

    .line 96
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    iput-object v1, v2, Le/a/p/a/b;->c:Le/a/k/h;

    return-void

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Edit Profile Account Helper should be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Edit Profile App Helper should be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
