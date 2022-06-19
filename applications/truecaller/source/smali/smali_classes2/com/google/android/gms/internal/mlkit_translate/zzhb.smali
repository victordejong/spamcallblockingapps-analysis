.class public final Lcom/google/android/gms/internal/mlkit_translate/zzhb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzg:Lu3/c0;


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_translate/zzhg;

.field private final zzb:Lu3/e0;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_translate/zzdz;

.field private zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

.field private final zze:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

.field private final zzf:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lu3/c0;->f:Lu3/c0$a;

    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lu3/c0$a;->b(Ljava/lang/String;)Lu3/c0;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzg:Lu3/c0;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzhg;Lcom/google/android/gms/internal/mlkit_translate/zzhk;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lu3/e0$a;

    invoke-direct {v0}, Lu3/e0$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "unit"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "timeout"

    const-wide/16 v4, 0x2710

    .line 4
    invoke-static {v3, v4, v5, v1}, Lu3/p0/c;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v6

    iput v6, v0, Lu3/e0$a;->y:I

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v3, v4, v5, v1}, Lu3/p0/c;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v6

    iput v6, v0, Lu3/e0$a;->z:I

    .line 7
    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v3, v4, v5, v1}, Lu3/p0/c;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, Lu3/e0$a;->A:I

    .line 9
    new-instance v1, Lu3/e0;

    invoke-direct {v1, v0}, Lu3/e0;-><init>(Lu3/e0$a;)V

    .line 10
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzb:Lu3/e0;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzdz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzdz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzdz;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhg;

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    const-string p1, "https://firebaseinstallations.googleapis.com/v1"

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzf:Ljava/lang/String;

    return-void
.end method

.method private static zza(JLjava/lang/String;)J
    .locals 4

    const-string v0, "s$"

    const-string v1, ""

    .line 6
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private final zza(Lu3/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_translate/zzhl;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Ljava/lang/String;
    .locals 2

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzg:Lu3/c0;

    .line 9
    sget-object v1, Lu3/j0;->a:Lu3/j0$a;

    invoke-virtual {v1, v0, p3}, Lu3/j0$a;->c(Lu3/c0;Ljava/lang/String;)Lu3/j0;

    move-result-object p3

    .line 10
    new-instance v0, Lu3/g0$a;

    invoke-direct {v0}, Lu3/g0$a;-><init>()V

    invoke-virtual {v0, p1}, Lu3/g0$a;->d(Lu3/z;)Lu3/g0$a;

    invoke-virtual {v0, p2}, Lu3/g0$a;->i(Ljava/lang/String;)Lu3/g0$a;

    invoke-virtual {v0, p3}, Lu3/g0$a;->f(Lu3/j0;)Lu3/g0$a;

    invoke-virtual {v0}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object p1

    .line 11
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzb:Lu3/e0;

    invoke-virtual {p3, p1}, Lu3/e0;->a(Lu3/g0;)Lu3/f;

    move-result-object p1

    .line 12
    check-cast p1, Lu3/p0/g/e;

    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p1}, Lu3/p0/g/e;->execute()Lu3/k0;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 13
    iget v0, p1, Lu3/k0;->e:I

    .line 14
    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(I)V

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    :try_start_1
    iget-object p1, p1, Lu3/k0;->h:Lu3/l0;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    :try_start_2
    invoke-virtual {p1}, Lu3/l0;->s()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    invoke-virtual {p1}, Lu3/l0;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 18
    :try_start_4
    invoke-virtual {p1}, Lu3/l0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbb;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 19
    :catch_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 20
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 21
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    return-object p3

    .line 22
    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 23
    :try_start_6
    iget-object p1, p1, Lu3/k0;->h:Lu3/l0;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 24
    :try_start_7
    invoke-virtual {p1}, Lu3/l0;->s()Ljava/lang/String;

    move-result-object p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 25
    :try_start_8
    invoke-virtual {p1}, Lu3/l0;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_3

    .line 26
    :try_start_9
    invoke-virtual {p1}, Lu3/l0;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_a
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbb;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    const-string p2, "<none>"

    :goto_3
    const-string p1, "HTTP Response Body:\n"

    .line 27
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    :cond_4
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 28
    :goto_4
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 29
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    return-object p3

    .line 30
    :catch_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 31
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 32
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    return-object p3
.end method

