.class public final Lcom/facebook/ads/redexgen/X/Wd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/B8;


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Ljava/nio/ByteBuffer;

.field public A04:Ljava/nio/ByteBuffer;

.field public A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5utGUnn02b5VIzuc1FLHs1Qqi0fGEzz2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DaG3Y2wQcTFt6n6rQ7Gr6iJZtSjkgUIR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "I5wcdOmu3UXBpwLMhd1MA2dM71iQzRTS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "a3TfZcOy08z7kq2pPCWxFv40lmZdIopZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nCxl35vO69EqZhEDDoDcGzJRz4rMZlE7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Y5761Ga76B4ReZAKlzLfDyZ1gXjGXB3L"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "t1lur4hbWemc11jTFC6OlnNGsbjhQ3VM"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6CnjKSKlGDDfBCJgDd7Ssr26upnReJdk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wd;->A06:[Ljava/lang/String;

    .line 63897
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63899
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A02:I

    .line 63900
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A00:I

    .line 63901
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A01:I

    .line 63902
    sget-object v0, Lcom/facebook/ads/redexgen/X/B8;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Ljava/nio/ByteBuffer;

    .line 63903
    sget-object v0, Lcom/facebook/ads/redexgen/X/B8;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A04:Ljava/nio/ByteBuffer;

    .line 63904
    return-void
.end method


# virtual methods
.method public final A45(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/B7;
        }
    .end annotation

    .line 63905
    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p3, v0, :cond_2

    .line 63906
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A02:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A00:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A01:I

    if-ne v0, p3, :cond_1

    .line 63907
    const/4 v0, 0x0

    return v0

    .line 63908
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Wd;->A02:I

    .line 63909
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Wd;->A00:I

    .line 63910
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Wd;->A01:I

    .line 63911
    const/4 v0, 0x1

    return v0

    .line 63912
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/B7;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/B7;-><init>(III)V

    throw v0
.end method

.method public final A6x()Ljava/nio/ByteBuffer;
    .locals 2

    .line 63913
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wd;->A04:Ljava/nio/ByteBuffer;

    .line 63914
    .local p0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/B8;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A04:Ljava/nio/ByteBuffer;

    .line 63915
    return-object v1
.end method

.method public final A6y()I
    .locals 1

    .line 63916
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A00:I

    return v0
.end method

.method public final A6z()I
    .locals 1

    .line 63917
    const/4 v0, 0x2

    return v0
.end method

.method public final A70()I
    .locals 1

    .line 63918
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A02:I

    return v0
.end method

.method public final A8F()Z
    .locals 2

    .line 63919
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wd;->A01:I

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A8J()Z
    .locals 2

    .line 63920
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A05:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wd;->A04:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/B8;->A00:Ljava/nio/ByteBuffer;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADA()V
    .locals 1

    .line 63921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A05:Z

    .line 63922
    return-void
.end method

.method public final ADB(Ljava/nio/ByteBuffer;)V
    .locals 10

    .line 63923
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 63924
    .local p0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 63925
    .local p1, "limit":I
    sub-int v1, v2, v3

    .line 63926
    .local v3, "size":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A01:I

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v4, 0x3

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-ne v0, v6, :cond_9

    .line 63927
    div-int/lit8 v9, v1, 0x2

    .line 63928
    .local v2, "resampledSize":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    sget-object v7, Lcom/facebook/ads/redexgen/X/Wd;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v7, v0

    const/4 v0, 0x3

    aget-object v7, v7, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v7, Lcom/facebook/ads/redexgen/X/Wd;->A06:[Ljava/lang/String;

    const-string v1, "W94yXwDUFyNDAMV4dQ9gRwTb9HKmhar0"

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const-string v1, "UxSCLQ06z7wJwwSNZRUXPEmpHaH1zCeE"

    const/4 v0, 0x1

    aput-object v1, v7, v0

    if-ge v8, v9, :cond_2

    .line 63929
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Ljava/nio/ByteBuffer;

    .line 63930
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A01:I

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    if-ne v0, v6, :cond_5

    .line 63931
    .local v1, "i":I
    :goto_2
    if-ge v3, v2, :cond_8

    .line 63932
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Ljava/nio/ByteBuffer;

    sget-object v4, Lcom/facebook/ads/redexgen/X/Wd;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v4, v4, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v4, Lcom/facebook/ads/redexgen/X/Wd;->A06:[Ljava/lang/String;

    const-string v1, "sfuVTkj8IwDRAmHRKMELNpZyhpVkIKBS"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "Fl4ka6a0nXkGByMLlkeuhoftQnViDXP0"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 63933
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v3, 0x3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 63934
    add-int/lit8 v3, v3, 0x4

    goto :goto_2

    .line 63935
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 63936
    :cond_3
    mul-int/lit8 v9, v1, 0x2

    .line 63937
    .restart local v2    # "resampledSize":I
    goto/16 :goto_0

    .line 63938
    .end local v2    # "resampledSize":I
    :cond_4
    div-int/lit8 v0, v1, 0x3

    mul-int/lit8 v9, v0, 0x2

    .line 63939
    .restart local v2    # "resampledSize":I
    goto/16 :goto_0

    .line 63940
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 63941
    .restart local v1    # "i":I
    :cond_6
    :goto_3
    if-ge v3, v2, :cond_8

    .line 63942
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 63943
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 63944
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 63945
    .restart local v1    # "i":I
    :cond_7
    :goto_4
    if-ge v3, v2, :cond_8

    .line 63946
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 63947
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 63948
    add-int/lit8 v3, v3, 0x3

    goto :goto_4

    .line 63949
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 63950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 63951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A04:Ljava/nio/ByteBuffer;

    .line 63952
    return-void

    .line 63953
    .end local v2    # "resampledSize":I
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final flush()V
    .locals 1

    .line 63954
    sget-object v0, Lcom/facebook/ads/redexgen/X/B8;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A04:Ljava/nio/ByteBuffer;

    .line 63955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A05:Z

    .line 63956
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 63957
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wd;->flush()V

    .line 63958
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A02:I

    .line 63959
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A00:I

    .line 63960
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A01:I

    .line 63961
    sget-object v0, Lcom/facebook/ads/redexgen/X/B8;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Ljava/nio/ByteBuffer;

    .line 63962
    return-void
.end method
