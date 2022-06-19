.class public final synthetic Le/m/h/a/d/n/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Le/m/h/a/d/n/b;


# direct methods
.method public constructor <init>(Le/m/h/a/d/n/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/a/d/n/i;->a:Le/m/h/a/d/n/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Le/m/h/a/d/n/i;->a:Le/m/h/a/d/n/b;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Le/m/h/a/d/n/b;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "com.google.firebase.ml.translate.models"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 4
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_d

    aget-object v7, v3, v6

    .line 5
    move-object v8, v1

    check-cast v8, Le/m/h/b/b/e/l;

    .line 6
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    const-string v11, "\\+"

    .line 7
    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 8
    array-length v10, v9

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v10, v11, :cond_0

    goto :goto_3

    .line 9
    :cond_0
    :try_start_0
    aget-object v10, v9, v5

    const/16 v13, 0xb

    if-nez v10, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {v10, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 11
    :goto_1
    aget-object v9, v9, v12

    if-nez v9, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    invoke-static {v9, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v9, v12

    goto :goto_4

    :catch_0
    :goto_3
    move v9, v5

    :goto_4
    if-nez v9, :cond_3

    goto :goto_5

    .line 13
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_4

    :goto_5
    move-object/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_b

    .line 14
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    move v13, v5

    :goto_6
    if-ge v13, v10, :cond_c

    aget-object v14, v9, v13

    .line 15
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    .line 16
    :try_start_1
    invoke-static {v15}, Le/m/h/b/b/e/w;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 17
    array-length v12, v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v12, v11, :cond_5

    const/4 v12, 0x1

    goto :goto_7

    :catch_1
    :cond_5
    move v12, v5

    :goto_7
    if-eqz v12, :cond_b

    .line 18
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 19
    :try_start_2
    iget-object v12, v8, Le/m/h/a/d/n/b;->c:Le/m/h/a/d/n/c;

    sget-object v11, Le/m/h/a/d/k;->d:Le/m/h/a/d/k;

    .line 20
    invoke-virtual {v12, v15, v11, v5}, Le/m/h/a/d/n/c;->c(Ljava/lang/String;Le/m/h/a/d/k;Z)Ljava/io/File;

    move-result-object v11
    :try_end_2
    .catch Le/m/h/a/a; {:try_start_2 .. :try_end_2} :catch_2

    .line 21
    invoke-static {v15}, Le/m/h/b/b/e/w;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/AbstractCollection;->size()I

    move-result v15

    :goto_8
    if-ge v5, v15, :cond_9

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v3

    .line 22
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move/from16 v17, v4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_9

    .line 24
    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 25
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 26
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 27
    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_8

    .line 29
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :cond_8
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v3, v16

    move/from16 v4, v17

    goto :goto_8

    :cond_9
    move-object/from16 v16, v3

    move/from16 v17, v4

    .line 30
    invoke-static {v14}, Le/m/h/a/d/n/b;->a(Ljava/io/File;)V

    goto :goto_a

    :catch_2
    move-object/from16 v16, v3

    move/from16 v17, v4

    const-string v0, "Error creating model directory for "

    .line 31
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a

    :cond_a
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_b
    move-object/from16 v16, v3

    move/from16 v17, v4

    :goto_a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    move/from16 v4, v17

    const/4 v5, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto/16 :goto_6

    :cond_c
    move-object/from16 v16, v3

    move/from16 v17, v4

    .line 32
    invoke-static {v7}, Le/m/h/a/d/n/b;->a(Ljava/io/File;)V

    :goto_b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    move/from16 v4, v17

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 33
    :cond_d
    invoke-static {v2}, Le/m/h/a/d/n/b;->a(Ljava/io/File;)V

    .line 34
    :cond_e
    iget-object v0, v1, Le/m/h/a/d/n/b;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    .line 35
    iget-object v0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {v0, v1}, Le/m/a/f/q/b0;->w(Ljava/lang/Object;)V

    return-void
.end method
