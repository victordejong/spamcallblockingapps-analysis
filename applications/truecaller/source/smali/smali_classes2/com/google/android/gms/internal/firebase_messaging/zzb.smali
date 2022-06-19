.class public final Lcom/google/android/gms/internal/firebase_messaging/zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/d/r/e<",
        "Le/m/d/y/e1/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase_messaging/zzb;

.field private static final zzb:Le/m/d/r/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzb;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzb;

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
    const-string v2, "messagingClientEvent"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzb;->zzb:Le/m/d/r/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Le/m/d/y/e1/b;

    check-cast p2, Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzb;->zzb:Le/m/d/r/d;

    .line 2
    iget-object p1, p1, Le/m/d/y/e1/b;->a:Le/m/d/y/e1/a;

    .line 3
    invoke-interface {p2, v0, p1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    return-void
.end method
