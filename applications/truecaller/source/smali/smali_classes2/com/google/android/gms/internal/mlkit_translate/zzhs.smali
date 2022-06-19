.class public final Lcom/google/android/gms/internal/mlkit_translate/zzhs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Ljava/lang/String; = "https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch"

.field private static final zzj:Ljava/util/regex/Pattern;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:J

.field private final zzh:J

.field private final zzi:Lcom/google/android/gms/internal/mlkit_translate/zzih;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzj:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/mlkit_translate/zzih;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzb:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzc:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzd:Ljava/lang/String;

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzj:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zze:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzf:Ljava/lang/String;

    const-wide/16 p1, 0x5

    .line 9
    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzg:J

    .line 10
    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzh:J

    .line 11
    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzih;

    return-void
.end method

.method private static zza(Lorg/json/JSONObject;Ljava/util/Date;Lcom/google/android/gms/internal/mlkit_translate/zzhl;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzhr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzif;
        }
    .end annotation

    .line 113
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzhr;->zzc()Lcom/google/android/gms/internal/mlkit_translate/zzht;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzht;->zza(Ljava/util/Date;)Lcom/google/android/gms/internal/mlkit_translate/zzht;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "entries"

    .line 114
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    .line 115
    :try_start_2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzht;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/mlkit_translate/zzht;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :try_start_3
    const-string v1, "experimentDescriptions"

    .line 116
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    if-eqz v0, :cond_1

    .line 117
    :try_start_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzht;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/mlkit_translate/zzht;

    .line 118
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzht;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzhr;

    move-result-object p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 119
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 120
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 121
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzif;

    const-string p2, "Fetch failed: fetch response could not be parsed."

    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzif;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static zza(Ljava/net/HttpURLConnection;[BLjava/util/Date;Lcom/google/android/gms/internal/mlkit_translate/zzhl;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzhu;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzie;
        }
    .end annotation

    .line 39
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 40
    :try_start_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 41
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 43
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 44
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 45
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 46
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 47
    :try_start_1
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0xc8

    const-string v1, "MLKitRemoteConfigFetch"

    if-ne p1, v0, :cond_5

    const/4 p1, 0x3

    .line 48
    :try_start_2
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    goto :goto_0

    :cond_1
    const-string p1, "ETag"

    .line 52
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 54
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_translate/zza;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    int-to-char v2, v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 58
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v1, "Remote config: got response ETag: "

    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 60
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 62
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzb(Lorg/json/JSONObject;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 63
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_translate/zzhu;->zza(Ljava/util/Date;)Lcom/google/android/gms/internal/mlkit_translate/zzhu;

    move-result-object p0

    return-object p0

    .line 64
    :cond_4
    invoke-static {v0, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zza(Lorg/json/JSONObject;Ljava/util/Date;Lcom/google/android/gms/internal/mlkit_translate/zzhl;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzhr;

    move-result-object p0

    .line 65
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhu;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzhr;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzhu;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    .line 66
    :try_start_5
    sget-object p2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 67
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 68
    new-instance p2, Lcom/google/android/gms/internal/mlkit_translate/zzif;

    const-string p3, "The client had an error while calling the backend!"

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzif;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 69
    sget-object p2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 70
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 71
    new-instance p2, Lcom/google/android/gms/internal/mlkit_translate/zzif;

    const-string p3, "Error parsing the server output"

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzif;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 72
    :cond_5
    sget-object p2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 73
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    const/4 p2, 0x4

    .line 74
    invoke-static {v1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 75
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    goto :goto_3

    :cond_7
    const/4 p2, 0x5

    .line 78
    invoke-static {v1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 79
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 80
    new-instance p3, Ljava/util/Scanner;

    invoke-direct {p3, p2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string p2, "\\A"

    invoke-virtual {p3, p2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object p2

    .line 81
    invoke-virtual {p2}, Ljava/util/Scanner;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "HTTP Error Stream: "

    .line 82
    invoke-virtual {p2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_8

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    :cond_8
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 83
    :cond_9
    :goto_4
    :try_start_6
    new-instance p2, Lcom/google/android/gms/internal/mlkit_translate/zzii;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzii;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_2
    move-exception p2

    .line 84
    :try_start_7
    new-instance p3, Lcom/google/android/gms/internal/mlkit_translate/zzii;

    const-string p4, "<error reading HTTP response>"

    invoke-direct {p3, p1, p4, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzii;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    .line 85
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 86
    throw p1

    :catch_3
    move-exception p1

    .line 87
    sget-object p2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 88
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 89
    new-instance p2, Lcom/google/android/gms/internal/mlkit_translate/zzif;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x14

    const-string p4, "Error connecting to "

    invoke-static {p3, p4, p0}, Le/d/c/a/a;->Q1(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzif;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzif;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    const-string v1, "appInstanceId"

    .line 97
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "appInstanceIdToken"

    .line 98
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzc:Ljava/lang/String;

    const-string p2, "appId"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzb:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 101
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    const-string v1, "countryCode"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "languageCode"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "platformVersion"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "timeZone"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzb:Landroid/content/Context;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzb:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "appVersion"

    .line 107
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzb:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "packageName"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sdkVersion"

    .line 109
    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p2, "analyticsUserProperties"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p1

    .line 112
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzif;

    const-string p2, "Fetch failed: Firebase instance id is null."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzif;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .line 90
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 91
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 92
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "shallowCopyJsonObject: concurrent mutation?"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private final zzb()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzb:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Could not get fingerprint hash for package: "

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzb:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/common/util/Hex;->b([BZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v1, "No such package: "

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzb:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method private static zzb(Lorg/json/JSONObject;)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "state"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "NO_CHANGE"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public final zza(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzhu;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/mlkit_translate/zzhl;",
            ")",
            "Lcom/google/android/gms/internal/mlkit_translate/zzhu;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzie;
        }
    .end annotation

    const/4 p5, 0x1

    .line 6
    invoke-virtual {p1, p5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 7
    sget-object p5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzg:J

    invoke-virtual {p5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzh:J

    invoke-virtual {p5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int p5, v0

    invoke-virtual {p1, p5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string p5, "If-None-Match"

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzd:Ljava/lang/String;

    const-string v0, "X-Goog-Api-Key"

    invoke-virtual {p1, v0, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzb:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    const-string v0, "X-Android-Package"

    invoke-virtual {p1, v0, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzb()Ljava/lang/String;

    move-result-object p5

    const-string v0, "X-Android-Cert"

    invoke-virtual {p1, v0, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "X-Google-GFE-Can-Retry"

    const-string v0, "yes"

    .line 13
    invoke-virtual {p1, p5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "Content-Type"

    const-string v0, "application/json"

    .line 14
    invoke-virtual {p1, p5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "Accept"

    .line 15
    invoke-virtual {p1, p5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {p6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-virtual {p1, v0, p6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p5, "MLKitRemoteConfigFetch"

    const/4 p6, 0x3

    .line 18
    invoke-static {p5, p6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzb;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "api-key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 22
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzb;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android-cert"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 24
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    goto :goto_1

    .line 25
    :cond_2
    invoke-direct {p0, p2, p3, p4, p8}, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 26
    invoke-static {p5, p6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zza(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "appInstanceIdToken"

    .line 28
    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 30
    :cond_3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/internal/mlkit_translate/zza;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 31
    new-instance p3, Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    invoke-direct {p3}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;-><init>()V

    .line 32
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza()V

    .line 33
    :try_start_0
    invoke-static {p1, p2, p7, p9, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zza(Ljava/net/HttpURLConnection;[BLjava/util/Date;Lcom/google/android/gms/internal/mlkit_translate/zzhl;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzhu;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb()V

    .line 35
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzih;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzih;->zzh(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 36
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb()V

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzih;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzih;->zzh(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    .line 38
    throw p1
.end method

.method public final zza()Ljava/net/HttpURLConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzie;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zze:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zzf:Ljava/lang/String;

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zza:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/mlkit_translate/zzie;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzie;-><init>(Ljava/lang/String;)V

    throw v1
.end method
