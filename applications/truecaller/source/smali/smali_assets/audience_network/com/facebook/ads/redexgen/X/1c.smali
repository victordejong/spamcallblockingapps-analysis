.class public final Lcom/facebook/ads/redexgen/X/1c;
.super Lcom/facebook/ads/redexgen/X/39;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/IM;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/We;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:J

.field public A06:Landroid/media/MediaFormat;

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public final A0B:Landroid/content/Context;

.field public final A0C:Lcom/facebook/ads/redexgen/X/BF;

.field public final A0D:Lcom/facebook/ads/redexgen/X/BL;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "aLXIjAOeq43kD47uUx47KIQfBztZ5JR6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bYDvuG1CO7Q3NDumZhhBhB8jHe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lzauC9VKCpzgBdv7KHug0xPju0EyyDRc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zBmjWuq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FwqFg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FmVSMSIXQUSd0OcxsELVimAN3SmZwHxI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "I9K2sHUvqtNZm1Rj9xJMtQcmEPzsJytW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "SRtBuggTCbvw2MXSYfok3SEL95E53gc0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1c;->A0F:[Ljava/lang/String;

    .line 4149
    invoke-static {}, Lcom/facebook/ads/redexgen/X/1c;->A06()V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/redexgen/X/C9;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/BG;Lcom/facebook/ads/redexgen/X/B1;[Lcom/facebook/ads/redexgen/X/B8;)V
    .locals 8
    .param p3    # Lcom/facebook/ads/redexgen/X/C9;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/ads/redexgen/X/BG;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/ads/redexgen/X/B1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Dt;",
            "Lcom/facebook/ads/redexgen/X/C9<",
            "Lcom/facebook/ads/redexgen/X/WT;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/facebook/ads/redexgen/X/BG;",
            "Lcom/facebook/ads/redexgen/X/B1;",
            "[",
            "Lcom/facebook/ads/redexgen/X/B8;",
            ")V"
        }
    .end annotation

    .line 4150
    .local v1, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C9;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    new-instance v7, Lcom/facebook/ads/redexgen/X/Wg;

    move-object/from16 v0, p8

    invoke-direct {v7, p7, v0}, Lcom/facebook/ads/redexgen/X/Wg;-><init>(Lcom/facebook/ads/redexgen/X/B1;[Lcom/facebook/ads/redexgen/X/B8;)V

    move-object v0, p0

    move-object v5, p5

    move v4, p4

    move-object v6, p6

    move-object v1, p1

    move-object v3, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/1c;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/redexgen/X/C9;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/BG;Lcom/facebook/ads/redexgen/X/BL;)V

    .line 4151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/redexgen/X/C9;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/BG;Lcom/facebook/ads/redexgen/X/BL;)V
    .locals 2
    .param p3    # Lcom/facebook/ads/redexgen/X/C9;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/ads/redexgen/X/BG;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Dt;",
            "Lcom/facebook/ads/redexgen/X/C9<",
            "Lcom/facebook/ads/redexgen/X/WT;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/facebook/ads/redexgen/X/BG;",
            "Lcom/facebook/ads/redexgen/X/BL;",
            ")V"
        }
    .end annotation

    .line 4152
    .local p5, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C9;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/39;-><init>(ILcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/redexgen/X/C9;Z)V

    .line 4153
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0B:Landroid/content/Context;

    .line 4154
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    .line 4155
    new-instance v0, Lcom/facebook/ads/redexgen/X/BF;

    invoke-direct {v0, p5, p6}, Lcom/facebook/ads/redexgen/X/BF;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/BG;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0C:Lcom/facebook/ads/redexgen/X/BF;

    .line 4156
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/We;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/We;-><init>(Lcom/facebook/ads/redexgen/X/1c;Lcom/facebook/ads/redexgen/X/BZ;)V

    invoke-interface {p7, v0}, Lcom/facebook/ads/redexgen/X/BL;->AEP(Lcom/facebook/ads/redexgen/X/BJ;)V

    .line 4157
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Dn;Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 5

    .line 4158
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Dn;->A02:Ljava/lang/String;

    const/16 v2, 0xf

    const/16 v1, 0x16

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4159
    const/4 v4, 0x1

    .line 4160
    .local p0, "needsRawDecoderWorkaround":Z
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x17

    if-ne v1, v0, :cond_0

    .line 4161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0B:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4162
    .local p1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 4163
    const/16 v2, 0x25

    const/16 v1, 0x19

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4164
    const/4 v4, 0x0

    .line 4165
    .end local p1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    if-eqz v4, :cond_1

    .line 4166
    const/4 v0, -0x1

    return v0

    .line 4167
    .end local p0    # "needsRawDecoderWorkaround":Z
    :cond_1
    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/Format;->A09:I

    return v0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/Dn;Lcom/facebook/ads/internal/exoplayer2/Format;[Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 1

    .line 4168
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1c;->A00(Lcom/facebook/ads/redexgen/X/Dn;Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v0

    .line 4169
    .local p0, "maxInputSize":I
    return v0
.end method

.method private final A02(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/String;I)Landroid/media/MediaFormat;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 4170
    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    .line 4171
    .local p0, "mediaFormat":Landroid/media/MediaFormat;
    const/16 v2, 0x71

    const/4 v1, 0x4

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4172
    iget v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    const/16 v2, 0x47

    const/16 v1, 0xd

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4173
    iget v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    const/16 v2, 0x7d

    const/16 v1, 0xb

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4174
    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A06(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 4175
    const/16 v2, 0x63

    const/16 v1, 0xe

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p3}, Lcom/facebook/ads/redexgen/X/Dz;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 4176
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_0

    .line 4177
    const/4 v3, 0x0

    const/16 v2, 0x75

    const/16 v1, 0x8

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4178
    :cond_0
    return-object v4
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/1c;)Lcom/facebook/ads/redexgen/X/BF;
    .locals 0

    .line 4179
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0C:Lcom/facebook/ads/redexgen/X/BF;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1c;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()V
    .locals 6

    .line 4180
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1c;->A8J()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BL;->A6C(Z)J

    move-result-wide v2

    .line 4181
    .local p0, "newCurrentPositionUs":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 4182
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A08:Z

    if-eqz v0, :cond_1

    .line 4183
    :goto_0
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1c;->A05:J

    .line 4184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A08:Z

    .line 4185
    :cond_0
    return-void

    .line 4186
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A05:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x97

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1c;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x7t
        0x5t
        0x10t
        0x66t
        0x1bt
        0xdt
        0xbt
        0x66t
        0x29t
        0x29t
        0x2bt
        0x66t
        0x2ct
        0x2dt
        0x2bt
        0x41t
        0x43t
        0x56t
        0x20t
        0x69t
        0x61t
        0x61t
        0x69t
        0x62t
        0x6bt
        0x20t
        0x7ct
        0x6ft
        0x79t
        0x20t
        0x6at
        0x6bt
        0x6dt
        0x61t
        0x6at
        0x6bt
        0x7ct
        0x36t
        0x39t
        0x33t
        0x25t
        0x38t
        0x3et
        0x33t
        0x79t
        0x24t
        0x38t
        0x31t
        0x23t
        0x20t
        0x36t
        0x25t
        0x32t
        0x79t
        0x3bt
        0x32t
        0x36t
        0x39t
        0x35t
        0x36t
        0x34t
        0x3ct
        0x40t
        0x54t
        0x45t
        0x48t
        0x4et
        0xet
        0x53t
        0x40t
        0x56t
        0x18t
        0x13t
        0x1at
        0x15t
        0x15t
        0x1et
        0x17t
        0x56t
        0x18t
        0x14t
        0xet
        0x15t
        0xft
        0x3ft
        0x32t
        0x25t
        0x38t
        0x3bt
        0x23t
        0x32t
        0x4ct
        0x41t
        0x56t
        0x4bt
        0x55t
        0x48t
        0x50t
        0x41t
        0x5ft
        0x53t
        0x4at
        0x1ft
        0x5bt
        0x5ct
        0x42t
        0x47t
        0x46t
        0x1ft
        0x41t
        0x5bt
        0x48t
        0x57t
        0x46t
        0x42t
        0x46t
        0x4et
        0x30t
        0x32t
        0x29t
        0x2ft
        0x32t
        0x29t
        0x34t
        0x39t
        0x79t
        0x6bt
        0x67t
        0x7at
        0x66t
        0x6ft
        0x27t
        0x78t
        0x6bt
        0x7et
        0x6ft
        0x46t
        0x54t
        0x58t
        0x46t
        0x40t
        0x5bt
        0x52t
        0x5t
        0x1at
        0xdt
        0x10t
        0x19t
        0x13t
        0xbt
        0x1at
    .end array-data
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/1c;Z)Z
    .locals 0

    .line 4187
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/1c;->A08:Z

    return p1
