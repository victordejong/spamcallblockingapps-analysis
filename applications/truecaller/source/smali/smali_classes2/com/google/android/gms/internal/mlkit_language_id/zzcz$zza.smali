.class public Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;
.super Le/m/h/a/d/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_language_id/zzcz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/h/a/d/e<",
        "Le/m/h/a/c/b;",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzcz;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

.field private final zzb:Le/m/h/a/d/l;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Le/m/h/a/d/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/h/a/d/e;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;->zzb:Le/m/h/a/d/l;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Le/m/h/a/d/l;Lcom/google/android/gms/internal/mlkit_language_id/zzda;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Le/m/h/a/d/l;)V

    return-void
.end method


# virtual methods
.method public synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Le/m/h/a/c/b;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;->zzb:Le/m/h/a/d/l;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Le/m/h/a/d/l;Le/m/h/a/c/b;Lcom/google/android/gms/internal/mlkit_language_id/zzda;)V

    return-object v0
.end method
