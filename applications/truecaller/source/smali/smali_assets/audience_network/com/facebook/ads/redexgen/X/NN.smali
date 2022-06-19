.class public final Lcom/facebook/ads/redexgen/X/NN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/So;->A0K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/N5;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/So;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9sVCZE1JzKyNlgcXamStOEuF7vpp11q7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2ezkH3kSqCf8dvr0XQnySHd1TgVVvlpb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "j6uQAgvGWfRMr40VSzlVsWkcoISldlVB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dNEMzbO6BFzdIEcJ0MNYA8UShcXW2fNX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CiFQ7cnsU8a2IY039"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "of093nELJxDtvmpwlx40Sj96vTqfYWfZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "89mnR6KKQKsitukE0pK0FSEAWYYgI9MC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iqJuIXwOIBXLoaWKOF5L6veUHjclhPcL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NN;->A02:[Ljava/lang/String;

    .line 45533
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/So;Lcom/facebook/ads/redexgen/X/N5;)V
    .locals 0

    .line 45534
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NN;->A01:Lcom/facebook/ads/redexgen/X/So;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NN;->A00:Lcom/facebook/ads/redexgen/X/N5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 45535
    .local p0, "this":Lcom/facebook/ads/redexgen/X/NN;
    .local v1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/NN;->A00:Lcom/facebook/ads/redexgen/X/N5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N5;->A01()V

    .line 45536
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/NN;->A01:Lcom/facebook/ads/redexgen/X/So;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/N1;->A0A:Lcom/facebook/ads/redexgen/X/N3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/N3;->A8c()V

    .line 45537
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/NN;
    .end local v1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/NN;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/NN;->A02:[Ljava/lang/String;

    const-string v1, "erh4HILEwUj6GeiKdMF57q4cd8pDAg7o"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
