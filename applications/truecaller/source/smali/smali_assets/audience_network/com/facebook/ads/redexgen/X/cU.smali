.class public final Lcom/facebook/ads/redexgen/X/cU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F8;->A0L(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/94;Lcom/facebook/ads/redexgen/X/92;Lcom/facebook/ads/redexgen/X/1p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F8;

.field public final synthetic A01:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7FIKHU9lgq27"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AgQqvAltXhi1bYF8zppFCZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CRAmwsbXNtyv0vmCJJ9qOPCwxUiND3E6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ItQqdqoRYHMWKQzbVRTeHzNwEAi"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "W2szVhKnaW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HNVKE5hkEvipBMdeuLWXlSQ07SgK2Jmi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9NOG2BA2dnlUEqMWgY53wMXC47FXKBrl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EneshuO9jiHnlHF2bjWwp7WA0EKVaMOF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cU;->A03:[Ljava/lang/String;

    .line 71913
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cU;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F8;Ljava/lang/Runnable;)V
    .locals 0

    .line 71914
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cU;->A01:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/cU;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x10

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/cU;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/cU;->A03:[Ljava/lang/String;

    const-string v1, "2VG06oAYTcRzKBDE7gWFCU36hzL5px1b"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "j1xG2z3v9jq0UO66H2WqYNbpklLAu6IG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x37

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cU;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x77t
        0x73t
        0x75t
        0x6et
        -0x5dt
        -0x61t
        -0x5ft
        -0x7ct
        -0x5dt
        -0x50t
        -0x50t
        -0x59t
        -0x4ct
        0x62t
        -0x55t
        -0x51t
        -0x4et
        -0x4ct
        -0x59t
        -0x4bt
        -0x4bt
        -0x55t
        -0x4ft
        -0x50t
        0x62t
        -0x58t
        -0x55t
        -0x4ct
        -0x59t
        -0x5at
        -0x76t
        -0x77t
        0x5dt
        0x7ct
        -0x77t
        -0x77t
        -0x80t
        -0x73t
        0x67t
        -0x76t
        -0x7et
        -0x7et
        -0x7ct
        -0x77t
        -0x7et
        0x64t
        -0x78t
        -0x75t
        -0x73t
        -0x80t
        -0x72t
        -0x72t
        -0x7ct
        -0x76t
        -0x77t
    .end array-data
.end method


# virtual methods
.method public final AA0(Lcom/facebook/ads/redexgen/X/d1;)V
    .locals 1

    .line 71915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F8;->A01(Lcom/facebook/ads/redexgen/X/F8;)Lcom/facebook/ads/redexgen/X/Dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dF;->A3h()V

    .line 71916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A0C()V

    .line 71917
    return-void
.end method

.method public final AA1(Lcom/facebook/ads/redexgen/X/d1;Landroid/view/View;)V
    .locals 2

    .line 71918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F8;->A01(Lcom/facebook/ads/redexgen/X/F8;)Lcom/facebook/ads/redexgen/X/Dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A00:Lcom/facebook/ads/redexgen/X/0n;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dF;->A3g(Z)V

    .line 71919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A00:Lcom/facebook/ads/redexgen/X/0n;

    if-eq p1, v0, :cond_1

    .line 71920
    return-void

    .line 71921
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 71922
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cS;->A0C()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/cS;->A01:Lcom/facebook/ads/redexgen/X/0n;

    .line 71924
    .local p0, "tempAdapter":Lcom/facebook/ads/redexgen/X/0n;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/cS;->A01:Lcom/facebook/ads/redexgen/X/0n;

    .line 71925
    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/F8;->A00(Lcom/facebook/ads/redexgen/X/F8;Landroid/view/View;)Landroid/view/View;

    .line 71926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A0C:Z

    if-nez v0, :cond_2

    .line 71927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0o;->A0F(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 71928
    :goto_1
    return-void

    .line 71929
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/0o;->A0E(Landroid/view/View;)V

    .line 71930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/cS;->A0K(Lcom/facebook/ads/redexgen/X/0n;)V

    goto :goto_1
.end method

.method public final AA2(Lcom/facebook/ads/redexgen/X/d1;)V
    .locals 5

    const/16 v2, 0x1e

    const/16 v1, 0x19

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cU;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x7

    const/16 v1, 0x17

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cU;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F8;->A01(Lcom/facebook/ads/redexgen/X/F8;)Lcom/facebook/ads/redexgen/X/Dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dF;->A3j()V

    .line 71932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A0D()V

    .line 71933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cS;->A0I()V

    .line 71934
    return-void
.end method

.method public final AAx(Lcom/facebook/ads/redexgen/X/d1;Lcom/facebook/ads/redexgen/X/K3;)V
    .locals 3

    .line 71935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F8;->A01(Lcom/facebook/ads/redexgen/X/F8;)Lcom/facebook/ads/redexgen/X/Dr;

    move-result-object v0

    .line 71936
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A00:Lcom/facebook/ads/redexgen/X/0n;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    .line 71937
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/K3;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    .line 71938
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dF;->A3i(ZI)V

    .line 71939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A00:Lcom/facebook/ads/redexgen/X/0n;

    if-eq p1, v0, :cond_1

    .line 71940
    return-void

    .line 71941
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 71942
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cS;->A0C()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/cS;->A0K(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 71944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cU;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/cS;->AAW(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71945
    return-void
.end method
