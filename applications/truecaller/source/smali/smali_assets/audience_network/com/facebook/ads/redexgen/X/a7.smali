.class public final Lcom/facebook/ads/redexgen/X/a7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/a3;->A0Q()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/a3;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "b1sQJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SIF58uGHe7qyLmHU2z0R0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OwOBv3ZEKz2Te88ibAl3d47J53q2OGoK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "esWFBpscKVup9jNI8XCXNCETTdpqRq5Z"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zivB8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FBi4O7QrEsFNvdqkgZ6MOGJI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "H45EAoAIvQ1szMaGMHC8haArjN6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "w12X6M1S0qfh4A3JJ2wkr2WlTLMqdjE1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/a7;->A01:[Ljava/lang/String;

    .line 67914
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/a3;)V
    .locals 0

    .line 67915
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/a7;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 4

    .line 67916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a7;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/a3;->A02(Lcom/facebook/ads/redexgen/X/a3;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67917
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a7;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/a3;->A02(Lcom/facebook/ads/redexgen/X/a3;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A08(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    .line 67918
    :goto_0
    return-object v0

    .line 67919
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/a7;->A00:Lcom/facebook/ads/redexgen/X/a3;

    sget-object v2, Lcom/facebook/ads/redexgen/X/a7;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/a7;->A01:[Ljava/lang/String;

    const-string v1, "DiCvH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "OWYZT"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0
.end method
