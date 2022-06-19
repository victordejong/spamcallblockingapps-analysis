.class public Lcom/google/common/collect/ImmutableMap$SerializedForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final keys:Ljava/lang/Object;

.field public final values:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->keys:Ljava/lang/Object;

    .line 8
    iput-object v1, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->values:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final readResolve()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->keys:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/common/collect/ImmutableSet;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 2
    check-cast v0, [Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->values:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 4
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    .line 5
    new-array v3, v3, [Ljava/lang/Object;

    move-object v4, v3

    move v3, v2

    .line 6
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 7
    aget-object v5, v0, v2

    aget-object v6, v1, v2

    add-int/lit8 v7, v3, 0x1

    mul-int/lit8 v8, v7, 0x2

    .line 8
    array-length v9, v4

    if-le v8, v9, :cond_0

    .line 9
    array-length v9, v4

    .line 10
    invoke-static {v9, v8}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v8

    .line 11
    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 12
    :cond_0
    invoke-static {v5, v6}, Ln3/g0/y;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    mul-int/lit8 v3, v3, 0x2

    .line 13
    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    .line 14
    aput-object v6, v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v7

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v3, v4}, Lcom/google/common/collect/RegularImmutableMap;->create(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableMap;

    move-result-object v0

    return-object v0

    .line 16
    :cond_2
    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 17
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->values:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/ImmutableCollection;

    .line 18
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 19
    new-array v3, v3, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 21
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    .line 22
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    mul-int/lit8 v7, v6, 0x2

    .line 24
    array-length v8, v3

    if-le v7, v8, :cond_3

    .line 25
    array-length v8, v3

    .line 26
    invoke-static {v8, v7}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v7

    .line 27
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 28
    :cond_3
    invoke-static {v4, v5}, Ln3/g0/y;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    mul-int/lit8 v2, v2, 0x2

    .line 29
    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    .line 30
    aput-object v5, v3, v2

    move v2, v6

    goto :goto_1

    .line 31
    :cond_4
    invoke-static {v2, v3}, Lcom/google/common/collect/RegularImmutableMap;->create(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableMap;

    move-result-object v0

    return-object v0
.end method
