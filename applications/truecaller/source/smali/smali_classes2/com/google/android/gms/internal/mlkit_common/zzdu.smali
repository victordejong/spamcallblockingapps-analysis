.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/zzdu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Le/m/h/a/d/l;


# direct methods
.method private constructor <init>(Le/m/h/a/d/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzdu;->zza:Le/m/h/a/d/l;

    return-void
.end method

.method public static zza(Le/m/h/a/d/l;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzdu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzdu;-><init>(Le/m/h/a/d/l;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzdu;->zza:Le/m/h/a/d/l;

    invoke-virtual {v0}, Le/m/h/a/d/l;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
