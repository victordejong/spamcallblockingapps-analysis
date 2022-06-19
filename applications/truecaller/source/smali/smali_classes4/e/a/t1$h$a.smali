.class public final Le/a/t1$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1$h;
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
.field public final a:Le/a/t1$h;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$h;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/t1$h$a;->a:Le/a/t1$h;

    .line 3
    iput p3, p0, Le/a/t1$h$a;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 56
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/t1$h$a;->b:I

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    const-string v3, "Cannot return null from a non-@Nullable component method"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v1, v0, Le/a/t1$h$a;->a:Le/a/t1$h;

    .line 3
    iget-object v1, v1, Le/a/t1$h;->a:Le/a/d0/g0;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Le/a/d0/w0;

    invoke-direct {v1}, Le/a/d0/w0;-><init>()V

    return-object v1

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/t1$h$a;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 7
    :cond_1
    iget-object v1, v0, Le/a/t1$h$a;->a:Le/a/t1$h;

    .line 8
    iget-object v4, v1, Le/a/t1$h;->a:Le/a/d0/g0;

    .line 9
    iget-object v5, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 10
    iget-object v5, v5, Le/a/t1;->b:Le/a/j2;

    .line 11
    invoke-interface {v5}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v5

    .line 12
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0x0

    const-string v4, "callerIdSearch"

    .line 14
    invoke-interface {v5, v4, v6, v7}, Le/a/r2/l;->f(Ljava/lang/String;J)Le/a/r2/j;

    move-result-object v4

    .line 15
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v1, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 17
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 18
    invoke-interface {v1}, Le/a/j2;->P6()Le/a/d0/j0;

    move-result-object v1

    .line 19
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    const-class v3, Le/a/d0/j0;

    invoke-interface {v4, v3, v1}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    .line 21
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 22
    :cond_2
    iget-object v1, v0, Le/a/t1$h$a;->a:Le/a/t1$h;

    .line 23
    iget-object v5, v1, Le/a/t1$h;->a:Le/a/d0/g0;

    invoke-virtual {v1}, Le/a/t1$h;->a()Le/a/r2/j;

    move-result-object v6

    .line 24
    iget-object v7, v1, Le/a/t1$h;->a:Le/a/d0/g0;

    invoke-virtual {v1}, Le/a/t1$h;->a()Le/a/r2/j;

    move-result-object v10

    iget-object v8, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 25
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 26
    invoke-interface {v8}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v8

    move-object v11, v8

    .line 27
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v8, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 29
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 30
    invoke-interface {v8}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v8

    move-object v12, v8

    .line 31
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iget-object v8, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 33
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 34
    invoke-interface {v8}, Le/a/j2;->m3()Le/a/d0/o;

    move-result-object v8

    move-object v13, v8

    .line 35
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iget-object v8, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 37
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 38
    invoke-interface {v8}, Le/a/j2;->n7()Le/a/d0/q;

    move-result-object v8

    move-object v14, v8

    .line 39
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    iget-object v8, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 41
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 42
    invoke-interface {v8}, Le/a/j2;->P0()Le/a/f4/g/r;

    move-result-object v8

    move-object v15, v8

    .line 43
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    iget-object v8, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 45
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 46
    invoke-interface {v8}, Le/a/j2;->U1()Le/a/b0/q/h0;

    move-result-object v8

    move-object/from16 v16, v8

    .line 47
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iget-object v8, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 49
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 50
    invoke-interface {v8}, Le/a/j2;->U5()Le/a/r2/f;

    move-result-object v8

    move-object/from16 v17, v8

    .line 51
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    iget-object v8, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 53
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 54
    invoke-interface {v8}, Le/a/j2;->l3()Le/a/o5/r;

    move-result-object v8

    move-object/from16 v18, v8

    .line 55
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    iget-object v8, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 57
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 58
    invoke-interface {v8}, Le/a/j2;->R6()Le/a/k3/j/b;

    move-result-object v8

    move-object/from16 v19, v8

    .line 59
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iget-object v8, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 61
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 62
    invoke-interface {v8}, Le/a/j2;->t1()Le/a/r2/f;

    move-result-object v8

    move-object/from16 v20, v8

    .line 63
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iget-object v8, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 65
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 66
    invoke-interface {v8}, Le/a/j2;->G3()Le/a/r2/f;

    move-result-object v8

    move-object/from16 v21, v8

    .line 67
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iget-object v8, v1, Le/a/t1$h;->d:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v23, v8

    check-cast v23, Le/a/r2/f;

    iget-object v8, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 69
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 70
    invoke-interface {v8}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v8

    move-object/from16 v22, v8

    .line 71
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iget-object v8, v1, Le/a/t1$h;->a:Le/a/d0/g0;

    .line 73
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v8, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v8, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 75
    new-instance v4, Le/a/d0/r0;

    move-object/from16 v24, v4

    invoke-direct {v4, v8}, Le/a/d0/r0;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 76
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 77
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 78
    invoke-interface {v4}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v4

    move-object/from16 v25, v4

    .line 79
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 81
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 82
    invoke-interface {v4}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v4

    move-object/from16 v26, v4

    .line 83
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 85
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 86
    invoke-interface {v4}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v4

    move-object/from16 v27, v4

    .line 87
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 89
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 90
    invoke-interface {v4}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v4

    move-object/from16 v28, v4

    .line 91
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 93
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 94
    invoke-interface {v4}, Le/a/j2;->g7()Le/a/p2/i;

    move-result-object v4

    move-object/from16 v29, v4

    .line 95
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 97
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 98
    invoke-interface {v4}, Le/a/j2;->C0()Le/a/g/j/h0;

    move-result-object v4

    move-object/from16 v30, v4

    .line 99
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 101
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 102
    invoke-interface {v4}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v4

    move-object/from16 v31, v4

    .line 103
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 105
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 106
    invoke-interface {v4}, Le/a/j2;->h3()Le/a/h/q0/a;

    move-result-object v4

    move-object/from16 v32, v4

    .line 107
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 109
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 110
    invoke-interface {v4}, Le/a/j2;->q0()Le/a/k3/l/f;

    move-result-object v4

    move-object/from16 v33, v4

    .line 111
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v4, v1, Le/a/t1$h;->e:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v34, v4

    check-cast v34, Le/a/d0/w0;

    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 113
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 114
    invoke-interface {v4}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v4

    move-object/from16 v35, v4

    .line 115
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 117
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 118
    invoke-interface {v4}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object v4

    move-object/from16 v36, v4

    .line 119
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 121
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 122
    invoke-interface {v4}, Le/a/j2;->u6()Le/a/h5/w;

    move-result-object v4

    move-object/from16 v37, v4

    .line 123
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 125
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 126
    invoke-interface {v4}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v4

    move-object/from16 v38, v4

    .line 127
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 129
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 130
    invoke-interface {v4}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v4

    move-object/from16 v39, v4

    .line 131
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 133
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 134
    invoke-interface {v4}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v4

    move-object/from16 v40, v4

    .line 135
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 137
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 138
    invoke-interface {v4}, Le/a/j2;->A6()Le/a/w4/d;

    move-result-object v4

    move-object/from16 v41, v4

    .line 139
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    iget-object v4, v1, Le/a/t1$h;->a:Le/a/d0/g0;

    iget-object v8, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 141
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 142
    invoke-interface {v8}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v8

    .line 143
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v4, Le/a/h/b/p;

    move-object/from16 v42, v4

    invoke-static {}, Le/a/m0/a1$a;->b()Landroid/net/Uri;

    move-result-object v9

    const-wide/16 v43, -0x1

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v4, v8, v9, v0}, Le/a/h/b/p;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Long;)V

    .line 146
    iget-object v0, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 147
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 148
    invoke-interface {v0}, Le/a/j2;->D0()Le/a/k0/n/b/j;

    move-result-object v0

    move-object/from16 v43, v0

    .line 149
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    iget-object v0, v1, Le/a/t1$h;->a:Le/a/d0/g0;

    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 151
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 152
    invoke-interface {v4}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v4

    .line 153
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    iget-object v8, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 155
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 156
    invoke-interface {v8}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v8

    .line 157
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    iget-object v9, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 159
    iget-object v9, v9, Le/a/t1;->b:Le/a/j2;

    .line 160
    invoke-interface {v9}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v9

    .line 161
    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v55, v2

    .line 162
    iget-object v2, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 163
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 164
    invoke-interface {v2}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v2

    .line 165
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v0, Le/a/d0/a0;

    move-object/from16 v44, v0

    invoke-direct {v0, v4, v8, v9, v2}, Le/a/d0/a0;-><init>(Le/a/p5/c;Le/a/p5/u;Le/a/q2/a;Le/a/p5/g;)V

    .line 168
    iget-object v0, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 169
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 170
    invoke-interface {v0}, Le/a/j2;->I1()Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    move-result-object v0

    move-object/from16 v45, v0

    .line 171
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    iget-object v0, v1, Le/a/t1$h;->a:Le/a/d0/g0;

    iget-object v2, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 173
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 174
    invoke-interface {v2}, Le/a/j2;->O()Le/a/g5/p;

    move-result-object v2

    .line 175
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 177
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 178
    invoke-interface {v4}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v4

    .line 179
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Le/a/d0/w;

    move-object/from16 v46, v0

    invoke-direct {v0, v2, v4}, Le/a/d0/w;-><init>(Le/a/g5/p;Le/a/e4/p;)V

    .line 182
    iget-object v0, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 183
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 184
    invoke-interface {v0}, Le/a/j2;->k7()Le/a/f/b;

    move-result-object v0

    move-object/from16 v47, v0

    .line 185
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    iget-object v0, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 187
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 188
    invoke-interface {v0}, Le/a/j2;->P7()Le/a/i/v/a;

    move-result-object v0

    move-object/from16 v48, v0

    .line 189
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    iget-object v0, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 191
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 192
    invoke-interface {v0}, Le/a/j2;->w()Le/a/e3/a;

    move-result-object v0

    move-object/from16 v49, v0

    .line 193
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    iget-object v0, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 195
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 196
    invoke-interface {v0}, Le/a/j2;->i7()Le/a/k3/j/j;

    move-result-object v0

    move-object/from16 v50, v0

    .line 197
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    iget-object v0, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 199
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 200
    invoke-interface {v0}, Le/a/j2;->h()Le/a/s2/a;

    move-result-object v0

    move-object/from16 v51, v0

    .line 201
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    new-instance v0, Le/a/d0/v0;

    move-object/from16 v52, v0

    iget-object v2, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 203
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 204
    invoke-interface {v2}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v2

    .line 205
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    iget-object v4, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 207
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 208
    invoke-interface {v4}, Le/a/j2;->I6()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 209
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    invoke-direct {v0, v2, v4}, Le/a/d0/v0;-><init>(Le/a/u3/g;Landroid/telephony/TelephonyManager;)V

    .line 211
    iget-object v0, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 212
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 213
    invoke-interface {v0}, Le/a/j2;->Z3()Le/a/i/h0/a;

    move-result-object v0

    move-object/from16 v53, v0

    .line 214
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    iget-object v0, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 216
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 217
    invoke-interface {v0}, Le/a/j2;->c0()Le/a/d0/l0;

    move-result-object v0

    move-object/from16 v54, v0

    .line 218
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    new-instance v0, Le/a/d0/f0;

    move-object v8, v0

    iget-object v9, v7, Le/a/d0/g0;->a:Le/a/r2/f;

    invoke-direct/range {v8 .. v54}, Le/a/d0/f0;-><init>(Le/a/r2/f;Le/a/r2/j;Le/a/p5/g;Le/a/o5/f0;Le/a/d0/o;Le/a/d0/q;Le/a/f4/g/r;Le/a/b0/q/h0;Le/a/r2/f;Le/a/o5/r;Le/a/k3/j/b;Le/a/r2/f;Le/a/r2/f;Le/a/r2/f;Le/a/r2/f;Le/a/d0/q0;Le/a/h0/j;Le/a/q2/a;Le/a/b0/o/a;Lcom/truecaller/settings/CallingSettings;Le/a/p2/i;Le/a/g/j/h0;Le/a/b0/e/l;Le/a/h/q0/a;Le/a/k3/l/f;Le/a/d0/w0;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/r2/f;Le/a/h5/w;Le/a/p5/a0;Le/a/u3/g;Le/a/p5/c;Le/a/w4/d;Le/a/h/b/r;Le/a/k0/n/b/j;Le/a/d0/a0;Lcom/truecaller/callerid/CallerIdPerformanceTracker;Le/a/d0/w;Le/a/f/b;Le/a/i/v/a;Le/a/e3/a;Le/a/k3/j/j;Le/a/s2/a;Le/a/d0/v0;Le/a/i/h0/a;Le/a/d0/l0;)V

    .line 220
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-class v1, Le/a/d0/c0;

    invoke-interface {v6, v1, v0}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v0

    move-object/from16 v1, v55

    .line 222
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
