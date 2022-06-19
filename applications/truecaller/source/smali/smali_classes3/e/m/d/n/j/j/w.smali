.class public Le/m/d/n/j/j/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic q:I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/m/d/n/j/j/j0;

.field public final c:Le/m/d/n/j/j/f0;

.field public final d:Le/m/d/n/j/k/k;

.field public final e:Le/m/d/n/j/j/m;

.field public final f:Le/m/d/n/j/j/n0;

.field public final g:Le/m/d/n/j/n/f;

.field public final h:Le/m/d/n/j/j/h;

.field public final i:Le/m/d/n/j/k/e;

.field public final j:Le/m/d/n/j/c;

.field public final k:Le/m/d/n/j/h/a;

.field public final l:Le/m/d/n/j/j/q0;

.field public m:Le/m/d/n/j/j/i0;

.field public final n:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/d/n/j/j/m;Le/m/d/n/j/j/n0;Le/m/d/n/j/j/j0;Le/m/d/n/j/n/f;Le/m/d/n/j/j/f0;Le/m/d/n/j/j/h;Le/m/d/n/j/k/k;Le/m/d/n/j/k/e;Le/m/d/n/j/j/q0;Le/m/d/n/j/c;Le/m/d/n/j/h/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Le/m/d/n/j/j/w;->n:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Le/m/d/n/j/j/w;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Le/m/d/n/j/j/w;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 6
    iput-object p1, p0, Le/m/d/n/j/j/w;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Le/m/d/n/j/j/w;->e:Le/m/d/n/j/j/m;

    .line 8
    iput-object p3, p0, Le/m/d/n/j/j/w;->f:Le/m/d/n/j/j/n0;

    .line 9
    iput-object p4, p0, Le/m/d/n/j/j/w;->b:Le/m/d/n/j/j/j0;

    .line 10
    iput-object p5, p0, Le/m/d/n/j/j/w;->g:Le/m/d/n/j/n/f;

    .line 11
    iput-object p6, p0, Le/m/d/n/j/j/w;->c:Le/m/d/n/j/j/f0;

    .line 12
    iput-object p7, p0, Le/m/d/n/j/j/w;->h:Le/m/d/n/j/j/h;

    .line 13
    iput-object p8, p0, Le/m/d/n/j/j/w;->d:Le/m/d/n/j/k/k;

    .line 14
    iput-object p9, p0, Le/m/d/n/j/j/w;->i:Le/m/d/n/j/k/e;

    .line 15
    iput-object p11, p0, Le/m/d/n/j/j/w;->j:Le/m/d/n/j/c;

    .line 16
    iput-object p12, p0, Le/m/d/n/j/j/w;->k:Le/m/d/n/j/h/a;

    .line 17
    iput-object p10, p0, Le/m/d/n/j/j/w;->l:Le/m/d/n/j/j/q0;

    return-void
.end method

