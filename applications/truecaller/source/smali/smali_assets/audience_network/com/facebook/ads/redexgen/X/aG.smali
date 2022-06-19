.class public final Lcom/facebook/ads/redexgen/X/aG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/a3;->A0H()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/a3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/a3;)V
    .locals 0

    .line 67969
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aG;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 67970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aG;->A00:Lcom/facebook/ads/redexgen/X/a3;

    .line 67971
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/a3;->A01(Lcom/facebook/ads/redexgen/X/a3;)Landroid/content/Context;

    move-result-object v0

    .line 67972
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aG;->A00:Lcom/facebook/ads/redexgen/X/a3;

    .line 67973
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/a3;->A01(Lcom/facebook/ads/redexgen/X/a3;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x40

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 67974
    .local p0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 67975
    .local v0, "signatures":[Landroid/content/pm/Signature;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 67976
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/AppInfoSignalCollector$AppCertificateHashes;>;"
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_0
    array-length v0, v5

    if-ge v3, v0, :cond_0

    .line 67977
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v1, v5, v3

    new-instance v0, Lcom/facebook/ads/redexgen/X/a4;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/a4;-><init>(Landroid/content/pm/Signature;)V

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67978
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67979
    .end local v2    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aG;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/a3;->A04(Lcom/facebook/ads/redexgen/X/a3;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0
.end method
