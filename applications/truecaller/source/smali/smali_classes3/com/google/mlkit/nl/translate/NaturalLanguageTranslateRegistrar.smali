.class public Lcom/google/mlkit/nl/translate/NaturalLanguageTranslateRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/s;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/m/d/m/o<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Le/m/h/b/b/e/e$a;

    const-class v1, Le/m/h/b/b/e/q$b;

    const-class v2, Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    const-class v3, Le/m/h/b/b/e/v$b;

    const-class v4, Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;

    const-class v5, Lcom/google/android/gms/internal/mlkit_translate/zzgs;

    const-class v6, Le/m/h/b/b/e/x;

    const-class v7, Le/m/h/b/b/e/l;

    const-class v8, Le/m/h/b/b/e/q$a;

    const-class v9, Le/m/h/b/b/e/v;

    const-class v10, Le/m/h/a/d/n/c;

    const-class v11, Le/m/h/b/b/e/n$a;

    sget-object v12, Lcom/google/android/gms/internal/mlkit_translate/zzgs;->zza:Le/m/d/m/o;

    sget-object v13, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zza:Le/m/d/m/o;

    sget-object v14, Lcom/google/android/gms/internal/mlkit_translate/zzgq;->zza:Le/m/d/m/o;

    sget-object v15, Lcom/google/android/gms/internal/mlkit_translate/zzgo;->zza:Le/m/d/m/o;

    move-object/from16 v16, v15

    .line 2
    invoke-static {v6}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v15

    move-object/from16 v17, v14

    .line 3
    new-instance v14, Le/m/d/m/x;

    move-object/from16 v18, v13

    const/4 v13, 0x1

    move-object/from16 v19, v12

    const/4 v12, 0x0

    invoke-direct {v14, v5, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v15, v14}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 5
    new-instance v14, Le/m/d/m/x;

    invoke-direct {v14, v8, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v15, v14}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 7
    new-instance v14, Le/m/d/m/x;

    invoke-direct {v14, v7, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v15, v14}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v14, Le/m/h/b/b/f;->a:Le/m/d/m/r;

    .line 9
    invoke-virtual {v15, v14}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 10
    invoke-virtual {v15}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v20

    const-class v14, Le/m/h/a/c/c$a;

    .line 11
    invoke-static {v14}, Le/m/d/m/o;->b(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v14

    .line 12
    new-instance v15, Le/m/d/m/x;

    invoke-direct {v15, v6, v13, v13}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 13
    invoke-virtual {v14, v15}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v6, Le/m/h/b/b/h;->a:Le/m/d/m/r;

    .line 14
    invoke-virtual {v14, v6}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 15
    invoke-virtual {v14}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v6

    .line 16
    invoke-static {v7}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v14

    const-class v15, Landroid/content/Context;

    move-object/from16 v21, v6

    .line 17
    new-instance v6, Le/m/d/m/x;

    invoke-direct {v6, v15, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 18
    invoke-virtual {v14, v6}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 19
    new-instance v6, Le/m/d/m/x;

    invoke-direct {v6, v10, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 20
    invoke-virtual {v14, v6}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v6, Le/m/h/b/b/j;->a:Le/m/d/m/r;

    .line 21
    invoke-virtual {v14, v6}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 22
    invoke-virtual {v14, v13}, Le/m/d/m/o$b;->d(I)Le/m/d/m/o$b;

    .line 23
    invoke-virtual {v14}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v6

    .line 24
    invoke-static {v4}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v14

    .line 25
    new-instance v15, Le/m/d/m/x;

    invoke-direct {v15, v9, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 26
    invoke-virtual {v14, v15}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 27
    new-instance v15, Le/m/d/m/x;

    invoke-direct {v15, v10, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 28
    invoke-virtual {v14, v15}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 29
    new-instance v15, Le/m/d/m/x;

    invoke-direct {v15, v11, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 30
    invoke-virtual {v14, v15}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v15, Le/m/h/b/b/i;->a:Le/m/d/m/r;

    .line 31
    invoke-virtual {v14, v15}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 32
    invoke-virtual {v14}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v22

    const-class v14, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;

    .line 33
    invoke-static {v14}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v14

    .line 34
    new-instance v15, Le/m/d/m/x;

    invoke-direct {v15, v8, v13, v13}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 35
    invoke-virtual {v14, v15}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 36
    new-instance v15, Le/m/d/m/x;

    invoke-direct {v15, v4, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 37
    invoke-virtual {v14, v15}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 38
    new-instance v4, Le/m/d/m/x;

    invoke-direct {v4, v11, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 39
    invoke-virtual {v14, v4}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 40
    new-instance v4, Le/m/d/m/x;

    invoke-direct {v4, v9, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 41
    invoke-virtual {v14, v4}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v4, Le/m/h/a/d/d;

    .line 42
    new-instance v15, Le/m/d/m/x;

    invoke-direct {v15, v4, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 43
    invoke-virtual {v14, v15}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 44
    new-instance v4, Le/m/d/m/x;

    invoke-direct {v4, v7, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 45
    invoke-virtual {v14, v4}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v4, Le/m/h/a/d/b$a;

    .line 46
    new-instance v7, Le/m/d/m/x;

    invoke-direct {v7, v4, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 47
    invoke-virtual {v14, v7}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v4, Le/m/h/b/b/l;->a:Le/m/d/m/r;

    .line 48
    invoke-virtual {v14, v4}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 49
    invoke-virtual {v14}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v4

    .line 50
    invoke-static {v11}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v7

    .line 51
    new-instance v14, Le/m/d/m/x;

    invoke-direct {v14, v5, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 52
    invoke-virtual {v7, v14}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v5, Le/m/h/b/b/k;->a:Le/m/d/m/r;

    .line 53
    invoke-virtual {v7, v5}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 54
    invoke-virtual {v7}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v5

    .line 55
    invoke-static {v3}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v7

    .line 56
    new-instance v14, Le/m/d/m/x;

    invoke-direct {v14, v2, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 57
    invoke-virtual {v7, v14}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v14, Le/m/h/b/b/n;->a:Le/m/d/m/r;

    .line 58
    invoke-virtual {v7, v14}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 59
    invoke-virtual {v7}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v7

    .line 60
    invoke-static {v9}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v14

    .line 61
    new-instance v15, Le/m/d/m/x;

    invoke-direct {v15, v2, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 62
    invoke-virtual {v14, v15}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 63
    new-instance v2, Le/m/d/m/x;

    invoke-direct {v2, v3, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 64
    invoke-virtual {v14, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 65
    new-instance v2, Le/m/d/m/x;

    invoke-direct {v2, v11, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 66
    invoke-virtual {v14, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 67
    new-instance v2, Le/m/d/m/x;

    invoke-direct {v2, v10, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 68
    invoke-virtual {v14, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v2, Le/m/h/b/b/m;->a:Le/m/d/m/r;

    .line 69
    invoke-virtual {v14, v2}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 70
    invoke-virtual {v14}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v23

    const/4 v2, 0x3

    new-array v2, v2, [Le/m/d/m/o;

    .line 71
    invoke-static {v1}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v3

    sget-object v14, Le/m/h/b/b/p;->a:Le/m/d/m/r;

    .line 72
    invoke-virtual {v3, v14}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 73
    invoke-virtual {v3}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v3

    aput-object v3, v2, v12

    .line 74
    invoke-static {v0}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v3

    const-class v14, Le/m/h/a/d/g;

    .line 75
    new-instance v15, Le/m/d/m/x;

    invoke-direct {v15, v14, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 76
    invoke-virtual {v3, v15}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v14, Landroid/content/Context;

    .line 77
    new-instance v15, Le/m/d/m/x;

    invoke-direct {v15, v14, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 78
    invoke-virtual {v3, v15}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 79
    new-instance v14, Le/m/d/m/x;

    invoke-direct {v14, v11, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 80
    invoke-virtual {v3, v14}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 81
    new-instance v11, Le/m/d/m/x;

    invoke-direct {v11, v9, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 82
    invoke-virtual {v3, v11}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 83
    new-instance v9, Le/m/d/m/x;

    invoke-direct {v9, v10, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 84
    invoke-virtual {v3, v9}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v9, Le/m/h/a/d/l;

    .line 85
    new-instance v10, Le/m/d/m/x;

    invoke-direct {v10, v9, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 86
    invoke-virtual {v3, v10}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v9, Le/m/h/b/b/o;->a:Le/m/d/m/r;

    .line 87
    invoke-virtual {v3, v9}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 88
    invoke-virtual {v3}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v3

    aput-object v3, v2, v13

    .line 89
    invoke-static {v8}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v3

    .line 90
    new-instance v8, Le/m/d/m/x;

    invoke-direct {v8, v0, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 91
    invoke-virtual {v3, v8}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 92
    new-instance v0, Le/m/d/m/x;

    invoke-direct {v0, v1, v13, v12}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 93
    invoke-virtual {v3, v0}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v0, Le/m/h/b/b/g;->a:Le/m/d/m/r;

    .line 94
    invoke-virtual {v3, v0}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 95
    invoke-virtual {v3}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v2, v1

    move-object/from16 v12, v19

    move-object/from16 v13, v18

    move-object/from16 v14, v17

    move-object/from16 v15, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    move-object/from16 v18, v6

    move-object/from16 v19, v22

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move-object/from16 v24, v2

    .line 96
    invoke-static/range {v12 .. v24}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v0

    return-object v0
.end method
