.class public final Le/a/t1$s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1$s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/a/t1$s;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$s;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/t1$s$a;->a:Le/a/t1$s;

    .line 3
    iput p3, p0, Le/a/t1$s$a;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/t1$s$a;->b:I

    const-string v2, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/t1$s$a;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/t1$s$a;->a:Le/a/t1$s;

    .line 4
    new-instance v3, Le/a/e/b/d/d;

    iget-object v4, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 5
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 6
    invoke-interface {v4}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v4

    .line 7
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v1, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 9
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 10
    invoke-interface {v1}, Le/a/j2;->w4()Le/a/y3/c;

    move-result-object v1

    .line 11
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-direct {v3, v4, v1}, Le/a/e/b/d/d;-><init>(Le/a/q2/a;Le/a/y3/c;)V

    return-object v3

    .line 13
    :pswitch_1
    iget-object v1, v0, Le/a/t1$s$a;->a:Le/a/t1$s;

    .line 14
    new-instance v13, Le/a/e/b/a/e;

    iget-object v3, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 15
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 16
    invoke-interface {v3}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v4

    .line 17
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v3, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 19
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 20
    invoke-interface {v3}, Le/a/q2/e;->D3()Le/a/q2/d1/a;

    move-result-object v5

    .line 21
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    new-instance v6, Le/a/e/b/a/b;

    iget-object v3, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 23
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 24
    invoke-interface {v3}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v3

    .line 25
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    invoke-direct {v6, v3}, Le/a/e/b/a/b;-><init>(Landroid/content/Context;)V

    .line 27
    iget-object v3, v1, Le/a/t1$s;->e:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/e/b/g;

    iget-object v3, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 28
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 29
    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v8

    .line 30
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iget-object v3, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 32
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 33
    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v9

    .line 34
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    iget-object v3, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 36
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 37
    invoke-interface {v3}, Le/a/j2;->D4()Le/a/d4/a;

    move-result-object v10

    .line 38
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    iget-object v3, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 40
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 41
    invoke-interface {v3}, Le/a/j2;->V()Le/a/b0/e/f;

    move-result-object v11

    .line 42
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    iget-object v1, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 44
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 45
    invoke-interface {v1}, Le/a/j2;->y2()Le/a/d4/c;

    move-result-object v12

    .line 46
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v13

    .line 47
    invoke-direct/range {v3 .. v12}, Le/a/e/b/a/e;-><init>(Le/a/b0/o/a;Le/a/q2/d1/a;Le/a/e/b/a/b;Le/a/e/b/g;Le/a/q2/a;Le/a/p5/c0;Le/a/d4/a;Le/a/b0/e/f;Le/a/d4/c;)V

    return-object v13

    .line 48
    :pswitch_2
    iget-object v1, v0, Le/a/t1$s$a;->a:Le/a/t1$s;

    .line 49
    new-instance v24, Le/a/e/b/n/l;

    move-object/from16 v3, v24

    iget-object v4, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 50
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 51
    invoke-interface {v4}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v5

    move-object v4, v5

    .line 52
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iget-object v5, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 54
    iget-object v5, v5, Le/a/t1;->b:Le/a/j2;

    .line 55
    invoke-interface {v5}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v6

    move-object v5, v6

    .line 56
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iget-object v6, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 58
    iget-object v6, v6, Le/a/t1;->b:Le/a/j2;

    .line 59
    invoke-interface {v6}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v7

    move-object v6, v7

    .line 60
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iget-object v7, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 62
    iget-object v7, v7, Le/a/t1;->b:Le/a/j2;

    .line 63
    invoke-interface {v7}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v8

    move-object v7, v8

    .line 64
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    iget-object v8, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 66
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 67
    invoke-interface {v8}, Le/a/j2;->R0()Le/a/c/b/j;

    move-result-object v9

    move-object v8, v9

    .line 68
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    iget-object v9, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 70
    iget-object v9, v9, Le/a/t1;->b:Le/a/j2;

    .line 71
    invoke-interface {v9}, Le/a/j2;->N()Le/a/c/i/e/c;

    move-result-object v10

    move-object v9, v10

    .line 72
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    iget-object v10, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 74
    iget-object v10, v10, Le/a/t1;->b:Le/a/j2;

    .line 75
    invoke-interface {v10}, Le/a/j2;->O4()Le/a/c/c0/o;

    move-result-object v11

    move-object v10, v11

    .line 76
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    iget-object v11, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 78
    iget-object v11, v11, Le/a/t1;->b:Le/a/j2;

    .line 79
    invoke-interface {v11}, Le/a/j2;->n()Le/a/c/e/c;

    move-result-object v12

    move-object v11, v12

    .line 80
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iget-object v12, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 82
    iget-object v12, v12, Le/a/t1;->b:Le/a/j2;

    .line 83
    invoke-interface {v12}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v13

    move-object v12, v13

    .line 84
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iget-object v13, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 86
    iget-object v13, v13, Le/a/t1;->b:Le/a/j2;

    .line 87
    invoke-interface {v13}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v14

    move-object v13, v14

    .line 88
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    iget-object v14, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 90
    iget-object v14, v14, Le/a/t1;->b:Le/a/j2;

    .line 91
    invoke-interface {v14}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v15

    move-object v14, v15

    .line 92
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    iget-object v15, v1, Le/a/t1$s;->e:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/a/e/b/g;

    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 94
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 95
    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    move-object/from16 v16, v0

    .line 96
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 98
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 99
    invoke-interface {v0}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v17, v0

    .line 100
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 102
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 103
    invoke-interface {v0}, Le/a/j2;->h5()Le/a/a/k/a/a/u;

    move-result-object v0

    move-object/from16 v18, v0

    .line 104
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 106
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 107
    invoke-interface {v0}, Le/a/j2;->V()Le/a/b0/e/f;

    move-result-object v0

    move-object/from16 v19, v0

    .line 108
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 110
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 111
    invoke-interface {v0}, Le/a/j2;->i3()Le/a/t/a/a/t;

    move-result-object v0

    move-object/from16 v20, v0

    .line 112
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 114
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 115
    invoke-interface {v0}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v0

    move-object/from16 v21, v0

    .line 116
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 118
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 119
    invoke-interface {v0}, Le/a/j2;->o4()Le/a/q2/i0;

    move-result-object v0

    move-object/from16 v22, v0

    .line 120
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 122
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 123
    invoke-interface {v0}, Le/a/j2;->F4()Le/a/f5/a;

    move-result-object v0

    move-object/from16 v23, v0

    .line 124
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    invoke-direct/range {v3 .. v23}, Le/a/e/b/n/l;-><init>(Ls1/w/f;Ls1/w/f;Le/a/p5/g;Le/a/a/i0;Le/a/c/b/j;Le/a/c/i/e/c;Le/a/c/c0/o;Le/a/c/e/c;Le/a/e4/p;Le/a/q2/a;Le/a/p5/a0;Le/a/e/b/g;Le/a/u3/g;Le/a/r2/f;Le/a/a/k/a/a/u;Le/a/b0/e/f;Le/a/t/a/a/t;Le/a/b0/o/a;Le/a/q2/i0;Le/a/f5/a;)V

    return-object v24

    .line 126
    :pswitch_3
    iget-object v1, v0, Le/a/t1$s$a;->a:Le/a/t1$s;

    .line 127
    new-instance v20, Le/a/e/b/c/f;

    move-object/from16 v3, v20

    iget-object v4, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 128
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 129
    invoke-interface {v4}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v5

    move-object v4, v5

    .line 130
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    iget-object v5, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 132
    iget-object v5, v5, Le/a/t1;->b:Le/a/j2;

    .line 133
    invoke-interface {v5}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v6

    move-object v5, v6

    .line 134
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    iget-object v6, v1, Le/a/t1$s;->e:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/e/b/g;

    iget-object v7, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 136
    iget-object v7, v7, Le/a/t1;->b:Le/a/j2;

    .line 137
    invoke-interface {v7}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v8

    move-object v7, v8

    .line 138
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    iget-object v8, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 140
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 141
    invoke-interface {v8}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v9

    move-object v8, v9

    .line 142
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    new-instance v10, Le/a/e/b/c/c;

    move-object v9, v10

    iget-object v11, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 144
    iget-object v11, v11, Le/a/t1;->b:Le/a/j2;

    .line 145
    invoke-interface {v11}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v11

    .line 146
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    invoke-direct {v10, v11}, Le/a/e/b/c/c;-><init>(Landroid/content/Context;)V

    .line 148
    iget-object v10, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 149
    iget-object v10, v10, Le/a/t1;->b:Le/a/j2;

    .line 150
    invoke-interface {v10}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v11

    move-object v10, v11

    .line 151
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    iget-object v11, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 153
    iget-object v11, v11, Le/a/t1;->b:Le/a/j2;

    .line 154
    invoke-interface {v11}, Le/a/j2;->s4()Le/a/o5/l1;

    move-result-object v12

    move-object v11, v12

    .line 155
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    iget-object v12, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 157
    iget-object v12, v12, Le/a/t1;->b:Le/a/j2;

    .line 158
    invoke-interface {v12}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v13

    move-object v12, v13

    .line 159
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    iget-object v13, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 161
    iget-object v13, v13, Le/a/t1;->b:Le/a/j2;

    .line 162
    invoke-interface {v13}, Le/a/j2;->S3()Le/a/h4/g;

    move-result-object v14

    move-object v13, v14

    .line 163
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    iget-object v14, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 165
    iget-object v14, v14, Le/a/t1;->b:Le/a/j2;

    .line 166
    invoke-interface {v14}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v15

    move-object v14, v15

    .line 167
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    iget-object v15, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 169
    iget-object v15, v15, Le/a/t1;->b:Le/a/j2;

    .line 170
    invoke-interface {v15}, Le/a/j2;->a1()Le/a/h4/n;

    move-result-object v15

    move-object/from16 v16, v15

    move-object/from16 v0, v16

    .line 171
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 173
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 174
    invoke-interface {v0}, Le/a/j2;->A3()Le/a/y/c/b;

    move-result-object v0

    move-object/from16 v16, v0

    .line 175
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 177
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 178
    invoke-interface {v0}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v0

    move-object/from16 v17, v0

    .line 179
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 181
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 182
    invoke-interface {v0}, Le/a/j2;->y2()Le/a/d4/c;

    move-result-object v0

    move-object/from16 v18, v0

    .line 183
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 185
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 186
    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    move-object/from16 v19, v0

    .line 187
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    invoke-direct/range {v3 .. v19}, Le/a/e/b/c/f;-><init>(Ls1/w/f;Ls1/w/f;Le/a/e/b/g;Le/a/p5/g;Le/a/p5/a0;Le/a/e/b/c/c;Le/a/p5/c0;Le/a/o5/l1;Le/a/q2/a;Le/a/h4/g;Le/a/a/i0;Le/a/h4/n;Le/a/y/c/b;Le/a/b0/o/a;Le/a/d4/c;Le/a/u3/g;)V

    return-object v20

    .line 189
    :pswitch_4
    iget-object v1, v0, Le/a/t1$s$a;->a:Le/a/t1$s;

    .line 190
    new-instance v23, Le/a/e/b/o/o;

    move-object/from16 v3, v23

    iget-object v4, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 191
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 192
    invoke-interface {v4}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v5

    move-object v4, v5

    .line 193
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    iget-object v5, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 195
    iget-object v5, v5, Le/a/t1;->b:Le/a/j2;

    .line 196
    invoke-interface {v5}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v6

    move-object v5, v6

    .line 197
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    new-instance v7, Le/a/e/b/o/l;

    move-object v6, v7

    iget-object v8, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 199
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 200
    invoke-interface {v8}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v8

    .line 201
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    invoke-direct {v7, v8}, Le/a/e/b/o/l;-><init>(Landroid/content/Context;)V

    .line 203
    iget-object v7, v1, Le/a/t1$s;->e:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/e/b/g;

    iget-object v8, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 204
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 205
    invoke-interface {v8}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v9

    move-object v8, v9

    .line 206
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    invoke-virtual {v1}, Le/a/t1$s;->a()Le/a/e/b/k/s;

    move-result-object v9

    iget-object v10, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 208
    iget-object v10, v10, Le/a/t1;->b:Le/a/j2;

    .line 209
    invoke-interface {v10}, Le/a/j2;->P1()Le/a/r5/i0;

    move-result-object v11

    move-object v10, v11

    .line 210
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    iget-object v11, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 212
    iget-object v11, v11, Le/a/t1;->b:Le/a/j2;

    .line 213
    invoke-interface {v11}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v12

    move-object v11, v12

    .line 214
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    iget-object v12, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 216
    iget-object v12, v12, Le/a/t1;->b:Le/a/j2;

    .line 217
    invoke-interface {v12}, Le/a/j2;->C3()Le/a/l/a2;

    move-result-object v13

    move-object v12, v13

    .line 218
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    iget-object v13, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 220
    iget-object v13, v13, Le/a/t1;->b:Le/a/j2;

    .line 221
    invoke-interface {v13}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v14

    move-object v13, v14

    .line 222
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    iget-object v14, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 224
    iget-object v14, v14, Le/a/t1;->b:Le/a/j2;

    .line 225
    invoke-interface {v14}, Le/a/j2;->V()Le/a/b0/e/f;

    move-result-object v15

    move-object v14, v15

    .line 226
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    iget-object v15, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 228
    iget-object v15, v15, Le/a/t1;->b:Le/a/j2;

    .line 229
    invoke-interface {v15}, Le/a/j2;->C()Le/a/b0/n/g;

    move-result-object v15

    move-object/from16 v16, v15

    move-object/from16 v0, v16

    .line 230
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 232
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 233
    invoke-interface {v0}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v0

    move-object/from16 v16, v0

    .line 234
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 236
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 237
    invoke-interface {v0}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v0

    move-object/from16 v17, v0

    .line 238
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 239
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 240
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 241
    invoke-interface {v0}, Le/a/j2;->X()Le/a/m4/c/i/a/b;

    move-result-object v0

    move-object/from16 v18, v0

    .line 242
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 243
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 244
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 245
    invoke-interface {v0}, Le/a/j2;->X2()Le/a/m4/a;

    move-result-object v0

    move-object/from16 v19, v0

    .line 246
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 247
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 248
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 249
    invoke-interface {v0}, Le/a/j2;->B4()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v20, v0

    .line 250
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 252
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 253
    invoke-interface {v0}, Le/a/j2;->f5()Le/a/c5/a/a;

    move-result-object v0

    move-object/from16 v21, v0

    .line 254
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 256
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 257
    invoke-interface {v0}, Le/a/j2;->T4()Le/a/c5/b/a;

    move-result-object v0

    move-object/from16 v22, v0

    .line 258
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    invoke-direct/range {v3 .. v22}, Le/a/e/b/o/o;-><init>(Ls1/w/f;Ls1/w/f;Le/a/e/b/o/l;Le/a/e/b/g;Le/a/b0/o/a;Le/a/e/b/k/s;Le/a/r5/i0;Le/a/l/p2/v0;Le/a/l/a2;Le/a/u3/g;Le/a/b0/e/f;Le/a/b0/n/g;Le/a/p5/c0;Le/a/b0/e/l;Le/a/m4/c/i/a/b;Le/a/m4/a;Le/a/r2/f;Le/a/c5/a/a;Le/a/c5/b/a;)V

    return-object v23

    .line 260
    :pswitch_5
    new-instance v0, Le/a/e/b/l/b;

    invoke-direct {v0}, Le/a/e/b/l/b;-><init>()V

    return-object v0

    .line 261
    :pswitch_6
    iget-object v1, v0, Le/a/t1$s$a;->a:Le/a/t1$s;

    .line 262
    new-instance v10, Le/a/e/b/l/f;

    iget-object v3, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 263
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 264
    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v4

    .line 265
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    iget-object v3, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 267
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 268
    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v5

    .line 269
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    iget-object v3, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 271
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 272
    invoke-interface {v3}, Le/a/j2;->G()Le/a/b0/k/f;

    move-result-object v6

    .line 273
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    iget-object v3, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 275
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 276
    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v7

    .line 277
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    iget-object v2, v1, Le/a/t1$s;->e:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/e/b/g;

    iget-object v1, v1, Le/a/t1$s;->k:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Le/a/e/b/l/a;

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Le/a/e/b/l/f;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b0/k/f;Le/a/p5/c0;Le/a/e/b/g;Le/a/e/b/l/a;)V

    return-object v10

    .line 279
    :pswitch_7
    iget-object v1, v0, Le/a/t1$s$a;->a:Le/a/t1$s;

    .line 280
    new-instance v25, Le/a/e/b/k/x;

    move-object/from16 v3, v25

    iget-object v4, v1, Le/a/t1$s;->e:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/e/b/g;

    invoke-virtual {v1}, Le/a/t1$s;->a()Le/a/e/b/k/s;

    move-result-object v5

    iget-object v6, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 281
    iget-object v6, v6, Le/a/t1;->b:Le/a/j2;

    .line 282
    invoke-interface {v6}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v7

    move-object v6, v7

    .line 283
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    iget-object v7, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 285
    iget-object v7, v7, Le/a/t1;->b:Le/a/j2;

    .line 286
    invoke-interface {v7}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v8

    move-object v7, v8

    .line 287
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    iget-object v8, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 289
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 290
    invoke-interface {v8}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v9

    move-object v8, v9

    .line 291
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 292
    iget-object v9, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 293
    iget-object v9, v9, Le/a/t1;->b:Le/a/j2;

    .line 294
    invoke-interface {v9}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v10

    move-object v9, v10

    .line 295
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    iget-object v10, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 297
    iget-object v10, v10, Le/a/t1;->b:Le/a/j2;

    .line 298
    invoke-interface {v10}, Le/a/j2;->h3()Le/a/h/q0/a;

    move-result-object v11

    move-object v10, v11

    .line 299
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    iget-object v11, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 301
    iget-object v11, v11, Le/a/t1;->b:Le/a/j2;

    .line 302
    invoke-interface {v11}, Le/a/j2;->F6()Le/a/o5/e2/a;

    move-result-object v12

    move-object v11, v12

    .line 303
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    iget-object v12, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 305
    iget-object v12, v12, Le/a/t1;->b:Le/a/j2;

    .line 306
    invoke-interface {v12}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v13

    move-object v12, v13

    .line 307
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    iget-object v13, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 309
    iget-object v13, v13, Le/a/t1;->b:Le/a/j2;

    .line 310
    invoke-interface {v13}, Le/a/j2;->y2()Le/a/d4/c;

    move-result-object v14

    move-object v13, v14

    .line 311
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    iget-object v14, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 313
    iget-object v14, v14, Le/a/t1;->b:Le/a/j2;

    .line 314
    invoke-interface {v14}, Le/a/j2;->F4()Le/a/f5/a;

    move-result-object v15

    move-object v14, v15

    .line 315
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    iget-object v15, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 317
    iget-object v15, v15, Le/a/t1;->b:Le/a/j2;

    .line 318
    invoke-interface {v15}, Le/a/j2;->N7()Le/a/h3/b/a;

    move-result-object v15

    move-object/from16 v16, v15

    move-object/from16 v0, v16

    .line 319
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 320
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 321
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 322
    invoke-interface {v0}, Le/a/j2;->C5()Le/a/h/t0/b;

    move-result-object v0

    move-object/from16 v16, v0

    .line 323
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 324
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 325
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 326
    invoke-interface {v0}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v0

    move-object/from16 v17, v0

    .line 327
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 329
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 330
    invoke-interface {v0}, Le/a/j2;->m5()Le/a/o/j;

    move-result-object v0

    move-object/from16 v18, v0

    .line 331
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 332
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 333
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 334
    invoke-interface {v0}, Le/a/j2;->x4()Le/a/z4/d;

    move-result-object v0

    move-object/from16 v19, v0

    .line 335
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 336
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 337
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 338
    invoke-interface {v0}, Le/a/j2;->o5()Z

    move-result v20

    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 339
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 340
    invoke-interface {v0}, Le/a/j2;->z4()Le/a/q5/d;

    move-result-object v0

    move-object/from16 v21, v0

    .line 341
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 343
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 344
    invoke-interface {v0}, Le/a/j2;->V7()Le/a/l/a/c0;

    move-result-object v0

    move-object/from16 v22, v0

    .line 345
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 346
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 347
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 348
    invoke-interface {v0}, Le/a/j2;->v6()Le/a/q5/k/a;

    move-result-object v0

    move-object/from16 v23, v0

    .line 349
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    iget-object v0, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 351
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 352
    invoke-interface {v0}, Le/a/j2;->R()Le/a/n5/c;

    move-result-object v0

    move-object/from16 v24, v0

    .line 353
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 354
    invoke-direct/range {v3 .. v24}, Le/a/e/b/k/x;-><init>(Le/a/e/b/g;Le/a/e/b/k/s;Le/a/b0/o/a;Le/a/p5/c0;Le/a/u3/g;Le/a/p5/a0;Le/a/h/q0/a;Le/a/o5/e2/a;Le/a/q2/a;Le/a/d4/c;Le/a/f5/a;Le/a/h3/b/a;Le/a/h/t0/b;Lcom/truecaller/settings/CallingSettings;Le/a/o/j;Le/a/z4/d;ZLe/a/q5/d;Le/a/l/a/c0;Le/a/q5/k/a;Le/a/n5/c;)V

    return-object v25

    .line 355
    :pswitch_8
    new-instance v0, Le/a/e/b/h;

    invoke-direct {v0}, Le/a/e/b/h;-><init>()V

    return-object v0

    .line 356
    :pswitch_9
    iget-object v1, v0, Le/a/t1$s$a;->a:Le/a/t1$s;

    .line 357
    new-instance v9, Le/a/e/b/m/f;

    .line 358
    new-instance v4, Le/a/e/b/m/b;

    iget-object v3, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 359
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 360
    invoke-interface {v3}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v3

    .line 361
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    invoke-direct {v4, v3}, Le/a/e/b/m/b;-><init>(Landroid/content/Context;)V

    .line 363
    iget-object v3, v1, Le/a/t1$s;->e:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Le/a/e/b/g;

    iget-object v3, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 364
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 365
    invoke-interface {v3}, Le/a/j2;->z7()Le/a/n/e;

    move-result-object v6

    .line 366
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 367
    iget-object v3, v1, Le/a/t1$s;->b:Le/a/t1;

    .line 368
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 369
    invoke-interface {v3}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v7

    .line 370
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 371
    iget-object v8, v1, Le/a/t1$s;->a:Le/a/e/b/m/d;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Le/a/e/b/m/f;-><init>(Le/a/e/b/m/b;Le/a/e/b/g;Le/a/n/e;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/e/b/m/d;)V

    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
