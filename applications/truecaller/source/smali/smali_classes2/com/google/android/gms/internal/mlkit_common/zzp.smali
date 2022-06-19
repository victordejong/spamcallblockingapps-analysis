.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/zzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzp;->zza:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzp;->zza:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzb(Ljava/io/FileDescriptor;)Lcom/google/android/gms/internal/mlkit_common/zzj;

    move-result-object v0

    return-object v0
.end method
