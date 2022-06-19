.class public final Lcom/google/android/gms/internal/firebase-auth-api/vj;
.super Lcom/google/android/gms/internal/firebase-auth-api/li;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/li<",
        "Lcom/google/android/gms/internal/firebase-auth-api/tk;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/firebase-auth-api/tk;

.field private final d:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/firebase-auth-api/gi<",
            "Lcom/google/android/gms/internal/firebase-auth-api/tk;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/tk;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/li;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/vj;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/vj;->c:Lcom/google/android/gms/internal/firebase-auth-api/tk;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/vj;->a()Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/vj;->d:Ljava/util/concurrent/Future;

    return-void
.end method

.method static h(Lcom/google/firebase/c;Lcom/google/android/gms/internal/firebase-auth-api/xm;)Lcom/google/firebase/auth/internal/x0;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Lcom/google/firebase/auth/internal/t0;

    const-string v2, "firebase"

    invoke-direct {v1, p1, v2}, Lcom/google/firebase/auth/internal/t0;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/xm;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/xm;->M1()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/google/firebase/auth/internal/t0;

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/ln;

    invoke-direct {v3, v4}, Lcom/google/firebase/auth/internal/t0;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/ln;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/google/firebase/auth/internal/x0;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/auth/internal/x0;-><init>(Lcom/google/firebase/c;Ljava/util/List;)V

    .line 11
    new-instance p0, Lcom/google/firebase/auth/internal/z0;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/xm;->E1()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/xm;->D1()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/firebase/auth/internal/z0;-><init>(JJ)V

    .line 13
    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/x0;->R1(Lcom/google/firebase/auth/internal/z0;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/xm;->F1()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/x0;->S1(Z)V

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/xm;->O1()Lcom/google/firebase/auth/i0;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/x0;->U1(Lcom/google/firebase/auth/i0;)V

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/xm;->Q1()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/auth/internal/t;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 17
    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/x0;->M1(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method final a()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/firebase-auth-api/gi<",
            "Lcom/google/android/gms/internal/firebase-auth-api/tk;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/vj;->d:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/vj;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/vj;->c:Lcom/google/android/gms/internal/firebase-auth-api/tk;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/wj;

    .line 1
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/wj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/tk;Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/c9;->a()Lcom/google/android/gms/internal/firebase-auth-api/z5;

    move-result-object v0

    const/4 v1, 0x2

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/z5;->c(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/google/firebase/c;Lcom/google/firebase/auth/g;Lcom/google/firebase/auth/c;Lcom/google/firebase/auth/internal/d0;)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Lcom/google/firebase/auth/g;",
            "Lcom/google/firebase/auth/c;",
            "Lcom/google/firebase/auth/internal/d0;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p2}, Lcom/google/firebase/auth/g;->E1()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p3}, Lcom/google/firebase/auth/c;->y1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4277

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/bk;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    :goto_0
    instance-of v0, p3, Lcom/google/firebase/auth/d;

    if-eqz v0, :cond_3

    .line 11
    check-cast p3, Lcom/google/firebase/auth/d;

    invoke-virtual {p3}, Lcom/google/firebase/auth/d;->H1()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/pi;

    .line 12
    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/pi;-><init>(Lcom/google/firebase/auth/d;)V

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c(Lcom/google/firebase/c;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 14
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->d(Lcom/google/firebase/auth/g;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 15
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 16
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->f(Lcom/google/firebase/auth/internal/n;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/wi;

    .line 18
    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/wi;-><init>(Lcom/google/firebase/auth/d;)V

    .line 19
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c(Lcom/google/firebase/c;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 20
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->d(Lcom/google/firebase/auth/g;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 21
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 22
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->f(Lcom/google/firebase/auth/internal/n;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    .line 24
    :cond_3
    instance-of v0, p3, Lcom/google/firebase/auth/q;

    if-eqz v0, :cond_4

    .line 25
    check-cast p3, Lcom/google/firebase/auth/q;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/vl;->a()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/ui;

    .line 27
    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/ui;-><init>(Lcom/google/firebase/auth/q;)V

    .line 28
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c(Lcom/google/firebase/c;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 29
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->d(Lcom/google/firebase/auth/g;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 30
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 31
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->f(Lcom/google/firebase/auth/internal/n;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 32
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    .line 33
    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p4}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/si;

    .line 37
    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/si;-><init>(Lcom/google/firebase/auth/c;)V

    .line 38
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c(Lcom/google/firebase/c;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 39
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->d(Lcom/google/firebase/auth/g;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 40
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 41
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->f(Lcom/google/firebase/auth/internal/n;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/google/firebase/auth/internal/h;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;ZLcom/google/firebase/auth/s$b;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/g;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/internal/h;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/firebase/auth/s$b;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v11, Lcom/google/android/gms/internal/firebase-auth-api/pj;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/firebase-auth-api/pj;-><init>(Lcom/google/firebase/auth/internal/h;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p2

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    .line 2
    invoke-virtual {v11, v1, v3, v2, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->g(Lcom/google/firebase/auth/s$b;Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    move-object v0, p0

    .line 3
    invoke-virtual {p0, v11}, Lcom/google/android/gms/internal/firebase-auth-api/li;->c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    move-result-object v1

    return-object v1
.end method

.method public final g(Lcom/google/firebase/auth/internal/h;Lcom/google/firebase/auth/t;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;ZLcom/google/firebase/auth/s$b;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/g;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/internal/h;",
            "Lcom/google/firebase/auth/t;",
            "Ljava/lang/String;",
            "JZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/firebase/auth/s$b;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v11, Lcom/google/android/gms/internal/firebase-auth-api/rj;

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/h;->A1()Ljava/lang/String;

    move-result-object v2

    move-object v0, v11

    move-object v1, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/firebase-auth-api/rj;-><init>(Lcom/google/firebase/auth/t;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 2
    invoke-virtual {p2}, Lcom/google/firebase/auth/t;->C1()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    invoke-virtual {v11, v1, v3, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->g(Lcom/google/firebase/auth/s$b;Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    move-object v0, p0

    .line 3
    invoke-virtual {p0, v11}, Lcom/google/android/gms/internal/firebase-auth-api/li;->c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    move-result-object v1

    return-object v1
.end method

.method public final i(Lcom/google/firebase/c;Lcom/google/firebase/auth/g;Ljava/lang/String;Lcom/google/firebase/auth/internal/d0;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Lcom/google/firebase/auth/g;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/d0;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/firebase/auth/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/ni;

    .line 1
    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/ni;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c(Lcom/google/firebase/c;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->d(Lcom/google/firebase/auth/g;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 4
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 5
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->f(Lcom/google/firebase/auth/internal/n;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->b(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lcom/google/firebase/c;Lcom/google/firebase/auth/c;Ljava/lang/String;Lcom/google/firebase/auth/internal/k0;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Lcom/google/firebase/auth/c;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/k0;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/hj;

    .line 1
    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/hj;-><init>(Lcom/google/firebase/auth/c;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c(Lcom/google/firebase/c;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 3
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lcom/google/firebase/c;Lcom/google/firebase/auth/g;Lcom/google/firebase/auth/c;Ljava/lang/String;Lcom/google/firebase/auth/internal/d0;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Lcom/google/firebase/auth/g;",
            "Lcom/google/firebase/auth/c;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/d0;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/yi;

    .line 1
    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/yi;-><init>(Lcom/google/firebase/auth/c;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c(Lcom/google/firebase/c;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->d(Lcom/google/firebase/auth/g;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 4
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 5
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->f(Lcom/google/firebase/auth/internal/n;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lcom/google/firebase/c;Lcom/google/android/gms/internal/firebase-auth-api/sn;Lcom/google/firebase/auth/s$b;Landroid/app/Activity;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/uj;

    .line 1
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/uj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/sn;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c(Lcom/google/firebase/c;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/sn;->y1()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p3, p4, p5, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->g(Lcom/google/firebase/auth/s$b;Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method public final m(Lcom/google/firebase/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/k0;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/k0;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/jj;

    .line 1
    invoke-direct {v0, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/jj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c(Lcom/google/firebase/c;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 3
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lcom/google/firebase/c;Lcom/google/firebase/auth/d;Lcom/google/firebase/auth/internal/k0;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Lcom/google/firebase/auth/d;",
            "Lcom/google/firebase/auth/internal/k0;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/lj;

    .line 1
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/lj;-><init>(Lcom/google/firebase/auth/d;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c(Lcom/google/firebase/c;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 3
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lcom/google/firebase/c;Lcom/google/firebase/auth/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/d0;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Lcom/google/firebase/auth/g;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/d0;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/cj;

    .line 1
    invoke-direct {v0, p3, p4, p5}, Lcom/google/android/gms/internal/firebase-auth-api/cj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c(Lcom/google/firebase/c;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->d(Lcom/google/firebase/auth/g;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 4
    invoke-virtual {v0, p6}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 5
    invoke-virtual {v0, p6}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->f(Lcom/google/firebase/auth/internal/n;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lcom/google/firebase/c;Lcom/google/firebase/auth/g;Lcom/google/firebase/auth/d;Lcom/google/firebase/auth/internal/d0;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Lcom/google/firebase/auth/g;",
            "Lcom/google/firebase/auth/d;",
            "Lcom/google/firebase/auth/internal/d0;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/aj;

    .line 1
    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/aj;-><init>(Lcom/google/firebase/auth/d;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c(Lcom/google/firebase/c;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->d(Lcom/google/firebase/auth/g;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 4
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 5
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->f(Lcom/google/firebase/auth/internal/n;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lcom/google/firebase/c;Lcom/google/firebase/auth/q;Ljava/lang/String;Lcom/google/firebase/auth/internal/k0;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Lcom/google/firebase/auth/q;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/k0;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/vl;->a()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/nj;

    .line 2
    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/nj;-><init>(Lcom/google/firebase/auth/q;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c(Lcom/google/firebase/c;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 4
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lcom/google/firebase/c;Lcom/google/firebase/auth/g;Lcom/google/firebase/auth/q;Ljava/lang/String;Lcom/google/firebase/auth/internal/d0;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Lcom/google/firebase/auth/g;",
            "Lcom/google/firebase/auth/q;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/d0;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/vl;->a()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/ej;

    .line 2
    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ej;-><init>(Lcom/google/firebase/auth/q;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c(Lcom/google/firebase/c;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->d(Lcom/google/firebase/auth/g;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 5
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 6
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->f(Lcom/google/firebase/auth/internal/n;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method
