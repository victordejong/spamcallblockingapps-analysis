.class public final Lcom/facebook/ads/redexgen/X/Y7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xw;->A0R()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xw;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Zr9pMbCXDOnIQia1rxNbs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xgHdKmUla89dgoNlEUmYBSdthljERTVN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "t0eJ9CzsilrQTJZ3mBY5uHdLOToWpPD0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xn7Df6Bsn6N8b"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nuXOesuXOGqaff6jWjDzzwB48Mr7m9Ru"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HD4PNhpjIErL9f7FhF1L2XB0w8jmfy8z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GFJMAbd7JtPv78Iw3eZ5GKABpr6j7C"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "a6D5eDw1EZzTAa7WvhZLV0FGc6KUpGTS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Y7;->A01:[Ljava/lang/String;

    .line 66645
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xw;)V
    .locals 0

    .line 66646
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 66647
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge v1, v0, :cond_0

    .line 66648
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A05:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0

    .line 66649
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/78;->A0D()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y7;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Y7;->A01:[Ljava/lang/String;

    const-string v1, "7cAAgCcjwnswSonydGODzEoLsKghCJb5"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/facebook/ads/redexgen/X/78;->A0C()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y7;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y7;->A01:[Ljava/lang/String;

    const-string v1, "A1O8dvsw8NjieGbBncMIJ1M47KAaXmaM"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 66650
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 66651
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xw;->A03(Lcom/facebook/ads/redexgen/X/Xw;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 66652
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    .line 66653
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Xw;->A03(Lcom/facebook/ads/redexgen/X/Xw;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xw;->A02(Landroid/telephony/CellInfo;)I

    move-result v0

    .line 66654
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/6b;->A04(I)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    .line 66655
    :goto_0
    return-object v0

    .line 66656
    :cond_4
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:Lcom/facebook/ads/redexgen/X/Xw;

    sget-object v3, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y7;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y7;->A01:[Ljava/lang/String;

    const-string v1, "coCM9MFponCPc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "NV1iD8UH9ErBba9OnjbAeyrfSpL8qw"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0
.end method
