.class public final Lcom/facebook/ads/redexgen/X/L9;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/Package;

.field public static final A03:Ljava/lang/String;

.field public static final A04:Ljava/lang/String;

.field public static final A05:Ljava/lang/String;

.field public static final A06:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/XT;",
            ">;"
        }
    .end annotation
.end field

.field public static final A07:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/LG;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "R2O7PMYP6nkOeNui3I4WlXx4fu7rpRKA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "y"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "n9RLgUbY6qPVyxnn4C2MCNq6tOX6tKMu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "KtI8XvYnNiAs4lVQz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VIjGruAAxxfbDEfj8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jnPluIPOifq7BY1vqnqKLiUetY3DHsfM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "J5aiTqmsNT2689NKU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zCaDldCe0EtEl2h3W"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/L9;->A01:[Ljava/lang/String;

    .line 42771
    invoke-static {}, Lcom/facebook/ads/redexgen/X/L9;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/L9;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/L9;->A02:Ljava/lang/Package;

    .line 42772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A02:Ljava/lang/Package;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    const/16 v1, 0x16

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L9;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/L9;->A04:Ljava/lang/String;

    .line 42773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A02:Ljava/lang/Package;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L9;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/L9;->A03:Ljava/lang/String;

    .line 42774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A02:Ljava/lang/Package;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x13

    const/16 v1, 0x15

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L9;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/L9;->A05:Ljava/lang/String;

    .line 42775
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 42776
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/L9;->A06:Ljava/util/Set;

    .line 42777
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/L9;->A07:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .line 42779
    invoke-virtual {p0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v3

    .line 42780
    .local p0, "cloneIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 42782
    .local v3, "parcel":Landroid/os/Parcel;
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 42783
    sget-object v1, Lcom/facebook/ads/redexgen/X/L9;->A05:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 42784
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 42785
    return-object v3
.end method

.method public static A01(Landroid/content/Intent;Ljava/lang/ClassLoader;)Landroid/content/Intent;
    .locals 5

    .line 42786
    invoke-virtual {p0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v4

    .line 42787
    .local p0, "startIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42788
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42789
    .local p1, "audienceNetworkActivityBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 42790
    .local v4, "parcel":Landroid/os/Parcel;
    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A05:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 42791
    .local v0, "savedInstanceStateByteArray":[B
    if-eqz v2, :cond_0

    .line 42792
    array-length v1, v2

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 42793
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42794
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    .line 42795
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 42796
    :cond_0
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 42797
    return-object v4
.end method

.method public static A02(Landroid/os/Bundle;Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .locals 5

    .line 42798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 42799
    .local p0, "parcel":Landroid/os/Parcel;
    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A04:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 42800
    .local p1, "savedInstanceStateByteArray":[B
    if-eqz v2, :cond_1

    .line 42801
    array-length v1, v2

    const/4 v0, 0x0

    invoke-virtual {v4, v2, v0, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 42802
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42803
    invoke-virtual {v4, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v3

    .line 42804
    .local v4, "result":Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/L9;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42805
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/L9;->A01:[Ljava/lang/String;

    const-string v1, "08vXapB5qdF8q1e2g"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "bPV7EQI3jYdBWJzP2"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    .line 42806
    .end local v4    # "result":Landroid/os/Bundle;
    :cond_1
    const/16 v2, 0x3e

    const/16 v1, 0x1c

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L9;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A03(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 42807
    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A03:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42808
    .local p0, "adId":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 42809
    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/XT;

    .line 42810
    .local p0, "adContext":Lcom/facebook/ads/redexgen/X/XT;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42811
    return-object v1

    .line 42812
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/XT;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    .locals 3

    .line 42813
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XT;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/L9;->A05()Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42814
    .local p0, "adActivityIntent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    sget-object v1, Lcom/facebook/ads/redexgen/X/L9;->A03:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42815
    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A06:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42816
    return-object v2
.end method

.method public static A05()Ljava/lang/Class;
    .locals 4

    .line 42817
    const-class v3, Lcom/facebook/ads/AudienceNetworkActivity;

    sget-object v1, Lcom/facebook/ads/redexgen/X/L9;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/L9;->A01:[Ljava/lang/String;

    const-string v1, "4NnM5dRGBMW0KGxzs"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "N6FCbEqQMIqNBYuck"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/L9;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x12

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/L9;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x6ft
        -0x5ct
        -0x59t
        -0x4ft
        -0x46t
        -0x3et
        -0x5ct
        -0x59t
        -0x3et
        -0x4et
        -0x5bt
        -0x53t
        -0x3et
        -0x54t
        -0x59t
        -0x3et
        -0x52t
        -0x58t
        -0x44t
        -0x44t
        -0x31t
        -0x2et
        -0x24t
        -0x1bt
        -0x13t
        -0x23t
        -0x20t
        -0x29t
        -0x2bt
        -0x29t
        -0x24t
        -0x31t
        -0x26t
        -0x13t
        -0x2dt
        -0x1at
        -0x1et
        -0x20t
        -0x31t
        -0x1ft
        0x66t
        0x79t
        0x7ct
        -0x7at
        -0x71t
        -0x69t
        -0x75t
        0x79t
        -0x72t
        0x7dt
        0x7ct
        -0x69t
        -0x75t
        -0x74t
        0x79t
        -0x74t
        0x7dt
        -0x69t
        0x7ct
        0x79t
        -0x74t
        0x79t
        -0x39t
        -0x2bt
        -0x16t
        -0x27t
        -0x28t
        -0x6ct
        -0x19t
        -0x18t
        -0x2bt
        -0x18t
        -0x27t
        -0x6ct
        -0x2at
        -0x17t
        -0x1et
        -0x28t
        -0x20t
        -0x27t
        -0x6ct
        -0x23t
        -0x19t
        -0x6ct
        -0x27t
        -0x1ft
        -0x1ct
        -0x18t
        -0x13t
        -0x6bt
    .end array-data
.end method

.method public static A08(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    .line 42818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 42819
    .local p0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 42820
    sget-object v1, Lcom/facebook/ads/redexgen/X/L9;->A04:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 42821
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 42822
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V
    .locals 1

    .line 42823
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XT;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/L9;->A00(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42824
    return-void
.end method

.method public static A0A(Landroid/content/Intent;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 42825
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 42826
    .local p0, "intentUri":Landroid/net/Uri;
    const/4 p0, 0x0

    if-nez v0, :cond_0

    .line 42827
    return p0

    .line 42828
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42829
    .local v0, "url":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42830
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42831
    const/4 v0, 0x1

    return v0

    .line 42832
    :cond_2
    return p0
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/XT;Landroid/content/Intent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 42833
    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A07:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/LG;

    .line 42834
    .local p0, "externalActivityLauncher":Lcom/facebook/ads/redexgen/X/LG;
    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/L9;->A0C(Lcom/facebook/ads/redexgen/X/XT;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/LG;)Z

    move-result v0

    return v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/XT;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/LG;)Z
    .locals 4
    .param p2    # Lcom/facebook/ads/redexgen/X/LG;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 42835
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A0W(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 42836
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/L9;->A0A(Landroid/content/Intent;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42837
    const/4 v0, 0x0

    return v0

    .line 42838
    :cond_0
    move-object v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/L9;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42839
    .local p0, "startContext":Landroid/content/Context;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/L9;->A01:[Ljava/lang/String;

    const-string v1, "W"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XT;->A0C()Landroid/app/Activity;

    move-result-object v0

    .line 42840
    .local p1, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 42841
    move-object v3, v0

    .line 42842
    :goto_0
    if-eqz p2, :cond_2

    .line 42843
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A0Y(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 42844
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/L9;->A0A(Landroid/content/Intent;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42845
    :cond_2
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42846
    const/4 v0, 0x1

    return v0

    .line 42847
    :cond_3
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 42848
    :cond_4
    invoke-interface {p2, v3, p1}, Lcom/facebook/ads/redexgen/X/LG;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
