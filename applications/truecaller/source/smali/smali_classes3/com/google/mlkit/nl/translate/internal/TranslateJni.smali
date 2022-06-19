.class public Lcom/google/mlkit/nl/translate/internal/TranslateJni;
.super Le/m/h/a/d/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;,
        Lcom/google/mlkit/nl/translate/internal/TranslateJni$b;,
        Lcom/google/mlkit/nl/translate/internal/TranslateJni$c;,
        Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;
    }
.end annotation


# static fields
.field public static j:Z


# instance fields
.field public final d:Le/m/h/b/b/e/v;

.field public final e:Le/m/h/b/b/e/n;

.field public final f:Le/m/h/a/d/n/c;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:J


# direct methods
.method public constructor <init>(Le/m/h/b/b/e/v;Le/m/h/b/b/e/n;Le/m/h/a/d/n/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/h/a/d/j;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->d:Le/m/h/b/b/e/v;

    .line 3
    iput-object p2, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->e:Le/m/h/b/b/e/n;

    .line 4
    iput-object p3, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->f:Le/m/h/a/d/n/c;

    .line 5
    iput-object p4, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->g:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->h:Ljava/lang/String;

    return-void
.end method

.method private static newLoadingException(I)Ljava/lang/Exception;
    .locals 2
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
        value = "translate_jni.cc"
    .end annotation

    .line 1
    new-instance v0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/mlkit/nl/translate/internal/TranslateJni$c;-><init>(ILe/m/h/b/b/e/k;)V

    return-object v0
.end method

.method private static newTranslateException(I)Ljava/lang/Exception;
    .locals 2
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
        value = "translate_jni.cc"
    .end annotation

    .line 1
    new-instance v0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/mlkit/nl/translate/internal/TranslateJni$b;-><init>(ILe/m/h/b/b/e/k;)V

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/h/a/a;
        }
    .end annotation

    move-object/from16 v12, p0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 2
    :try_start_0
    iget-wide v0, v12, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->i:J

    const-wide/16 v15, 0x0

    cmp-long v0, v0, v15

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    .line 3
    sget-boolean v0, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "translate_jni"

    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 5
    :try_start_2
    sput-boolean v10, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->j:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Le/m/h/a/a;

    const-string v2, "Couldn\'t load translate native code library."

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3, v0}, Le/m/h/a/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_1
    :goto_1
    iget-object v0, v12, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->g:Ljava/lang/String;

    iget-object v1, v12, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->h:Ljava/lang/String;

    .line 8
    sget-object v2, Le/m/h/b/b/e/w;->a:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v0

    goto :goto_3

    :cond_2
    const-string v2, "en"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v0

    goto :goto_3

    .line 13
    :cond_4
    :goto_2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v0

    .line 14
    :goto_3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v9, 0x2

    const/4 v8, 0x0

    if-lt v1, v9, :cond_9

    .line 15
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Le/m/h/b/b/e/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    iget-object v2, v12, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->f:Le/m/h/a/d/n/c;

    sget-object v3, Le/m/h/a/d/k;->d:Le/m/h/a/d/k;

    invoke-virtual {v2, v1, v3, v11}, Le/m/h/a/d/n/c;->b(Ljava/lang/String;Le/m/h/a/d/k;Z)Ljava/io/File;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 18
    new-instance v1, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;

    invoke-direct {v1, v12, v8}, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;-><init>(Lcom/google/mlkit/nl/translate/internal/TranslateJni;Le/m/h/b/b/e/k;)V

    .line 19
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v5}, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v2, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;

    invoke-direct {v2, v12, v8}, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;-><init>(Lcom/google/mlkit/nl/translate/internal/TranslateJni;Le/m/h/b/b/e/k;)V

    .line 21
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-le v5, v9, :cond_5

    .line 22
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Le/m/h/b/b/e/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 23
    iget-object v6, v12, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->f:Le/m/h/a/d/n/c;

    invoke-virtual {v6, v5, v3, v11}, Le/m/h/a/d/n/c;->b(Ljava/lang/String;Le/m/h/a/d/k;Z)Ljava/io/File;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v0}, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v3

    goto :goto_4

    :cond_5
    move-object v5, v8

    .line 26
    :goto_4
    :try_start_3
    iget-object v0, v12, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->g:Ljava/lang/String;

    iget-object v3, v12, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->h:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->a:Ljava/lang/String;

    iget-object v7, v2, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->a:Ljava/lang/String;

    iget-object v8, v1, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->b:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->c:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->c:Ljava/lang/String;

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move-object v2, v0

    const/4 v0, 0x0

    move-object/from16 v10, v18

    move/from16 v17, v11

    move-object/from16 v11, v19

    .line 27
    invoke-virtual/range {v1 .. v11}, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->nativeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->i:J

    cmp-long v1, v1, v15

    if-eqz v1, :cond_6

    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    move/from16 v11, v17

    .line 28
    :goto_5
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V
    :try_end_3
    .catch Lcom/google/mlkit/nl/translate/internal/TranslateJni$c; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_1
    move-exception v0

    .line 29
    :try_start_4
    iget v1, v0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$c;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    goto :goto_6

    .line 30
    :cond_7
    new-instance v1, Le/m/h/a/a;

    const-string v2, "Error loading translation model"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, Le/m/h/a/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 31
    :cond_8
    :goto_6
    new-instance v1, Le/m/h/a/a;

    const-string v2, "Translation model files not found. Make sure to call downloadModelIfNeeded and if that fails, delete the models and retry."

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v0}, Le/m/h/a/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_9
    move-object v0, v8

    .line 32
    :goto_7
    iget-object v1, v12, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->e:Le/m/h/b/b/e/n;

    invoke-virtual {v1, v13, v14, v0}, Le/m/h/b/b/e/n;->b(JLjava/lang/Exception;)V

    return-void

    :catch_2
    move-exception v0

    .line 33
    iget-object v1, v12, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->e:Le/m/h/b/b/e/n;

    invoke-virtual {v1, v13, v14, v0}, Le/m/h/b/b/e/n;->b(JLjava/lang/Exception;)V

    .line 34
    throw v0
.end method

.method public d()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->nativeDestroy(J)V

    .line 3
    iput-wide v2, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->i:J

    return-void
.end method

.method public final native nativeDestroy(J)V
.end method

.method public final native nativeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/nl/translate/internal/TranslateJni$c;
        }
    .end annotation
.end method

.method public native nativeTranslate(J[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/nl/translate/internal/TranslateJni$b;
        }
    .end annotation
.end method
