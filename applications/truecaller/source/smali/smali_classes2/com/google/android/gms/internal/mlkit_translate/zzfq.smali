.class public final Lcom/google/android/gms/internal/mlkit_translate/zzfq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final synthetic zza:Ljava/lang/Class;

.field private final synthetic zzb:Lcom/google/android/gms/internal/mlkit_translate/zzea;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_translate/zzea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfq;->zza:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfq;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[typeHierarchy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfq;->zza:Ljava/lang/Class;

    const-string v2, ",adapter="

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->z0(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfq;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzea;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
