.class public final Lcom/facebook/ads/redexgen/X/4t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyInvocationHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/ClassLoader;

.field public A01:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HJBbstbFgkhP2Es2YC6tj0WPrL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4IOUVAMDExjQBHSpAfoXSYCtPyIaCI88"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "z5PEOWpVsYBM96D6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SPmK69spxohqfCa0SsQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2TZuMIK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "01EkjjI8QhZqdiHuXsMGI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "efeA7FnPjHODjVcAjRmk7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pSZyNCg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4t;->A03:[Ljava/lang/String;

    .line 12744
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4t;->A03()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 12745
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4t;, "Lcom/facebook/ads/internal/apiimp/AdApiProxy$ProxyInvocationHandler<TT;>;"
    .local p1, "impl":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12746
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4t;->A01:Ljava/lang/Object;

    .line 12747
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/4t;->A00:Ljava/lang/ClassLoader;

    .line 12748
    return-void
.end method

.method public static A00(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12749
    const/4 v4, 0x0

    .line 12750
    .local p0, "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 12751
    .local p1, "retType":Ljava/lang/Class;
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12752
    const/4 v4, 0x0

    .line 12753
    :cond_0
    :goto_0
    return-object v4

    .line 12754
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 12755
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 12756
    :cond_2
    const-class v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12757
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4t;->A02(III)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 12758
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12759
    new-array v1, v1, [Ljava/lang/Class;

    aput-object v3, v1, v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/4s;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4s;-><init>(Ljava/lang/ClassLoader;)V

    .line 12760
    invoke-static {p0, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public static synthetic A01(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    .line 12761
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/4t;->A00(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/4t;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/4t;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4t;->A03:[Ljava/lang/String;

    const-string v1, "7LVLxstLm7VGVuwpoPddR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "O4Ajby3FQpCfAUdim7NmB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x28

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4t;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x14t
        -0x5t
        -0xct
    .end array-data
.end method


# virtual methods
.method public final A04()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 12762
    .local v0, "this":Lcom/facebook/ads/redexgen/X/4t;, "Lcom/facebook/ads/internal/apiimp/AdApiProxy$ProxyInvocationHandler<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A01:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12763
    .local v0, "this":Lcom/facebook/ads/redexgen/X/4t;, "Lcom/facebook/ads/internal/apiimp/AdApiProxy$ProxyInvocationHandler<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A01:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12764
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/4t;
    :catchall_0
    move-exception v2

    .line 12765
    .local p0, "t":Ljava/lang/Throwable;
    instance-of v0, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    .line 12766
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    .line 12767
    .local p1, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 12768
    .local p2, "integrationException":Ljava/lang/Throwable;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/1v;

    if-nez v0, :cond_2

    .line 12769
    .end local p1    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .end local p2    # "integrationException":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A00:Ljava/lang/ClassLoader;

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/4t;->A00(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v6

    .line 12770
    .local p1, "result":Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8I;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    .line 12771
    .local p2, "sdkContext":Lcom/facebook/ads/redexgen/X/XS;
    if-eqz v0, :cond_1

    .line 12772
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A0G:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 12773
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 12774
    .end local p1    # "result":Ljava/lang/Object;
    .local p0, "result":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v6

    .line 12775
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
