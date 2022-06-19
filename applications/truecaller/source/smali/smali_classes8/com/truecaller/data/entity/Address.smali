.class public Lcom/truecaller/data/entity/Address;
.super Lcom/truecaller/data/entity/RowEntity;
.source "SourceFile"

# interfaces
.implements Le/a/k3/l/e;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/truecaller/data/entity/RowEntity<",
        "Lcom/truecaller/data/dto/ContactDto$Contact$Address;",
        ">;",
        "Le/a/k3/l/e;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/data/entity/Address;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRESENTATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/truecaller/data/entity/Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/Address$a;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Address$a;-><init>()V

    sput-object v0, Lcom/truecaller/data/entity/Address;->PRESENTATION_COMPARATOR:Ljava/util/Comparator;

    .line 2
    new-instance v0, Lcom/truecaller/data/entity/Address$b;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Address$b;-><init>()V

    sput-object v0, Lcom/truecaller/data/entity/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    invoke-direct {v0}, Lcom/truecaller/data/dto/ContactDto$Contact$Address;-><init>()V

    invoke-direct {p0, v0}, Lcom/truecaller/data/entity/Address;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$Address;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/RowEntity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/dto/ContactDto$Contact$Address;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/RowEntity;-><init>(Lcom/truecaller/data/dto/ContactDto$Row;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/entity/Address;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->row()Lcom/truecaller/data/dto/ContactDto$Row;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    invoke-direct {v0, p1}, Lcom/truecaller/data/dto/ContactDto$Contact$Address;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$Address;)V

    invoke-direct {p0, v0}, Lcom/truecaller/data/entity/Address;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$Address;)V

    return-void
.end method

.method private formatAddress()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const-string v5, "US"

    .line 2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCity()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getArea()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 4
    invoke-static {v1, v0}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCityOrArea()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getStreet()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    new-array v6, v2, [Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getZipCode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v0, v6, v3

    const-string v0, " "

    invoke-static {v0, v6}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 9
    invoke-static {v1, v5}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mergeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityOrArea()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getArea()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCity()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    invoke-static {v0}, Le/a/b0/q/j;->c(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    invoke-static {v0}, Le/a/p5/g0;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getDisplayableAddress()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/truecaller/data/entity/Address;->formatAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getStreet()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ", "

    .line 4
    invoke-static {v1, v0}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortDisplayableAddress()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCityOrArea()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, ", "

    .line 2
    invoke-static {v1, v0}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->type:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/k/a;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTypeLabel()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->zipCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSplit()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getZipCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getArea()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mergeEquals(Le/a/k3/l/e;)Z
    .locals 11

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/truecaller/data/entity/Address;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/truecaller/data/entity/Address;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lw3/c/a/a/a/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/truecaller/data/entity/Address;->mergeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getStreet()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/truecaller/data/entity/Address;->mergeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getZipCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/truecaller/data/entity/Address;->mergeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getArea()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/truecaller/data/entity/Address;->mergeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Address;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/truecaller/data/entity/Address;->mergeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Address;->getStreet()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/truecaller/data/entity/Address;->mergeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Address;->getZipCode()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/truecaller/data/entity/Address;->mergeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Address;->getArea()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/truecaller/data/entity/Address;->mergeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->isSplit()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Address;->isSplit()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0

    .line 18
    :cond_4
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 19
    :cond_5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Address;->isSplit()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 21
    :cond_6
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->area:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->city:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->street:Ljava/lang/String;

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->timeZone:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->type:Ljava/lang/String;

    return-void
.end method

.method public setTypeLabel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setZipCode(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->zipCode:Ljava/lang/String;

    return-void
.end method
