.class public final Lcom/facebook/ads/redexgen/X/4z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/52;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudienceNetworkViewFactory"
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public final A00:Landroid/content/Intent;

.field public final A01:Lcom/facebook/ads/redexgen/X/52;

.field public final A02:Lcom/facebook/ads/redexgen/X/XT;

.field public final A03:Lcom/facebook/ads/redexgen/X/JT;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4z;->A0P()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/52;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 0

    .line 12911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12912
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/52;

    .line 12913
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Landroid/content/Intent;

    .line 12914
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/JT;

    .line 12915
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    .line 12916
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/52;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/4y;)V
    .locals 0

    .line 12917
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/4z;-><init>(Lcom/facebook/ads/redexgen/X/52;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/XT;)V

    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/cj;
    .locals 4

    .line 12918
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Landroid/content/Intent;

    .line 12919
    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4z;->A0O(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/cj;

    .line 12920
    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/4z;)Lcom/facebook/ads/redexgen/X/52;
    .locals 0

    .line 12921
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/52;

    return-object p0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/MV;
    .locals 9

    .line 12922
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Landroid/content/Intent;

    .line 12923
    const/16 v2, 0xe

    const/16 v1, 0x19

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4z;->A0O(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/cf;

    .line 12924
    .local p0, "dataBundle":Lcom/facebook/ads/redexgen/X/cf;
    new-instance v2, Lcom/facebook/ads/redexgen/X/S2;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/52;

    const/4 v0, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/bL;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/bL;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V

    new-instance v7, Lcom/facebook/ads/redexgen/X/Ss;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/Ss;-><init>()V

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/S2;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Mw;I)V

    return-object v2
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/MV;
    .locals 5

    .line 12925
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/52;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/JT;

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/bL;

    invoke-direct {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/bL;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/TB;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/TB;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;)V

    return-object v0
.end method

.method private A04()Lcom/facebook/ads/redexgen/X/MV;
    .locals 9

    .line 12926
    new-instance v2, Lcom/facebook/ads/redexgen/X/9f;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/52;

    const/4 v0, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/bL;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/bL;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V

    .line 12927
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A00()Lcom/facebook/ads/redexgen/X/cj;

    move-result-object v6

    new-instance v7, Lcom/facebook/ads/redexgen/X/St;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/St;-><init>()V

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/9f;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Mw;I)V

    .line 12928
    return-object v2
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/MV;
    .locals 9

    .line 12929
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Landroid/content/Intent;

    .line 12930
    const/16 v2, 0xe

    const/16 v1, 0x19

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4z;->A0O(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/cf;

    .line 12931
    .local p0, "dataBundle":Lcom/facebook/ads/redexgen/X/cf;
    new-instance v2, Lcom/facebook/ads/redexgen/X/9f;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/52;

    const/4 v0, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/bL;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/bL;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V

    new-instance v7, Lcom/facebook/ads/redexgen/X/Ss;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/Ss;-><init>()V

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/9f;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Mw;I)V

    return-object v2
.end method

.method private A06()Lcom/facebook/ads/redexgen/X/MV;
    .locals 8

    .line 12932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1s(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 12933
    new-instance v2, Lcom/facebook/ads/redexgen/X/85;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/JT;

    new-instance v5, Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {v5, v3}, Lcom/facebook/ads/redexgen/X/7J;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/52;

    new-instance v6, Lcom/facebook/ads/redexgen/X/bL;

    invoke-direct {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/bL;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V

    .line 12934
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A00()Lcom/facebook/ads/redexgen/X/cj;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/85;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/cj;)V

    .line 12935
    return-object v2

    .line 12936
    :cond_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/84;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/JT;

    new-instance v5, Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {v5, v3}, Lcom/facebook/ads/redexgen/X/7J;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/52;

    new-instance v6, Lcom/facebook/ads/redexgen/X/bL;

    invoke-direct {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/bL;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V

    .line 12937
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A00()Lcom/facebook/ads/redexgen/X/cj;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/84;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/cj;)V

    .line 12938
    return-object v2
.end method

.method private A07()Lcom/facebook/ads/redexgen/X/MV;
    .locals 9

    .line 12939
    new-instance v2, Lcom/facebook/ads/redexgen/X/8p;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v4, Lcom/facebook/ads/redexgen/X/St;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/St;-><init>()V

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/JT;

    .line 12940
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A00()Lcom/facebook/ads/redexgen/X/cj;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v7, Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/7J;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/52;

    const/4 v0, 0x0

    new-instance v8, Lcom/facebook/ads/redexgen/X/bL;

    invoke-direct {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/bL;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/8p;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/MU;)V

    .line 12941
    return-object v2
.end method

.method private A08()Lcom/facebook/ads/redexgen/X/MV;
    .locals 9

    .line 12942
    new-instance v2, Lcom/facebook/ads/redexgen/X/Sw;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/52;

    const/4 v0, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/bL;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/bL;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V

    .line 12943
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A00()Lcom/facebook/ads/redexgen/X/cj;

    move-result-object v6

    new-instance v8, Lcom/facebook/ads/redexgen/X/St;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/St;-><init>()V

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Mw;)V

    .line 12944
    return-object v2
.end method

.method private A09()Lcom/facebook/ads/redexgen/X/MV;
    .locals 9

    .line 12945
    new-instance v2, Lcom/facebook/ads/redexgen/X/87;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v4, Lcom/facebook/ads/redexgen/X/St;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/St;-><init>()V

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/JT;

    .line 12946
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A00()Lcom/facebook/ads/redexgen/X/cj;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v7, Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/7J;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/52;

    const/4 v0, 0x0

    new-instance v8, Lcom/facebook/ads/redexgen/X/bL;

    invoke-direct {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/bL;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/87;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/MU;)V

    .line 12947
    return-object v2
