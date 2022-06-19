.class public final Lg/g/a/a/i/l/f;
.super Lg/g/a/a/i/l/e;
.source "SourceFile"


# instance fields
.field private entityRegistry:Lg/g/a/a/i/l/h;
    .annotation runtime Lcom/google/gson/v/c;
        value = "entityRegistry"
    .end annotation
.end field

.field private hoursToday:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "hoursToday"
    .end annotation
.end field

.field private imageUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/v/c;
        value = "imageUrls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private openNow:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/v/c;
        value = "openNow"
    .end annotation
.end field

.field private similarListings:Ljava/util/List;
    .annotation runtime Lcom/google/gson/v/c;
        value = "similarListings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lg/g/a/a/i/l/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/g/a/a/i/l/e$b;)V
    .locals 1

    const-string v0, "directoryDTOBuilder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/i/l/e;-><init>(Lg/g/a/a/i/l/e$b;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/l/f;->hoursToday:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/g/a/a/i/l/f;->imageUrls:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/g/a/a/i/l/f;->similarListings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getEntityRegistry()Lg/g/a/a/i/l/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/f;->entityRegistry:Lg/g/a/a/i/l/h;

    return-object v0
.end method

.method public final getHoursToday()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/f;->hoursToday:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/f;->imageUrls:Ljava/util/List;

    return-object v0
.end method

.method public final getOpenNow()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/f;->openNow:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSimilarListings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/f;->similarListings:Ljava/util/List;

    return-object v0
.end method

.method public final setEntityRegistry(Lg/g/a/a/i/l/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/f;->entityRegistry:Lg/g/a/a/i/l/h;

    return-void
.end method

.method public final setHoursToday(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/f;->hoursToday:Ljava/lang/String;

    return-void
.end method

.method public final setImageUrls(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/f;->imageUrls:Ljava/util/List;

    return-void
.end method

.method public final setOpenNow(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/f;->openNow:Ljava/lang/Boolean;

    return-void
.end method

.method public final setSimilarListings(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lg/g/a/a/i/l/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/f;->similarListings:Ljava/util/List;

    return-void
.end method
