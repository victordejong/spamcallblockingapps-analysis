.class public final Lcom/facebook/ads/redexgen/X/I8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/I7;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/io/File;

.field public final A01:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "96B3cy9RZxtPR6KnOI2R9lSlbjENtNov"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vgY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0Agn9JxSXdIjUr3w2sjNTgL3mmZAwFqU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7DjUWPQBmfUfGNRSVlZnb128L2jCTSEC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "djfNau1l"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "022WBhTdrqIqCcjTdyCCKSxEz17VR1Wc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "V7ZvpNUTDqHe8GQN4ix"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qc3aTE7BEdzrXIQnZyWq9L6n5Sm1DvD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/I8;->A03:[Ljava/lang/String;

    .line 37935
    invoke-static {}, Lcom/facebook/ads/redexgen/X/I8;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4

    .line 37936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37937
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/I8;->A01:Ljava/io/File;

    .line 37938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    const/4 v1, 0x4

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Ljava/io/File;

    .line 37939
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/I8;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x57

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 2

    .line 37940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37942
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A01:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 37943
    :cond_0
    return-void
.end method

.method public static A02()V
    .locals 4

    const/16 v3, 0x5d

    sget-object v2, Lcom/facebook/ads/redexgen/X/I8;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/I8;->A03:[Ljava/lang/String;

    const-string v1, "fGFO0zCAStGKoiZFpD51M0TKKg27e0CP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "DvOfDhfpity1gtQUN9QT4js3IOkVb8st"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/I8;->A02:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0xbt
        0x5ft
        0x44t
        0xbt
        0x49t
        0x4at
        0x48t
        0x40t
        0x5et
        0x5bt
        0xbt
        0x4dt
        0x42t
        0x47t
        0x4et
        0xbt
        0x15t
        0x59t
        0x5at
        0x50t
        0x61t
        0x54t
        0x4ft
        0x4dt
        0x49t
        0x43t
        0x66t
        0x49t
        0x4ct
        0x45t
        0x76t
        0x5at
        0x40t
        0x59t
        0x51t
        0x5bt
        0x12t
        0x41t
        0x15t
        0x56t
        0x47t
        0x50t
        0x54t
        0x41t
        0x50t
        0x15t
        0x2at
        0x6t
        0x1ct
        0x5t
        0xdt
        0x7t
        0x4et
        0x1dt
        0x49t
        0xat
        0x1bt
        0xct
        0x8t
        0x1dt
        0xct
        0x49t
        0xdt
        0x0t
        0x1bt
        0xct
        0xat
        0x1dt
        0x6t
        0x1bt
        0x10t
        0x49t
        0xbt
        0x27t
        0x3dt
        0x24t
        0x2ct
        0x26t
        0x6ft
        0x3ct
        0x68t
        0x3at
        0x2dt
        0x26t
        0x29t
        0x25t
        0x2dt
        0x68t
        0x2et
        0x21t
        0x24t
        0x2dt
        0x68t
    .end array-data
.end method


# virtual methods
.method public final A03()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 37944
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/I8;->A01()V

    .line 37945
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I8;->A01:Ljava/io/File;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final A04()Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37948
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I8;->A01:Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x48

    const/16 v1, 0x15

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A01:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x14

    const/16 v1, 0xa

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37950
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37951
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I8;->A01:Ljava/io/File;

    new-instance v0, Lcom/facebook/ads/redexgen/X/I7;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/I7;-><init>(Ljava/io/File;)V

    goto :goto_1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37952
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/I8;
    :catch_0
    move-exception v4

    .line 37953
    .local p0, "e":Ljava/io/FileNotFoundException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 37954
    .local v0, "parent":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37955
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I8;->A01:Ljava/io/File;

    new-instance v0, Lcom/facebook/ads/redexgen/X/I7;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/I7;-><init>(Ljava/io/File;)V

    .line 37956
    .end local v0    # "parent":Ljava/io/File;
    .end local v0
    .local p0, "str":Ljava/io/OutputStream;
    :goto_1
    return-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37957
    .local p0, "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "parent":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 37958
    .local v0, "e2":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e

    const/16 v1, 0x10

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A01:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 37959
    .end local v0    # "e2":Ljava/io/FileNotFoundException;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v1, 0x1a

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A01:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final A05()V
    .locals 1

    .line 37960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37962
    return-void
.end method

.method public final A06(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37963
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 37964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37965
    return-void
.end method
