.class public final Lcom/facebook/ads/redexgen/X/Pr;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Po;->ACb(Lcom/facebook/ads/redexgen/X/QW;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Po;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/QW;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pUIboC8CwdUMtM1tPR8iEtPz8p"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ladzvmq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gZiIZXhhpFNWaRiPv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vQtAVDGFp8M"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7j30UYRlUEXcM4Kd2wK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XchzO9Mtzl1GyvdPdWlZd1J0iwZmFx3H"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VTwPVxpRcW0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YPnzN72MuP4y3lnuBhqZ0NoSyY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Pr;->A04:[Ljava/lang/String;

    .line 49237
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/QW;II)V
    .locals 0

    .line 49238
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Pr;->A03:Lcom/facebook/ads/redexgen/X/QW;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Pr;->A00:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/Pr;->A01:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 7

    .line 49239
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A03:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A07:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_1

    .line 49240
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0o:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0O(Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/Ja;)V

    .line 49241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A08(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2v()V

    .line 49242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A09(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Po;->A0C()Lcom/facebook/ads/redexgen/X/Ko;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9O;->A02(Lcom/facebook/ads/redexgen/X/9N;)V

    .line 49243
    :cond_0
    :goto_0
    return-void

    .line 49244
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A03:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A03:Lcom/facebook/ads/redexgen/X/QW;

    const/4 v3, 0x1

    if-ne v1, v0, :cond_2

    .line 49245
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0j:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0O(Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/Ja;)V

    .line 49246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Po;->A0U(Lcom/facebook/ads/redexgen/X/Po;Z)Z

    .line 49247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A09(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Po;->A0A()Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9O;->A02(Lcom/facebook/ads/redexgen/X/9N;)V

    .line 49248
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0N(Lcom/facebook/ads/redexgen/X/Po;I)V

    goto :goto_0

    .line 49249
    :cond_2
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Pr;->A03:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v5, Lcom/facebook/ads/redexgen/X/QW;->A06:Lcom/facebook/ads/redexgen/X/QW;

    const/4 v2, 0x0

    sget-object v4, Lcom/facebook/ads/redexgen/X/Pr;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v4, v0

    const/4 v0, 0x7

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/Pr;->A04:[Ljava/lang/String;

    const-string v1, "Wlqb3PCyph61UkVVxo7ng7VZa1hYfmo4"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    if-ne v6, v5, :cond_4

    .line 49250
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0i:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0O(Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/Ja;)V

    .line 49251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A08(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2n()V

    .line 49252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Po;->A0U(Lcom/facebook/ads/redexgen/X/Po;Z)Z

    .line 49253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A07(Lcom/facebook/ads/redexgen/X/Po;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 49254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A09(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/7v;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/9O;->A02(Lcom/facebook/ads/redexgen/X/9N;)V

    .line 49255
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A01:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0N(Lcom/facebook/ads/redexgen/X/Po;I)V

    goto/16 :goto_0

    .line 49256
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A03:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_6

    .line 49257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A08(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 49258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A08(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A09()Lcom/facebook/ads/redexgen/X/Jf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Jf;->ACa()V

    .line 49259
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0m:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0O(Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/Ja;)V

    .line 49260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A08(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A32()V

    .line 49261
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A09(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Po;->A0B()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9O;->A02(Lcom/facebook/ads/redexgen/X/9N;)V

    .line 49262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A07(Lcom/facebook/ads/redexgen/X/Po;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 49263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A0M(Lcom/facebook/ads/redexgen/X/Po;)V

    goto/16 :goto_0

    .line 49264
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A03:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_7

    .line 49265
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0l:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0O(Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/Ja;)V

    .line 49266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A08(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2r()V

    .line 49267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A09(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7u;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7u;-><init>(I)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/9O;->A02(Lcom/facebook/ads/redexgen/X/9N;)V

    .line 49268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A07(Lcom/facebook/ads/redexgen/X/Po;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 49269
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0N(Lcom/facebook/ads/redexgen/X/Po;I)V

    goto/16 :goto_0

    .line 49270
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A03:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_8

    .line 49271
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0k:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0O(Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/Ja;)V

    .line 49272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A08(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2o()V

    .line 49273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A09(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Po;->A0E()Lcom/facebook/ads/redexgen/X/KQ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9O;->A02(Lcom/facebook/ads/redexgen/X/9N;)V

    .line 49274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A07(Lcom/facebook/ads/redexgen/X/Po;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 49275
    :cond_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A03:Lcom/facebook/ads/redexgen/X/QW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A09:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_0

    .line 49276
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0i:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0O(Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/Ja;)V

    .line 49277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A08(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2x()V

    .line 49278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Po;->A0U(Lcom/facebook/ads/redexgen/X/Po;Z)Z

    .line 49279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A07(Lcom/facebook/ads/redexgen/X/Po;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 49280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A09(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Pr;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/7v;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/9O;->A02(Lcom/facebook/ads/redexgen/X/9N;)V

    .line 49281
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Po;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0N(Lcom/facebook/ads/redexgen/X/Po;I)V

    goto/16 :goto_0
.end method
