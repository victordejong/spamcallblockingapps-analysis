.class public abstract Lcom/google/android/gms/internal/ads/zzxl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxm;


# static fields
.field private static final zzb:Ljava/util/logging/Logger;


# instance fields
.field public final zza:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzxl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxl;->zzb:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzxk;-><init>(Lcom/google/android/gms/internal/ads/zzxl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public abstract zza(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzxp;
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgkm;Lcom/google/android/gms/internal/ads/zzxq;)Lcom/google/android/gms/internal/ads/zzxp;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzc()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzgkm;->zza(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-eq v2, v3, :cond_1

    if-ltz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzd(J)V

    .line 5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    .line 6
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    .line 7
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzxo;->zza(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    const-wide/16 v4, 0x8

    cmp-long v2, v0, v4

    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    if-gez v2, :cond_3

    cmp-long v2, v0, v5

    if-gtz v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzxl;->zzb:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/16 v2, 0x50

    const-string v3, "Plausibility check failed: size < 8 (size = "

    const-string v5, "). Stop parsing!"

    invoke-static {v2, v3, v0, v1, v5}, Le/d/c/a/a;->P1(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.coremedia.iso.AbstractBoxParser"

    const-string v2, "parseBox"

    .line 9
    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 10
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    .line 11
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    const/4 v7, 0x4

    new-array v7, v7, [B

    .line 12
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v8, "ISO-8859-1"

    invoke-direct {v2, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v5, v0, v5

    const-wide/16 v6, -0x10

    const/16 v8, 0x10

    if-nez v5, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    .line 13
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    .line 14
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzgkm;->zza(Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    .line 15
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    .line 16
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzxo;->zzd(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    add-long/2addr v0, v6

    goto :goto_2

    :cond_4
    const-wide/16 v9, 0x0

    cmp-long v3, v0, v9

    if-nez v3, :cond_5

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzb()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzc()J

    move-result-wide v9

    sub-long/2addr v0, v9

    goto :goto_2

    :cond_5
    const-wide/16 v9, -0x8

    add-long/2addr v0, v9

    :goto_2
    const-string v3, "uuid"

    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    .line 19
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v4, v8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    .line 20
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/zzgkm;->zza(Ljava/nio/ByteBuffer;)I

    new-array v4, v8, [B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    .line 21
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, -0x10

    :goto_3
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-ge v3, v5, :cond_6

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    .line 22
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, -0x10

    sub-int v5, v3, v5

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    aput-byte v8, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    add-long/2addr v0, v6

    :cond_7
    move-wide v8, v0

    .line 23
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzxp;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzxp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxp;->zzb()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    const-string v0, ""

    :goto_4
    invoke-virtual {p0, v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzxl;->zza(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzxp;

    move-result-object v0

    .line 24
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzxp;->zza(Lcom/google/android/gms/internal/ads/zzxq;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    .line 25
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxl;->zza:Ljava/lang/ThreadLocal;

    .line 26
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Ljava/nio/ByteBuffer;

    move-object v5, v0

    move-object v6, p1

    move-object v10, p0

    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzxp;->zzc(Lcom/google/android/gms/internal/ads/zzgkm;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzxm;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 27
    new-instance p2, Ljava/lang/RuntimeException;

    .line 28
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
