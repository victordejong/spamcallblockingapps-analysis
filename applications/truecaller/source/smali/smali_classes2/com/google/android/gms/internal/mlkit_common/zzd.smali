.class public final Lcom/google/android/gms/internal/mlkit_common/zzd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "com.android."

    const-string v1, "com.google."

    const-string v2, "com.chrome."

    const-string v3, "com.nest."

    const-string v4, "com.waymo."

    const-string v5, "com.waze"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "media"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    const-string v4, ""

    if-gt v1, v3, :cond_0

    const-string v5, "com.google.android.inputmethod.latin.inputcontent"

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    const/4 v6, 0x1

    aput-object v5, v0, v6

    const/4 v5, 0x2

    if-gt v1, v3, :cond_1

    const-string v1, "com.google.android.inputmethod.latin.dev.inputcontent"

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    aput-object v1, v0, v5

    const/4 v1, 0x3

    .line 3
    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v5, "goldfish"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "ranchu"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v2, v6

    :cond_3
    if-eqz v2, :cond_4

    const-string v4, "com.google.android.apps.common.testing.services.storage.runfiles"

    :cond_4
    aput-object v4, v0, v1

    .line 4
    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzd;->zzb:[Ljava/lang/String;

    return-void
.end method

.method public static zza(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzh;->zza:Lcom/google/android/gms/internal/mlkit_common/zzh;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_common/zzh;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_common/zzh;)Landroid/content/res/AssetFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.resource"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "content"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "rwt"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "wt"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "rw"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :sswitch_3
    const-string v2, "w"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_0

    :sswitch_4
    const-string v2, "r"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    move v3, v4

    .line 12
    :pswitch_1
    invoke-static {p0, p1, v3, p3}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Landroid/content/Context;Landroid/net/Uri;ILcom/google/android/gms/internal/mlkit_common/zzh;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/AssetFileDescriptor;

    return-object p0

    .line 14
    :cond_6
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Can\'t open content uri."

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const-string v2, "file"

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/res/AssetFileDescriptor;

    .line 17
    :try_start_0
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {p0, v0, p1, p3}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_common/zzh;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p3, "Validation failed."

    invoke-direct {p1, p3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, p0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 20
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Landroid/content/res/AssetFileDescriptor;Ljava/io/FileNotFoundException;)V

    .line 21
    throw p1

    :catch_1
    move-exception p0

    .line 22
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Landroid/content/res/AssetFileDescriptor;Ljava/io/FileNotFoundException;)V

    .line 23
    throw p0

    .line 24
    :cond_8
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Not implemented. Contact tiktok-users@"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x72 -> :sswitch_4
        0x77 -> :sswitch_3
        0xe45 -> :sswitch_2
        0xedd -> :sswitch_1
        0x1bacf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static zza(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzh;->zza:Lcom/google/android/gms/internal/mlkit_common/zzh;

    .line 26
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_common/zzh;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_common/zzh;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.resource"

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "content"

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 33
    invoke-static {p0, p1, v1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Landroid/content/Context;Landroid/net/Uri;ILcom/google/android/gms/internal/mlkit_common/zzh;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 34
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0

    .line 35
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Can\'t open content uri."

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string v2, "file"

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 39
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 40
    :try_start_1
    invoke-static {p0, v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_common/zzh;)V

    .line 41
    new-instance p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Validation failed."

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, p0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 44
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Landroid/os/ParcelFileDescriptor;Ljava/io/FileNotFoundException;)V

    .line 45
    throw p1

    :catch_1
    move-exception p0

    .line 46
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Landroid/os/ParcelFileDescriptor;Ljava/io/FileNotFoundException;)V

    .line 47
    throw p0

    :catch_2
    move-exception p0

    .line 48
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Canonicalization failed."

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, p0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 50
    throw p1

    .line 51
    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Not implemented. Contact tiktok-users@"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 103
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "Content resolver returned null value."

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_common/zzh;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzj;->zza(Ljava/io/FileDescriptor;)Lcom/google/android/gms/internal/mlkit_common/zzj;

    move-result-object p1

    .line 74
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_common/zzj;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzj;

    move-result-object v0

    .line 75
    iget-boolean v1, v0, Lcom/google/android/gms/internal/mlkit_common/zzj;->zzc:Z

    const-string v2, "Can\'t open file: "

    if-eqz v1, :cond_1

    .line 76
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_1
    iget-wide v3, p1, Lcom/google/android/gms/internal/mlkit_common/zzj;->zza:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/mlkit_common/zzj;->zza:J

    cmp-long v1, v3, v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget-wide v5, p1, Lcom/google/android/gms/internal/mlkit_common/zzj;->zzb:J

    iget-wide v0, v0, Lcom/google/android/gms/internal/mlkit_common/zzj;->zzb:J

    cmp-long p1, v5, v0

    if-nez p1, :cond_2

    move p1, v4

    goto :goto_1

    :cond_2
    move p1, v3

    :goto_1
    if-nez p1, :cond_4

    .line 78
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p1, "/proc/"

    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_c

    :cond_5
    const-string p1, "/data/misc/"

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_c

    .line 81
    :cond_6
    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_common/zzh;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzh;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_c

    .line 82
    :cond_7
    invoke-static {p0}, Ln3/k/b/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    .line 84
    :cond_8
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    .line 85
    :cond_9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_a

    .line 86
    invoke-static {p0}, Ln3/k/b/a$e;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_b

    .line 87
    invoke-static {p1}, Ln3/k/b/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 88
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    :goto_4
    move p1, v4

    goto :goto_5

    :cond_b
    move p1, v3

    :goto_5
    if-eqz p1, :cond_c

    goto :goto_a

    .line 89
    :cond_c
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_common/zzc;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Ljava/util/concurrent/Callable;)[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    move v1, v3

    :goto_6
    if-ge v1, v0, :cond_e

    aget-object v5, p1, v1

    if-eqz v5, :cond_d

    .line 90
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 91
    :cond_e
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzf;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_common/zzf;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Ljava/util/concurrent/Callable;)[Ljava/io/File;

    move-result-object p0

    array-length p1, p0

    move v0, v3

    :goto_7
    if-ge v0, p1, :cond_10

    aget-object v1, p0, v0

    if-eqz v1, :cond_f

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_8
    move p0, v4

    goto :goto_9

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_10
    move p0, v3

    :goto_9
    if-eqz p0, :cond_11

    :goto_a
    move p0, v4

    goto :goto_b

    :cond_11
    move p0, v3

    .line 93
    :goto_b
    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_common/zzh;->zza(Lcom/google/android/gms/internal/mlkit_common/zzh;)Z

    move-result p1

    if-eq p0, p1, :cond_12

    :goto_c
    move v3, v4

    :cond_12
    if-eqz v3, :cond_14

    .line 94
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_13
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    return-void
.end method

.method private static zza(Landroid/content/res/AssetFileDescriptor;Ljava/io/FileNotFoundException;)V
    .locals 0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 99
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Ljava/lang/Exception;Ljava/lang/Exception;)V

    return-void
