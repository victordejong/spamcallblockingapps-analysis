.class public Lcom/google/android/gms/internal/mlkit_translate/zzhn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Le/m/d/m/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/m/o<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/mlkit_translate/zzdz;

.field private static final zzd:Ljava/lang/Object;


# instance fields
.field private final zzb:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_translate/zzhn;

    .line 2
    invoke-static {v0}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 3
    new-instance v2, Le/m/d/m/x;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v0, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzhm;->zza:Le/m/d/m/r;

    .line 5
    invoke-virtual {v0, v1}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 6
    invoke-virtual {v0}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzhn;->zza:Le/m/d/m/o;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzdz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzdz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzhn;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzdz;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzhn;->zzd:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhn;->zzb:Landroid/content/Context;

    return-void
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzhp;
    .locals 9

    const/4 v0, 0x0

    .line 51
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzdz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzds;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_translate/zzeb; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_translate/zzdx;

    if-nez v2, :cond_0

    .line 53
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 54
    sget-object p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzk:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    return-object v0

    .line 55
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzds;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzdx;

    move-result-object v1

    .line 56
    :try_start_1
    new-instance v3, Lcom/google/android/gms/internal/mlkit_translate/zzhc;

    const-string v2, "fid"

    .line 57
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhc;-><init>(Ljava/lang/String;)V

    const-string v2, "refreshToken"

    .line 58
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zze()Ljava/lang/String;

    move-result-object v4

    const-string v2, "temporaryToken"

    .line 59
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zze()Ljava/lang/String;

    move-result-object v5

    const-string v2, "temporaryTokenExpiryTimestamp"

    .line 60
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zzf()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 61
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    const-string v6, "refresh_token: "

    .line 62
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v6, "temporary_token: "

    .line 63
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 64
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 65
    new-instance v8, Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_translate/zzhp;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzhc;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v8

    .line 66
    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzj:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 67
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    return-object v0

    :catch_1
    const-string v1, "Error parsing installation info JSON object:\n"

    .line 68
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 69
    :goto_2
    sget-object p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzk:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhn;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Ljava/io/File;

    move-result-object p1

    const-string v1, "com.google.mlkit.InstallationId"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final zzc(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhn;->zzb:Landroid/content/Context;

    .line 2
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ln3/k/b/a$c;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhn;->zzb:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzg:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzg:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzhp;
    .locals 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzhn;->zzd:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhn;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".new"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".bak"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v4, Ljava/lang/String;

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-static {v3, v1}, Ln3/k/h/a;->c(Ljava/io/File;Ljava/io/File;)V

    .line 8
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete outdated new file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 11
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 13
    new-array v3, v3, [B

    const/4 v5, 0x0

    move v6, v5

    .line 14
    :cond_2
    :goto_0
    array-length v7, v3

    sub-int/2addr v7, v6

    invoke-virtual {v2, v3, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gtz v7, :cond_3

    .line 15
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const-string v2, "UTF-8"

    .line 16
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    :try_start_4
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhn;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    move-result-object p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object p1

    :cond_3
    add-int/2addr v6, v7

    .line 18
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v7

    .line 19
    array-length v8, v3

    sub-int/2addr v8, v6

    if-le v7, v8, :cond_2

    add-int/2addr v7, v6

    .line 20
    new-array v7, v7, [B

    .line 21
    invoke-static {v3, v5, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v3, v7

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 22
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 23
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 24
    :catch_0
    :try_start_7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 25
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    monitor-exit v0

    return-object v3

    .line 27
    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 28
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    monitor-exit v0

    return-object v3

    :catchall_1
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/mlkit_translate/zzhp;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V
    .locals 5

    const-string v0, "{\n \"fid\": \"%s\",\n \"refreshToken\": \"%s\",\n \"temporaryToken\": \"%s\",\n \"temporaryTokenExpiryTimestamp\": \"%d\"\n}\n"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhp;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzhc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhc;->zza()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhp;->zzb()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhp;->zzc()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhp;->zzd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    .line 35
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzhn;->zzd:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzhn;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 39
    new-instance v2, Ln3/k/h/a;

    invoke-direct {v2, v1}, Ln3/k/h/a;-><init>(Ljava/io/File;)V

    .line 40
    invoke-virtual {v2}, Ln3/k/h/a;->d()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :try_start_2
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 42
    invoke-virtual {v4, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :try_start_3
    invoke-virtual {v2, v3}, Ln3/k/h/a;->b(Ljava/io/FileOutputStream;)V

    .line 45
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 46
    invoke-virtual {v2, v3}, Ln3/k/h/a;->a(Ljava/io/FileOutputStream;)V

    .line 47
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    .line 48
    :catch_1
    :try_start_4
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzh:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 49
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 50
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
