.class public final Lcom/facebook/ads/redexgen/X/VD;
.super Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 58013
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private final A00(ILjava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/VC;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58014
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 58015
    .local p0, "uri":Landroid/net/Uri;
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    .line 58016
    .local p1, "isRemoveAction":Z
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 58017
    .local p2, "dataLength":I
    new-array v2, v0, [B

    .line 58018
    .local v0, "data":[B
    invoke-virtual {p2, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 58019
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 58020
    .local v4, "customCacheKey":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/VC;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/VC;-><init>(Landroid/net/Uri;Z[BLjava/lang/String;)V

    return-object v0

    .line 58021
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A01(ILjava/io/DataInputStream;)Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58022
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/VD;->A00(ILjava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/VC;

    move-result-object v0

    return-object v0
.end method