.method private final zzb(Lcom/google/android/gms/internal/mlkit_translate/zzhc;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Z
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 1
    iget-object v3, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzf:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v2, v8

    iget-object v3, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhg;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_translate/zzhg;->zza()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    aput-object v3, v2, v9

    const-string v3, "%s/projects/%s/installations"

    .line 3
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 4
    new-instance v2, Lu3/z$a;

    invoke-direct {v2}, Lu3/z$a;-><init>()V

    iget-object v3, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhg;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_translate/zzhg;->zzb()Ljava/lang/String;

    move-result-object v3

    const-string v4, "x-goog-api-key"

    invoke-virtual {v2, v4, v3}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    .line 6
    invoke-virtual {v2}, Lu3/z$a;->d()Lu3/z;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhc;->zza()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_translate/zzhg;->zzc()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "FIS_v2"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "o:a:mlkit:1.0.0"

    aput-object v4, v3, v1

    const-string v1, "{fid: \'%s\', appId: \'%s\', authVersion: \'%s\', sdkVersion: \'%s\'}"

    .line 8
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 10
    new-instance v13, Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    invoke-direct {v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;-><init>()V

    .line 11
    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza()V

    move-object/from16 v1, p0

    move-object v3, v10

    move-object/from16 v5, p2

    move-object v6, v13

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zza(Lu3/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_translate/zzhl;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb()V

    if-nez v1, :cond_0

    .line 14
    iget-object v0, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzd(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    return v8

    .line 15
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzdz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzds;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzdx;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/mlkit_translate/zzeb; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "name"

    .line 16
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zze()Ljava/lang/String;

    move-result-object v3

    .line 17
    new-instance v15, Lcom/google/android/gms/internal/mlkit_translate/zzhc;

    const-string v4, "fid"

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/mlkit_translate/zzhc;-><init>(Ljava/lang/String;)V

    const-string v4, "refreshToken"

    .line 19
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zze()Ljava/lang/String;

    move-result-object v16

    const-string v4, "authToken"

    .line 20
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdx;

    move-result-object v4

    const-string v5, "token"

    .line 21
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zze()Ljava/lang/String;

    move-result-object v17

    const-string v5, "expiresIn"

    .line 22
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zze()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-static {v11, v12, v5}, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zza(JLjava/lang/String;)J

    move-result-wide v18

    const-string v6, "installation name: "

    .line 24
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v3, "fid: "

    .line 25
    invoke-virtual {v15}, Lcom/google/android/gms/internal/mlkit_translate/zzhc;->zza()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v3, "refresh_token: "

    .line 26
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 27
    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    const-string v3, "auth token expires in: "

    .line 28
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 29
    :goto_3
    new-instance v3, Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/internal/mlkit_translate/zzhp;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzhc;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v3, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhp;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    iget-object v0, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzd(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    return v9

    .line 31
    :catch_0
    :try_start_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 32
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    iget-object v0, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzd(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    return v8

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 35
    :catch_1
    :try_start_3
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    iget-object v0, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzd(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    return v8

    .line 39
    :goto_4
    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzd(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    .line 40
    throw v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_translate/zzhp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzhc;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzin;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzhc;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzhd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhd;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzhb;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzil;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzim;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzf:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    :cond_1
    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Z
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    iget-object v2, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzf:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v1, v8

    iget-object v2, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhg;

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhg;->zza()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    aput-object v2, v1, v9

    iget-object v2, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhp;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzhc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhc;->zza()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "%s/projects/%s/installations/%s/authTokens:generate"

    .line 43
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 44
    new-instance v1, Lu3/z$a;

    invoke-direct {v1}, Lu3/z$a;-><init>()V

    const-string v2, "FIS_v2 "

    iget-object v3, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    .line 45
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_translate/zzhp;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    const-string v3, "authorization"

    invoke-virtual {v1, v3, v2}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    iget-object v2, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhg;

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhg;->zzb()Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-goog-api-key"

    invoke-virtual {v1, v3, v2}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    .line 47
    invoke-virtual {v1}, Lu3/z$a;->d()Lu3/z;

    move-result-object v2

    new-array v1, v9, [Ljava/lang/Object;

    const-string v3, "o:a:mlkit:1.0.0"

    aput-object v3, v1, v8

    const-string v3, "{installation:{sdkVersion:\'%s\'}}"

    .line 48
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 50
    new-instance v13, Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    invoke-direct {v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;-><init>()V

    .line 51
    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza()V

    move-object/from16 v1, p0

    move-object v3, v10

    move-object/from16 v5, p1

    move-object v6, v13

    .line 52
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zza(Lu3/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_translate/zzhl;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb()V

    if-nez v1, :cond_1

    .line 54
    iget-object v0, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zze(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    return v8

    .line 55
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzdz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzds;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzdx;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_translate/zzeb; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "token"

    .line 56
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zze()Ljava/lang/String;

    move-result-object v17

    const-string v3, "expiresIn"

    .line 57
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zze()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-static {v11, v12, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zza(JLjava/lang/String;)J

    move-result-wide v18

    const-string v4, "refreshed auth token: "

    .line 59
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v4, "auth token expires in: "

    .line 60
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 61
    :goto_2
    new-instance v3, Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    iget-object v4, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    .line 62
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_translate/zzhp;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzhc;

    move-result-object v15

    iget-object v4, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    .line 63
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_translate/zzhp;->zzb()Ljava/lang/String;

    move-result-object v16

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/internal/mlkit_translate/zzhp;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzhc;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v3, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhp;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    iget-object v0, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zze(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    return v9

    .line 65
    :catch_0
    :try_start_2
    sget-object v3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 66
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 67
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    iget-object v0, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zze(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    return v8

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 69
    :catch_1
    :try_start_3
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 70
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    iget-object v0, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zze(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    return v8

    .line 73
    :goto_3
    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zze(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    .line 74
    throw v0
.end method
