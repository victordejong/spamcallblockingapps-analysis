.class public final Lcom/facebook/ads/redexgen/X/Zu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Zi;->A0P()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Zi;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zu;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zi;)V
    .locals 0

    .line 67760
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zu;->A00:Lcom/facebook/ads/redexgen/X/Zi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zu;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7f

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
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zu;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x40t
        0x31t
        0x2ft
        0x34t
        0x3at
        0x3bt
        0x38t
        0x3bt
        0x33t
        0x45t
    .end array-data
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 4

    .line 67761
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zu;->A00:Lcom/facebook/ads/redexgen/X/Zi;

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zu;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6b;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0
.end method
