.class public final Lcom/facebook/ads/redexgen/X/Tb;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KX;->A0N(Lcom/facebook/ads/redexgen/X/KU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KU;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/KX;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tb;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KX;Lcom/facebook/ads/redexgen/X/KU;)V
    .locals 0

    .line 54205
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/KX;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tb;->A00:Lcom/facebook/ads/redexgen/X/KU;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tb;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x77

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tb;->A02:[B

    return-void

    :array_0
    .array-data 1
        0xat
        0x4bt
        0x59t
        0x44t
        0x47t
        0x48t
        0x48t
        0x43t
        0x54t
        0x59t
        0x4dt
        0x43t
        0x5ft
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 9

    .line 54206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8v;->A08(Landroid/content/Context;)V

    .line 54207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A07(Lcom/facebook/ads/redexgen/X/8J;)V

    .line 54208
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Tb;->A00:Lcom/facebook/ads/redexgen/X/KU;

    .line 54209
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9H;->A00()Lcom/facebook/ads/redexgen/X/9H;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/KX;

    .line 54210
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/9H;->A01(Lcom/facebook/ads/redexgen/X/8J;Z)Lcom/facebook/ads/redexgen/X/9G;

    move-result-object v0

    .line 54211
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9G;->A6S()Ljava/util/Map;

    move-result-object v0

    .line 54212
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/KU;->A08(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 54213
    .local p0, "adRequestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/KX;->A08(Lcom/facebook/ads/redexgen/X/KX;Ljava/util/Map;)Ljava/util/Map;

    .line 54214
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 54215
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_0

    .line 54216
    const/4 v3, 0x1

    const/16 v1, 0xc

    const/16 v0, 0x71

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Tb;->A00(III)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/KX;

    .line 54217
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x5d

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Tb;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/KX;

    .line 54218
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 54219
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54220
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v0, 0x2

    .line 54221
    invoke-static {v1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 54222
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54223
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A00:Lcom/facebook/ads/redexgen/X/KU;

    .line 54224
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KU;->A05()Lcom/facebook/ads/redexgen/X/K9;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A03:Lcom/facebook/ads/redexgen/X/K9;

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A00:Lcom/facebook/ads/redexgen/X/KU;

    .line 54225
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KU;->A05()Lcom/facebook/ads/redexgen/X/K9;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A05:Lcom/facebook/ads/redexgen/X/K9;

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A00:Lcom/facebook/ads/redexgen/X/KU;

    .line 54226
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KU;->A05()Lcom/facebook/ads/redexgen/X/K9;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A04:Lcom/facebook/ads/redexgen/X/K9;

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A00:Lcom/facebook/ads/redexgen/X/KU;

    .line 54227
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KU;->A05()Lcom/facebook/ads/redexgen/X/K9;

    move-result-object v0

    if-nez v0, :cond_2

    .line 54228
    .local v0, "shouldCheckSystemHttpAgent":Z
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/KX;

    .line 54229
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    .line 54230
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Qx;->A02(ZLcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/KX;

    .line 54231
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A06(Lcom/facebook/ads/redexgen/X/KX;)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/facebook/ads/redexgen/X/Qt;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Qt;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/KX;

    .line 54232
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A07(Lcom/facebook/ads/redexgen/X/KX;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qt;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Qt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qt;->A08()[B

    move-result-object v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/KX;

    .line 54233
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ly;->A00()J

    move-result-wide v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A00:Lcom/facebook/ads/redexgen/X/KU;

    .line 54234
    invoke-static {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/KX;->A04(Lcom/facebook/ads/redexgen/X/KX;JLcom/facebook/ads/redexgen/X/KU;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v0

    .line 54235
    invoke-interface {v6, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/Qf;->ACu(Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/Qg;)V

    goto :goto_1

    .line 54236
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54237
    :catch_1
    move-exception v0

    .line 54238
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_REQUEST_FAILED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 54239
    .local v0, "adRequestFailed":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 54240
    .local v2, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    .line 54241
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/KX;

    .line 54242
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A00(Lcom/facebook/ads/redexgen/X/KX;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v4

    .line 54243
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 54244
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 54245
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2j(JILjava/lang/String;Z)V

    .line 54246
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A0F(Lcom/facebook/ads/redexgen/X/KX;Lcom/facebook/ads/redexgen/X/K3;)V

    .line 54247
    .end local v0    # "adRequestFailed":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v0
    .end local v2    # "errorMessage":Ljava/lang/String;
    :goto_1
    return-void
.end method
