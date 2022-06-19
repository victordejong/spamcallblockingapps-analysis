.class public final Lcom/google/android/gms/internal/firebase_messaging/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/d/r/e<",
        "Le/m/d/y/e1/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase_messaging/zza;

.field private static final zzb:Le/m/d/r/d;

.field private static final zzc:Le/m/d/r/d;

.field private static final zzd:Le/m/d/r/d;

.field private static final zze:Le/m/d/r/d;

.field private static final zzf:Le/m/d/r/d;

.field private static final zzg:Le/m/d/r/d;

.field private static final zzh:Le/m/d/r/d;

.field private static final zzi:Le/m/d/r/d;

.field private static final zzj:Le/m/d/r/d;

.field private static final zzk:Le/m/d/r/d;

.field private static final zzl:Le/m/d/r/d;

.field private static final zzm:Le/m/d/r/d;

.field private static final zzn:Le/m/d/r/d;

.field private static final zzo:Le/m/d/r/d;

.field private static final zzp:Le/m/d/r/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zza:Lcom/google/android/gms/internal/firebase_messaging/zza;

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Le/m/d/r/d;

    if-nez v1, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    const-string v2, "projectNumber"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzb:Le/m/d/r/d;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    const/4 v1, 0x2

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;

    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v0, Le/m/d/r/d;

    if-nez v1, :cond_1

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_1
    const-string v2, "messageId"

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 18
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzc:Le/m/d/r/d;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    .line 20
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    const/4 v1, 0x3

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 23
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v0, Le/m/d/r/d;

    if-nez v1, :cond_2

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    .line 26
    :cond_2
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_2
    const-string v2, "instanceId"

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzd:Le/m/d/r/d;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    .line 29
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    const/4 v1, 0x4

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, Le/m/d/r/d;

    if-nez v1, :cond_3

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_3

    .line 35
    :cond_3
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_3
    const-string v2, "messageType"

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 36
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zze:Le/m/d/r/d;

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    .line 38
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    const/4 v1, 0x5

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 41
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Le/m/d/r/d;

    if-nez v1, :cond_4

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_4

    .line 44
    :cond_4
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_4
    const-string v2, "sdkPlatform"

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 45
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzf:Le/m/d/r/d;

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    .line 47
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    const/4 v1, 0x6

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 50
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, Le/m/d/r/d;

    if-nez v1, :cond_5

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_5

    .line 53
    :cond_5
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_5
    const-string v2, "packageName"

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 54
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzg:Le/m/d/r/d;

    .line 55
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    .line 56
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    const/4 v1, 0x7

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 59
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Le/m/d/r/d;

    if-nez v1, :cond_6

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_6

    .line 62
    :cond_6
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_6
    const-string v2, "collapseKey"

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 63
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzh:Le/m/d/r/d;

    .line 64
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    .line 65
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    const/16 v1, 0x8

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Le/m/d/r/d;

    if-nez v1, :cond_7

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_7

    .line 71
    :cond_7
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_7
    const-string v2, "priority"

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 72
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzi:Le/m/d/r/d;

    .line 73
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    .line 74
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    const/16 v1, 0x9

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 77
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Le/m/d/r/d;

    if-nez v1, :cond_8

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_8

    .line 80
    :cond_8
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_8
    const-string v2, "ttl"

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 81
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzj:Le/m/d/r/d;

    .line 82
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    .line 83
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    const/16 v1, 0xa

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 86
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Le/m/d/r/d;

    if-nez v1, :cond_9

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_9

    .line 89
    :cond_9
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_9
    const-string v2, "topic"

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 90
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzk:Le/m/d/r/d;

    .line 91
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    .line 92
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    const/16 v1, 0xb

    .line 93
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 95
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v0, Le/m/d/r/d;

    if-nez v1, :cond_a

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_a

    .line 98
    :cond_a
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_a
    const-string v2, "bulkId"

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 99
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzl:Le/m/d/r/d;

    .line 100
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    .line 101
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    const/16 v1, 0xc

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Le/m/d/r/d;

    if-nez v1, :cond_b

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_b

    .line 107
    :cond_b
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_b
    const-string v2, "event"

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 108
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzm:Le/m/d/r/d;

    .line 109
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    .line 110
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    const/16 v1, 0xd

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 113
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Le/m/d/r/d;

    if-nez v1, :cond_c

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_c

    .line 116
    :cond_c
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_c
    const-string v2, "analyticsLabel"

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 117
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzn:Le/m/d/r/d;

    .line 118
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    .line 119
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    const/16 v1, 0xe

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 122
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v0, Le/m/d/r/d;

    if-nez v1, :cond_d

    .line 124
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_d

    .line 125
    :cond_d
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_d
    const-string v2, "campaignId"

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 126
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzo:Le/m/d/r/d;

    .line 127
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzo;

    .line 128
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;-><init>()V

    const/16 v1, 0xf

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Le/m/d/r/d;

    if-nez v1, :cond_e

    .line 133
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_e

    .line 134
    :cond_e
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_e
    const-string v2, "composerLabel"

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 135
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzp:Le/m/d/r/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Le/m/d/y/e1/a;

    check-cast p2, Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzb:Le/m/d/r/d;

    .line 2
    iget-wide v1, p1, Le/m/d/y/e1/a;->a:J

    .line 3
    invoke-interface {p2, v0, v1, v2}, Le/m/d/r/f;->add(Le/m/d/r/d;J)Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzc:Le/m/d/r/d;

    .line 4
    iget-object v1, p1, Le/m/d/y/e1/a;->b:Ljava/lang/String;

    .line 5
    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzd:Le/m/d/r/d;

    .line 6
    iget-object v1, p1, Le/m/d/y/e1/a;->c:Ljava/lang/String;

    .line 7
    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zze:Le/m/d/r/d;

    .line 8
    iget-object v1, p1, Le/m/d/y/e1/a;->d:Le/m/d/y/e1/a$c;

    .line 9
    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzf:Le/m/d/r/d;

    .line 10
    iget-object v1, p1, Le/m/d/y/e1/a;->e:Le/m/d/y/e1/a$d;

    .line 11
    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzg:Le/m/d/r/d;

    .line 12
    iget-object v1, p1, Le/m/d/y/e1/a;->f:Ljava/lang/String;

    .line 13
    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzh:Le/m/d/r/d;

    .line 14
    iget-object v1, p1, Le/m/d/y/e1/a;->g:Ljava/lang/String;

    .line 15
    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzi:Le/m/d/r/d;

    .line 16
    iget v1, p1, Le/m/d/y/e1/a;->h:I

    .line 17
    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;I)Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzj:Le/m/d/r/d;

    .line 18
    iget v1, p1, Le/m/d/y/e1/a;->i:I

    .line 19
    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;I)Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzk:Le/m/d/r/d;

    .line 20
    iget-object v1, p1, Le/m/d/y/e1/a;->j:Ljava/lang/String;

    .line 21
    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzl:Le/m/d/r/d;

    .line 22
    iget-wide v1, p1, Le/m/d/y/e1/a;->k:J

    .line 23
    invoke-interface {p2, v0, v1, v2}, Le/m/d/r/f;->add(Le/m/d/r/d;J)Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzm:Le/m/d/r/d;

    .line 24
    iget-object v1, p1, Le/m/d/y/e1/a;->l:Le/m/d/y/e1/a$b;

    .line 25
    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzn:Le/m/d/r/d;

    .line 26
    iget-object v1, p1, Le/m/d/y/e1/a;->m:Ljava/lang/String;

    .line 27
    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzo:Le/m/d/r/d;

    .line 28
    iget-wide v1, p1, Le/m/d/y/e1/a;->n:J

    .line 29
    invoke-interface {p2, v0, v1, v2}, Le/m/d/r/f;->add(Le/m/d/r/d;J)Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->zzp:Le/m/d/r/d;

    .line 30
    iget-object p1, p1, Le/m/d/y/e1/a;->o:Ljava/lang/String;

    .line 31
    invoke-interface {p2, v0, p1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    return-void
.end method
