.class public final Lcom/facebook/ads/redexgen/X/AY;
.super Lcom/facebook/ads/redexgen/X/Kq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/AA;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3HJrVJ73tbjG2wlGP0Bv3sg114RWReqh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KjbZJ14"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "byIXsJDFT4cdH01hLIEiCoP3oVFxRmF5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CAUeU9lKsEQJQ8oJs88JTqk7GAcDU2io"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xLviaKB4KZIhZN1GU0dHl8c6bwXdm9iC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IMgVgO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Wh2MWpRo7VbT5p9HRfne6LI8Uh8KJseH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ItjfoHp0lrctiWkbEjfK3EyEN624ZUfA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AY;->A01:[Ljava/lang/String;

    .line 22189
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AA;)V
    .locals 0

    .line 22190
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AY;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kq;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 3

    .line 22191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AY;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A00(Lcom/facebook/ads/redexgen/X/AA;)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22192
    return-void

    .line 22193
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AY;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A00(Lcom/facebook/ads/redexgen/X/AA;)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mc;->ABW()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/AY;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22194
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/AY;->A01:[Ljava/lang/String;

    const-string v1, "hS5VQsWNORhrf4LLsxqD30oOzabUAqI4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 22195
    check-cast p1, Lcom/facebook/ads/redexgen/X/Kr;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AY;->A00(Lcom/facebook/ads/redexgen/X/Kr;)V

    return-void
.end method
