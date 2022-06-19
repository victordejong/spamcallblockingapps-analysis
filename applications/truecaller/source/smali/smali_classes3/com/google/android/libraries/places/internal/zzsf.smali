.class public abstract Lcom/google/android/libraries/places/internal/zzsf;
.super Lcom/google/android/libraries/places/internal/zzqw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/zzsf$zzc;,
        Lcom/google/android/libraries/places/internal/zzsf$zze;,
        Lcom/google/android/libraries/places/internal/zzsf$zzb;,
        Lcom/google/android/libraries/places/internal/zzsf$zza;,
        Lcom/google/android/libraries/places/internal/zzsf$zzd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/libraries/places/internal/zzsf<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/libraries/places/internal/zzsf$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/libraries/places/internal/zzqw<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/libraries/places/internal/zzsf<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public zzb:Lcom/google/android/libraries/places/internal/zzuz;

.field private zzc:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzsf;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzqw;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzuz;->zza()Lcom/google/android/libraries/places/internal/zzuz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzsf;->zzb:Lcom/google/android/libraries/places/internal/zzuz;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzsf;->zzc:I

    return-void
.end method

.method public static zza(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzsf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/libraries/places/internal/zzsf<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/libraries/places/internal/zzsf;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf;

    if-nez v0, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    sget-object v0, Lcom/google/android/libraries/places/internal/zzsf;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 9
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzvc;->zza(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf;

    .line 10
    sget v1, Lcom/google/android/libraries/places/internal/zzsf$zzd;->zzf:I

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/zzsf;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf;

    if-eqz v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/android/libraries/places/internal/zzsf;->zzd:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzsp;)Lcom/google/android/libraries/places/internal/zzsp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/zzsp<",
            "TE;>;)",
            "Lcom/google/android/libraries/places/internal/zzsp<",
            "TE;>;"
        }
    .end annotation

    .line 31
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 32
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/libraries/places/internal/zzsp;->zzb(I)Lcom/google/android/libraries/places/internal/zzsp;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzto;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 16
    new-instance v0, Lcom/google/android/libraries/places/internal/zzuf;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzuf;-><init>(Lcom/google/android/libraries/places/internal/zzto;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 19
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 20
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 21
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 23
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static zza(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzsf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/libraries/places/internal/zzsf<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/google/android/libraries/places/internal/zzsf;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final zza(Lcom/google/android/libraries/places/internal/zzsf;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/libraries/places/internal/zzsf<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 25
    sget v0, Lcom/google/android/libraries/places/internal/zzsf$zzd;->zza:I

    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/libraries/places/internal/zzsf;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 28
    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzud;->zza()Lcom/google/android/libraries/places/internal/zzud;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzud;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzue;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/libraries/places/internal/zzue;->zzd(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 29
    sget p1, Lcom/google/android/libraries/places/internal/zzsf$zzd;->zzb:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 30
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/libraries/places/internal/zzsf;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method public static zzi()Lcom/google/android/libraries/places/internal/zzsk;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzsh;->zzd()Lcom/google/android/libraries/places/internal/zzsh;

    move-result-object v0

    return-object v0
.end method

.method public static zzj()Lcom/google/android/libraries/places/internal/zzsm;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zztc;->zzd()Lcom/google/android/libraries/places/internal/zztc;

    move-result-object v0

    return-object v0
.end method

.method public static zzk()Lcom/google/android/libraries/places/internal/zzsp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/libraries/places/internal/zzsp<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzuc;->zzd()Lcom/google/android/libraries/places/internal/zzuc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 2
    :cond_2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzud;->zza()Lcom/google/android/libraries/places/internal/zzud;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzud;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzue;

    move-result-object v0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    invoke-interface {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzue;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzqw;->zza:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzud;->zza()Lcom/google/android/libraries/places/internal/zzud;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzud;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzue;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/libraries/places/internal/zzue;->zza(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzqw;->zza:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zztt;->zza(Lcom/google/android/libraries/places/internal/zzto;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zza(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzsf;->zzc:I

    return-void
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzrs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzud;->zza()Lcom/google/android/libraries/places/internal/zzud;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzud;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzue;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzru;->zza(Lcom/google/android/libraries/places/internal/zzrs;)Lcom/google/android/libraries/places/internal/zzru;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzue;->zza(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzvq;)V

    return-void
.end method

.method public final zzc()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Lcom/google/android/libraries/places/internal/zzsf;Z)Z

    move-result v0

    return v0
.end method

.method public final zze()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzsf;->zzc:I

    return v0
.end method

.method public final zzf()Lcom/google/android/libraries/places/internal/zzsf$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/libraries/places/internal/zzsf<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/libraries/places/internal/zzsf$zza<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/libraries/places/internal/zzsf$zzd;->zze:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/libraries/places/internal/zzsf;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf$zza;

    return-object v0
.end method

.method public final zzg()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzsf;->zzc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzud;->zza()Lcom/google/android/libraries/places/internal/zzud;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzud;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzue;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/libraries/places/internal/zzue;->zzb(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzsf;->zzc:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzsf;->zzc:I

    return v0
.end method

.method public final synthetic zzh()Lcom/google/android/libraries/places/internal/zzto;
    .locals 2

    .line 1
    sget v0, Lcom/google/android/libraries/places/internal/zzsf$zzd;->zzf:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/libraries/places/internal/zzsf;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf;

    return-object v0
.end method

.method public final synthetic zzl()Lcom/google/android/libraries/places/internal/zztr;
    .locals 2

    .line 1
    sget v0, Lcom/google/android/libraries/places/internal/zzsf$zzd;->zze:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/libraries/places/internal/zzsf;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf$zza;

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza(Lcom/google/android/libraries/places/internal/zzsf;)Lcom/google/android/libraries/places/internal/zzsf$zza;

    return-object v0
.end method
