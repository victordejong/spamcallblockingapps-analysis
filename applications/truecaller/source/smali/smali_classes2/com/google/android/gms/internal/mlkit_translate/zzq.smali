.class public abstract Lcom/google/android/gms/internal/mlkit_translate/zzq;
.super Lcom/google/android/gms/internal/mlkit_translate/zzl;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_translate/zzl<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_translate/zzaj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzaj<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzs;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzaa;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzs;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzq;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzaj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzl;-><init>()V

    return-void
.end method

.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    move p0, v2

    :goto_0
    if-gtz p0, :cond_0

    .line 1
    aget-object v3, v1, v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzx;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    aget-object p0, v1, v2

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzx;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    aget-object p0, v1, v2

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzx;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    aget-object p0, v1, v2

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzx;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object p0

    return-object p0
.end method

.method public static varargs zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    move-object/from16 v0, p12

    .line 9
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x7ffffff3

    if-gt v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "the total number of elements must fit in an int"

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zza(ZLjava/lang/Object;)V

    .line 10
    array-length v1, v0

    const/16 v4, 0xc

    add-int/2addr v1, v4

    new-array v5, v1, [Ljava/lang/Object;

    .line 11
    aput-object p0, v5, v3

    .line 12
    aput-object p1, v5, v2

    const/4 v2, 0x2

    .line 13
    aput-object p2, v5, v2

    const/4 v2, 0x3

    .line 14
    aput-object p3, v5, v2

    const/4 v2, 0x4

    .line 15
    aput-object p4, v5, v2

    const/4 v2, 0x5

    .line 16
    aput-object p5, v5, v2

    const/4 v2, 0x6

    .line 17
    aput-object p6, v5, v2

    const/4 v2, 0x7

    .line 18
    aput-object p7, v5, v2

    const/16 v2, 0x8

    .line 19
    aput-object p8, v5, v2

    const/16 v2, 0x9

    .line 20
    aput-object p9, v5, v2

    const/16 v2, 0xa

    .line 21
    aput-object p10, v5, v2

    const/16 v2, 0xb

    .line 22
    aput-object p11, v5, v2

    .line 23
    array-length v2, v0

    invoke-static {v0, v3, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    if-ge v3, v1, :cond_1

    .line 24
    aget-object v0, v5, v3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzx;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 25
    :cond_1
    invoke-static {v5, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v0

    return-object v0
.end method

.method public static zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TE;>;"
        }
    .end annotation

    .line 26
    array-length v0, p0

    if-nez v0, :cond_0

    .line 27
    sget-object p0, Lcom/google/android/gms/internal/mlkit_translate/zzaa;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    return-object p0

    .line 28
    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 29
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 30
    aget-object v2, p0, v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzx;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_1
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object p0

    return-object p0
.end method

.method public static zzb([Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TE;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object p0

    return-object p0
.end method

.method public static zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/mlkit_translate/zzaa;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzaa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzaa;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zzf()Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzaa;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/mlkit_translate/zzp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/mlkit_translate/zzp<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzp;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3
    check-cast p1, Ljava/util/List;

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 6
    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_2

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 7
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_translate/zzc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 12
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_translate/zzc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 13
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    not-int v1, v3

    not-int v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzak;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzaj;

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zzb(II)I

    .line 2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzaj;

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzs;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzq;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zza(II)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object p1

    return-object p1
.end method

.method public zza([Ljava/lang/Object;I)I
    .locals 4

    .line 37
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    .line 38
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    return p2
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_translate/zzak;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_translate/zzak<",
            "TE;>;"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzaj;

    return-object v0
.end method

.method public zza(II)Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TE;>;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zza(III)V

    sub-int/2addr p2, p1

    .line 34
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 35
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzaa;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    return-object p1

    .line 36
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzr;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzr;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzq;II)V

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method
