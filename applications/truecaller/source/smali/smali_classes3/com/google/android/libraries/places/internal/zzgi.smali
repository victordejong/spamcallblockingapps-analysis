.class public abstract Lcom/google/android/libraries/places/internal/zzgi;
.super Lcom/google/android/libraries/places/internal/zzgj;
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
        "Lcom/google/android/libraries/places/internal/zzgj<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzhb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzhb<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzgl;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzgt;->zza:Lcom/google/android/libraries/places/internal/zzgi;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzgl;-><init>(Lcom/google/android/libraries/places/internal/zzgi;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzgi;->zza:Lcom/google/android/libraries/places/internal/zzhb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzgj;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzgi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzgt;->zza:Lcom/google/android/libraries/places/internal/zzgi;

    return-object v0
.end method

.method public static zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgi;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/libraries/places/internal/zzgi<",
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

    .line 2
    aget-object v3, v1, v2

    const-string v4, "at index 0"

    .line 3
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lcom/google/android/libraries/places/internal/zzgt;

    invoke-direct {p0, v1, v0}, Lcom/google/android/libraries/places/internal/zzgt;-><init>([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public static zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/google/android/libraries/places/internal/zzgi<",
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
    if-ge v2, v0, :cond_1

    .line 5
    aget-object p0, v1, v2

    if-eqz p0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const/16 p1, 0x14

    const-string v0, "at index "

    invoke-static {p1, v0, v2}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Lcom/google/android/libraries/places/internal/zzgt;

    invoke-direct {p0, v1, v0}, Lcom/google/android/libraries/places/internal/zzgt;-><init>([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public static zza(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzgi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "TE;>;"
        }
    .end annotation

    .line 8
    instance-of v0, p0, Lcom/google/android/libraries/places/internal/zzgj;

    if-eqz v0, :cond_2

    .line 9
    check-cast p0, Lcom/google/android/libraries/places/internal/zzgj;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzgj;->zzc()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzgj;->zzg()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzgj;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 11
    array-length v0, p0

    if-nez v0, :cond_0

    .line 12
    sget-object p0, Lcom/google/android/libraries/places/internal/zzgt;->zza:Lcom/google/android/libraries/places/internal/zzgi;

    return-object p0

    .line 13
    :cond_0
    new-instance v1, Lcom/google/android/libraries/places/internal/zzgt;

    invoke-direct {v1, p0, v0}, Lcom/google/android/libraries/places/internal/zzgt;-><init>([Ljava/lang/Object;I)V

    return-object v1

    :cond_1
    return-object p0

    .line 14
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 15
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 16
    aget-object v2, p0, v1

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const/16 v0, 0x14

    const-string v2, "at index "

    invoke-static {v0, v2, v1}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_5

    .line 19
    sget-object p0, Lcom/google/android/libraries/places/internal/zzgt;->zza:Lcom/google/android/libraries/places/internal/zzgi;

    return-object p0

    .line 20
    :cond_5
    new-instance v1, Lcom/google/android/libraries/places/internal/zzgt;

    invoke-direct {v1, p0, v0}, Lcom/google/android/libraries/places/internal/zzgt;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method

.method public static zza(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzgi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "TE;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 32
    check-cast p1, Ljava/util/Collection;

    goto :goto_1

    .line 33
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 39
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 40
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 41
    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const/16 p1, 0x14

    const-string v0, "at index "

    invoke-static {p1, v0, v1}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_3
    invoke-static {p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 44
    array-length p0, p1

    if-nez p0, :cond_4

    .line 45
    sget-object p0, Lcom/google/android/libraries/places/internal/zzgt;->zza:Lcom/google/android/libraries/places/internal/zzgi;

    return-object p0

    .line 46
    :cond_4
    new-instance v0, Lcom/google/android/libraries/places/internal/zzgt;

    invoke-direct {v0, p1, p0}, Lcom/google/android/libraries/places/internal/zzgt;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zza([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "TE;>;"
        }
    .end annotation

    .line 21
    array-length v0, p0

    if-nez v0, :cond_0

    .line 22
    sget-object p0, Lcom/google/android/libraries/places/internal/zzgt;->zza:Lcom/google/android/libraries/places/internal/zzgi;

    return-object p0

    .line 23
    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 24
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 25
    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const/16 v0, 0x14

    const-string v2, "at index "

    invoke-static {v0, v2, v1}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_2
    array-length v0, p0

    if-nez v0, :cond_3

    .line 28
    sget-object p0, Lcom/google/android/libraries/places/internal/zzgt;->zza:Lcom/google/android/libraries/places/internal/zzgi;

    return-object p0

    .line 29
    :cond_3
    new-instance v1, Lcom/google/android/libraries/places/internal/zzgt;

    invoke-direct {v1, p0, v0}, Lcom/google/android/libraries/places/internal/zzgt;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method

.method public static zzb([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "TE;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/libraries/places/internal/zzgt;->zza:Lcom/google/android/libraries/places/internal/zzgi;

    return-object p0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/libraries/places/internal/zzgt;

    invoke-direct {v1, p0, v0}, Lcom/google/android/libraries/places/internal/zzgt;-><init>([Ljava/lang/Object;I)V

    return-object v1
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
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzgi;->indexOf(Ljava/lang/Object;)I

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
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/zzfn;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/zzfn;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzgi;->zzb()Lcom/google/android/libraries/places/internal/zzgy;

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
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzgi;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzhb;

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzft;->zzb(II)I

    .line 2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/google/android/libraries/places/internal/zzgi;->zza:Lcom/google/android/libraries/places/internal/zzhb;

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzgl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzgl;-><init>(Lcom/google/android/libraries/places/internal/zzgi;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzgi;->zza(II)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object p1

    return-object p1
.end method

.method public zza([Ljava/lang/Object;I)I
    .locals 4

    .line 51
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    .line 52
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    return p2
.end method

.method public zza(II)Lcom/google/android/libraries/places/internal/zzgi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "TE;>;"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzft;->zza(III)V

    sub-int/2addr p2, p1

    .line 48
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 49
    sget-object p1, Lcom/google/android/libraries/places/internal/zzgt;->zza:Lcom/google/android/libraries/places/internal/zzgi;

    return-object p1

    .line 50
    :cond_1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzgk;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzgk;-><init>(Lcom/google/android/libraries/places/internal/zzgi;II)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzgy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgy<",
            "TE;>;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzgi;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzhb;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzgi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method
