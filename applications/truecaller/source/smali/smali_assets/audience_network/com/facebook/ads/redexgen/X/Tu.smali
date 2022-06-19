.class public final Lcom/facebook/ads/redexgen/X/Tu;
.super Lcom/facebook/ads/redexgen/X/57;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/DefaultMediaViewVideoRendererApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Tv;,
        Lcom/facebook/ads/redexgen/X/Jk;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A01:Lcom/facebook/ads/redexgen/X/XT;

.field public A02:Lcom/facebook/ads/redexgen/X/Jk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Jw;

.field public A04:Lcom/facebook/ads/redexgen/X/AA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/7b;

.field public A06:Lcom/facebook/ads/redexgen/X/7T;

.field public A07:Lcom/facebook/ads/redexgen/X/QY;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A08:Lcom/facebook/ads/redexgen/X/QZ;

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/Pg;

.field public final A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0E:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mcYgxpLQMmIwsDd5yEmcOVEUvqtoI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GHoJM0N9xHnxy27wJlEicj6316JJBG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sAgmez8xlBVRjdgohc9cPNZKpCHjl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UXd4O0RMEZeMz8rPKuZc9Jx8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lkMSGOb1N9f2znZPpxO7v43dGPgWn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ZJq7h5cFUWj9FCmvTSQNl6xA6rnC8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yifDfgH7QVrqMR4w0vNHSMY9h4Ewh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QZpfE8IVFABXRQwraZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A0G:[Ljava/lang/String;

    .line 55124
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tu;->A0E()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Tu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tu;->A0H:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55125
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/57;-><init>()V

    .line 55126
    new-instance v0, Lcom/facebook/ads/redexgen/X/U0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/U0;-><init>(Lcom/facebook/ads/redexgen/X/Tu;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A0C:Lcom/facebook/ads/redexgen/X/Pg;

    .line 55127
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55129
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jw;->A03:Lcom/facebook/ads/redexgen/X/Jw;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A03:Lcom/facebook/ads/redexgen/X/Jw;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Tu;)Lcom/facebook/ads/redexgen/X/Jk;
    .locals 0

    .line 55130
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A02:Lcom/facebook/ads/redexgen/X/Jk;

    return-object p0
.end method

.method private A01(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/Jm;
    .locals 1

    .line 55131
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tz;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Tz;-><init>(Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V

    return-object v0
.end method

.method private A02(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/Jm;
    .locals 1

    .line 55132
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ty;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Ty;-><init>(Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V

    .line 55133
    .local p0, "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/Jm;
    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Tu;)Lcom/facebook/ads/redexgen/X/AA;
    .locals 0

    .line 55134
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A04:Lcom/facebook/ads/redexgen/X/AA;

    return-object p0
.end method

.method private A04()Lcom/facebook/ads/redexgen/X/QY;
    .locals 1

    .line 55135
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Tw;-><init>(Lcom/facebook/ads/redexgen/X/Tu;)V

    return-object v0
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/QZ;
    .locals 7

    .line 55136
    new-instance v1, Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Tu;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A07:Lcom/facebook/ads/redexgen/X/QY;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Tu;->A01:Lcom/facebook/ads/redexgen/X/XT;

    const/16 v3, 0x32

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/QZ;-><init>(Landroid/view/View;IZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/XT;)V

    return-object v1
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tu;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Tu;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 55137
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Tu;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 55138
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A09()V
    .locals 4

    .line 55139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A04:Lcom/facebook/ads/redexgen/X/AA;

    if-eqz v0, :cond_1

    .line 55140
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getVideoView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ph;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tu;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A0G:[Ljava/lang/String;

    const-string v1, "uL1T6UePNJ7Kw1irCYcqiA1GlgiEZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "2BZHbySyGqLzqR4K5b7TQMpiAd64K"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A0C:Lcom/facebook/ads/redexgen/X/Pg;

    .line 55141
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Ph;->setViewImplInflationListener(Lcom/facebook/ads/redexgen/X/Pg;)V

    .line 55142
    :cond_1
    return-void
.end method

.method private A0A()V
    .locals 2

    .line 55143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A04:Lcom/facebook/ads/redexgen/X/AA;

    if-eqz v0, :cond_0

    .line 55144
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getVideoView()Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(Lcom/facebook/ads/redexgen/X/Tu;)V

    .line 55145
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55146
    :cond_0
    return-void
.end method

.method private A0B()V
    .locals 4

    .line 55147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A04:Lcom/facebook/ads/redexgen/X/AA;

    if-eqz v0, :cond_0

    .line 55148
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getVideoView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ph;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A0G:[Ljava/lang/String;

    const-string v1, "MUEPyY1MJMWvhU3XHu"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Ph;->setViewImplInflationListener(Lcom/facebook/ads/redexgen/X/Pg;)V

    .line 55149
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0C()V
    .locals 4

    .line 55150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A09:Z

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Tu;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A0G:[Ljava/lang/String;

    const-string v1, "vtumVYeB8x7vkBeCNzRl37Vgwgf5m"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "l5c2Nb35iHyego1JNAmcVzJY15xyfp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/MediaViewVideoRenderer;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A08:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0U()V

    .line 55152
    :goto_0
    return-void

    .line 55153
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A04:Lcom/facebook/ads/redexgen/X/AA;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getState()Lcom/facebook/ads/redexgen/X/QW;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_1

    .line 55154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A0B:Z

    .line 55155
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A08:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0V()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D()V
    .locals 1

    .line 55156
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jw;->A03:Lcom/facebook/ads/redexgen/X/Jw;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A03:Lcom/facebook/ads/redexgen/X/Jw;

    .line 55157
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tu;->A0B()V

    .line 55158
    return-void
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tu;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x7t
        0x20t
        0x38t
        0x2ft
        0x22t
        0x27t
        0x2at
        0x6et
        0x3ct
        0x2bt
        0x20t
        0x2at
        0x2bt
        0x3ct
        0x2bt
        0x3ct
        0x6et
        0x2dt
        0x26t
        0x27t
        0x22t
        0x2at
        0x6et
        0x2dt
        0x21t
        0x20t
        0x28t
        0x27t
        0x29t
        0x60t
        0xet
        0x26t
        0x27t
        0x2at
        0x22t
        0x15t
        0x2at
        0x26t
        0x34t
        0x15t
        0x2at
        0x27t
        0x26t
        0x2ct
        0x63t
        0x2at
        0x30t
        0x63t
        0x2dt
        0x36t
        0x2ft
        0x2ft
        0x78t
        0x63t
        0x36t
        0x2dt
        0x22t
        0x21t
        0x2ft
        0x26t
        0x63t
        0x37t
        0x2ct
        0x63t
        0x25t
        0x2at
        0x2dt
        0x27t
        0x63t
        0x2at
        0x37t
        0x6dt
        0x10t
        0x2bt
        0x24t
        0x27t
        0x29t
        0x20t
        0x65t
        0x31t
        0x2at
        0x65t
        0x23t
        0x2ct
        0x2bt
        0x21t
        0x65t
        0x8t
        0x20t
        0x21t
        0x2ct
        0x24t
        0x13t
        0x2ct
        0x20t
        0x32t
        0x13t
        0x2ct
        0x21t
        0x20t
        0x2at
        0x65t
        0x26t
        0x2dt
        0x2ct
        0x29t
        0x21t
        0x6bt
    .end array-data
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Tu;)V
    .locals 0

    .line 55159
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tu;->A0D()V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/redexgen/X/Tj;Lcom/facebook/ads/redexgen/X/Jk;)V
    .locals 0

    .line 55160
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Tu;->A0I(Lcom/facebook/ads/redexgen/X/Tj;Lcom/facebook/ads/redexgen/X/Jk;)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/redexgen/X/Pj;)V
    .locals 0

    .line 55161
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Tu;->A0J(Lcom/facebook/ads/redexgen/X/Pj;)V

    return-void
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/Tj;Lcom/facebook/ads/redexgen/X/Jk;)V
    .locals 5
    .param p2    # Lcom/facebook/ads/redexgen/X/Jk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A0A:Z

    .line 55163
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A0B:Z

    .line 55164
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tu;->A02:Lcom/facebook/ads/redexgen/X/Jk;

    .line 55165
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tu;->A09()V

    .line 55166
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Tu;->A05:Lcom/facebook/ads/redexgen/X/7b;

    .line 55167
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tj;->A11()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A0G:[Ljava/lang/String;

    const-string v1, "zpp3cHPhluFOPvL30kkcY8af"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    .line 55168
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tj;->A11()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jr;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 55169
    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Tx;-><init>(Lcom/facebook/ads/redexgen/X/Tu;)V

    .line 55170
    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/7b;->setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nt;)V

    .line 55171
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tj;->A16()Lcom/facebook/ads/redexgen/X/Jw;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A03:Lcom/facebook/ads/redexgen/X/Jw;

    .line 55172
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tu;->A06:Lcom/facebook/ads/redexgen/X/7T;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tj;->A1C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    .line 55173
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tu;->A06:Lcom/facebook/ads/redexgen/X/7T;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tj;->A1B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    .line 55174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A08:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0U()V

    .line 55175
    return-void
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/Pj;)V
    .locals 4

    .line 55176
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tu;->A04:Lcom/facebook/ads/redexgen/X/AA;

    if-eqz v1, :cond_1

    .line 55177
    const/16 v0, 0x18

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    .line 55178
    :cond_0
    :goto_0
    return-void

    .line 55179
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55180
    sget-object v3, Lcom/facebook/ads/redexgen/X/Tu;->A0H:Ljava/lang/String;

    const/16 v2, 0x1e

    const/16 v1, 0x2a

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tu;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private A0K()Z
    .locals 3

    .line 55181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A04:Lcom/facebook/ads/redexgen/X/AA;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getState()Lcom/facebook/ads/redexgen/X/QW;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A06:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_1

    .line 55182
    :cond_0
    return v2

    .line 55183
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tu;->A03:Lcom/facebook/ads/redexgen/X/Jw;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jw;->A05:Lcom/facebook/ads/redexgen/X/Jw;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tu;->A03:Lcom/facebook/ads/redexgen/X/Jw;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jw;->A03:Lcom/facebook/ads/redexgen/X/Jw;

    if-ne v1, v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/Tu;)Z
    .locals 0

    .line 55184
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A0B:Z

    return p0
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/Tu;)Z
    .locals 0

    .line 55185
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A0A:Z

    return p0
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/Tu;)Z
    .locals 0

    .line 55186
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tu;->A0K()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/Tu;Z)Z
    .locals 0

    .line 55187
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Tu;->A0B:Z

    return p1
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/Tu;Z)Z
    .locals 0

    .line 55188
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Tu;->A0A:Z

    return p1
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/facebook/ads/MediaViewVideoRenderer;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;I)V
    .locals 7

    .line 55189
    invoke-interface {p3}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/57;

    .line 55190
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/57;->A00(Lcom/facebook/ads/internal/api/AdComponentViewApi;)V

    .line 55191
    if-eqz p4, :cond_5

    const/4 v0, 0x1

    if-ne p4, v0, :cond_7

    .line 55192
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/Tu;->A01(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/Jm;

    move-result-object v4

    .line 55193
    .local p0, "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/Jm;
    :goto_0
    check-cast p3, Lcom/facebook/ads/redexgen/X/5E;

    .line 55194
    invoke-virtual {p3, v4}, Lcom/facebook/ads/redexgen/X/5E;->A06(Lcom/facebook/ads/redexgen/X/Jm;)V

    .line 55195
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/59;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 55196
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tu;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 55197
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tu;->A01:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7b;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7b;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A05:Lcom/facebook/ads/redexgen/X/7b;

    .line 55198
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tu;->A04()Lcom/facebook/ads/redexgen/X/QY;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A07:Lcom/facebook/ads/redexgen/X/QY;

    .line 55199
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tu;->A05()Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A08:Lcom/facebook/ads/redexgen/X/QZ;

    .line 55200
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    .line 55201
    .local p1, "density":F
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 55202
    .local p2, "smallPadding":I
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 55203
    .local p3, "bigPadding":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tu;->A01:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7T;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7T;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A06:Lcom/facebook/ads/redexgen/X/7T;

    .line 55204
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55205
    .local p4, "playPauseParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55206
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A06:Lcom/facebook/ads/redexgen/X/7T;

    invoke-virtual {v0, v3, v2, v2, v3}, Lcom/facebook/ads/redexgen/X/7T;->setPadding(IIII)V

    .line 55208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A06:Lcom/facebook/ads/redexgen/X/7T;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7T;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55209
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tu;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A0G:[Ljava/lang/String;

    const-string v1, "oEzbzrDqpY4LpZuK9aeaZZijHYv0V"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "65U2aK7TrzSKlLOXQMMYyslcv3rZK"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v5, 0x0

    if-ge v3, v6, :cond_1

    .line 55210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 55211
    .local v0, "child":Landroid/view/View;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/AA;

    if-eqz v0, :cond_4

    .line 55212
    check-cast v1, Lcom/facebook/ads/redexgen/X/AA;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Tu;->A04:Lcom/facebook/ads/redexgen/X/AA;

    .line 55213
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tu;->A04:Lcom/facebook/ads/redexgen/X/AA;

    if-nez v1, :cond_3

    .line 55214
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55215
    sget-object v3, Lcom/facebook/ads/redexgen/X/Tu;->A0H:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x24

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tu;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55216
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A08:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/QZ;->A0W(I)V

    .line 55217
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tu;->A08:Lcom/facebook/ads/redexgen/X/QZ;

    const/16 v0, 0xfa

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0X(I)V

    .line 55218
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/Jm;->AEO()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 55219
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A0G:[Ljava/lang/String;

    const-string v1, "NjD77g9sbns6FUonJskLzorZMVzfs"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "sF6jyMJNRDvSJleY8k7g51skJQqlgl"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    .line 55220
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A05:Lcom/facebook/ads/redexgen/X/7b;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    .line 55221
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tu;->A04:Lcom/facebook/ads/redexgen/X/AA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A06:Lcom/facebook/ads/redexgen/X/7T;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    goto :goto_2

    .line 55222
    .end local v0
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 55223
    :cond_5
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/Tu;->A02(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/Jm;

    move-result-object v4

    .line 55224
    .restart local p0    # "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/Jm;
    goto/16 :goto_0

    .line 55225
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A0G:[Ljava/lang/String;

    const-string v1, "irNdkufru0tgAA9z3l7YlJhRv0dZK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "zN5wNlZvELtjdUjcESL7VUEU7ru13"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    .line 55226
    .end local p0    # "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/Jm;
    :cond_7
    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tu;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 55227
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/57;->onAttachedToWindow()V

    .line 55228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A09:Z

    .line 55229
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tu;->A0C()V

    .line 55230
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 55231
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/57;->onDetachedFromWindow()V

    .line 55232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A09:Z

    .line 55233
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tu;->A0C()V

    .line 55234
    return-void
.end method

.method public final onPrepared()V
    .locals 2

    .line 55235
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tu;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ji;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ji;-><init>(Lcom/facebook/ads/redexgen/X/Tu;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55236
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tu;->A0A()V

    .line 55237
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 55238
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/57;->onVisibilityChanged(Landroid/view/View;I)V

    .line 55239
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tu;->A0C()V

    .line 55240
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 55241
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/57;->onWindowFocusChanged(Z)V

    .line 55242
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tu;->A0C()V

    .line 55243
    return-void
.end method
