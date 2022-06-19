.class public final Le/a/t1$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1$g;
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
.field public final a:Le/a/t1$g;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$g;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/t1$g$a;->a:Le/a/t1$g;

    .line 3
    iput p3, p0, Le/a/t1$g$a;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/t1$g$a;->b:I

    const-string v2, "Cannot return null from a non-@Nullable component method"

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 2
    iget-object v1, v0, Le/a/t1$g$a;->a:Le/a/t1$g;

    .line 3
    new-instance v3, Le/a/d0/b/c;

    iget-object v4, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 4
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 5
    invoke-interface {v4}, Le/a/j2;->U5()Le/a/r2/f;

    move-result-object v4

    .line 6
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v5, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 8
    iget-object v5, v5, Le/a/t1;->b:Le/a/j2;

    .line 9
    invoke-interface {v5}, Le/a/j2;->a0()Le/a/b0/q/e;

    move-result-object v5

    .line 10
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v6, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 12
    iget-object v6, v6, Le/a/t1;->b:Le/a/j2;

    .line 13
    invoke-interface {v6}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v6

    .line 14
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iget-object v1, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 16
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 17
    invoke-interface {v1}, Le/a/j2;->w()Le/a/e3/a;

    move-result-object v1

    .line 18
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    invoke-direct {v3, v4, v5, v6, v1}, Le/a/d0/b/c;-><init>(Le/a/r2/f;Le/a/b0/q/e;Lcom/truecaller/settings/CallingSettings;Le/a/e3/a;)V

    return-object v3

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/t1$g$a;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 21
    :cond_1
    iget-object v1, v0, Le/a/t1$g$a;->a:Le/a/t1$g;

    .line 22
    new-instance v19, Le/a/d0/b/a;

    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 23
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 24
    invoke-interface {v3}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v4

    .line 25
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 27
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 28
    invoke-interface {v3}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v5

    .line 29
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 31
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 32
    invoke-interface {v3}, Le/a/j2;->E()Le/a/b0/q/l0;

    move-result-object v6

    .line 33
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 35
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 36
    invoke-interface {v3}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v7

    .line 37
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 39
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 40
    invoke-interface {v3}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v8

    .line 41
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 43
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 44
    invoke-interface {v3}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v9

    .line 45
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 47
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 48
    invoke-interface {v3}, Le/a/j2;->m()Le/a/b0/q/z;

    move-result-object v10

    .line 49
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 51
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 52
    invoke-interface {v3}, Le/a/j2;->Q6()Le/a/o5/x1;

    move-result-object v11

    .line 53
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 55
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 56
    invoke-interface {v3}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v12

    .line 57
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 59
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 60
    invoke-interface {v3}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v13

    .line 61
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 63
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 64
    invoke-interface {v3}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v14

    .line 65
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 67
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 68
    invoke-interface {v3}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object v15

    .line 69
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 71
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 72
    invoke-interface {v3}, Le/a/j2;->z()Le/a/d/f;

    move-result-object v3

    .line 73
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v16, v3

    .line 74
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 75
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 76
    invoke-interface {v3}, Le/a/j2;->I1()Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    move-result-object v3

    .line 77
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-object v1, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 79
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 80
    invoke-interface {v1}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v1

    .line 81
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v17, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    move-object/from16 v18, v1

    .line 82
    invoke-direct/range {v3 .. v18}, Le/a/d0/b/a;-><init>(Le/a/p5/g;Lcom/truecaller/settings/CallingSettings;Le/a/b0/q/l0;Le/a/h0/j;Le/a/e4/p;Le/a/b0/e/l;Le/a/b0/q/z;Le/a/o5/x1;Le/a/p5/c;Le/a/p5/a0;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/r2/f;Le/a/d/f;Lcom/truecaller/callerid/CallerIdPerformanceTracker;Landroid/content/Context;)V

    return-object v19

    .line 83
    :cond_2
    iget-object v1, v0, Le/a/t1$g$a;->a:Le/a/t1$g;

    .line 84
    new-instance v15, Le/a/d0/b/k;

    iget-object v3, v1, Le/a/t1$g;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/d0/b/d;

    iget-object v3, v1, Le/a/t1$g;->f:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Le/a/d0/b/b;

    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 85
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 86
    invoke-interface {v3}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v6

    .line 87
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 89
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 90
    invoke-interface {v3}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v7

    .line 91
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 93
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 94
    invoke-interface {v3}, Le/a/j2;->G4()Le/a/h/o0/g;

    move-result-object v8

    .line 95
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 97
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 98
    invoke-interface {v3}, Le/a/j2;->m()Le/a/b0/q/z;

    move-result-object v9

    .line 99
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 101
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 102
    invoke-interface {v3}, Le/a/j2;->I1()Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    move-result-object v10

    .line 103
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 105
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 106
    invoke-interface {v3}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v11

    .line 107
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 109
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 110
    invoke-interface {v3}, Le/a/j2;->I6()Landroid/telephony/TelephonyManager;

    move-result-object v12

    .line 111
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v3, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 113
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 114
    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v13

    .line 115
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iget-object v1, v1, Le/a/t1$g;->a:Le/a/t1;

    .line 117
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 118
    invoke-interface {v1}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v14

    .line 119
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v15

    .line 120
    invoke-direct/range {v3 .. v14}, Le/a/d0/b/k;-><init>(Le/a/d0/b/d;Le/a/d0/b/b;Le/a/p5/a0;Le/a/p5/c;Le/a/h/o0/g;Le/a/b0/q/z;Lcom/truecaller/callerid/CallerIdPerformanceTracker;Le/a/p5/g;Landroid/telephony/TelephonyManager;Le/a/q2/a;Ls1/w/f;)V

    return-object v15
.end method
