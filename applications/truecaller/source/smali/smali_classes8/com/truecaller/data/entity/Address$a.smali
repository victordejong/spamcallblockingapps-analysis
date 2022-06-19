.class public Lcom/truecaller/data/entity/Address$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/data/entity/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/truecaller/data/entity/Address;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/truecaller/data/entity/Address;

    check-cast p2, Lcom/truecaller/data/entity/Address;

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Address;->getStreet()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Address;->getStreet()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Address;->getCity()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Address;->getCity()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Address;->getArea()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Address;->getArea()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x6

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Address;->getZipCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Address;->getZipCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x8

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x9

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0xa

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Address;->getTimeZone()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const/16 p1, 0xb

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Address;->getTimeZone()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    .line 4
    invoke-static {v1}, Lcom/truecaller/data/entity/Entity;->presentationCompare([Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method
