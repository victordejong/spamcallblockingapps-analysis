.class public final Lcom/facebook/ads/redexgen/X/8n;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 18938
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18939
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/8n;->A00:I

    .line 18940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A05:Z

    .line 18941
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A04:Z

    .line 18942
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/8n;->A03:Z

    .line 18943
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A01:I

    .line 18944
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 18945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18946
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/8n;->A00:I

    .line 18947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A05:Z

    .line 18948
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A04:Z

    .line 18949
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/8n;->A03:Z

    .line 18950
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A01:I

    .line 18951
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .line 18952
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 18953
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/8n;->A00:I

    .line 18954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A05:Z

    .line 18955
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A04:Z

    .line 18956
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/8n;->A03:Z

    .line 18957
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A01:I

    .line 18958
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 18959
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 18960
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A01:I

    return v0
.end method

.method public final A02()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 18961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A02:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final A03(I)V
    .locals 0

    .line 18962
    iput p1, p0, Lcom/facebook/ads/redexgen/X/8n;->A00:I

    .line 18963
    return-void
.end method

.method public final A04(I)V
    .locals 0

    .line 18964
    iput p1, p0, Lcom/facebook/ads/redexgen/X/8n;->A01:I

    .line 18965
    return-void
.end method

.method public final A05(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18966
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8n;->A02:Lorg/json/JSONObject;

    .line 18967
    return-void
.end method

.method public final A06(Z)V
    .locals 0

    .line 18968
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/8n;->A04:Z

    .line 18969
    return-void
.end method

.method public final A07(Z)V
    .locals 0

    .line 18970
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/8n;->A03:Z

    .line 18971
    return-void
.end method

.method public final A08(Z)V
    .locals 0

    .line 18972
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/8n;->A05:Z

    .line 18973
    return-void
.end method

.method public final A09()Z
    .locals 1

    .line 18974
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A04:Z

    return v0
.end method

.method public final A0A()Z
    .locals 1

    .line 18975
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A03:Z

    return v0
.end method

.method public final A0B()Z
    .locals 1

    .line 18976
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A05:Z

    return v0
.end method
