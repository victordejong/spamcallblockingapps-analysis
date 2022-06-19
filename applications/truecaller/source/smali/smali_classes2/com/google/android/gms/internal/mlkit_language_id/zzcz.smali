.class public final Lcom/google/android/gms/internal/mlkit_language_id/zzcz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;
    }
.end annotation


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
.field private final zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

.field private final zzd:Le/m/h/a/c/b;

.field private final zze:Le/m/h/a/d/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelDownloadLogger"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 2
    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;

    .line 3
    invoke-static {v0}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    .line 4
    new-instance v2, Le/m/d/m/x;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 5
    invoke-virtual {v0, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v1, Le/m/h/a/d/l;

    .line 6
    new-instance v2, Le/m/d/m/x;

    invoke-direct {v2, v1, v3, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 7
    invoke-virtual {v0, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id/zzdb;->zza:Le/m/d/m/r;

    .line 8
    invoke-virtual {v0, v1}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 9
    invoke-virtual {v0}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;->zza:Le/m/d/m/o;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Le/m/h/a/d/l;Le/m/h/a/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;->zzd:Le/m/h/a/c/b;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;->zze:Le/m/h/a/d/l;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Le/m/h/a/d/l;Le/m/h/a/c/b;Lcom/google/android/gms/internal/mlkit_language_id/zzda;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Le/m/h/a/d/l;Le/m/h/a/c/b;)V

    return-void
.end method

.method public static final synthetic zza(Le/m/d/m/p;)Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;

    const-class v1, Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    .line 2
    invoke-interface {p0, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    const-class v2, Le/m/h/a/d/l;

    invoke-interface {p0, v2}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/m/h/a/d/l;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Le/m/h/a/d/l;Lcom/google/android/gms/internal/mlkit_language_id/zzda;)V

    return-object v0
.end method
