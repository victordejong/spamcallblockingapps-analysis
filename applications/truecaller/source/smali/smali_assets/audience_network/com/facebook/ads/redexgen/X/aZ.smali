.class public final Lcom/facebook/ads/redexgen/X/aZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aO;->A0P()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aO;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ks6FgoJovve7iHM2pZkl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wha53u"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "49wSJ7V8XkDKZTUcjMDnpoSn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1JQ5I5ad77Yrp3ewkirQ0oRutiEmvr6i"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jAt3ZHaaMbDXz0fIQiir7V"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EKdcAjdCbYFTR4bnYqi4SV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MwtlcC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "w1RouBmka6J1zGDRhikmrfItH78owLWg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aZ;->A01:[Ljava/lang/String;

    .line 68113
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aO;)V
    .locals 0

    .line 68114
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aZ;->A00:Lcom/facebook/ads/redexgen/X/aO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 5

    .line 68115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A00:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(Lcom/facebook/ads/redexgen/X/aO;)Landroid/app/ActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68116
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aZ;->A00:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A0F(Z)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    .line 68117
    :goto_0
    return-object v0

    .line 68118
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aZ;->A00:Lcom/facebook/ads/redexgen/X/aO;

    sget-object v3, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aZ;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/aZ;->A01:[Ljava/lang/String;

    const-string v1, "MHidzBjnmsHNQkooJipxy3AaWgleVPOv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "EW2Ra62KpqEXQLSIkiFDqiivYFqdEGvM"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
