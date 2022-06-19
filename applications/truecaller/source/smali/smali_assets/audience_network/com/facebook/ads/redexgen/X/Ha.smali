.class public Lcom/facebook/ads/redexgen/X/Ha;
.super Ljava/io/IOException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/upstream/HttpDataSource$HttpDataSourceException$Type;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/HV;


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/HV;I)V
    .locals 0

    .line 36927
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 36928
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ha;->A01:Lcom/facebook/ads/redexgen/X/HV;

    .line 36929
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ha;->A00:I

    .line 36930
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/HV;I)V
    .locals 0

    .line 36931
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36932
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ha;->A01:Lcom/facebook/ads/redexgen/X/HV;

    .line 36933
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ha;->A00:I

    .line 36934
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/HV;I)V
    .locals 0

    .line 36935
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36936
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ha;->A01:Lcom/facebook/ads/redexgen/X/HV;

    .line 36937
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Ha;->A00:I

    .line 36938
    return-void
.end method
