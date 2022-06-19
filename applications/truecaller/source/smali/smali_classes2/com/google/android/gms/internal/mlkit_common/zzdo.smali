.class public Lcom/google/android/gms/internal/mlkit_common/zzdo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzds$zza;


# static fields
.field public static final zza:Le/m/d/m/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/m/o<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final zzc:Lcom/google/android/gms/clearcut/ClearcutLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ClearcutTransport"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdo;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 2
    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzdo;

    .line 3
    invoke-static {v0}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 4
    new-instance v2, Le/m/d/m/x;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 5
    invoke-virtual {v0, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdn;->zza:Le/m/d/m/r;

    .line 6
    invoke-virtual {v0, v1}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 7
    invoke-virtual {v0}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdo;->zza:Le/m/d/m/o;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FIREBASE_ML_SDK"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/clearcut/ClearcutLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzdo;->zzc:Lcom/google/android/gms/clearcut/ClearcutLogger;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdo;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Logging FirebaseMlSdkLogEvent "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClearcutTransport"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzdo;->zzc:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzeg;->zzf()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->b([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->a()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdo;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "Exception thrown from the logging side"

    invoke-virtual {v0, v2, v1, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
