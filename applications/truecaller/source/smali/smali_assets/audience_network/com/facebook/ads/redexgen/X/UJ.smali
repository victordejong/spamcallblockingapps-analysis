.class public final Lcom/facebook/ads/redexgen/X/UJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Hq;


# static fields
.field public static A06:Z

.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/UL;

.field public final A03:Lcom/facebook/ads/redexgen/X/Hy;

.field public final A04:Ljava/io/File;

.field public final A05:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Hp;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eH4syubUz2tR66H4aXOA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1d5DSBS1mhWRL66KnLBZBpyHNgki7Rvu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "v9uLJ4dIwyz0Tb4FaO07wTfk2F9lBV8v"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "E1Se3PKWItYNl2w7Z0lUvGDZb88eKAvD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3tvSVqejLSP4DWhBG1hRQ7meIfhtlUpf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "obkGL38LbEEikSiwJ4pDHOfB9GOmWii2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dwvV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8LO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UJ;->A08:[Ljava/lang/String;

    .line 56130
    invoke-static {}, Lcom/facebook/ads/redexgen/X/UJ;->A06()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/UJ;->A09:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 2

    .line 56131
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/UJ;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/UL;[BZ)V

    .line 56132
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/UL;Lcom/facebook/ads/redexgen/X/Hy;)V
    .locals 4

    .line 56133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56134
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/UJ;->A0D(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56135
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A04:Ljava/io/File;

    .line 56136
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/UJ;->A02:Lcom/facebook/ads/redexgen/X/UL;

    .line 56137
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    .line 56138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A05:Ljava/util/HashMap;

    .line 56139
    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    .line 56140
    .local p0, "conditionVariable":Landroid/os/ConditionVariable;
    const/16 v2, 0x39

    const/16 v1, 0x18

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UJ;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/I3;

    invoke-direct {v0, p0, v1, v3}, Lcom/facebook/ads/redexgen/X/I3;-><init>(Lcom/facebook/ads/redexgen/X/UJ;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 56141
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I3;->start()V

    .line 56142
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    .line 56143
    return-void

    .line 56144
    .end local p0    # "conditionVariable":Landroid/os/ConditionVariable;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x2e

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UJ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/UL;[BZ)V
    .locals 1

    .line 56145
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hy;

    invoke-direct {v0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/Hy;-><init>(Ljava/io/File;[BZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/UJ;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/UL;Lcom/facebook/ads/redexgen/X/Hy;)V

    .line 56146
    return-void
.end method

.method private A00(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ho;
        }
    .end annotation

    .line 56147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hy;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hx;

    move-result-object v2

    .line 56148
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Hx;
    if-nez v2, :cond_0

    .line 56149
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/UI;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UI;

    move-result-object v0

    return-object v0

    .line 56150
    :cond_0
    :goto_0
    invoke-virtual {v2, p2, p3}, Lcom/facebook/ads/redexgen/X/Hx;->A06(J)Lcom/facebook/ads/redexgen/X/UI;

    move-result-object v1

    .line 56151
    .local p1, "span":Lcom/facebook/ads/redexgen/X/UI;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Hu;->A05:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Hu;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56152
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UJ;->A05()V

    .line 56153
    goto :goto_0

    .line 56154
    :cond_1
    return-object v1
.end method

.method private final declared-synchronized A01(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/facebook/ads/redexgen/X/Ho;
        }
    .end annotation

    monitor-enter p0

    .line 56155
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/UJ;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UI;

    move-result-object v0

    .line 56156
    .local p0, "span":Lcom/facebook/ads/redexgen/X/UI;
    if-eqz v0, :cond_0

    goto :goto_1

    .line 56157
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56158
    :goto_1
    monitor-exit p0

    return-object v0

    .line 56159
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:J
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UI;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ho;
        }
    .end annotation

    monitor-enter p0

    .line 56160
    :try_start_0
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/UJ;->A01:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/UJ;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/UJ;->A08:[Ljava/lang/String;

    const-string v1, "i1JHZi6uUAd1FxW2ulRZEzuIvuRnbT2M"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 56161
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/UJ;->A00(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UI;

    move-result-object v2

    .line 56162
    .local p0, "cacheSpan":Lcom/facebook/ads/redexgen/X/UI;
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Hu;->A05:Z

    if-eqz v0, :cond_1

    .line 56163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hy;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hx;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hx;->A07(Lcom/facebook/ads/redexgen/X/UI;)Lcom/facebook/ads/redexgen/X/UI;

    move-result-object v0

    .line 56164
    .local p1, "newCacheSpan":Lcom/facebook/ads/redexgen/X/UI;
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/UJ;->A0C(Lcom/facebook/ads/redexgen/X/UI;Lcom/facebook/ads/redexgen/X/Hu;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56165
    monitor-exit p0

    return-object v0

    .line 56166
    .end local p1    # "newCacheSpan":Lcom/facebook/ads/redexgen/X/UI;
    .end local v4
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hy;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hx;

    move-result-object v1

    .line 56167
    .local p2, "cachedContent":Lcom/facebook/ads/redexgen/X/Hx;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hx;->A0D()Z

    move-result v0

    if-nez v0, :cond_2

    .line 56168
    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/Hx;->A0B(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56169
    monitor-exit p0

    return-object v2

    .line 56170
    :cond_2
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 56171
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56172
    .end local p0    # "cacheSpan":Lcom/facebook/ads/redexgen/X/UI;
    .end local p2    # "cachedContent":Lcom/facebook/ads/redexgen/X/Hx;
    .end local v3
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UJ;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x47

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 9

    .line 56173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 56175
    return-void

    .line 56176
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hy;->A0E()V

    .line 56177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 56178
    .local p0, "files":[Ljava/io/File;
    if-nez v8, :cond_1

    .line 56179
    return-void

    .line 56180
    :cond_1
    array-length v7, v8

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v5, v8, v6

    .line 56181
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x6a

    const/16 v1, 0x18

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UJ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56182
    .end local v0    # "file":Ljava/io/File;
    .end local v0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 56183
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Hy;)Lcom/facebook/ads/redexgen/X/UI;

    move-result-object v0

    .line 56184
    .local v0, "span":Lcom/facebook/ads/redexgen/X/UI;
    :goto_2
    if-eqz v0, :cond_4

    .line 56185
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/UJ;->A0A(Lcom/facebook/ads/redexgen/X/UI;)V

    goto :goto_1

    .line 56186
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 56187
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 56188
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hy;->A0F()V

    .line 56189
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hy;->A0G()V

    goto :goto_3
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Ho; {:try_start_0 .. :try_end_0} :catch_0

    .line 56190
    :catch_0
    move-exception v4

    .line 56191
    .local v0, "e":Lcom/facebook/ads/redexgen/X/Ho;
    const/16 v2, 0x2e

    const/16 v1, 0xb

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UJ;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x51

    const/16 v1, 0x19

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UJ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56192
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/Ho;
    :goto_3
    return-void
.end method

.method private A05()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ho;
        }
    .end annotation

    .line 56193
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 56194
    .local p0, "spansToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/upstream/cache/CacheSpan;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hy;->A0D()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hx;

    .line 56195
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/Hx;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Hu;

    .line 56196
    .local v3, "span":Lcom/facebook/ads/redexgen/X/Hu;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Hu;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56197
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56198
    :cond_2
    const/4 v2, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 56199
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Hu;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/UJ;->A08(Lcom/facebook/ads/redexgen/X/Hu;Z)V

    .line 56200
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 56201
    .end local v4    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hy;->A0F()V

    .line 56202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hy;->A0G()V

    .line 56203
    return-void
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x82

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/UJ;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x6at
        0x45t
        0x44t
        0x5ft
        0x43t
        0x4et
        0x59t
        0xbt
        0x78t
        0x42t
        0x46t
        0x5bt
        0x47t
        0x4et
        0x68t
        0x4at
        0x48t
        0x43t
        0x4et
        0xbt
        0x42t
        0x45t
        0x58t
        0x5ft
        0x4at
        0x45t
        0x48t
        0x4et
        0xbt
        0x5et
        0x58t
        0x4et
        0x58t
        0xbt
        0x5ft
        0x43t
        0x4et
        0xbt
        0x4dt
        0x44t
        0x47t
        0x4ft
        0x4et
        0x59t
        0x11t
        0xbt
        0x52t
        0x68t
        0x6ct
        0x71t
        0x6dt
        0x64t
        0x42t
        0x60t
        0x62t
        0x69t
        0x64t
        0x5et
        0x64t
        0x60t
        0x7dt
        0x61t
        0x68t
        0x4et
        0x6ct
        0x6et
        0x65t
        0x68t
        0x23t
        0x64t
        0x63t
        0x64t
        0x79t
        0x64t
        0x6ct
        0x61t
        0x64t
        0x77t
        0x68t
        0x25t
        0x24t
        0x0t
        0x27t
        0x3ct
        0x21t
        0x3at
        0x3dt
        0x34t
        0x73t
        0x3at
        0x3dt
        0x37t
        0x36t
        0x2bt
        0x73t
        0x35t
        0x3at
        0x3ft
        0x36t
        0x73t
        0x35t
        0x32t
        0x3at
        0x3ft
        0x36t
        0x37t
        0x1ct
        0x1et
        0x1ct
        0x17t
        0x1at
        0x1bt
        0x20t
        0x1ct
        0x10t
        0x11t
        0xbt
        0x1at
        0x11t
        0xbt
        0x20t
        0x16t
        0x11t
        0x1bt
        0x1at
        0x7t
        0x51t
        0x1at
        0x7t
        0x16t
    .end array-data
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/Hu;)V
    .locals 3

    .line 56204
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A05:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hu;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 56205
    .local p0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v2, :cond_0

    .line 56206
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 56207
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hp;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->AC8(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Hu;)V

    .line 56208
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 56209
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A02:Lcom/facebook/ads/redexgen/X/UL;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->AC8(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Hu;)V

    .line 56210
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Hu;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ho;
        }
    .end annotation

    .line 56211
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hu;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hy;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hx;

    move-result-object v4

    .line 56212
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Hx;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Lcom/facebook/ads/redexgen/X/Hx;->A0E(Lcom/facebook/ads/redexgen/X/Hu;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56213
    :cond_0
    return-void

    .line 56214
    :cond_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UJ;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Hu;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/UJ;->A00:J

    .line 56215
    if-eqz p2, :cond_2

    .line 56216
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hy;->A0H(Ljava/lang/String;)V

    .line 56217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hy;->A0G()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56218
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/UJ;->A07(Lcom/facebook/ads/redexgen/X/Hu;)V

    .line 56219
    throw v0

    .line 56220
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/UJ;->A07(Lcom/facebook/ads/redexgen/X/Hu;)V

    .line 56221
    return-void
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/UJ;)V
    .locals 0

    .line 56222
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UJ;->A04()V

    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/UI;)V
    .locals 4

    .line 56223
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hu;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hy;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hx;->A09(Lcom/facebook/ads/redexgen/X/UI;)V

    .line 56224
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UJ;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Hu;->A01:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/UJ;->A00:J

    .line 56225
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/UJ;->A0B(Lcom/facebook/ads/redexgen/X/UI;)V

    .line 56226
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/UI;)V
    .locals 3

    .line 56227
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A05:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hu;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 56228
    .local p0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v2, :cond_0

    .line 56229
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 56230
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hp;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->AC7(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Hu;)V

    .line 56231
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 56232
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A02:Lcom/facebook/ads/redexgen/X/UL;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->AC7(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Hu;)V

    .line 56233
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/UI;Lcom/facebook/ads/redexgen/X/Hu;)V
    .locals 3

    .line 56234
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A05:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hu;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 56235
    .local p0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v2, :cond_0

    .line 56236
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 56237
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hp;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Hp;->AC9(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Hu;Lcom/facebook/ads/redexgen/X/Hu;)V

    .line 56238
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 56239
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A02:Lcom/facebook/ads/redexgen/X/UL;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Hp;->AC9(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Hu;Lcom/facebook/ads/redexgen/X/Hu;)V

    .line 56240
    return-void
.end method

.method public static declared-synchronized A0D(Ljava/io/File;)Z
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/UJ;

    monitor-enter v2

    .line 56241
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/UJ;->A06:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56242
    const/4 v0, 0x1

    monitor-exit v2

    return v0

    .line 56243
    :cond_0
    :try_start_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/UJ;->A09:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UJ;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/UJ;->A08:[Ljava/lang/String;

    const-string v1, "IKpjWyjLYfQpiBWntIG6MWMycmL9Fi0T"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "4yvCWPfRVkN5zdYzJ7yblhOZllwt9yTn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return p0

    .line 56244
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A3N(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/I2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ho;
        }
    .end annotation

    monitor-enter p0

    .line 56245
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 56246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Hy;->A0I(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/I2;)V

    .line 56247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hy;->A0G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56248
    monitor-exit p0

    return-void

    .line 56249
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/I2;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A42(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ho;
        }
    .end annotation

    monitor-enter p0

    .line 56250
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A01:Z

    const/4 v7, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 56251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Hy;)Lcom/facebook/ads/redexgen/X/UI;

    move-result-object v6

    .line 56252
    .local p0, "span":Lcom/facebook/ads/redexgen/X/UI;
    if-eqz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 56253
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Hu;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hy;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hx;

    move-result-object v5

    .line 56254
    .local v7, "cachedContent":Lcom/facebook/ads/redexgen/X/Hx;
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56255
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hx;->A0D()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 56256
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56257
    monitor-exit p0

    return-void

    .line 56258
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    .line 56259
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56260
    monitor-exit p0

    return-void

    .line 56261
    .end local v5
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hx;->A05()Lcom/facebook/ads/redexgen/X/I0;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I1;->A00(Lcom/facebook/ads/redexgen/X/I0;)J

    move-result-wide v4

    .line 56262
    .local v0, "length":J
    const-wide/16 v1, -0x1

    cmp-long v0, v4, v1

    if-eqz v0, :cond_4

    .line 56263
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/Hu;->A02:J

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/Hu;->A01:J

    add-long/2addr v2, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    :goto_2
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 56264
    :cond_4
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/UJ;->A0A(Lcom/facebook/ads/redexgen/X/UI;)V

    .line 56265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hy;->A0G()V

    .line 56266
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    .line 56267
    :cond_5
    const/4 v7, 0x0

    goto :goto_2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56268
    :goto_3
    monitor-exit p0

    return-void

    .line 56269
    .end local p0    # "span":Lcom/facebook/ads/redexgen/X/UI;
    .end local v7    # "cachedContent":Lcom/facebook/ads/redexgen/X/Hx;
    .end local v0    # "length":J
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A5r()J
    .locals 2

    monitor-enter p0

    .line 56270
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 56271
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 56272
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A5s(Ljava/lang/String;JJ)J
    .locals 2

    monitor-enter p0

    .line 56273
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 56274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hy;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hx;

    move-result-object v0

    .line 56275
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Hx;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/Hx;->A04(JJ)J

    move-result-wide v0

    goto :goto_1

    .end local p1    # null:Ljava/lang/String;
    :cond_1
    neg-long v0, p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-wide v0

    .line 56276
    .end local p0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Hx;
    .end local p4    # null:J
    .end local p3
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A5t(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/facebook/ads/redexgen/X/Hu;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 56277
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 56278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hy;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hx;

    move-result-object v1

    .line 56279
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Hx;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hx;->A0C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56280
    .end local v0
    :cond_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_1

    .line 56281
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hx;->A08()Ljava/util/TreeSet;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56282
    :goto_1
    monitor-exit p0

    return-object v1

    .line 56283
    .end local p0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Hx;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A64(Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

    .line 56284
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/UJ;->A65(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/I0;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I1;->A00(Lcom/facebook/ads/redexgen/X/I0;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local v0
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A65(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/I0;
    .locals 1

    monitor-enter p0

    .line 56285
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 56286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hy;->A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/I0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 56287
    .end local p1    # null:Ljava/lang/String;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ADW(Lcom/facebook/ads/redexgen/X/Hu;)V
    .locals 4

    monitor-enter p0

    .line 56288
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A01:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 56289
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hu;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hy;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hx;

    move-result-object v2

    .line 56290
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Hx;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56291
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A0D()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 56292
    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/Hx;->A0B(Z)V

    .line 56293
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hy;->A0H(Ljava/lang/String;)V

    .line 56294
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56295
    monitor-exit p0

    return-void

    .line 56296
    .end local p0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Hx;
    .end local v3
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ADd(Lcom/facebook/ads/redexgen/X/Hu;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ho;
        }
    .end annotation

    monitor-enter p0

    .line 56297
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A01:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 56298
    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/UJ;->A08(Lcom/facebook/ads/redexgen/X/Hu;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56299
    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/UJ;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/UJ;->A08:[Ljava/lang/String;

    const-string v1, "mDPrx6EC7JunlTiRZIITWuDkOY6RMx2Q"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56300
    .end local v0
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AEK(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ho;
        }
    .end annotation

    monitor-enter p0

    .line 56301
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/I2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/I2;-><init>()V

    .line 56302
    .local p0, "mutations":Lcom/facebook/ads/redexgen/X/I2;
    invoke-static {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/I1;->A05(Lcom/facebook/ads/redexgen/X/I2;J)V

    .line 56303
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/UJ;->A3N(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/I2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56304
    monitor-exit p0

    return-void

    .line 56305
    .end local p0    # "mutations":Lcom/facebook/ads/redexgen/X/I2;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:J
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AEl(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ho;
        }
    .end annotation

    monitor-enter p0

    .line 56306
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 56307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Lcom/facebook/ads/redexgen/X/Hy;

    move-object v4, p1

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hy;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hx;

    move-result-object v1

    .line 56308
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Hx;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56309
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hx;->A0D()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 56310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 56312
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UJ;->A05()V

    .line 56313
    .end local v0
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/UJ;->A02:Lcom/facebook/ads/redexgen/X/UL;

    move-object v3, p0

    move-wide v5, p2

    move-wide v7, p4

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/UL;->ACA(Lcom/facebook/ads/redexgen/X/Hq;Ljava/lang/String;JJ)V

    .line 56314
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UJ;->A04:Ljava/io/File;

    iget v4, v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    .line 56315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 56316
    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/UI;->A04(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 56317
    .end local p0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Hx;
    .end local v1
    .end local v0
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic AEn(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Hu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/facebook/ads/redexgen/X/Ho;
        }
    .end annotation

    .line 56318
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/UJ;->A01(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UI;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic AEo(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Hu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ho;
        }
    .end annotation

    .line 56319
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/UJ;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UI;

    move-result-object v0

    return-object v0
.end method
