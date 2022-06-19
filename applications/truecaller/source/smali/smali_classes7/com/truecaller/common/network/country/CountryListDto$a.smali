.class public Lcom/truecaller/common/network/country/CountryListDto$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/common/network/country/CountryListDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "CID"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "CN"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "CCN"
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "CC"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/truecaller/common/network/country/CountryListDto$a;

    .line 3
    iget-object v2, p0, Lcom/truecaller/common/network/country/CountryListDto$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    .line 6
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/truecaller/common/network/country/CountryListDto$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
