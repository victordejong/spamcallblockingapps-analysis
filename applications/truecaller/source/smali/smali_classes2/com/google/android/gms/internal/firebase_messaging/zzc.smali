.class public final Lcom/google/android/gms/internal/firebase_messaging/zzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/d/r/e<",
        "Lcom/google/android/gms/internal/firebase_messaging/zze;",
        ">;"
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase_messaging/zzc;

.field private static final zzb:Le/m/d/r/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzc;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzc;

    const-string v0, "messagingClientEventExtension"

    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzc;->zzb:Le/m/d/r/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase_messaging/zze;

    check-cast p2, Le/m/d/r/f;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzc;->zzb:Le/m/d/r/d;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_messaging/zze;->zza()Le/m/d/y/e1/b;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    return-void
.end method