.end method

.method private static zza(Landroid/os/ParcelFileDescriptor;Ljava/io/FileNotFoundException;)V
    .locals 0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 101
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza(Ljava/lang/Exception;Ljava/lang/Exception;)V

    return-void
.end method

.method private static zza(Ljava/lang/Exception;Ljava/lang/Exception;)V
    .locals 0

    .line 102
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzan;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static zza(Landroid/content/Context;Landroid/net/Uri;ILcom/google/android/gms/internal/mlkit_common/zzh;)Z
    .locals 6

    .line 52
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const/16 v4, 0x40

    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    add-int/2addr v4, v3

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_2

    .line 57
    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_common/zzh;->zza(Lcom/google/android/gms/internal/mlkit_common/zzh;)Z

    move-result p0

    if-nez p0, :cond_1

    return v3

    :cond_1
    return v2

    .line 58
    :cond_2
    sget-object v4, Lcom/google/android/gms/internal/mlkit_common/zze;->zza:[I

    new-instance v5, Lcom/google/android/gms/internal/mlkit_common/zzr;

    invoke-direct {v5, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzr;-><init>(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)V

    invoke-static {p3, p0, v5}, Lcom/google/android/gms/internal/mlkit_common/zzh;->zza(Lcom/google/android/gms/internal/mlkit_common/zzh;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/zzr;)I

    move-result v5

    sub-int/2addr v5, v3

    aget v4, v4, v5

    if-eq v4, v3, :cond_c

    const/4 v5, 0x2

    if-eq v4, v5, :cond_b

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 60
    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_common/zzh;->zza(Lcom/google/android/gms/internal/mlkit_common/zzh;)Z

    move-result p0

    return p0

    .line 61
    :cond_3
    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_common/zzh;->zza(Lcom/google/android/gms/internal/mlkit_common/zzh;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v2

    .line 62
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    .line 63
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 64
    invoke-virtual {p0, p1, p3, v4, p2}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result p0

    if-nez p0, :cond_5

    return v3

    .line 65
    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzd;->zzb:[Ljava/lang/String;

    array-length p1, p0

    move p2, v2

    :goto_0
    if-ge p2, p1, :cond_7

    aget-object p3, p0, p2

    .line 66
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    return v3

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 67
    :cond_7
    iget-boolean p0, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz p0, :cond_a

    .line 68
    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza:[Ljava/lang/String;

    array-length p1, p0

    move p2, v2

    :goto_1
    if-ge p2, p1, :cond_a

    aget-object p3, p0, p2

    .line 69
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_8

    .line 70
    iget-object v0, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    return v2

    .line 71
    :cond_8
    iget-object v0, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    return v2

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_a
    return v3

    :cond_b
    return v2

    :cond_c
    return v3
.end method

.method public static final zza(Landroid/content/Context;)[Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Ln3/k/b/a$b;->a(Landroid/content/Context;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Ljava/util/concurrent/Callable;)[Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "[",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/io/File;"
        }
    .end annotation

    .line 95
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 97
    throw p0
.end method

.method public static final zzb(Landroid/content/Context;)[Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/k/b/a;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Ln3/k/b/a$b;->b(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