.end method

.method private A0A()Lcom/facebook/ads/redexgen/X/MV;
    .locals 9

    .line 12948
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Landroid/content/Intent;

    .line 12949
    const/16 v2, 0xe

    const/16 v1, 0x19

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4z;->A0O(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/cf;

    .line 12950
    .local p0, "dataBundle":Lcom/facebook/ads/redexgen/X/cf;
    new-instance v2, Lcom/facebook/ads/redexgen/X/87;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Ss;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/Ss;-><init>()V

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v7, Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/7J;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/52;

    const/4 v0, 0x0

    new-instance v8, Lcom/facebook/ads/redexgen/X/Eo;

    invoke-direct {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/Eo;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/87;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/MU;)V

    return-object v2
.end method

.method private A0B()Lcom/facebook/ads/redexgen/X/MV;
    .locals 9

    .line 12951
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Landroid/content/Intent;

    .line 12952
    const/16 v2, 0xe

    const/16 v1, 0x19

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4z;->A0O(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/cf;

    .line 12953
    .local p0, "dataBundle":Lcom/facebook/ads/redexgen/X/cf;
    new-instance v2, Lcom/facebook/ads/redexgen/X/Sw;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/52;

    const/4 v0, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/Eo;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Eo;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V

    .line 12954
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/facebook/ads/redexgen/X/Ss;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/Ss;-><init>()V

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Mw;)V

    .line 12955
    return-object v2
.end method

.method private A0C(Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/MV;
    .locals 7

    .line 12956
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/4z;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v5, Lcom/facebook/ads/redexgen/X/bK;

    invoke-direct {v5, p0}, Lcom/facebook/ads/redexgen/X/bK;-><init>(Lcom/facebook/ads/redexgen/X/4z;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/52;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/bL;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/bL;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V

    new-instance v4, Lcom/facebook/ads/redexgen/X/Su;

    invoke-direct {v4, v6, v5, v3, v0}, Lcom/facebook/ads/redexgen/X/Su;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Mr;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;)V

    .line 12957
    .local p0, "videoInterstitialView":Lcom/facebook/ads/redexgen/X/Su;
    invoke-virtual {v4, p1}, Lcom/facebook/ads/redexgen/X/Su;->A05(Landroid/view/View;)V

    .line 12958
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Landroid/content/Intent;

    .line 12959
    const/16 v2, 0x27

    const/16 v1, 0x1b

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4z;->A0O(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xc8

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 12960
    .local p1, "videoProgressReportIntervalMs":I
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Su;->A04(I)V

    .line 12961
    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 12962
    return-object v4
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/4z;)Lcom/facebook/ads/redexgen/X/MV;
    .locals 0

    .line 12963
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A08()Lcom/facebook/ads/redexgen/X/MV;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/4z;)Lcom/facebook/ads/redexgen/X/MV;
    .locals 0

    .line 12964
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A04()Lcom/facebook/ads/redexgen/X/MV;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/4z;)Lcom/facebook/ads/redexgen/X/MV;
    .locals 0

    .line 12965
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A05()Lcom/facebook/ads/redexgen/X/MV;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/4z;)Lcom/facebook/ads/redexgen/X/MV;
    .locals 0

    .line 12966
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A02()Lcom/facebook/ads/redexgen/X/MV;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/4z;)Lcom/facebook/ads/redexgen/X/MV;
    .locals 0

    .line 12967
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A0A()Lcom/facebook/ads/redexgen/X/MV;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/4z;)Lcom/facebook/ads/redexgen/X/MV;
    .locals 0

    .line 12968
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A0B()Lcom/facebook/ads/redexgen/X/MV;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/4z;)Lcom/facebook/ads/redexgen/X/MV;
    .locals 0

    .line 12969
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A03()Lcom/facebook/ads/redexgen/X/MV;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/4z;)Lcom/facebook/ads/redexgen/X/MV;
    .locals 0

    .line 12970
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A09()Lcom/facebook/ads/redexgen/X/MV;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/4z;)Lcom/facebook/ads/redexgen/X/MV;
    .locals 0

    .line 12971
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A07()Lcom/facebook/ads/redexgen/X/MV;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/4z;)Lcom/facebook/ads/redexgen/X/MV;
    .locals 0

    .line 12972
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4z;->A06()Lcom/facebook/ads/redexgen/X/MV;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/4z;Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/MV;
    .locals 0

    .line 12973
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4z;->A0C(Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/MV;

    move-result-object p0

    return-object p0
.end method

.method public static A0O(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4z;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0P()V
    .locals 1

    const/16 v0, 0x42

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4z;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x33t
        0x36t
        0xdt
        0x36t
        0x33t
        0x26t
        0x33t
        0xdt
        0x30t
        0x27t
        0x3ct
        0x36t
        0x3et
        0x37t
        0xet
        0x19t
        0xbt
        0x1dt
        0xet
        0x18t
        0x19t
        0x18t
        0x2at
        0x15t
        0x18t
        0x19t
        0x13t
        0x3dt
        0x18t
        0x38t
        0x1dt
        0x8t
        0x1dt
        0x3et
        0x9t
        0x12t
        0x18t
        0x10t
        0x19t
        0x4dt
        0x52t
        0x5ft
        0x5et
        0x54t
        0x64t
        0x4ft
        0x52t
        0x56t
        0x5et
        0x64t
        0x4bt
        0x54t
        0x57t
        0x57t
        0x52t
        0x55t
        0x5ct
        0x64t
        0x52t
        0x55t
        0x4ft
        0x5et
        0x49t
        0x4dt
        0x5at
        0x57t
    .end array-data
.end method
