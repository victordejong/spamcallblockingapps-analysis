.class public final Lcom/google/android/gms/internal/consent_sdk/zzp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/app/Application;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzab;

.field private final zzc:Landroid/os/Handler;

.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Lcom/google/android/gms/internal/consent_sdk/zzal;

.field private final zzf:Lcom/google/android/gms/internal/consent_sdk/zzaz;

.field private final zzg:Lcom/google/android/gms/internal/consent_sdk/zzn;

.field private final zzh:Lcom/google/android/gms/internal/consent_sdk/zzz;

.field private final zzi:Lcom/google/android/gms/internal/consent_sdk/zze;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/zzab;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/consent_sdk/zzal;Lcom/google/android/gms/internal/consent_sdk/zzaz;Lcom/google/android/gms/internal/consent_sdk/zzn;Lcom/google/android/gms/internal/consent_sdk/zzz;Lcom/google/android/gms/internal/consent_sdk/zze;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zza:Landroid/app/Application;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzab;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzc:Landroid/os/Handler;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzd:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zze:Lcom/google/android/gms/internal/consent_sdk/zzal;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzaz;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzn;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzz;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzi:Lcom/google/android/gms/internal/consent_sdk/zze;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/consent_sdk/zzbn;)Lcom/google/android/gms/internal/consent_sdk/zzby;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/consent_sdk/zzk;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzbn;)Lcom/google/android/gms/internal/consent_sdk/zzby;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const/4 v1, 0x2

    const-string v2, "Error making request."

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const/4 v1, 0x4

    const-string v2, "The server timed out."

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/consent_sdk/zzbn;)Lcom/google/android/gms/internal/consent_sdk/zzby;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://fundingchoicesmessages.google.com/a/consent"

    .line 6
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zza:Landroid/app/Application;

    .line 9
    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2710

    .line 11
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x7530

    .line 12
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "POST"

    .line 14
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 17
    :try_start_0
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 18
    :try_start_1
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 19
    iget-object v4, p1, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zza:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v5, "admob_app_id"

    .line 20
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 21
    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 22
    :cond_0
    iget-object v4, p1, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zzb:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v5, "adid"

    .line 23
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 24
    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 25
    :cond_1
    iget-object v4, p1, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzbr;

    if-eqz v4, :cond_5

    const-string v5, "device_info"

    .line 26
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 27
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 28
    iget v5, v4, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zza:I

    .line 29
    sget v6, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zza:I

    if-eq v5, v6, :cond_2

    const-string v6, "os_type"

    .line 30
    invoke-virtual {v2, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 31
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zza(ILandroid/util/JsonWriter;)V

    .line 32
    :cond_2
    iget-object v5, v4, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zzb:Ljava/lang/String;

    if-eqz v5, :cond_3

    const-string v6, "model"

    .line 33
    invoke-virtual {v2, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 34
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 35
    :cond_3
    iget-object v4, v4, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zzc:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    const-string v5, "android_api_level"

    .line 36
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 37
    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 38
    :cond_4
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 39
    :cond_5
    iget-object v4, p1, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zzd:Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string v5, "publisher_privacy_policy_url"

    .line 40
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 41
    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 42
    :cond_6
    iget-object v4, p1, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zze:Ljava/lang/String;

    if-eqz v4, :cond_7

    const-string v5, "language_code"

    .line 43
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 44
    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 45
    :cond_7
    iget-object v4, p1, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zzf:Ljava/lang/String;

    if-eqz v4, :cond_8

    const-string v5, "country_code_if_unknown_region"

    .line 46
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 47
    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 48
    :cond_8
    iget-object v4, p1, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zzg:Ljava/lang/Boolean;

    if-eqz v4, :cond_9

    const-string v5, "opt_out_if_unknown_region"

    .line 49
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 50
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 51
    :cond_9
    iget-object v4, p1, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zzh:Ljava/lang/Boolean;

    if-eqz v4, :cond_a

    const-string v5, "tag_for_under_age_of_consent"

    .line 52
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 53
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 54
    :cond_a
    iget-object v4, p1, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zzi:Ljava/lang/Boolean;

    if-eqz v4, :cond_b

    const-string v5, "is_lat"

    .line 55
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 56
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 57
    :cond_b
    iget-object v4, p1, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zzj:Ljava/util/Map;

    .line 58
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "stored_infos_map"

    .line 59
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 60
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 61
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 63
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    .line 64
    :cond_c
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 65
    :cond_d
    iget-object v4, p1, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zzk:Lcom/google/android/gms/internal/consent_sdk/zzbt;

    if-eqz v4, :cond_17

    const-string v5, "screen_info"

    .line 66
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 67
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 68
    iget-object v5, v4, Lcom/google/android/gms/internal/consent_sdk/zzbt;->zza:Ljava/lang/Integer;

    if-eqz v5, :cond_e

    const-string v6, "width"

    .line 69
    invoke-virtual {v2, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 70
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 71
    :cond_e
    iget-object v5, v4, Lcom/google/android/gms/internal/consent_sdk/zzbt;->zzb:Ljava/lang/Integer;

    if-eqz v5, :cond_f

    const-string v6, "height"

    .line 72
    invoke-virtual {v2, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 73
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 74
    :cond_f
    iget-object v5, v4, Lcom/google/android/gms/internal/consent_sdk/zzbt;->zzc:Ljava/lang/Double;

    if-eqz v5, :cond_10

    const-string v6, "density"

    .line 75
    invoke-virtual {v2, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 76
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 77
    :cond_10
    iget-object v4, v4, Lcom/google/android/gms/internal/consent_sdk/zzbt;->zzd:Ljava/util/List;

    .line 78
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, "screen_insets"

    .line 79
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 80
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 81
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/consent_sdk/zzbw;

    .line 82
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 83
    iget-object v6, v5, Lcom/google/android/gms/internal/consent_sdk/zzbw;->zza:Ljava/lang/Integer;

    if-eqz v6, :cond_11

    const-string v7, "top"

    .line 84
    invoke-virtual {v2, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 85
    invoke-virtual {v2, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 86
    :cond_11
    iget-object v6, v5, Lcom/google/android/gms/internal/consent_sdk/zzbw;->zzb:Ljava/lang/Integer;

    if-eqz v6, :cond_12

    const-string v7, "left"

    .line 87
    invoke-virtual {v2, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 88
    invoke-virtual {v2, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 89
    :cond_12
    iget-object v6, v5, Lcom/google/android/gms/internal/consent_sdk/zzbw;->zzc:Ljava/lang/Integer;

    if-eqz v6, :cond_13

    const-string v7, "right"

    .line 90
    invoke-virtual {v2, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 91
    invoke-virtual {v2, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 92
    :cond_13
    iget-object v5, v5, Lcom/google/android/gms/internal/consent_sdk/zzbw;->zzd:Ljava/lang/Integer;

    if-eqz v5, :cond_14

    const-string v6, "bottom"

    .line 93
    invoke-virtual {v2, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 94
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 95
    :cond_14
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_1

    .line 96
    :cond_15
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 97
    :cond_16
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 98
    :cond_17
    iget-object v4, p1, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zzl:Lcom/google/android/gms/internal/consent_sdk/zzbp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string v5, "version"

    if-eqz v4, :cond_1b

    :try_start_2
    const-string v6, "app_info"

    .line 99
    invoke-virtual {v2, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 100
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 101
    iget-object v6, v4, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zza:Ljava/lang/String;

    if-eqz v6, :cond_18

    const-string v7, "package_name"

    .line 102
    invoke-virtual {v2, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 103
    invoke-virtual {v2, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 104
    :cond_18
    iget-object v6, v4, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zzb:Ljava/lang/String;

    if-eqz v6, :cond_19

    const-string v7, "publisher_display_name"

    .line 105
    invoke-virtual {v2, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 106
    invoke-virtual {v2, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 107
    :cond_19
    iget-object v4, v4, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zzc:Ljava/lang/String;

    if-eqz v4, :cond_1a

    .line 108
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 109
    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 110
    :cond_1a
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 111
    :cond_1b
    iget-object v4, p1, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zzm:Lcom/google/android/gms/internal/consent_sdk/zzbv;

    if-eqz v4, :cond_1d

    const-string v6, "sdk_info"

    .line 112
    invoke-virtual {v2, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 113
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 114
    iget-object v4, v4, Lcom/google/android/gms/internal/consent_sdk/zzbv;->zza:Ljava/lang/String;

    if-eqz v4, :cond_1c

    .line 115
    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 116
    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 117
    :cond_1c
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 118
    :cond_1d
    iget-object p1, p1, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zzn:Ljava/util/List;

    .line 119
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "debug_params"

    .line 120
    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 121
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/consent_sdk/zzbs;

    .line 123
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zza(Landroid/util/JsonWriter;)V

    goto :goto_2

    .line 124
    :cond_1e
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 125
    :cond_1f
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 126
    :try_start_3
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 127
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 128
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v1, 0xc8

    const-string v2, "\\A"

    if-ne p1, v1, :cond_21

    const-string p1, "x-ump-using-header"

    .line 129
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 130
    new-instance v1, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 131
    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzby;->zza(Landroid/util/JsonReader;)Lcom/google/android/gms/internal/consent_sdk/zzby;

    move-result-object p1

    .line 132
    new-instance v1, Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/consent_sdk/zzby;->zzb:Ljava/lang/String;

    return-object p1

    .line 134
    :cond_20
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 135
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 136
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 137
    new-instance v0, Landroid/util/JsonReader;

    invoke-direct {v0, p1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 138
    :try_start_5
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzby;->zza(Landroid/util/JsonReader;)Lcom/google/android/gms/internal/consent_sdk/zzby;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 139
    :try_start_6
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 140
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 141
    :try_start_7
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    .line 142
    :try_start_9
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    throw v0

    .line 143
    :cond_21
    new-instance v1, Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Http error code - "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_4
    move-exception p1

    .line 146
    :try_start_a
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception p1

    .line 147
    :try_start_c
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    throw p1
.end method


# virtual methods
.method public final zza(Landroid/app/Activity;Le/m/a/i/e;Le/m/a/i/d;Le/m/a/i/c;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzd:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/google/android/gms/internal/consent_sdk/zzs;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/consent_sdk/zzs;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzp;Landroid/app/Activity;Le/m/a/i/e;Le/m/a/i/d;Le/m/a/i/c;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic zza(Le/m/a/i/d;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzc:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzu;->zza(Le/m/a/i/d;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzb(Landroid/app/Activity;Le/m/a/i/e;Le/m/a/i/d;Le/m/a/i/c;)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    :try_start_0
    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const/4 p3, 0x1

    const-string v0, "Caught exception when trying to request consent info update: "

    .line 3
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzc:Landroid/os/Handler;

    new-instance p3, Lcom/google/android/gms/internal/consent_sdk/zzw;

    invoke-direct {p3, p4, p2}, Lcom/google/android/gms/internal/consent_sdk/zzw;-><init>(Le/m/a/i/c;Lcom/google/android/gms/internal/consent_sdk/zzk;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
