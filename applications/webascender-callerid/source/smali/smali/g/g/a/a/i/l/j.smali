.class public Lg/g/a/a/i/l/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dealUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "url"
    .end annotation
.end field

.field private discountPercent:D
    .annotation runtime Lcom/google/gson/v/c;
        value = "discountPercentage"
    .end annotation
.end field

.field private discountedPriceDTO:Lg/g/a/a/i/l/l;
    .annotation runtime Lcom/google/gson/v/c;
        value = "discountedPrice"
    .end annotation
.end field

.field private isSoldout:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/v/c;
        value = "isSoldOut"
    .end annotation
.end field

.field private originalPriceDTO:Lg/g/a/a/i/l/l;
    .annotation runtime Lcom/google/gson/v/c;
        value = "originalPrice"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Lg/g/a/a/i/l/l;Lg/g/a/a/i/l/l;Ljava/lang/String;D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/l/j;->dealUrl:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lg/g/a/a/i/l/j;->isSoldout:Ljava/lang/Boolean;

    .line 4
    iput-object p3, p0, Lg/g/a/a/i/l/j;->discountedPriceDTO:Lg/g/a/a/i/l/l;

    .line 5
    iput-object p4, p0, Lg/g/a/a/i/l/j;->originalPriceDTO:Lg/g/a/a/i/l/l;

    .line 6
    iput-object p5, p0, Lg/g/a/a/i/l/j;->title:Ljava/lang/String;

    .line 7
    iput-wide p6, p0, Lg/g/a/a/i/l/j;->discountPercent:D

    return-void
.end method


# virtual methods
.method public getDealUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/j;->dealUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountPercent()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/g/a/a/i/l/j;->discountPercent:D

    return-wide v0
.end method

.method public getDiscountedPriceDTO()Lg/g/a/a/i/l/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/j;->discountedPriceDTO:Lg/g/a/a/i/l/l;

    return-object v0
.end method

.method public getOriginalPriceDTO()Lg/g/a/a/i/l/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/j;->originalPriceDTO:Lg/g/a/a/i/l/l;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/j;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSoldOut()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/j;->isSoldout:Ljava/lang/Boolean;

    return-object v0
.end method