.method public static a(Le/m/d/n/j/j/w;Ljava/lang/String;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    .line 3
    div-long v8, v1, v3

    .line 4
    sget-object v10, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v10, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 6
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v12, "18.2.8"

    const/4 v2, 0x0

    aput-object v12, v1, v2

    const-string v2, "Crashlytics Android SDK/%s"

    .line 7
    invoke-static {v11, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object v1, v0, Le/m/d/n/j/j/w;->f:Le/m/d/n/j/j/n0;

    iget-object v2, v0, Le/m/d/n/j/j/w;->h:Le/m/d/n/j/j/h;

    .line 9
    iget-object v14, v1, Le/m/d/n/j/j/n0;->c:Ljava/lang/String;

    .line 10
    iget-object v15, v2, Le/m/d/n/j/j/h;->e:Ljava/lang/String;

    iget-object v4, v2, Le/m/d/n/j/j/h;->f:Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Le/m/d/n/j/j/n0;->c()Ljava/lang/String;

    move-result-object v17

    iget-object v1, v2, Le/m/d/n/j/j/h;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12
    sget-object v1, Le/m/d/n/j/j/k0;->e:Le/m/d/n/j/j/k0;

    goto :goto_0

    :cond_0
    sget-object v1, Le/m/d/n/j/j/k0;->b:Le/m/d/n/j/j/k0;

    .line 13
    :goto_0
    iget v1, v1, Le/m/d/n/j/j/k0;->a:I

    .line 14
    iget-object v2, v2, Le/m/d/n/j/j/h;->g:Le/m/d/n/j/e;

    .line 15
    new-instance v5, Le/m/d/n/j/l/x;

    move-object v13, v5

    move-object/from16 v16, v4

    move/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v13 .. v19}, Le/m/d/n/j/l/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILe/m/d/n/j/e;)V

    .line 16
    iget-object v1, v0, Le/m/d/n/j/j/w;->a:Landroid/content/Context;

    .line 17
    sget-object v15, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v14, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 18
    invoke-static {v1}, Le/m/d/n/j/j/l;->k(Landroid/content/Context;)Z

    move-result v1

    .line 19
    new-instance v2, Le/m/d/n/j/l/z;

    invoke-direct {v2, v15, v14, v1}, Le/m/d/n/j/l/z;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    iget-object v1, v0, Le/m/d/n/j/j/w;->a:Landroid/content/Context;

    .line 21
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    move-object/from16 v16, v14

    int-to-long v13, v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v6, v4

    mul-long v23, v13, v6

    .line 23
    sget-object v4, Le/m/d/n/j/j/l$a;->h:Le/m/d/n/j/j/l$a;

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 24
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    .line 25
    invoke-virtual {v10, v6}, Le/m/d/n/j/f;->a(I)Z

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 27
    sget-object v13, Le/m/d/n/j/j/l$a;->k:Ljava/util/Map;

    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/d/n/j/j/l$a;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v6

    .line 28
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    .line 29
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 30
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v20

    .line 31
    invoke-static {}, Le/m/d/n/j/j/l;->h()J

    move-result-wide v21

    .line 32
    invoke-static {v1}, Le/m/d/n/j/j/l;->j(Landroid/content/Context;)Z

    move-result v25

    .line 33
    invoke-static {v1}, Le/m/d/n/j/j/l;->d(Landroid/content/Context;)I

    move-result v26

    sget-object v13, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 34
    new-instance v1, Le/m/d/n/j/l/y;

    move-object/from16 v17, v1

    move-object/from16 v19, v14

    move-object/from16 v27, v13

    move-object/from16 v28, v6

    invoke-direct/range {v17 .. v28}, Le/m/d/n/j/l/y;-><init>(ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v4, v0, Le/m/d/n/j/j/w;->j:Le/m/d/n/j/c;

    move-object/from16 v17, v6

    .line 36
    new-instance v6, Le/m/d/n/j/l/w;

    invoke-direct {v6, v5, v2, v1}, Le/m/d/n/j/l/w;-><init>(Le/m/d/n/j/l/c0$a;Le/m/d/n/j/l/c0$c;Le/m/d/n/j/l/c0$b;)V

    const/4 v5, 0x0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object/from16 v18, v13

    move v13, v5

    move-wide v4, v8

    move-object/from16 v29, v17

    .line 37
    invoke-interface/range {v1 .. v6}, Le/m/d/n/j/c;->a(Ljava/lang/String;Ljava/lang/String;JLe/m/d/n/j/l/c0;)V

    .line 38
    iget-object v1, v0, Le/m/d/n/j/j/w;->i:Le/m/d/n/j/k/e;

    invoke-virtual {v1, v2}, Le/m/d/n/j/k/e;->a(Ljava/lang/String;)V

    .line 39
    iget-object v0, v0, Le/m/d/n/j/j/w;->l:Le/m/d/n/j/j/q0;

    .line 40
    iget-object v1, v0, Le/m/d/n/j/j/q0;->a:Le/m/d/n/j/j/g0;

    .line 41
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v3, Le/m/d/n/j/l/a0;->a:Ljava/nio/charset/Charset;

    new-instance v3, Le/m/d/n/j/l/b$b;

    invoke-direct {v3}, Le/m/d/n/j/l/b$b;-><init>()V

    .line 43
    iput-object v12, v3, Le/m/d/n/j/l/b$b;->a:Ljava/lang/String;

    .line 44
    iget-object v4, v1, Le/m/d/n/j/j/g0;->c:Le/m/d/n/j/j/h;

    iget-object v4, v4, Le/m/d/n/j/j/h;->a:Ljava/lang/String;

    const-string v5, "Null gmpAppId"

    .line 45
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iput-object v4, v3, Le/m/d/n/j/l/b$b;->b:Ljava/lang/String;

    .line 47
    iget-object v4, v1, Le/m/d/n/j/j/g0;->b:Le/m/d/n/j/j/n0;

    .line 48
    invoke-virtual {v4}, Le/m/d/n/j/j/n0;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Null installationUuid"

    .line 49
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iput-object v4, v3, Le/m/d/n/j/l/b$b;->d:Ljava/lang/String;

    .line 51
    iget-object v4, v1, Le/m/d/n/j/j/g0;->c:Le/m/d/n/j/j/h;

    iget-object v4, v4, Le/m/d/n/j/j/h;->e:Ljava/lang/String;

    const-string v5, "Null buildVersion"

    .line 52
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iput-object v4, v3, Le/m/d/n/j/l/b$b;->e:Ljava/lang/String;

    .line 54
    iget-object v4, v1, Le/m/d/n/j/j/g0;->c:Le/m/d/n/j/j/h;

    iget-object v4, v4, Le/m/d/n/j/j/h;->f:Ljava/lang/String;

    const-string v5, "Null displayVersion"

    .line 55
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    iput-object v4, v3, Le/m/d/n/j/l/b$b;->f:Ljava/lang/String;

    const/4 v4, 0x4

    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Le/m/d/n/j/l/b$b;->c:Ljava/lang/Integer;

    .line 58
    new-instance v4, Le/m/d/n/j/l/g$b;

    invoke-direct {v4}, Le/m/d/n/j/l/g$b;-><init>()V

    invoke-virtual {v4, v13}, Le/m/d/n/j/l/g$b;->b(Z)Le/m/d/n/j/l/a0$e$b;

    .line 59
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Le/m/d/n/j/l/g$b;->c:Ljava/lang/Long;

    const-string v5, "Null identifier"

    .line 60
    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iput-object v2, v4, Le/m/d/n/j/l/g$b;->b:Ljava/lang/String;

    .line 62
    sget-object v2, Le/m/d/n/j/j/g0;->f:Ljava/lang/String;

    const-string v6, "Null generator"

    .line 63
    invoke-static {v2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iput-object v2, v4, Le/m/d/n/j/l/g$b;->a:Ljava/lang/String;

    .line 65
    iget-object v2, v1, Le/m/d/n/j/j/g0;->b:Le/m/d/n/j/j/n0;

    .line 66
    iget-object v2, v2, Le/m/d/n/j/j/n0;->c:Ljava/lang/String;

    .line 67
    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iget-object v5, v1, Le/m/d/n/j/j/g0;->c:Le/m/d/n/j/j/h;

    iget-object v5, v5, Le/m/d/n/j/j/h;->e:Ljava/lang/String;

    const-string v6, "Null version"

    .line 69
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v6, v1, Le/m/d/n/j/j/g0;->c:Le/m/d/n/j/j/h;

    iget-object v6, v6, Le/m/d/n/j/j/h;->f:Ljava/lang/String;

    .line 71
    iget-object v8, v1, Le/m/d/n/j/j/g0;->b:Le/m/d/n/j/j/n0;

    .line 72
    invoke-virtual {v8}, Le/m/d/n/j/j/n0;->c()Ljava/lang/String;

    move-result-object v24

    iget-object v8, v1, Le/m/d/n/j/j/g0;->c:Le/m/d/n/j/j/h;

    iget-object v8, v8, Le/m/d/n/j/j/h;->g:Le/m/d/n/j/e;

    .line 73
    iget-object v9, v8, Le/m/d/n/j/e;->b:Le/m/d/n/j/e$b;

    const/4 v12, 0x0

    if-nez v9, :cond_3

    .line 74
    new-instance v9, Le/m/d/n/j/e$b;

    invoke-direct {v9, v8, v12}, Le/m/d/n/j/e$b;-><init>(Le/m/d/n/j/e;Le/m/d/n/j/e$a;)V

    iput-object v9, v8, Le/m/d/n/j/e;->b:Le/m/d/n/j/e$b;

    .line 75
    :cond_3
    iget-object v8, v8, Le/m/d/n/j/e;->b:Le/m/d/n/j/e$b;

    .line 76
    iget-object v8, v8, Le/m/d/n/j/e$b;->a:Ljava/lang/String;

    .line 77
    iget-object v9, v1, Le/m/d/n/j/j/g0;->c:Le/m/d/n/j/j/h;

    iget-object v9, v9, Le/m/d/n/j/j/h;->g:Le/m/d/n/j/e;

    .line 78
    iget-object v13, v9, Le/m/d/n/j/e;->b:Le/m/d/n/j/e$b;

    if-nez v13, :cond_4

    .line 79
    new-instance v13, Le/m/d/n/j/e$b;

    invoke-direct {v13, v9, v12}, Le/m/d/n/j/e$b;-><init>(Le/m/d/n/j/e;Le/m/d/n/j/e$a;)V

    iput-object v13, v9, Le/m/d/n/j/e;->b:Le/m/d/n/j/e$b;

    .line 80
    :cond_4
    iget-object v9, v9, Le/m/d/n/j/e;->b:Le/m/d/n/j/e$b;

    .line 81
    iget-object v9, v9, Le/m/d/n/j/e$b;->b:Ljava/lang/String;

    .line 82
    new-instance v12, Le/m/d/n/j/l/h;

    const/16 v23, 0x0

    const/16 v27, 0x0

    move-object/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    invoke-direct/range {v19 .. v27}, Le/m/d/n/j/l/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/m/d/n/j/l/a0$e$a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/m/d/n/j/l/h$a;)V

    .line 83
    iput-object v12, v4, Le/m/d/n/j/l/g$b;->f:Le/m/d/n/j/l/a0$e$a;

    const/4 v2, 0x3

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 85
    iget-object v5, v1, Le/m/d/n/j/j/g0;->a:Landroid/content/Context;

    .line 86
    invoke-static {v5}, Le/m/d/n/j/j/l;->k(Landroid/content/Context;)Z

    move-result v5

    .line 87
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, ""

    if-nez v2, :cond_5

    const-string v8, " platform"

    goto :goto_2

    :cond_5
    move-object v8, v6

    :goto_2
    if-nez v5, :cond_6

    const-string v9, " jailbroken"

    .line 88
    invoke-static {v8, v9}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 89
    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 90
    new-instance v8, Le/m/d/n/j/l/u;

    .line 91
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 92
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    const/4 v5, 0x0

    move-object/from16 v9, v18

    move-object v13, v8

    move-object/from16 v30, v14

    move-object/from16 v12, v16

    move v14, v2

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Le/m/d/n/j/l/u;-><init>(ILjava/lang/String;Ljava/lang/String;ZLe/m/d/n/j/l/u$a;)V

    .line 93
    iput-object v8, v4, Le/m/d/n/j/l/g$b;->h:Le/m/d/n/j/l/a0$e$e;

    .line 94
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v8, 0x7

    if-eqz v5, :cond_7

    goto :goto_3

    .line 96
    :cond_7
    sget-object v5, Le/m/d/n/j/j/g0;->e:Ljava/util/Map;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_8

    goto :goto_3

    .line 97
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 98
    :goto_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v5

    .line 99
    invoke-static {}, Le/m/d/n/j/j/l;->h()J

    move-result-wide v11

    .line 100
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v13, v7

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    move-object/from16 p0, v6

    int-to-long v6, v2

    mul-long/2addr v13, v6

    .line 101
    iget-object v2, v1, Le/m/d/n/j/j/g0;->a:Landroid/content/Context;

    invoke-static {v2}, Le/m/d/n/j/j/l;->j(Landroid/content/Context;)Z

    move-result v2

    .line 102
    iget-object v1, v1, Le/m/d/n/j/j/g0;->a:Landroid/content/Context;

    invoke-static {v1}, Le/m/d/n/j/j/l;->d(Landroid/content/Context;)I

    move-result v1

    .line 103
    new-instance v6, Le/m/d/n/j/l/j$b;

    invoke-direct {v6}, Le/m/d/n/j/l/j$b;-><init>()V

    .line 104
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Le/m/d/n/j/l/j$b;->a:Ljava/lang/Integer;

    move-object/from16 v7, v30

    .line 105
    iput-object v7, v6, Le/m/d/n/j/l/j$b;->b:Ljava/lang/String;

    .line 106
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v6, Le/m/d/n/j/l/j$b;->c:Ljava/lang/Integer;

    .line 107
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v6, Le/m/d/n/j/l/j$b;->d:Ljava/lang/Long;

    .line 108
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v6, Le/m/d/n/j/l/j$b;->e:Ljava/lang/Long;

    .line 109
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v6, Le/m/d/n/j/l/j$b;->f:Ljava/lang/Boolean;

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Le/m/d/n/j/l/j$b;->g:Ljava/lang/Integer;

    .line 111
    iput-object v9, v6, Le/m/d/n/j/l/j$b;->h:Ljava/lang/String;

    move-object/from16 v1, v29

    .line 112
    iput-object v1, v6, Le/m/d/n/j/l/j$b;->i:Ljava/lang/String;

    .line 113
    invoke-virtual {v6}, Le/m/d/n/j/l/j$b;->a()Le/m/d/n/j/l/a0$e$c;

    move-result-object v1

    .line 114
    iput-object v1, v4, Le/m/d/n/j/l/g$b;->i:Le/m/d/n/j/l/a0$e$c;

    const/4 v1, 0x3

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v4, Le/m/d/n/j/l/g$b;->k:Ljava/lang/Integer;

    .line 116
    invoke-virtual {v4}, Le/m/d/n/j/l/g$b;->a()Le/m/d/n/j/l/a0$e;

    move-result-object v2

    .line 117
    iput-object v2, v3, Le/m/d/n/j/l/b$b;->g:Le/m/d/n/j/l/a0$e;

    .line 118
    invoke-virtual {v3}, Le/m/d/n/j/l/b$b;->a()Le/m/d/n/j/l/a0;

    move-result-object v2

    .line 119
    iget-object v0, v0, Le/m/d/n/j/j/q0;->b:Le/m/d/n/j/n/e;

    .line 120
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v2}, Le/m/d/n/j/l/a0;->h()Le/m/d/n/j/l/a0$e;

    move-result-object v3

    if-nez v3, :cond_9

    .line 122
    invoke-virtual {v10, v1}, Le/m/d/n/j/f;->a(I)Z

    goto :goto_5

    .line 123
    :cond_9
    invoke-virtual {v3}, Le/m/d/n/j/l/a0$e;->g()Ljava/lang/String;

    move-result-object v1

    .line 124
    :try_start_0
    sget-object v4, Le/m/d/n/j/n/e;->f:Le/m/d/n/j/l/d0/g;

    invoke-virtual {v4, v2}, Le/m/d/n/j/l/d0/g;->f(Le/m/d/n/j/l/a0;)Ljava/lang/String;

    move-result-object v2

    .line 125
    iget-object v4, v0, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    const-string v5, "report"

    invoke-virtual {v4, v1, v5}, Le/m/d/n/j/n/f;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v2}, Le/m/d/n/j/n/e;->f(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    iget-object v0, v0, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    const-string v2, "start-time"

    .line 127
    invoke-virtual {v0, v1, v2}, Le/m/d/n/j/n/f;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 128
    invoke-virtual {v3}, Le/m/d/n/j/l/a0$e;->i()J

    move-result-wide v1

    .line 129
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Le/m/d/n/j/n/e;->d:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v4, p0

    .line 130
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    mul-long/2addr v1, v4

    .line 131
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 133
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 v0, 0x3

    .line 134
    invoke-virtual {v10, v0}, Le/m/d/n/j/f;->a(I)Z

    :goto_5
    return-void

    .line 135
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-static {v1, v8}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Le/m/d/n/j/j/w;)Lcom/google/android/gms/tasks/Task;
    .locals 10

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Le/m/d/n/j/j/w;->g:Le/m/d/n/j/n/f;

    sget-object v3, Le/m/d/n/j/j/a;->a:Le/m/d/n/j/j/a;

    .line 4
    iget-object v2, v2, Le/m/d/n/j/n/f;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Le/m/d/n/j/n/f;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    const/4 v4, 0x5

    .line 6
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x1

    :try_start_1
    const-string v9, "com.google.firebase.crash.FirebaseCrash"

    .line 7
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v9, v5

    goto :goto_1

    :catch_0
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_0

    .line 8
    :try_start_2
    invoke-virtual {v0, v4}, Le/m/d/n/j/f;->a(I)Z

    const/4 v5, 0x0

    .line 9
    invoke-static {v5}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v5

    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {v0, v6}, Le/m/d/n/j/f;->a(I)Z

    .line 11
    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v6, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 12
    new-instance v5, Le/m/d/n/j/j/a0;

    invoke-direct {v5, p0, v7, v8}, Le/m/d/n/j/j/a0;-><init>(Le/m/d/n/j/j/w;J)V

    invoke-static {v6, v5}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v5

    .line 13
    :goto_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 14
    :catch_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v4}, Le/m/d/n/j/f;->a(I)Z

    .line 16
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->g(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(ZLe/m/d/n/j/p/f;)V
    .locals 26

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 1
    sget-object v3, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, v1, Le/m/d/n/j/j/w;->l:Le/m/d/n/j/j/q0;

    .line 2
    iget-object v0, v0, Le/m/d/n/j/j/q0;->b:Le/m/d/n/j/n/e;

    invoke-virtual {v0}, Le/m/d/n/j/n/e;->c()Ljava/util/SortedSet;

    move-result-object v0

    .line 3
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x2

    if-gt v0, v2, :cond_0

    .line 5
    invoke-virtual {v3, v5}, Le/m/d/n/j/f;->a(I)Z

    return-void

    .line 6
    :cond_0
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 7
    move-object/from16 v0, p2

    check-cast v0, Le/m/d/n/j/p/e;

    invoke-virtual {v0}, Le/m/d/n/j/p/e;->b()Le/m/d/n/j/p/j/d;

    move-result-object v0

    invoke-interface {v0}, Le/m/d/n/j/p/j/d;->b()Le/m/d/n/j/p/j/b;

    move-result-object v0

    iget-boolean v0, v0, Le/m/d/n/j/p/j/b;->b:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_c

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1e

    if-lt v0, v11, :cond_b

    .line 9
    iget-object v0, v1, Le/m/d/n/j/j/w;->a:Landroid/content/Context;

    const-string v11, "activity"

    .line 10
    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 11
    invoke-virtual {v0, v8, v9, v9}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_a

    .line 13
    new-instance v8, Le/m/d/n/j/k/e;

    iget-object v11, v1, Le/m/d/n/j/j/w;->g:Le/m/d/n/j/n/f;

    invoke-direct {v8, v11, v6}, Le/m/d/n/j/k/e;-><init>(Le/m/d/n/j/n/f;Ljava/lang/String;)V

    .line 14
    iget-object v11, v1, Le/m/d/n/j/j/w;->g:Le/m/d/n/j/n/f;

    iget-object v12, v1, Le/m/d/n/j/j/w;->e:Le/m/d/n/j/j/m;

    .line 15
    new-instance v13, Le/m/d/n/j/k/g;

    invoke-direct {v13, v11}, Le/m/d/n/j/k/g;-><init>(Le/m/d/n/j/n/f;)V

    .line 16
    new-instance v14, Le/m/d/n/j/k/k;

    invoke-direct {v14, v6, v11, v12}, Le/m/d/n/j/k/k;-><init>(Ljava/lang/String;Le/m/d/n/j/n/f;Le/m/d/n/j/j/m;)V

    .line 17
    iget-object v11, v14, Le/m/d/n/j/k/k;->d:Le/m/d/n/j/k/k$a;

    iget-object v11, v11, Le/m/d/n/j/k/k$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/m/d/n/j/k/d;

    invoke-virtual {v13, v6, v9}, Le/m/d/n/j/k/g;->b(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v11, v12}, Le/m/d/n/j/k/d;->d(Ljava/util/Map;)V

    .line 18
    iget-object v11, v14, Le/m/d/n/j/k/k;->e:Le/m/d/n/j/k/k$a;

    iget-object v11, v11, Le/m/d/n/j/k/k$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/m/d/n/j/k/d;

    invoke-virtual {v13, v6, v10}, Le/m/d/n/j/k/g;->b(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v11, v10}, Le/m/d/n/j/k/d;->d(Ljava/util/Map;)V

    .line 19
    iget-object v10, v14, Le/m/d/n/j/k/k;->f:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v13, v6}, Le/m/d/n/j/k/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    .line 20
    iget-object v10, v1, Le/m/d/n/j/j/w;->l:Le/m/d/n/j/j/q0;

    .line 21
    iget-object v11, v10, Le/m/d/n/j/j/q0;->b:Le/m/d/n/j/n/e;

    .line 22
    iget-object v11, v11, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    const-string v12, "start-time"

    .line 23
    invoke-virtual {v11, v6, v12}, Le/m/d/n/j/n/f;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 24
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ApplicationExitInfo;

    .line 26
    invoke-virtual {v13}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v15

    cmp-long v15, v15, v11

    if-gez v15, :cond_1

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v13}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v15

    const/4 v7, 0x6

    if-eq v15, v7, :cond_3

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v13, 0x0

    :cond_3
    if-nez v13, :cond_4

    .line 28
    invoke-virtual {v3, v5}, Le/m/d/n/j/f;->a(I)Z

    goto/16 :goto_5

    .line 29
    :cond_4
    iget-object v5, v10, Le/m/d/n/j/j/q0;->a:Le/m/d/n/j/j/g0;

    .line 30
    :try_start_0
    invoke-virtual {v13}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 31
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v11, 0x2000

    new-array v11, v11, [B

    .line 32
    :goto_2
    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v15, -0x1

    if-eq v12, v15, :cond_5

    .line 33
    invoke-virtual {v7, v11, v9, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 34
    :cond_5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v7, "Could not get input trace in application exit info: "

    .line 35
    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 36
    invoke-virtual {v13}, Landroid/app/ApplicationExitInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Error: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v7, 0x5

    .line 37
    invoke-virtual {v3, v7}, Le/m/d/n/j/f;->a(I)Z

    :cond_6
    const/4 v0, 0x0

    .line 38
    :goto_3
    new-instance v7, Le/m/d/n/j/l/c$b;

    invoke-direct {v7}, Le/m/d/n/j/l/c$b;-><init>()V

    .line 39
    invoke-virtual {v13}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v11

    .line 40
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v7, Le/m/d/n/j/l/c$b;->d:Ljava/lang/Integer;

    .line 41
    invoke-virtual {v13}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Null processName"

    .line 42
    invoke-static {v11, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    iput-object v11, v7, Le/m/d/n/j/l/c$b;->b:Ljava/lang/String;

    .line 44
    invoke-virtual {v13}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v11

    .line 45
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v7, Le/m/d/n/j/l/c$b;->c:Ljava/lang/Integer;

    .line 46
    invoke-virtual {v13}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v11

    .line 47
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v7, Le/m/d/n/j/l/c$b;->g:Ljava/lang/Long;

    .line 48
    invoke-virtual {v13}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v11

    .line 49
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v7, Le/m/d/n/j/l/c$b;->a:Ljava/lang/Integer;

    .line 50
    invoke-virtual {v13}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v11

    .line 51
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v7, Le/m/d/n/j/l/c$b;->e:Ljava/lang/Long;

    .line 52
    invoke-virtual {v13}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v11

    .line 53
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v7, Le/m/d/n/j/l/c$b;->f:Ljava/lang/Long;

    .line 54
    iput-object v0, v7, Le/m/d/n/j/l/c$b;->h:Ljava/lang/String;

    .line 55
    invoke-virtual {v7}, Le/m/d/n/j/l/c$b;->a()Le/m/d/n/j/l/a0$a;

    move-result-object v18

    .line 56
    iget-object v0, v5, Le/m/d/n/j/j/g0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 57
    new-instance v7, Le/m/d/n/j/l/k$b;

    invoke-direct {v7}, Le/m/d/n/j/l/k$b;-><init>()V

    const-string v11, "anr"

    .line 58
    invoke-virtual {v7, v11}, Le/m/d/n/j/l/k$b;->e(Ljava/lang/String;)Le/m/d/n/j/l/a0$e$d$b;

    .line 59
    move-object/from16 v11, v18

    check-cast v11, Le/m/d/n/j/l/c;

    .line 60
    iget-wide v12, v11, Le/m/d/n/j/l/c;->g:J

    .line 61
    invoke-virtual {v7, v12, v13}, Le/m/d/n/j/l/k$b;->d(J)Le/m/d/n/j/l/a0$e$d$b;

    .line 62
    iget v11, v11, Le/m/d/n/j/l/c;->d:I

    const/16 v12, 0x64

    if-eq v11, v12, :cond_7

    const/4 v9, 0x1

    :cond_7
    const/16 v22, 0x0

    const/4 v11, 0x0

    .line 63
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v17, 0x0

    const/16 v16, 0x0

    .line 65
    invoke-virtual {v5}, Le/m/d/n/j/j/g0;->e()Le/m/d/n/j/l/a0$e$d$a$b$c;

    move-result-object v19

    .line 66
    invoke-virtual {v5}, Le/m/d/n/j/j/g0;->a()Le/m/d/n/j/l/b0;

    move-result-object v20

    .line 67
    new-instance v12, Le/m/d/n/j/l/m;

    const/16 v21, 0x0

    move-object v15, v12

    invoke-direct/range {v15 .. v21}, Le/m/d/n/j/l/m;-><init>(Le/m/d/n/j/l/b0;Le/m/d/n/j/l/a0$e$d$a$b$b;Le/m/d/n/j/l/a0$a;Le/m/d/n/j/l/a0$e$d$a$b$c;Le/m/d/n/j/l/b0;Le/m/d/n/j/l/m$a;)V

    if-nez v9, :cond_8

    const-string v13, " uiOrientation"

    goto :goto_4

    :cond_8
    const-string v13, ""

    .line 68
    :goto_4
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 69
    new-instance v13, Le/m/d/n/j/l/l;

    .line 70
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v19, v13

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    invoke-direct/range {v19 .. v25}, Le/m/d/n/j/l/l;-><init>(Le/m/d/n/j/l/a0$e$d$a$b;Le/m/d/n/j/l/b0;Le/m/d/n/j/l/b0;Ljava/lang/Boolean;ILe/m/d/n/j/l/l$a;)V

    .line 71
    invoke-virtual {v7, v13}, Le/m/d/n/j/l/k$b;->b(Le/m/d/n/j/l/a0$e$d$a;)Le/m/d/n/j/l/a0$e$d$b;

    .line 72
    invoke-virtual {v5, v0}, Le/m/d/n/j/j/g0;->b(I)Le/m/d/n/j/l/a0$e$d$c;

    move-result-object v0

    invoke-virtual {v7, v0}, Le/m/d/n/j/l/k$b;->c(Le/m/d/n/j/l/a0$e$d$c;)Le/m/d/n/j/l/a0$e$d$b;

    .line 73
    invoke-virtual {v7}, Le/m/d/n/j/l/k$b;->a()Le/m/d/n/j/l/a0$e$d;

    move-result-object v0

    const/4 v5, 0x3

    .line 74
    invoke-virtual {v3, v5}, Le/m/d/n/j/f;->a(I)Z

    .line 75
    iget-object v5, v10, Le/m/d/n/j/j/q0;->b:Le/m/d/n/j/n/e;

    .line 76
    invoke-virtual {v10, v0, v8, v14}, Le/m/d/n/j/j/q0;->a(Le/m/d/n/j/l/a0$e$d;Le/m/d/n/j/k/e;Le/m/d/n/j/k/k;)Le/m/d/n/j/l/a0$e$d;

    move-result-object v0

    const/4 v7, 0x1

    .line 77
    invoke-virtual {v5, v0, v6, v7}, Le/m/d/n/j/n/e;->d(Le/m/d/n/j/l/a0$e$d;Ljava/lang/String;Z)V

    const/4 v5, 0x2

    goto :goto_5

    .line 78
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v13}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_a
    invoke-virtual {v3, v5}, Le/m/d/n/j/f;->a(I)Z

    goto :goto_5

    .line 80
    :cond_b
    invoke-virtual {v3, v5}, Le/m/d/n/j/f;->a(I)Z

    goto :goto_5

    .line 81
    :cond_c
    invoke-virtual {v3, v5}, Le/m/d/n/j/f;->a(I)Z

    .line 82
    :goto_5
    iget-object v0, v1, Le/m/d/n/j/j/w;->j:Le/m/d/n/j/c;

    invoke-interface {v0, v6}, Le/m/d/n/j/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 83
    invoke-virtual {v3, v5}, Le/m/d/n/j/f;->a(I)Z

    .line 84
    iget-object v0, v1, Le/m/d/n/j/j/w;->j:Le/m/d/n/j/c;

    .line 85
    invoke-interface {v0, v6}, Le/m/d/n/j/c;->b(Ljava/lang/String;)Le/m/d/n/j/g;

    move-result-object v0

    .line 86
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x5

    .line 87
    invoke-virtual {v3, v5}, Le/m/d/n/j/f;->a(I)Z

    :cond_d
    if-eqz v2, :cond_e

    const/4 v0, 0x0

    .line 88
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    .line 89
    :goto_6
    iget-object v2, v1, Le/m/d/n/j/j/w;->l:Le/m/d/n/j/j/q0;

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    .line 91
    div-long/2addr v4, v6

    .line 92
    iget-object v2, v2, Le/m/d/n/j/j/q0;->b:Le/m/d/n/j/n/e;

    .line 93
    iget-object v6, v2, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    .line 94
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/io/File;

    .line 95
    new-instance v8, Ljava/io/File;

    iget-object v9, v6, Le/m/d/n/j/n/f;->a:Ljava/io/File;

    .line 96
    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".com.google.firebase.crashlytics"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-instance v8, Ljava/io/File;

    iget-object v6, v6, Le/m/d/n/j/n/f;->a:Ljava/io/File;

    .line 97
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    const-string v10, ".com.google.firebase.crashlytics-ndk"

    invoke-direct {v8, v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v8, v7, v6

    move v8, v9

    :goto_7
    const/4 v10, 0x2

    if-ge v8, v10, :cond_10

    .line 98
    aget-object v10, v7, v8

    .line 99
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-static {v10}, Le/m/d/n/j/n/f;->h(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 100
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    const/4 v10, 0x3

    .line 101
    invoke-virtual {v3, v10}, Le/m/d/n/j/f;->a(I)Z

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 102
    :cond_10
    invoke-virtual {v2}, Le/m/d/n/j/n/e;->c()Ljava/util/SortedSet;

    move-result-object v7

    if-eqz v0, :cond_11

    .line 103
    invoke-interface {v7, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 104
    :cond_11
    invoke-interface {v7}, Ljava/util/SortedSet;->size()I

    move-result v0

    const/16 v8, 0x8

    if-gt v0, v8, :cond_12

    goto :goto_9

    .line 105
    :cond_12
    :goto_8
    invoke-interface {v7}, Ljava/util/SortedSet;->size()I

    move-result v0

    if-le v0, v8, :cond_13

    .line 106
    invoke-interface {v7}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v10, 0x3

    .line 107
    invoke-virtual {v3, v10}, Le/m/d/n/j/f;->a(I)Z

    .line 108
    iget-object v10, v2, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    .line 109
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v11, Ljava/io/File;

    iget-object v10, v10, Le/m/d/n/j/n/f;->b:Ljava/io/File;

    invoke-direct {v11, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    invoke-static {v11}, Le/m/d/n/j/n/f;->h(Ljava/io/File;)Z

    .line 112
    invoke-interface {v7, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 113
    :cond_13
    :goto_9
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const/4 v0, 0x2

    .line 114
    invoke-virtual {v3, v0}, Le/m/d/n/j/f;->a(I)Z

    .line 115
    iget-object v10, v2, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    sget-object v11, Le/m/d/n/j/n/e;->h:Ljava/io/FilenameFilter;

    .line 116
    invoke-virtual {v10, v8}, Le/m/d/n/j/n/f;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v10

    invoke-static {v10}, Le/m/d/n/j/n/f;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 117
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 118
    invoke-virtual {v3, v0}, Le/m/d/n/j/f;->a(I)Z

    const/4 v10, 0x5

    goto/16 :goto_10

    .line 119
    :cond_14
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 120
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/io/File;

    .line 122
    :try_start_1
    sget-object v0, Le/m/d/n/j/n/e;->f:Le/m/d/n/j/l/d0/g;

    invoke-static {v12}, Le/m/d/n/j/n/e;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13

    .line 123
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 124
    :try_start_2
    new-instance v14, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v13}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    :try_start_3
    invoke-static {v14}, Le/m/d/n/j/l/d0/g;->b(Landroid/util/JsonReader;)Le/m/d/n/j/l/a0$e$d;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    :try_start_4
    invoke-virtual {v14}, Landroid/util/JsonReader;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 127
    :try_start_5
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v9, :cond_17

    .line 128
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v13, "event"

    .line 129
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    const-string v13, "_"

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v0, :cond_15

    move v0, v6

    goto :goto_c

    :cond_15
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_16

    goto :goto_d

    :cond_16
    const/4 v9, 0x0

    goto :goto_b

    :cond_17
    :goto_d
    move v9, v6

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v13, v0

    .line 130
    :try_start_6
    invoke-virtual {v14}, Landroid/util/JsonReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v14, v0

    :try_start_7
    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v13
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_1
    move-exception v0

    .line 131
    :try_start_8
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    .line 132
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not add event to report for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12, v0}, Le/m/d/n/j/f;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 133
    :cond_18
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v10, 0x5

    .line 134
    invoke-virtual {v3, v10}, Le/m/d/n/j/f;->a(I)Z

    goto/16 :goto_10

    :cond_19
    const/4 v10, 0x5

    .line 135
    iget-object v0, v2, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    .line 136
    new-instance v12, Le/m/d/n/j/k/g;

    invoke-direct {v12, v0}, Le/m/d/n/j/k/g;-><init>(Le/m/d/n/j/n/f;)V

    invoke-virtual {v12, v8}, Le/m/d/n/j/k/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v12, v2, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    const-string v13, "report"

    invoke-virtual {v12, v8, v13}, Le/m/d/n/j/n/f;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 138
    :try_start_9
    sget-object v13, Le/m/d/n/j/n/e;->f:Le/m/d/n/j/l/d0/g;

    .line 139
    invoke-static {v12}, Le/m/d/n/j/n/e;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Le/m/d/n/j/l/d0/g;->e(Ljava/lang/String;)Le/m/d/n/j/l/a0;

    move-result-object v14

    .line 140
    invoke-virtual {v14, v4, v5, v9, v0}, Le/m/d/n/j/l/a0;->j(JZLjava/lang/String;)Le/m/d/n/j/l/a0;

    move-result-object v0

    .line 141
    new-instance v14, Le/m/d/n/j/l/b0;

    invoke-direct {v14, v11}, Le/m/d/n/j/l/b0;-><init>(Ljava/util/List;)V

    .line 142
    move-object v11, v0

    check-cast v11, Le/m/d/n/j/l/b;

    .line 143
    iget-object v11, v11, Le/m/d/n/j/l/b;->h:Le/m/d/n/j/l/a0$e;

    if-eqz v11, :cond_1c

    .line 144
    invoke-virtual {v0}, Le/m/d/n/j/l/a0;->i()Le/m/d/n/j/l/a0$b;

    move-result-object v11

    check-cast v0, Le/m/d/n/j/l/b;

    .line 145
    iget-object v0, v0, Le/m/d/n/j/l/b;->h:Le/m/d/n/j/l/a0$e;

    .line 146
    invoke-virtual {v0}, Le/m/d/n/j/l/a0$e;->l()Le/m/d/n/j/l/a0$e$b;

    move-result-object v0

    check-cast v0, Le/m/d/n/j/l/g$b;

    .line 147
    iput-object v14, v0, Le/m/d/n/j/l/g$b;->j:Le/m/d/n/j/l/b0;

    .line 148
    invoke-virtual {v0}, Le/m/d/n/j/l/g$b;->a()Le/m/d/n/j/l/a0$e;

    move-result-object v0

    .line 149
    check-cast v11, Le/m/d/n/j/l/b$b;

    .line 150
    iput-object v0, v11, Le/m/d/n/j/l/b$b;->g:Le/m/d/n/j/l/a0$e;

    .line 151
    invoke-virtual {v11}, Le/m/d/n/j/l/b$b;->a()Le/m/d/n/j/l/a0;

    move-result-object v0

    .line 152
    move-object v11, v0

    check-cast v11, Le/m/d/n/j/l/b;

    .line 153
    iget-object v11, v11, Le/m/d/n/j/l/b;->h:Le/m/d/n/j/l/a0$e;

    if-nez v11, :cond_1a

    goto :goto_10

    :cond_1a
    if-eqz v9, :cond_1b

    .line 154
    iget-object v9, v2, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    invoke-virtual {v11}, Le/m/d/n/j/l/a0$e;->g()Ljava/lang/String;

    move-result-object v11

    .line 155
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v14, Ljava/io/File;

    iget-object v9, v9, Le/m/d/n/j/n/f;->d:Ljava/io/File;

    invoke-direct {v14, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_f

    .line 157
    :cond_1b
    iget-object v9, v2, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    invoke-virtual {v11}, Le/m/d/n/j/l/a0$e;->g()Ljava/lang/String;

    move-result-object v11

    .line 158
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v14, Ljava/io/File;

    iget-object v9, v9, Le/m/d/n/j/n/f;->c:Ljava/io/File;

    invoke-direct {v14, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    :goto_f
    invoke-virtual {v13, v0}, Le/m/d/n/j/l/d0/g;->f(Le/m/d/n/j/l/a0;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Le/m/d/n/j/n/e;->f(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_10

    .line 161
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v9, "Reports without sessions cannot have events added to them."

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    move-exception v0

    .line 162
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not synthesize final report file for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v0}, Le/m/d/n/j/f;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    :goto_10
    iget-object v0, v2, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    .line 164
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v9, Ljava/io/File;

    iget-object v0, v0, Le/m/d/n/j/n/f;->b:Ljava/io/File;

    invoke-direct {v9, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    invoke-static {v9}, Le/m/d/n/j/n/f;->h(Ljava/io/File;)Z

    const/4 v9, 0x0

    goto/16 :goto_a

    .line 167
    :cond_1d
    iget-object v0, v2, Le/m/d/n/j/n/e;->c:Le/m/d/n/j/p/f;

    .line 168
    check-cast v0, Le/m/d/n/j/p/e;

    invoke-virtual {v0}, Le/m/d/n/j/p/e;->b()Le/m/d/n/j/p/j/d;

    move-result-object v0

    invoke-interface {v0}, Le/m/d/n/j/p/j/d;->a()Le/m/d/n/j/p/j/c;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v2}, Le/m/d/n/j/n/e;->b()Ljava/util/List;

    move-result-object v0

    .line 170
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_1e

    goto :goto_12

    .line 171
    :cond_1e
    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 173
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_11

    :cond_1f
    :goto_12
    return-void
.end method

.method public final d(J)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/d/n/j/j/w;->g:Le/m/d/n/j/n/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".ae"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/m/d/n/j/n/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Create new file failed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    sget-object p1, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 p2, 0x5

    .line 4
    invoke-virtual {p1, p2}, Le/m/d/n/j/f;->a(I)Z

    :goto_0
    return-void
.end method

.method public e(Le/m/d/n/j/p/f;)Z
    .locals 4

    .line 1
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    iget-object v1, p0, Le/m/d/n/j/j/w;->e:Le/m/d/n/j/j/m;

    invoke-virtual {v1}, Le/m/d/n/j/j/m;->a()V

    .line 2
    invoke-virtual {p0}, Le/m/d/n/j/j/w;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 p1, 0x5

    .line 3
    invoke-virtual {v0, p1}, Le/m/d/n/j/f;->a(I)Z

    return v2

    :cond_0
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    const/4 v3, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p0, v3, p1}, Le/m/d/n/j/j/w;->c(ZLe/m/d/n/j/p/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    return v3

    :catch_0
    const/4 p1, 0x6

    .line 7
    invoke-virtual {v0, p1}, Le/m/d/n/j/f;->a(I)Z

    return v2
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/d/n/j/j/w;->l:Le/m/d/n/j/j/q0;

    .line 2
    iget-object v0, v0, Le/m/d/n/j/j/q0;->b:Le/m/d/n/j/n/e;

    invoke-virtual {v0}, Le/m/d/n/j/n/e;->c()Ljava/util/SortedSet;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/n/j/j/w;->m:Le/m/d/n/j/j/i0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/m/d/n/j/j/i0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Le/m/d/n/j/p/j/a;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    iget-object v2, p0, Le/m/d/n/j/j/w;->l:Le/m/d/n/j/j/q0;

    .line 2
    iget-object v2, v2, Le/m/d/n/j/j/q0;->b:Le/m/d/n/j/n/e;

    .line 3
    iget-object v3, v2, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    invoke-virtual {v3}, Le/m/d/n/j/n/f;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    .line 4
    invoke-virtual {v3}, Le/m/d/n/j/n/f;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    .line 5
    invoke-virtual {v2}, Le/m/d/n/j/n/f;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x2

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {v1, v3}, Le/m/d/n/j/f;->a(I)Z

    .line 7
    iget-object p1, p0, Le/m/d/n/j/j/w;->n:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {v1, v3}, Le/m/d/n/j/f;->a(I)Z

    .line 10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p0, Le/m/d/n/j/j/w;->b:Le/m/d/n/j/j/j0;

    invoke-virtual {v4}, Le/m/d/n/j/j/j0;->a()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v1, v5}, Le/m/d/n/j/f;->a(I)Z

    .line 12
    iget-object v1, p0, Le/m/d/n/j/j/w;->n:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v1, v5}, Le/m/d/n/j/f;->a(I)Z

    .line 15
    invoke-virtual {v1, v3}, Le/m/d/n/j/f;->a(I)Z

    .line 16
    iget-object v0, p0, Le/m/d/n/j/j/w;->n:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Le/m/d/n/j/j/w;->b:Le/m/d/n/j/j/j0;

    .line 18
    iget-object v2, v0, Le/m/d/n/j/j/j0;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v0, v0, Le/m/d/n/j/j/j0;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 20
    iget-object v0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 21
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    new-instance v2, Le/m/d/n/j/j/t;

    invoke-direct {v2, p0}, Le/m/d/n/j/j/t;-><init>(Le/m/d/n/j/j/w;)V

    .line 23
    invoke-virtual {v0, v2}, Le/m/a/f/q/b0;->t(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 24
    invoke-virtual {v1, v5}, Le/m/d/n/j/f;->a(I)Z

    .line 25
    iget-object v1, p0, Le/m/d/n/j/j/w;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 26
    iget-object v1, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 27
    sget-object v2, Le/m/d/n/j/j/t0;->a:Ljava/util/concurrent/ExecutorService;

    .line 28
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 29
    new-instance v3, Le/m/d/n/j/j/f;

    invoke-direct {v3, v2}, Le/m/d/n/j/j/f;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 30
    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/Task;->j(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 31
    invoke-virtual {v1, v3}, Le/m/a/f/q/b0;->j(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 32
    iget-object v0, v2, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 33
    :goto_2
    new-instance v1, Le/m/d/n/j/j/w$a;

    invoke-direct {v1, p0, p1}, Le/m/d/n/j/j/w$a;-><init>(Le/m/d/n/j/j/w;Lcom/google/android/gms/tasks/Task;)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->t(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
