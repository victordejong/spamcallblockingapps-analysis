.class public final Lcom/google/android/gms/safetynet/SafetyNet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/internal/safetynet/zzx;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/internal/safetynet/zzx;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/safetynet/SafetyNetApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/safetynet/SafetyNet;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    new-instance v1, Le/m/a/f/n/a;

    invoke-direct {v1}, Le/m/a/f/n/a;-><init>()V

    sput-object v1, Lcom/google/android/gms/safetynet/SafetyNet;->b:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "SafetyNet.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/safetynet/SafetyNet;->c:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/safetynet/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/safetynet/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/safetynet/SafetyNet;->d:Lcom/google/android/gms/safetynet/SafetyNetApi;

    new-instance v0, Lcom/google/android/gms/internal/safetynet/zzy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/safetynet/zzy;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
