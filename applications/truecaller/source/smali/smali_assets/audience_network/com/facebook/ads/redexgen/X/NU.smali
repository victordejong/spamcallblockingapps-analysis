.class public final Lcom/facebook/ads/redexgen/X/NU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NW;->A08(Lcom/facebook/ads/redexgen/X/XT;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/XT;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/NW;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NU;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NW;Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 0

    .line 45597
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NU;->A01:Lcom/facebook/ads/redexgen/X/NW;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NU;->A00:Lcom/facebook/ads/redexgen/X/XT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NU;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x42

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

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NU;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x3at
        -0x39t
        -0x2ct
        -0x26t
        -0x27t
        -0x61t
        -0x39t
        -0x2ft
        -0x3at
        -0x2dt
        -0x30t
        0x14t
        0x21t
        0x17t
        0x25t
        0x22t
        0x1ct
        0x17t
        -0x1ft
        0x1ct
        0x21t
        0x27t
        0x18t
        0x21t
        0x27t
        -0x1ft
        0x14t
        0x16t
        0x27t
        0x1ct
        0x22t
        0x21t
        -0x1ft
        0x9t
        -0x4t
        -0x8t
        0xat
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 45598
    .local p0, "this":Lcom/facebook/ads/redexgen/X/NU;
    .local v0, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/NU;->A01:Lcom/facebook/ads/redexgen/X/NW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NW;->A06(Lcom/facebook/ads/redexgen/X/NW;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NU;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/NU;->A01:Lcom/facebook/ads/redexgen/X/NW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NW;->A06(Lcom/facebook/ads/redexgen/X/NW;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 45599
    :cond_1
    const/16 v2, 0xb

    const/16 v1, 0x1a

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NU;->A00(III)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/NU;->A01:Lcom/facebook/ads/redexgen/X/NW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NW;->A06(Lcom/facebook/ads/redexgen/X/NW;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 45600
    .local p1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45601
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/NU;->A00:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A82()V

    .line 45602
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/NU;->A00:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/L9;->A0B(Lcom/facebook/ads/redexgen/X/XT;Landroid/content/Intent;)Z

    .line 45603
    return-void

    .line 45604
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/NU;
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45605
    .end local v0    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
