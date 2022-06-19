.class public final Le/a/t1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1$c;
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
.field public final a:Le/a/t1$c;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/t1$c$a;->a:Le/a/t1$c;

    .line 3
    iput p3, p0, Le/a/t1$c$a;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/t1$c$a;->b:I

    const-string v2, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/t1$c$a;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/t1$c$a;->a:Le/a/t1$c;

    .line 4
    new-instance v20, Le/a/n/d;

    move-object/from16 v3, v20

    iget-object v4, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 5
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 6
    invoke-interface {v4}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v5

    move-object v4, v5

    .line 7
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v5, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 9
    iget-object v5, v5, Le/a/t1;->b:Le/a/j2;

    .line 10
    invoke-interface {v5}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v6

    move-object v5, v6

    .line 11
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v6, v1, Le/a/t1$c;->l:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/e/k;

    iget-object v7, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 13
    iget-object v7, v7, Le/a/t1;->b:Le/a/j2;

    .line 14
    invoke-interface {v7}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v8

    move-object v7, v8

    .line 15
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v8, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 17
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 18
    invoke-interface {v8}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v9

    move-object v8, v9

    .line 19
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v9, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 21
    iget-object v9, v9, Le/a/t1;->b:Le/a/j2;

    .line 22
    invoke-interface {v9}, Le/a/j2;->V()Le/a/b0/e/f;

    move-result-object v10

    move-object v9, v10

    .line 23
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v10, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 25
    iget-object v10, v10, Le/a/t1;->b:Le/a/j2;

    .line 26
    invoke-interface {v10}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v11

    move-object v10, v11

    .line 27
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v11, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 29
    iget-object v11, v11, Le/a/t1;->b:Le/a/j2;

    .line 30
    invoke-interface {v11}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v12

    move-object v11, v12

    .line 31
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iget-object v12, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 33
    iget-object v12, v12, Le/a/t1;->b:Le/a/j2;

    .line 34
    invoke-interface {v12}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v13

    move-object v12, v13

    .line 35
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iget-object v13, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 37
    iget-object v13, v13, Le/a/t1;->b:Le/a/j2;

    .line 38
    invoke-interface {v13}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v14

    move-object v13, v14

    .line 39
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    iget-object v14, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 41
    iget-object v14, v14, Le/a/t1;->b:Le/a/j2;

    .line 42
    invoke-interface {v14}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v15

    move-object v14, v15

    .line 43
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    iget-object v15, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 45
    iget-object v15, v15, Le/a/t1;->b:Le/a/j2;

    .line 46
    invoke-interface {v15}, Le/a/j2;->C()Le/a/b0/n/g;

    move-result-object v15

    move-object/from16 v16, v15

    move-object/from16 v0, v16

    .line 47
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iget-object v0, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 49
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 50
    invoke-interface {v0}, Le/a/j2;->R()Le/a/n5/c;

    move-result-object v0

    move-object/from16 v16, v0

    .line 51
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    iget-object v0, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 53
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 54
    invoke-interface {v0}, Le/a/j2;->v()Le/a/c3/a;

    move-result-object v0

    move-object/from16 v17, v0

    .line 55
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    iget-object v0, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 57
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 58
    invoke-interface {v0}, Le/a/j2;->G()Le/a/b0/k/f;

    move-result-object v0

    move-object/from16 v18, v0

    .line 59
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iget-object v0, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 61
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 62
    invoke-interface {v0}, Le/a/j2;->k7()Le/a/f/b;

    move-result-object v0

    move-object/from16 v19, v0

    .line 63
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    invoke-direct/range {v3 .. v19}, Le/a/n/d;-><init>(Ls1/w/f;Landroid/content/Context;Le/m/e/k;Le/a/p5/g;Le/a/b0/o/a;Le/a/b0/e/f;Lcom/truecaller/settings/CallingSettings;Le/a/h0/m;Le/a/a/i0;Le/a/e4/p;Le/a/p5/a0;Le/a/b0/n/g;Le/a/n5/c;Le/a/c3/a;Le/a/b0/k/f;Le/a/f/b;)V

    return-object v20

    .line 65
    :pswitch_1
    iget-object v1, v0, Le/a/t1$c$a;->a:Le/a/t1$c;

    .line 66
    new-instance v3, Le/a/n/e2;

    iget-object v4, v1, Le/a/t1$c;->l:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/e/k;

    iget-object v5, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 67
    iget-object v5, v5, Le/a/t1;->b:Le/a/j2;

    .line 68
    invoke-interface {v5}, Le/a/j2;->U3()Le/a/n/a1;

    move-result-object v5

    .line 69
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v6, v1, Le/a/t1$c;->w:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/n/d;

    iget-object v1, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 71
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 72
    invoke-interface {v1}, Le/a/j2;->O7()Le/a/n/i0;

    move-result-object v1

    .line 73
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    invoke-direct {v3, v4, v5, v6, v1}, Le/a/n/e2;-><init>(Le/m/e/k;Le/a/n/a1;Le/a/n/d;Le/a/n/i0;)V

    return-object v3

    .line 75
    :pswitch_2
    iget-object v1, v0, Le/a/t1$c$a;->a:Le/a/t1$c;

    .line 76
    new-instance v16, Le/a/n/c2;

    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 77
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 78
    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v4

    .line 79
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 81
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 82
    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v5

    .line 83
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    iget-object v3, v1, Le/a/t1$c;->c:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/n/m;

    iget-object v3, v1, Le/a/t1$c;->t:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/n/m;

    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 85
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 86
    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v8

    .line 87
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    iget-object v3, v1, Le/a/t1$c;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/n/d2;

    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 89
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 90
    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v10

    .line 91
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 93
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 94
    invoke-interface {v3}, Le/a/j2;->Q4()Le/a/n/j;

    move-result-object v11

    .line 95
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 97
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 98
    invoke-interface {v3}, Le/a/j2;->D4()Le/a/d4/a;

    move-result-object v12

    .line 99
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 101
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 102
    invoke-interface {v3}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v13

    .line 103
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 105
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 106
    invoke-interface {v3}, Le/a/j2;->a1()Le/a/h4/n;

    move-result-object v14

    .line 107
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    iget-object v1, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 109
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 110
    invoke-interface {v1}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v15

    .line 111
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v3, v16

    .line 112
    invoke-direct/range {v3 .. v15}, Le/a/n/c2;-><init>(Ls1/w/f;Ls1/w/f;Le/a/n/m;Le/a/n/m;Le/a/u3/g;Le/a/n/d2;Le/a/q2/a;Le/a/n/j;Le/a/d4/a;Le/a/p5/c;Le/a/h4/n;Le/a/b0/o/a;)V

    return-object v16

    .line 113
    :pswitch_3
    iget-object v1, v0, Le/a/t1$c$a;->a:Le/a/t1$c;

    .line 114
    new-instance v3, Le/a/n/f1;

    iget-object v4, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 115
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 116
    invoke-interface {v4}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v4

    .line 117
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    iget-object v5, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 119
    iget-object v5, v5, Le/a/t1;->b:Le/a/j2;

    .line 120
    invoke-interface {v5}, Le/a/j2;->U3()Le/a/n/a1;

    move-result-object v5

    .line 121
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v6, v1, Le/a/t1$c;->l:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/e/k;

    iget-object v1, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 123
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 124
    invoke-interface {v1}, Le/a/j2;->O7()Le/a/n/i0;

    move-result-object v1

    .line 125
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    invoke-direct {v3, v4, v5, v6, v1}, Le/a/n/f1;-><init>(Landroid/content/Context;Le/a/n/a1;Le/m/e/k;Le/a/n/i0;)V

    return-object v3

    .line 127
    :pswitch_4
    iget-object v1, v0, Le/a/t1$c$a;->a:Le/a/t1$c;

    .line 128
    new-instance v11, Le/a/n/q0;

    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 129
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 130
    invoke-interface {v3}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v4

    .line 131
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 133
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 134
    invoke-interface {v3}, Le/a/j2;->U3()Le/a/n/a1;

    move-result-object v5

    .line 135
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 137
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 138
    invoke-interface {v3}, Le/a/j2;->a3()Le/a/l0/c;

    move-result-object v6

    .line 139
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    iget-object v3, v1, Le/a/t1$c;->l:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/m/e/k;

    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 141
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 142
    invoke-interface {v3}, Le/a/j2;->O7()Le/a/n/i0;

    move-result-object v8

    .line 143
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 145
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 146
    invoke-interface {v3}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v9

    .line 147
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    iget-object v1, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 149
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 150
    invoke-interface {v1}, Le/a/j2;->s5()Le/a/k3/e;

    move-result-object v10

    .line 151
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v11

    .line 152
    invoke-direct/range {v3 .. v10}, Le/a/n/q0;-><init>(Landroid/content/Context;Le/a/n/a1;Le/a/l0/c;Le/m/e/k;Le/a/n/i0;Le/a/b0/e/l;Le/a/k3/e;)V

    return-object v11

    .line 153
    :pswitch_5
    sget v1, Le/a/n/q;->a:I

    .line 154
    new-instance v1, Le/m/e/l;

    invoke-direct {v1}, Le/m/e/l;-><init>()V

    .line 155
    const-class v2, Lcom/truecaller/backup/BackupSettingItem;

    new-instance v3, Le/a/n/w;

    invoke-direct {v3}, Le/a/n/w;-><init>()V

    invoke-virtual {v1, v2, v3}, Le/m/e/l;->b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/m/e/l;

    .line 156
    invoke-virtual {v1}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object v1

    const-string v2, "GsonBuilder()\n          \u2026                .create()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 157
    :pswitch_6
    iget-object v1, v0, Le/a/t1$c$a;->a:Le/a/t1$c;

    .line 158
    new-instance v9, Le/a/n/w0;

    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 159
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 160
    invoke-interface {v3}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v4

    .line 161
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 163
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 164
    invoke-interface {v3}, Le/a/j2;->i7()Le/a/k3/j/j;

    move-result-object v5

    .line 165
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 167
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 168
    invoke-interface {v3}, Le/a/j2;->U3()Le/a/n/a1;

    move-result-object v6

    .line 169
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    iget-object v3, v1, Le/a/t1$c;->l:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/m/e/k;

    iget-object v1, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 171
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 172
    invoke-interface {v1}, Le/a/j2;->O7()Le/a/n/i0;

    move-result-object v8

    .line 173
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v9

    .line 174
    invoke-direct/range {v3 .. v8}, Le/a/n/w0;-><init>(Landroid/content/Context;Le/a/k3/j/j;Le/a/n/a1;Le/m/e/k;Le/a/n/i0;)V

    return-object v9

    .line 175
    :pswitch_7
    iget-object v1, v0, Le/a/t1$c$a;->a:Le/a/t1$c;

    .line 176
    new-instance v13, Le/a/n/n;

    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 177
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 178
    invoke-interface {v3}, Le/a/j2;->P()Ls1/w/f;

    move-result-object v4

    .line 179
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 181
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 182
    invoke-interface {v3}, Le/a/j2;->U3()Le/a/n/a1;

    move-result-object v5

    .line 183
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    iget-object v3, v1, Le/a/t1$c;->n:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/n/v0;

    iget-object v3, v1, Le/a/t1$c;->p:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/n/p0;

    iget-object v3, v1, Le/a/t1$c;->r:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/n/e1;

    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 185
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 186
    invoke-interface {v3}, Le/a/j2;->z7()Le/a/n/e;

    move-result-object v9

    .line 187
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 189
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 190
    invoke-interface {v3}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v10

    .line 191
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 193
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 194
    invoke-interface {v3}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v11

    .line 195
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    iget-object v1, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 197
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 198
    invoke-interface {v1}, Le/a/j2;->O7()Le/a/n/i0;

    move-result-object v12

    .line 199
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v13

    .line 200
    invoke-direct/range {v3 .. v12}, Le/a/n/n;-><init>(Ls1/w/f;Le/a/n/a1;Le/a/n/v0;Le/a/n/p0;Le/a/n/e1;Le/a/n/e;Le/a/b0/e/l;Le/a/b0/o/a;Le/a/n/i0;)V

    return-object v13

    .line 201
    :pswitch_8
    iget-object v1, v0, Le/a/t1$c$a;->a:Le/a/t1$c;

    .line 202
    new-instance v16, Le/a/n/z1;

    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 203
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 204
    invoke-interface {v3}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v4

    .line 205
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 207
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 208
    invoke-interface {v3}, Le/a/j2;->P()Ls1/w/f;

    move-result-object v5

    .line 209
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 211
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 212
    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v6

    .line 213
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    iget-object v3, v1, Le/a/t1$c;->c:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/n/m;

    iget-object v3, v1, Le/a/t1$c;->t:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/n/m;

    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 215
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 216
    invoke-interface {v3}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v9

    .line 217
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 219
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 220
    invoke-interface {v3}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v10

    .line 221
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 223
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 224
    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v11

    .line 225
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 227
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 228
    invoke-interface {v3}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v12

    .line 229
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    iget-object v3, v1, Le/a/t1$c;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Le/a/n/h;

    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 231
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 232
    invoke-interface {v3}, Le/a/j2;->K()Le/a/h5/y;

    move-result-object v14

    .line 233
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    iget-object v1, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 235
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 236
    invoke-interface {v1}, Le/a/j2;->u6()Le/a/h5/w;

    move-result-object v15

    .line 237
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v3, v16

    .line 238
    invoke-direct/range {v3 .. v15}, Le/a/n/z1;-><init>(Landroid/content/Context;Ls1/w/f;Ls1/w/f;Le/a/n/m;Le/a/n/m;Le/a/p5/u;Le/a/b0/o/a;Le/a/q2/a;Le/a/r2/f;Le/a/n/h;Le/a/h5/y;Le/a/h5/w;)V

    return-object v16

    .line 239
    :pswitch_9
    new-instance v1, Le/a/n/l0;

    invoke-direct {v1}, Le/a/n/l0;-><init>()V

    return-object v1

    .line 240
    :pswitch_a
    iget-object v1, v0, Le/a/t1$c$a;->a:Le/a/t1$c;

    .line 241
    new-instance v3, Le/a/n/i;

    iget-object v4, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 242
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 243
    invoke-interface {v4}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v4

    .line 244
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 245
    iget-object v1, v1, Le/a/t1$c;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/n/k0;

    invoke-direct {v3, v4, v1}, Le/a/n/i;-><init>(Le/a/b0/o/a;Le/a/n/k0;)V

    return-object v3

    .line 246
    :pswitch_b
    iget-object v1, v0, Le/a/t1$c$a;->a:Le/a/t1$c;

    .line 247
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v13, Le/a/n/t;

    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 249
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 250
    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v4

    .line 251
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 253
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 254
    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v5

    .line 255
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    iget-object v3, v1, Le/a/t1$c;->c:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/n/m;

    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 257
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 258
    invoke-interface {v3}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v7

    .line 259
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 261
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 262
    invoke-interface {v3}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v8

    .line 263
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 265
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 266
    invoke-interface {v3}, Le/a/j2;->u6()Le/a/h5/w;

    move-result-object v9

    .line 267
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 269
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 270
    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v10

    .line 271
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 273
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 274
    invoke-interface {v3}, Le/a/j2;->K()Le/a/h5/y;

    move-result-object v11

    .line 275
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    iget-object v1, v1, Le/a/t1$c;->i:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Le/a/n/h;

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Le/a/n/t;-><init>(Ls1/w/f;Ls1/w/f;Le/a/n/m;Le/a/p5/u;Le/a/b0/o/a;Le/a/h5/w;Le/a/q2/a;Le/a/h5/y;Le/a/n/h;)V

    return-object v13

    .line 277
    :pswitch_c
    iget-object v1, v0, Le/a/t1$c$a;->a:Le/a/t1$c;

    .line 278
    iget-object v1, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 279
    iget-object v1, v1, Le/a/t1;->x:Ljavax/inject/Provider;

    .line 280
    sget v2, Le/a/n/q;->a:I

    const-string v2, "backupManagerV2Provider"

    .line 281
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "backupManagerV2Provider.get()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/a/n/m;

    return-object v1

    .line 283
    :pswitch_d
    iget-object v1, v0, Le/a/t1$c$a;->a:Le/a/t1$c;

    .line 284
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v15, Le/a/n/b0;

    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 286
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 287
    invoke-interface {v3}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v4

    .line 288
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 289
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 290
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 291
    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v5

    .line 292
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 294
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 295
    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v6

    .line 296
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 297
    iget-object v3, v1, Le/a/t1$c;->c:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/n/m;

    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 298
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 299
    invoke-interface {v3}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v8

    .line 300
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 301
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 302
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 303
    invoke-interface {v3}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v9

    .line 304
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 306
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 307
    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v10

    .line 308
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 309
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 310
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 311
    invoke-interface {v3}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v11

    .line 312
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 314
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 315
    invoke-interface {v3}, Le/a/j2;->u6()Le/a/h5/w;

    move-result-object v12

    .line 316
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    iget-object v3, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 318
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 319
    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v13

    .line 320
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    iget-object v1, v1, Le/a/t1$c;->a:Le/a/t1;

    .line 322
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 323
    invoke-interface {v1}, Le/a/j2;->K()Le/a/h5/y;

    move-result-object v14

    .line 324
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v15

    .line 325
    invoke-direct/range {v3 .. v14}, Le/a/n/b0;-><init>(Landroid/content/Context;Ls1/w/f;Ls1/w/f;Le/a/n/m;Le/a/p5/u;Le/a/b0/o/a;Le/a/q2/a;Le/a/r2/f;Le/a/h5/w;Le/a/a/i0;Le/a/h5/y;)V

    return-object v15

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
