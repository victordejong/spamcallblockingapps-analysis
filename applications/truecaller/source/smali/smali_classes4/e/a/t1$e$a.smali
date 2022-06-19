.class public final Le/a/t1$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1$e;
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
.field public final a:Le/a/t1$e;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$e;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/t1$e$a;->a:Le/a/t1$e;

    .line 3
    iput p3, p0, Le/a/t1$e$a;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/t1$e$a;->b:I

    const-string v2, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/t1$e$a;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/t1$e$a;->a:Le/a/t1$e;

    .line 4
    new-instance v3, Le/a/h/g/k;

    iget-object v4, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 5
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 6
    invoke-interface {v4}, Le/a/j2;->a6()Le/a/k0/f;

    move-result-object v4

    .line 7
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v5, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 9
    iget-object v5, v5, Le/a/t1;->b:Le/a/j2;

    .line 10
    invoke-interface {v5}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v5

    .line 11
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v6, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 13
    iget-object v6, v6, Le/a/t1;->b:Le/a/j2;

    .line 14
    invoke-interface {v6}, Le/a/j2;->N4()Le/a/k0/a/b;

    move-result-object v6

    .line 15
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v1, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 17
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 18
    invoke-interface {v1}, Le/a/j2;->F5()Le/a/k0/m/a;

    move-result-object v1

    .line 19
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    invoke-direct {v3, v4, v5, v6, v1}, Le/a/h/g/k;-><init>(Le/a/k0/f;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/k0/a/b;Le/a/k0/m/a;)V

    return-object v3

    .line 21
    :pswitch_1
    iget-object v1, v0, Le/a/t1$e$a;->a:Le/a/t1$e;

    .line 22
    new-instance v12, Le/a/k0/n/d/c;

    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 23
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 24
    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v4

    .line 25
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 27
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 28
    invoke-interface {v3}, Le/a/j2;->a6()Le/a/k0/f;

    move-result-object v5

    .line 29
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 31
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 32
    invoke-interface {v3}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v6

    .line 33
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 35
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 36
    invoke-interface {v3}, Le/a/j2;->u6()Le/a/h5/w;

    move-result-object v7

    .line 37
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 39
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 40
    invoke-interface {v3}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v8

    .line 41
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 43
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 44
    invoke-interface {v3}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v9

    .line 45
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 47
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 48
    invoke-interface {v3}, Le/a/j2;->Z6()Le/a/k0/i/a;

    move-result-object v10

    .line 49
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iget-object v1, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 51
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 52
    invoke-interface {v1}, Le/a/j2;->D0()Le/a/k0/n/b/j;

    move-result-object v11

    .line 53
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v12

    .line 54
    invoke-direct/range {v3 .. v11}, Le/a/k0/n/d/c;-><init>(Ls1/w/f;Le/a/k0/f;Le/a/p5/a0;Le/a/h5/w;Le/a/p5/g;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/k0/i/a;Le/a/k0/n/b/j;)V

    return-object v12

    .line 55
    :pswitch_2
    iget-object v1, v0, Le/a/t1$e$a;->a:Le/a/t1$e;

    .line 56
    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 57
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 58
    invoke-interface {v3}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v3

    .line 59
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iget-object v1, v1, Le/a/t1$e;->k:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/f4/g/j$a;

    const-string v2, "context"

    .line 61
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "bulkSearchResultListener"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v2, Lcom/truecaller/network/search/BulkSearcherImpl;

    const/16 v4, 0x16

    const-string v5, "notificationCallRecording"

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/truecaller/network/search/BulkSearcherImpl;-><init>(Landroid/content/Context;ILjava/lang/String;Le/a/f4/g/j$a;)V

    return-object v2

    .line 63
    :pswitch_3
    new-instance v1, Le/a/h/g/c;

    invoke-direct {v1}, Le/a/h/g/c;-><init>()V

    return-object v1

    .line 64
    :pswitch_4
    new-instance v1, Le/a/h/b/d/b/l;

    invoke-direct {v1}, Le/a/h/b/d/b/l;-><init>()V

    return-object v1

    .line 65
    :pswitch_5
    iget-object v1, v0, Le/a/t1$e$a;->a:Le/a/t1$e;

    .line 66
    new-instance v3, Le/a/l0/u/e/c;

    iget-object v4, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 67
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 68
    invoke-interface {v4}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v4

    .line 69
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v1, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 71
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 72
    invoke-interface {v1}, Le/a/j2;->F5()Le/a/k0/m/a;

    move-result-object v1

    .line 73
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    invoke-direct {v3, v4, v1}, Le/a/l0/u/e/c;-><init>(Landroid/content/ContentResolver;Le/a/k0/m/a;)V

    return-object v3

    .line 75
    :pswitch_6
    iget-object v1, v0, Le/a/t1$e$a;->a:Le/a/t1$e;

    .line 76
    iget-object v3, v1, Le/a/t1$e;->e:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/l0/u/e/b;

    iget-object v1, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 77
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 78
    invoke-interface {v1}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v1

    .line 79
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "manager"

    .line 80
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "threads"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "call_recording"

    .line 81
    invoke-interface {v1, v2}, Le/a/r2/l;->e(Ljava/lang/String;)Le/a/r2/j;

    move-result-object v1

    const-class v2, Le/a/l0/u/e/b;

    invoke-interface {v1, v2, v3}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    const-string v2, "threads.createThread(CAL\u2026ger::class.java, manager)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 82
    :pswitch_7
    iget-object v1, v0, Le/a/t1$e$a;->a:Le/a/t1$e;

    .line 83
    iget-object v1, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 84
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 85
    invoke-interface {v1}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "contentResolver"

    .line 87
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v2, Le/a/h/b/p;

    invoke-static {}, Le/a/m0/a1$c;->b()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "TruecallerContract.CallR\u2026tentWithHistoryEventUri()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Le/a/h/b/p;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Long;)V

    return-object v2

    .line 89
    :pswitch_8
    iget-object v1, v0, Le/a/t1$e$a;->a:Le/a/t1$e;

    .line 90
    new-instance v17, Le/a/h/g/w;

    iget-object v3, v1, Le/a/t1$e;->c:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/h/b/r;

    iget-object v3, v1, Le/a/t1$e;->f:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Le/a/r2/f;

    iget-object v3, v1, Le/a/t1$e;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/h/b/d/b/j;

    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 91
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 92
    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v7

    .line 93
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 95
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 96
    invoke-interface {v3}, Le/a/j2;->a6()Le/a/k0/f;

    move-result-object v8

    .line 97
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 99
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 100
    invoke-interface {v3}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v9

    .line 101
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 103
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 104
    invoke-interface {v3}, Le/a/j2;->d5()Le/a/k0/a/l;

    move-result-object v10

    .line 105
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 107
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 108
    invoke-interface {v3}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v11

    .line 109
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 111
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 112
    invoke-interface {v3}, Le/a/j2;->I7()Le/a/k0/a/h;

    move-result-object v12

    .line 113
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 115
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 116
    invoke-interface {v3}, Le/a/j2;->p()Le/a/p5/j0;

    move-result-object v13

    .line 117
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 119
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 120
    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v14

    .line 121
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v3, v1, Le/a/t1$e;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Le/a/l4/c;

    iget-object v1, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 123
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 124
    invoke-interface {v1}, Le/a/j2;->Z6()Le/a/k0/i/a;

    move-result-object v1

    .line 125
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v3, v17

    move-object/from16 v16, v1

    .line 126
    invoke-direct/range {v3 .. v16}, Le/a/h/g/w;-><init>(Le/a/h/b/r;Le/a/r2/f;Le/a/h/b/d/b/j;Le/a/p5/c0;Le/a/k0/f;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/k0/a/l;Le/a/r2/l;Le/a/k0/a/h;Le/a/p5/j0;Ls1/w/f;Le/a/l4/c;Le/a/k0/i/a;)V

    return-object v17

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