.end method

.method public static A08(Ljava/lang/String;)Z
    .locals 3

    .line 4188
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 4189
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/Il;->A05:Ljava/lang/String;

    .line 4190
    const/16 v2, 0x88

    const/4 v1, 0x7

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 4191
    const/16 v2, 0x8f

    const/16 v1, 0x8

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 4192
    const/16 v2, 0x54

    const/4 v1, 0x7

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 4193
    const/16 v2, 0x5b

    const/16 v1, 0x8

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 4194
    :goto_0
    return v0

    .line 4195
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A09(Ljava/lang/String;)Z
    .locals 4

    .line 4196
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IO;->A00(Ljava/lang/String;)I

    move-result v1

    .line 4197
    .local p0, "encoding":I
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BL;->A8I(I)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1c;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/1c;->A0F:[Ljava/lang/String;

    const-string v1, "OP"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final A12()V
    .locals 3

    .line 4198
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BL;->ADS()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4199
    :try_start_1
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/39;->A12()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A00()V

    .line 4201
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1c;->A0C:Lcom/facebook/ads/redexgen/X/BF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BF;->A04(Lcom/facebook/ads/redexgen/X/Bj;)V

    .line 4202
    return-void

    .line 4203
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A00()V

    .line 4204
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1c;->A0C:Lcom/facebook/ads/redexgen/X/BF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BF;->A04(Lcom/facebook/ads/redexgen/X/Bj;)V

    .line 4205
    throw v2

    .line 4206
    :catchall_1
    move-exception v2

    .line 4207
    :try_start_2
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/39;->A12()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A00()V

    .line 4209
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1c;->A0C:Lcom/facebook/ads/redexgen/X/BF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BF;->A04(Lcom/facebook/ads/redexgen/X/Bj;)V

    .line 4210
    throw v2

    .line 4211
    :catchall_2
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A00()V

    .line 4212
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1c;->A0C:Lcom/facebook/ads/redexgen/X/BF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BF;->A04(Lcom/facebook/ads/redexgen/X/Bj;)V

    .line 4213
    throw v2
.end method

.method public final A13()V
    .locals 1

    .line 4214
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/39;->A13()V

    .line 4215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BL;->ACw()V

    .line 4216
    return-void
.end method

.method public final A14()V
    .locals 1

    .line 4217
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1c;->A05()V

    .line 4218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BL;->pause()V

    .line 4219
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/39;->A14()V

    .line 4220
    return-void
.end method

.method public final A15(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 4221
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/39;->A15(JZ)V

    .line 4222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BL;->reset()V

    .line 4223
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/1c;->A05:J

    .line 4224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A07:Z

    .line 4225
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A08:Z

    .line 4226
    return-void
.end method

.method public final A16(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 4227
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/39;->A16(Z)V

    .line 4228
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1c;->A0C:Lcom/facebook/ads/redexgen/X/BF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BF;->A05(Lcom/facebook/ads/redexgen/X/Bj;)V

    .line 4229
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A11()Lcom/facebook/ads/redexgen/X/Ai;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Ai;->A00:I

    .line 4230
    .local p0, "tunnelingAudioSessionId":I
    if-eqz v1, :cond_0

    .line 4231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BL;->A58(I)V

    .line 4232
    :goto_0
    return-void

    .line 4233
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BL;->A4m()V

    goto :goto_0
.end method

.method public final A1A(Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/Dn;Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 1

    .line 4234
    const/4 v0, 0x0

    return v0
.end method

.method public final A1B(Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/redexgen/X/C9;Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Dt;",
            "Lcom/facebook/ads/redexgen/X/C9<",
            "Lcom/facebook/ads/redexgen/X/WT;",
            ">;",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dw;
        }
    .end annotation

    .line 4235
    .local v0, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C9;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    move-object/from16 v5, p3

    iget-object v9, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 4236
    .local p0, "mimeType":Ljava/lang/String;
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/IO;->A09(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 4237
    return v3

    .line 4238
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v8, 0x15

    if-lt v0, v8, :cond_1

    const/16 v13, 0x20

    .line 4239
    .local p1, "tunnelingSupport":I
    :goto_0
    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0x(Lcom/facebook/ads/redexgen/X/C9;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z

    move-result v12

    .line 4240
    .local v9, "supportsFormatDrm":Z
    const/4 v11, 0x4

    if-eqz v12, :cond_2

    .line 4241
    invoke-direct {p0, v9}, Lcom/facebook/ads/redexgen/X/1c;->A09(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4242
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Dt;->A73()Lcom/facebook/ads/redexgen/X/Dn;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4243
    or-int/lit8 v3, v13, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/1c;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/1c;->A0F:[Ljava/lang/String;

    const-string v1, "2JbhCO8WUJxg1dEMjqsmqHsLUOCbHvmd"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    or-int/2addr v3, v11

    return v3

    .line 4244
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 4245
    :cond_2
    const/16 v2, 0x3e

    const/16 v1, 0x9

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BL;->A8I(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    .line 4246
    const/4 v7, 0x2

    invoke-interface {v0, v7}, Lcom/facebook/ads/redexgen/X/BL;->A8I(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4247
    :cond_4
    return v10

    .line 4248
    :cond_5
    const/4 v6, 0x0

    .line 4249
    .local v3, "requiresSecureDecryption":Z
    iget-object v2, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    .line 4250
    .local v13, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    if-eqz v2, :cond_6

    .line 4251
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_1
    iget v0, v2, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A01:I

    if-ge v1, v0, :cond_6

    .line 4252
    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A01(I)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A03:Z

    or-int/2addr v6, v0

    .line 4253
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4254
    .end local v0    # "i":I
    :cond_6
    invoke-interface {p1, v9, v6}, Lcom/facebook/ads/redexgen/X/Dt;->A6J(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Dn;

    move-result-object v4

    .line 4255
    .local v0, "decoderInfo":Lcom/facebook/ads/redexgen/X/Dn;
    if-nez v4, :cond_9

    .line 4256
    if-eqz v6, :cond_7

    invoke-interface {p1, v9, v3}, Lcom/facebook/ads/redexgen/X/Dt;->A6J(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Dn;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1c;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/1c;->A0F:[Ljava/lang/String;

    const-string v1, "5t6lwnZxCy2d0LK1iys4a5spMU1PRxL4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "MLRfngDPgLR4PHXf8VCaBDfWkQKvwd69"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_7

    .line 4257
    const/4 v10, 0x2

    .line 4258
    :cond_7
    return v10

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4259
    :cond_9
    if-nez v12, :cond_a

    .line 4260
    return v7

    .line 4261
    :cond_a
    sget v0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    if-lt v0, v8, :cond_c

    iget v7, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    const/4 v6, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/1c;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_f

    sget-object v2, Lcom/facebook/ads/redexgen/X/1c;->A0F:[Ljava/lang/String;

    const-string v1, "H3JynuiL4WZej1bO71t4iZ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_b

    :goto_2
    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    .line 4262
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Dn;->A0G(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    if-eq v0, v6, :cond_c

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    .line 4263
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Dn;->A0F(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    const/4 v3, 0x1

    .line 4264
    .local v1, "decoderCapable":Z
    :cond_d
    if-eqz v3, :cond_e

    .line 4265
    .local v5, "formatSupport":I
    :goto_3
    or-int/lit8 v0, v13, 0x8

    or-int/2addr v0, v11

    return v0

    .line 4266
    :cond_e
    const/4 v11, 0x3

    goto :goto_3

    :cond_f
    sget-object v2, Lcom/facebook/ads/redexgen/X/1c;->A0F:[Ljava/lang/String;

    const-string v1, "MC6ulih8quoQ3V99b3hEbBJ51J8qd52p"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Ss9b1ZFAapck4qu7GxyznnEhXuh9ADD0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_b

    goto :goto_2
.end method

.method public final A1E(Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/internal/exoplayer2/Format;Z)Lcom/facebook/ads/redexgen/X/Dn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dw;
        }
    .end annotation

    .line 4267
    iget-object v0, p2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1c;->A09(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4268
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Dt;->A73()Lcom/facebook/ads/redexgen/X/Dn;

    move-result-object v0

    .line 4269
    .local p0, "passthroughDecoderInfo":Lcom/facebook/ads/redexgen/X/Dn;
    if-eqz v0, :cond_0

    .line 4270
    return-object v0

    .line 4271
    .end local p0    # "passthroughDecoderInfo":Lcom/facebook/ads/redexgen/X/Dn;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/39;->A1E(Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/internal/exoplayer2/Format;Z)Lcom/facebook/ads/redexgen/X/Dn;

    move-result-object v0

    return-object v0
.end method

.method public final A1H()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 4272
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BL;->ACx()V

    .line 4273
    return-void
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/BK; {:try_start_0 .. :try_end_0} :catch_0

    .line 4274
    :catch_0
    move-exception v1

    .line 4275
    .local p0, "e":Lcom/facebook/ads/redexgen/X/BK;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A9;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    throw v0
.end method

.method public final A1K(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 4276
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1c;->A06:Landroid/media/MediaFormat;

    if-eqz v3, :cond_0

    .line 4277
    const/16 v2, 0x71

    const/4 v1, 0x4

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IO;->A00(Ljava/lang/String;)I

    move-result v3

    .line 4278
    .local p0, "encoding":I
    iget-object p2, p0, Lcom/facebook/ads/redexgen/X/1c;->A06:Landroid/media/MediaFormat;

    .line 4279
    .local p1, "format":Landroid/media/MediaFormat;
    .restart local p1    # "format":Landroid/media/MediaFormat;
    :goto_0
    const/16 v2, 0x47

    const/16 v1, 0xd

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 4280
    .local p2, "channelCount":I
    const/16 v2, 0x7d

    const/16 v1, 0xb

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 4281
    .local v2, "sampleRate":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A09:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    if-ne v4, v1, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A00:I

    if-ge v0, v1, :cond_1

    .line 4282
    new-array v7, v0, [I

    .line 4283
    .local p2, "channelMap":[I
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A00:I

    if-ge v1, v0, :cond_2

    .line 4284
    aput v1, v7, v1

    .line 4285
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4286
    .end local p0    # "encoding":I
    .end local p1    # "format":Landroid/media/MediaFormat;
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/1c;->A04:I

    .line 4287
    .restart local p0    # "encoding":I
    goto :goto_0

    .line 4288
    .end local p2    # "channelMap":[I
    :cond_1
    const/4 v7, 0x0

    .line 4289
    .local v1, "channelMap":[I
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    const/4 v6, 0x0

    iget v8, p0, Lcom/facebook/ads/redexgen/X/1c;->A02:I

    iget v9, p0, Lcom/facebook/ads/redexgen/X/1c;->A03:I

    invoke-interface/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/BL;->A44(IIII[III)V

    .line 4290
    return-void
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/BH; {:try_start_0 .. :try_end_0} :catch_0

    .line 4291
    :catch_0
    move-exception v1

    .line 4292
    .local p2, "e":Lcom/facebook/ads/redexgen/X/BH;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A9;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    throw v0
.end method

.method public final A1L(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 4293
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/39;->A1L(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 4294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0C:Lcom/facebook/ads/redexgen/X/BF;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/BF;->A03(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 4295
    iget-object v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    const/16 v2, 0x3e

    const/16 v1, 0x9

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4296
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    .line 4297
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A04:I

    .line 4298
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A00:I

    .line 4299
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A02:I

    .line 4300
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A03:I

    .line 4301
    return-void

    .line 4302
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final A1M(Lcom/facebook/ads/redexgen/X/WZ;)V
    .locals 5

    .line 4303
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A07:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Be;->A03()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4304
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/WZ;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A05:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v1, 0x7a120

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 4305
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/WZ;->A00:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A05:J

    .line 4306
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A07:Z

    .line 4307
    :cond_1
    return-void
.end method

.method public final A1N(Lcom/facebook/ads/redexgen/X/Dn;Landroid/media/MediaCodec;Lcom/facebook/ads/internal/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 5

    .line 4308
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A19()[Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/1c;->A01(Lcom/facebook/ads/redexgen/X/Dn;Lcom/facebook/ads/internal/exoplayer2/Format;[Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A01:I

    .line 4309
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Dn;->A02:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1c;->A08(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A09:Z

    .line 4310
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Dn;->A04:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0A:Z

    .line 4311
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Dn;->A01:Ljava/lang/String;

    if-nez v0, :cond_1

    const/16 v2, 0x3e

    const/16 v1, 0x9

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v1

    .line 4312
    .local p0, "codecMimeType":Ljava/lang/String;
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A01:I

    invoke-direct {p0, p3, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A02(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/String;I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 4313
    .local p1, "mediaFormat":Landroid/media/MediaFormat;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v2, v1, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 4314
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0A:Z

    if-eqz v0, :cond_0

    .line 4315
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/1c;->A06:Landroid/media/MediaFormat;

    .line 4316
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1c;->A06:Landroid/media/MediaFormat;

    iget-object v3, p3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    const/16 v2, 0x71

    const/4 v1, 0x4

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1c;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4317
    :goto_1
    return-void

    .line 4318
    :cond_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/1c;->A06:Landroid/media/MediaFormat;

    goto :goto_1

    .line 4319
    :cond_1
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Dn;->A01:Ljava/lang/String;

    goto :goto_0
.end method

.method public final A1O(Ljava/lang/String;JJ)V
    .locals 6

    .line 4320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0C:Lcom/facebook/ads/redexgen/X/BF;

    move-wide v2, p2

    move-wide v4, p4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/BF;->A06(Ljava/lang/String;JJ)V

    .line 4321
    return-void
.end method

.method public final A1P(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 4322
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0A:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 4323
    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 4324
    return v2

    .line 4325
    :cond_0
    if-eqz p11, :cond_1

    .line 4326
    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 4327
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Bj;->A08:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Bj;->A08:I

    .line 4328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BL;->A7p()V

    .line 4329
    return v2

    .line 4330
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0, p6, p9, p10}, Lcom/facebook/ads/redexgen/X/BL;->A7m(Ljava/nio/ByteBuffer;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4331
    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 4332
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Bj;->A06:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Bj;->A06:I

    .line 4333
    return v2

    .line 4334
    :cond_2
    return v1
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/BI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/ads/redexgen/X/BK; {:try_start_0 .. :try_end_0} :catch_1

    .line 4335
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 4336
    .local p0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A9;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    throw v0
.end method

.method public final A6r()Lcom/facebook/ads/redexgen/X/IM;
    .locals 0

    .line 4337
    return-object p0
.end method

.method public final A78()Lcom/facebook/ads/redexgen/X/AU;
    .locals 1

    .line 4338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BL;->A78()Lcom/facebook/ads/redexgen/X/AU;

    move-result-object v0

    return-object v0
.end method

.method public final A7B()J
    .locals 2

    .line 4339
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A7Q()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 4340
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1c;->A05()V

    .line 4341
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A05:J

    return-wide v0
.end method

.method public final A7q(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 4342
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 4343
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Df;->A7q(ILjava/lang/Object;)V

    .line 4344
    :goto_0
    return-void

    .line 4345
    :cond_0
    check-cast p2, Lcom/facebook/ads/redexgen/X/B0;

    .line 4346
    .local p0, "audioAttributes":Lcom/facebook/ads/redexgen/X/B0;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/BL;->AEI(Lcom/facebook/ads/redexgen/X/B0;)V

    .line 4347
    goto :goto_0

    .line 4348
    .end local p0    # "audioAttributes":Lcom/facebook/ads/redexgen/X/B0;
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1c;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/1c;->A0F:[Ljava/lang/String;

    const-string v1, "awvXiH99cLu1HaadjiPENScqQYAeI"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/BL;->setVolume(F)V

    .line 4349
    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A8J()Z
    .locals 1

    .line 4350
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/39;->A8J()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BL;->A8J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A8U()Z
    .locals 1

    .line 4351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BL;->A7v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/39;->A8U()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AET(Lcom/facebook/ads/redexgen/X/AU;)Lcom/facebook/ads/redexgen/X/AU;
    .locals 1

    .line 4352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A0D:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/BL;->AET(Lcom/facebook/ads/redexgen/X/AU;)Lcom/facebook/ads/redexgen/X/AU;

    move-result-object v0

    return-object v0
.end method
