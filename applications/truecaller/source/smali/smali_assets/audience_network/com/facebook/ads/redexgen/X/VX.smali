.class public final Lcom/facebook/ads/redexgen/X/VX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Dk;


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/Dd;

.field public final A05:Lcom/facebook/ads/redexgen/X/IV;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kFQyFzcAtW9h"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "T9w"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fQaNjl3SJX3d9bVQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oZJ95vdSt2TTHBWCj0JXn5a7ndpZ8Bju"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "u9yp8kydrxa7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6VdIrZzllDHdfU7GHzHok5zrzcn9yZKG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "C5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TRfT7Vv0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VX;->A06:[Ljava/lang/String;

    .line 58885
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dd;)V
    .locals 2

    .line 58886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58887
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VX;->A04:Lcom/facebook/ads/redexgen/X/Dd;

    .line 58888
    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A05:Lcom/facebook/ads/redexgen/X/IV;

    .line 58889
    return-void
.end method


# virtual methods
.method public final A47(Lcom/facebook/ads/redexgen/X/IV;Z)V
    .locals 7

    .line 58890
    const/4 v5, -0x1

    .line 58891
    .local p0, "payloadStartPosition":I
    if-eqz p2, :cond_0

    .line 58892
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    .line 58893
    .local p1, "payloadStartOffset":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A06()I

    move-result v5

    add-int/2addr v5, v0

    .line 58894
    .end local p1    # "payloadStartOffset":I
    :cond_0
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/VX;->A03:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/VX;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/VX;->A06:[Ljava/lang/String;

    const-string v1, "Nc9T8xtu"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v3, 0x0

    if-eqz v4, :cond_2

    .line 58895
    if-nez p2, :cond_1

    .line 58896
    return-void

    .line 58897
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/VX;->A03:Z

    .line 58898
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 58899
    iput v3, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    .line 58900
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    if-lez v0, :cond_b

    .line 58901
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    const/4 v4, 0x1

    const/4 v6, 0x3

    if-ge v0, v6, :cond_6

    .line 58902
    if-nez v0, :cond_4

    .line 58903
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v5

    .line 58904
    .local p1, "tableId":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A06()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/VX;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58905
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/VX;->A06:[Ljava/lang/String;

    const-string v1, "aJNwIS78aN3JetqFlJ8G"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0xff

    if-ne v5, v0, :cond_4

    .line 58906
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/VX;->A03:Z

    .line 58907
    return-void

    .line 58908
    .end local p1    # "tableId":I
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    rsub-int/lit8 v0, v0, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 58909
    .local p1, "headerBytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A05:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/IV;->A0c([BII)V

    .line 58910
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    .line 58911
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    if-ne v0, v6, :cond_2

    .line 58912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A05:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IV;->A0W(I)V

    .line 58913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A05:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 58914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A05:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v2

    .line 58915
    .local v5, "secondHeaderByte":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A05:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v1

    .line 58916
    .local v4, "thirdHeaderByte":I
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_5

    :goto_1
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/VX;->A02:Z

    .line 58917
    and-int/lit8 v0, v2, 0xf

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    add-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    .line 58918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A05:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A05()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    if-ge v1, v0, :cond_2

    .line 58919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A05:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    .line 58920
    .local v5, "bytes":[B
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VX;->A05:Lcom/facebook/ads/redexgen/X/IV;

    const/16 v2, 0x1002

    iget v1, p0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    array-length v0, v5

    mul-int/lit8 v0, v0, 0x2

    .line 58921
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 58922
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0W(I)V

    .line 58923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A05:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-static {v5, v3, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 58924
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 58925
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 58926
    .local p1, "bodyBytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A05:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/IV;->A0c([BII)V

    .line 58927
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    .line 58928
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    if-ne v0, v6, :cond_2

    .line 58929
    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/VX;->A02:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/VX;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/VX;->A06:[Ljava/lang/String;

    const-string v1, "WscUDiyP9zB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v5, :cond_a

    .line 58930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A05:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    const/4 v0, -0x1

    invoke-static {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->A09([BIII)I

    move-result v0

    if-eqz v0, :cond_8

    .line 58931
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/VX;->A03:Z

    .line 58932
    return-void

    .line 58933
    :cond_8
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/VX;->A05:Lcom/facebook/ads/redexgen/X/IV;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    add-int/lit8 v4, v0, -0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/VX;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/VX;->A06:[Ljava/lang/String;

    const-string v1, "nNiCCranccCPI0NRpeExr6ylwZyZykwG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "pfAdcnCCuWORkUPhfNuwqkYYK2fT2IOL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0W(I)V

    goto :goto_2

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/VX;->A06:[Ljava/lang/String;

    const-string v1, "0kjAgxStX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0W(I)V

    goto :goto_2

    .line 58934
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A05:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IV;->A0W(I)V

    .line 58935
    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VX;->A04:Lcom/facebook/ads/redexgen/X/Dd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A05:Lcom/facebook/ads/redexgen/X/IV;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A46(Lcom/facebook/ads/redexgen/X/IV;)V

    .line 58936
    iput v3, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    goto/16 :goto_0

    .line 58937
    :cond_b
    return-void

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A8C(Lcom/facebook/ads/redexgen/X/Ih;Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V
    .locals 1

    .line 58938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A04:Lcom/facebook/ads/redexgen/X/Dd;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Dd;->A8C(Lcom/facebook/ads/redexgen/X/Ih;Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V

    .line 58939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A03:Z

    .line 58940
    return-void
.end method

.method public final AE8()V
    .locals 1

    .line 58941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A03:Z

    .line 58942
    return-void
.end method
