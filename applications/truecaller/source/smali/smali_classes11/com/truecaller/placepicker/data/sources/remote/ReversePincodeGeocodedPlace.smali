.class public final Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J*\u0010\u000b\u001a\u00020\u00002\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0006H\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u0008J\u0010\u0010\u000f\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0019\u0010\n\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0008R\u001f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0005\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;",
        "",
        "",
        "Lcom/truecaller/placepicker/data/sources/remote/AddressComponent;",
        "component1",
        "()Ljava/util/List;",
        "",
        "component2",
        "()Ljava/lang/String;",
        "address_components",
        "formatted_address",
        "copy",
        "(Ljava/util/List;Ljava/lang/String;)Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getFormatted_address",
        "Ljava/util/List;",
        "getAddress_components",
        "<init>",
        "(Ljava/util/List;Ljava/lang/String;)V",
        "placepicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final address_components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/placepicker/data/sources/remote/AddressComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final formatted_address:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/placepicker/data/sources/remote/AddressComponent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "address_components"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatted_address"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->address_components:Ljava/util/List;

    iput-object p2, p0, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->formatted_address:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->address_components:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->formatted_address:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->copy(Ljava/util/List;Ljava/lang/String;)Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/placepicker/data/sources/remote/AddressComponent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->address_components:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->formatted_address:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/String;)Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/placepicker/data/sources/remote/AddressComponent;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;"
        }
    .end annotation

    const-string v0, "address_components"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatted_address"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;

    invoke-direct {v0, p1, p2}, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;

    iget-object v0, p0, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->address_components:Ljava/util/List;

    iget-object v1, p1, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->address_components:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->formatted_address:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->formatted_address:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAddress_components()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/placepicker/data/sources/remote/AddressComponent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->address_components:Ljava/util/List;

    return-object v0
.end method

.method public final getFormatted_address()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->formatted_address:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->address_components:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->formatted_address:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ReversePincodeGeocodedPlace(address_components="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->address_components:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", formatted_address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/placepicker/data/sources/remote/ReversePincodeGeocodedPlace;->formatted_address:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
