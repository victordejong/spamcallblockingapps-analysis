.class public final Lcom/google/android/gms/internal/mlkit_common/zzdq;
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


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/mlkit_common/zzdo;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzds$zza;

    .line 2
    invoke-static {v0}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzdo;

    .line 3
    new-instance v2, Le/m/d/m/x;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v0, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdp;->zza:Le/m/d/m/r;

    .line 5
    invoke-virtual {v0, v1}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 6
    invoke-virtual {v0}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdq;->zza:Le/m/d/m/o;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzdo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzdq;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzdo;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzdq;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzdo;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;->zza()Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;->zza(Z)Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzhb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzfq;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzdo;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;)V

    return-void
.end method
