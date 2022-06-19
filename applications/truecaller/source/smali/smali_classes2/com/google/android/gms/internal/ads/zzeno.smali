.class public final synthetic Lcom/google/android/gms/internal/ads/zzeno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfln;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzfln;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeno;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeno;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeno;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzenq;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/appset/AppSetIdInfo;->a:Ljava/lang/String;

    .line 3
    iget p1, p1, Lcom/google/android/gms/appset/AppSetIdInfo;->b:I

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzenq;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
