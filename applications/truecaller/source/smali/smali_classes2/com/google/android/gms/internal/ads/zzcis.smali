.class public abstract Lcom/google/android/gms/internal/ads/zzcis;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public static final zzb:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcis;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcis;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzP()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcis;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static zzQ()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcis;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract zzA()Z
.end method

.method public abstract zzB()I
.end method

.method public abstract zzC()J
.end method

.method public abstract zzD()Z
.end method

.method public abstract zzE(Z)V
.end method

.method public abstract zzF(I)V
.end method

.method public abstract zzG(I)V
.end method

.method public abstract zzH()J
.end method

.method public abstract zzI()J
.end method

.method public abstract zzJ()J
.end method

.method public abstract zzK()J
.end method

.method public abstract zzL()I
.end method

.method public abstract zzM(Z)V
.end method

.method public abstract zzN()J
.end method

.method public abstract zzO()J
.end method

.method public abstract zzp([Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract zzq([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
.end method

.method public abstract zzr(Lcom/google/android/gms/internal/ads/zzcir;)V
.end method

.method public abstract zzs()V
.end method

.method public abstract zzt(Landroid/view/Surface;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzu(FZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzv()V
.end method

.method public abstract zzw(J)V
.end method

.method public abstract zzx(I)V
.end method

.method public abstract zzy(I)V
.end method

.method public abstract zzz(I)V
.end method
