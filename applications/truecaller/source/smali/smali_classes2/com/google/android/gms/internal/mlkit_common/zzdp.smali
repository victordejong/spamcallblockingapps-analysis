.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/zzdp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final zza:Le/m/d/m/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzdp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzdp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdp;->zza:Le/m/d/m/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzdq;

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzdo;

    .line 2
    invoke-interface {p1, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzdo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzdq;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzdo;)V

    return-object v0
.end method
