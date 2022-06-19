.class public Le/m/h/a/d/n/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final h:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field public final a:Le/m/h/a/d/g;

.field public final b:Ljava/lang/String;

.field public final c:Le/m/h/a/d/k;

.field public final d:Le/m/h/a/d/n/e;

.field public final e:Le/m/h/a/d/n/g;

.field public final f:Le/m/h/a/d/l;

.field public final g:Le/m/h/a/d/n/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "RemoteModelFileManager"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/m/h/a/d/n/f;->h:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>(Le/m/h/a/d/g;Le/m/h/a/c/b;Le/m/h/a/d/n/e;Le/m/h/a/d/n/c;Le/m/h/a/d/n/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/h/a/d/n/f;->a:Le/m/h/a/d/g;

    .line 3
    iget-object v0, p2, Le/m/h/a/c/b;->c:Le/m/h/a/d/k;

    .line 4
    iput-object v0, p0, Le/m/h/a/d/n/f;->c:Le/m/h/a/d/k;

    .line 5
    sget-object v1, Le/m/h/a/d/k;->d:Le/m/h/a/d/k;

    if-ne v0, v1, :cond_0

    .line 6
    invoke-virtual {p2}, Le/m/h/a/c/b;->a()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Le/m/h/a/c/b;->b()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Le/m/h/a/d/n/f;->b:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Le/m/h/a/d/n/f;->d:Le/m/h/a/d/n/e;

    .line 9
    sget-object p2, Le/m/h/a/d/l;->b:Le/m/d/m/o;

    .line 10
    const-class p2, Le/m/h/a/d/l;

    invoke-virtual {p1, p2}, Le/m/h/a/d/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/h/a/d/l;

    .line 11
    iput-object p1, p0, Le/m/h/a/d/n/f;->f:Le/m/h/a/d/l;

    .line 12
    iput-object p4, p0, Le/m/h/a/d/n/f;->g:Le/m/h/a/d/n/c;

    .line 13
    iput-object p5, p0, Le/m/h/a/d/n/f;->e:Le/m/h/a/d/n/g;

    return-void
.end method


# virtual methods
.method public a(Z)Ljava/io/File;
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/h/a/d/n/f;->g:Le/m/h/a/d/n/c;

    iget-object v1, p0, Le/m/h/a/d/n/f;->b:Ljava/lang/String;

    iget-object v2, p0, Le/m/h/a/d/n/f;->c:Le/m/h/a/d/k;

    invoke-virtual {v0, v1, v2, p1}, Le/m/h/a/d/n/c;->b(Ljava/lang/String;Le/m/h/a/d/k;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized b(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Le/m/h/a/c/b;)Ljava/io/File;
    .locals 8
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/h/a/a;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/h/a/d/n/f;->a:Le/m/h/a/d/g;

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;

    .line 2
    invoke-virtual {v0, v1}, Le/m/h/a/d/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;

    invoke-virtual {v0, p3}, Le/m/h/a/d/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzdx;

    .line 3
    iget-object v1, p0, Le/m/h/a/d/n/f;->g:Le/m/h/a/d/n/c;

    iget-object v2, p0, Le/m/h/a/d/n/f;->b:Ljava/lang/String;

    iget-object v3, p0, Le/m/h/a/d/n/f;->c:Le/m/h/a/d/k;

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Le/m/h/a/d/n/c;->c(Ljava/lang/String;Le/m/h/a/d/k;Z)Ljava/io/File;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/io/File;

    const-string v3, "to_be_validated_model.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 6
    :try_start_1
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 7
    :try_start_2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v3, 0x1000

    :try_start_3
    new-array v3, v3, [B

    .line 8
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_0

    .line 9
    invoke-virtual {p1, v3, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 12
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 13
    :try_start_6
    invoke-static {v2, p2}, Le/m/h/a/b/a/a;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    iget-object v1, p0, Le/m/h/a/d/n/f;->d:Le/m/h/a/d/n/e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Le/m/h/a/d/n/d;->a:Le/m/h/a/d/n/d;

    .line 16
    sget-object v3, Le/m/h/a/d/n/d;->b:Le/m/h/a/d/n/d;

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    iget-object v1, p0, Le/m/h/a/d/n/f;->a:Le/m/h/a/d/g;

    invoke-virtual {v1}, Le/m/h/a/d/g;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/m/h/a/d/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 19
    iget-object v3, p0, Le/m/h/a/d/n/f;->f:Le/m/h/a/d/l;

    invoke-virtual {v3, p3, p2, v1}, Le/m/h/a/d/l;->g(Le/m/h/a/c/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object p3, Le/m/h/a/d/n/f;->h:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v3, "RemoteModelFileManager"

    const-string v5, "Model is not compatible. Model hash: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_1
    invoke-virtual {p3, v3, v5}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "RemoteModelFileManager"

    const-string v5, "The current app version is: "

    .line 21
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p3, v3, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v7, v4

    :cond_4
    if-eqz p1, :cond_6

    if-nez v7, :cond_5

    goto :goto_3

    .line 22
    :cond_5
    iget-object p1, p0, Le/m/h/a/d/n/f;->e:Le/m/h/a/d/n/g;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    check-cast p1, Le/m/h/b/b/e/y;

    :try_start_7
    invoke-virtual {p1, v2}, Le/m/h/b/b/e/y;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit p0

    return-object p1

    :cond_6
    :goto_3
    if-nez p1, :cond_8

    .line 23
    :try_start_8
    sget-object p1, Le/m/h/a/d/n/f;->h:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p3, "RemoteModelFileManager"

    const-string v1, "Hash does not match with expected: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_7
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x19

    .line 24
    iget-object p2, p0, Le/m/h/a/d/n/f;->c:Le/m/h/a/d/k;

    const/4 p3, 0x6

    invoke-virtual {v0, p1, v4, p2, p3}, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zza(IZLe/m/h/a/d/k;I)V

    .line 25
    new-instance p1, Le/m/h/a/a;

    const-string p2, "Hash does not match with expected"

    const/16 p3, 0x66

    invoke-direct {p1, p2, p3}, Le/m/h/a/a;-><init>(Ljava/lang/String;I)V

    goto :goto_5

    .line 26
    :cond_8
    new-instance p1, Le/m/h/a/a;

    const-string p2, "Model is not compatible with TFLite run time"

    const/16 p3, 0x64

    invoke-direct {p1, p2, p3}, Le/m/h/a/a;-><init>(Ljava/lang/String;I)V

    .line 27
    :goto_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_a

    .line 28
    sget-object p2, Le/m/h/a/d/n/f;->h:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p3, "RemoteModelFileManager"

    const-string v0, "Failed to delete the temp file: "

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_6
    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_a
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_0
    move-exception p2

    .line 30
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p1

    :try_start_a
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzan;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    .line 31
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception p2

    :try_start_c
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzan;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_8
    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catch_0
    move-exception p1

    .line 32
    :try_start_d
    sget-object p2, Le/m/h/a/d/n/f;->h:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p3, "RemoteModelFileManager"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to copy downloaded model file to private folder: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    const/4 p1, 0x0

    .line 33
    monitor-exit p0

    return-object p1

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method
