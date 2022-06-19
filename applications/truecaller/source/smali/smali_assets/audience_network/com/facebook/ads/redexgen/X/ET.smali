.class public final Lcom/facebook/ads/redexgen/X/ET;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/I8;

.field public final A01:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PP5DU49yUGbqRFal6tR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "e4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "s2qoG2vtUJJ5SExk2bCAu68n8G6q3yTT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MeMR7L2JKLgMWPmkziO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xwzH1HasKQzILES6mTt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "p6SQsg09HqPHNf1RzYLQg9nXgmiNy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "F9DvreFu89Z0Ps32kzSJSyvHkTkLNKEg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2vix8bbWvPZkkjsVpCvfcLhNaaIRZhff"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ET;->A03:[Ljava/lang/String;

    .line 30160
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ET;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 30161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30162
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ET;->A01:Ljava/io/File;

    .line 30163
    new-instance v0, Lcom/facebook/ads/redexgen/X/I8;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/I8;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ET;->A00:Lcom/facebook/ads/redexgen/X/I8;

    .line 30164
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ET;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x62

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/16 v0, 0x21

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/ET;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ET;->A03:[Ljava/lang/String;

    const-string v1, "YMHIgoMQBupXygUq8X9ePyvP7esYeyMN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "V8iBact6T2ktuOUxJFnyGTvZTdpLIqou"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/ET;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x7t
        0x3ct
        0x21t
        0x27t
        0x22t
        0x22t
        0x3dt
        0x20t
        0x26t
        0x37t
        0x36t
        0x72t
        0x33t
        0x31t
        0x26t
        0x3bt
        0x3dt
        0x3ct
        0x72t
        0x34t
        0x3bt
        0x3et
        0x37t
        0x72t
        0x24t
        0x37t
        0x20t
        0x21t
        0x3bt
        0x3dt
        0x3ct
        0x68t
        0x72t
    .end array-data
.end method


# virtual methods
.method public final varargs A02([Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30165
    const/4 v3, 0x0

    .line 30166
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ET;->A00:Lcom/facebook/ads/redexgen/X/I8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I8;->A04()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .line 30167
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 30168
    array-length v0, p1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 30169
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v0, p1, v2

    .line 30170
    .local v0, "action":Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    invoke-static {v0, v3}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A03(Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;Ljava/io/OutputStream;)V

    .line 30171
    .end local v0    # "action":Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30172
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ET;->A00:Lcom/facebook/ads/redexgen/X/I8;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/I8;->A06(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30173
    const/4 v0, 0x0

    .line 30174
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Il;->A0X(Ljava/io/Closeable;)V

    .line 30175
    return-void

    .line 30176
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Il;->A0X(Ljava/io/Closeable;)V

    .line 30177
    throw v0
.end method

.method public final varargs A03([Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;)[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ET;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30179
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    return-object v0

    .line 30180
    :cond_0
    const/4 v5, 0x0

    .line 30181
    .local p0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ET;->A00:Lcom/facebook/ads/redexgen/X/I8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I8;->A03()Ljava/io/InputStream;

    move-result-object v5

    .line 30182
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30183
    .local p1, "dataInputStream":Ljava/io/DataInputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 30184
    .local v0, "version":I
    if-gtz v4, :cond_2

    .line 30185
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 30186
    .local v0, "actionCount":I
    new-array v2, v3, [Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    .line 30187
    .local v0, "actions":[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 30188
    invoke-static {p1, v6}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A00([Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;Ljava/io/InputStream;)Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    move-result-object v0

    aput-object v0, v2, v1

    .line 30189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30190
    .end local v0    # "i":I
    :cond_1
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Il;->A0X(Ljava/io/Closeable;)V

    .line 30191
    return-object v2

    .line 30192
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x21

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ET;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "inputStream":Ljava/io/InputStream;
    .end local v5
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30193
    .end local p1    # "dataInputStream":Ljava/io/DataInputStream;
    .end local v0
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    .restart local v5
    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Il;->A0X(Ljava/io/Closeable;)V

    .line 30194
    throw v0
.end method
