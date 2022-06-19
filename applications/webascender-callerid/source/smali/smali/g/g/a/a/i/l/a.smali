.class public Lg/g/a/a/i/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private city:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "city"
    .end annotation
.end field

.field private country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "country"
    .end annotation
.end field

.field private displayAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "displayAddress"
    .end annotation
.end field

.field private postalCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "postalCode"
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "state"
    .end annotation
.end field

.field private streetAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "streetAddress"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lg/g/a/a/i/l/a;->streetAddress:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lg/g/a/a/i/l/a;->city:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lg/g/a/a/i/l/a;->state:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lg/g/a/a/i/l/a;->postalCode:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lg/g/a/a/i/l/a;->country:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/l/a;->streetAddress:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lg/g/a/a/i/l/a;->city:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lg/g/a/a/i/l/a;->state:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lg/g/a/a/i/l/a;->postalCode:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lg/g/a/a/i/l/a;->country:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lg/g/a/a/i/l/a;->displayAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/a;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/a;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/a;->displayAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/a;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/a;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/a;->streetAddress:Ljava/lang/String;

    return-object v0
.end method
