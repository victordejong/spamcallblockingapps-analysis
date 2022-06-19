.class public Lg/g/a/a/i/l/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private avgRating:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/v/c;
        value = "averageRating"
    .end annotation
.end field

.field private ratingCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/v/c;
        value = "ratingCount"
    .end annotation
.end field

.field private ratingImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "ratingImageUrl"
    .end annotation
.end field

.field private ratingProvider:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "ratingProvider"
    .end annotation
.end field

.field private ratingsUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "ratingsUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/l/m;->ratingCount:Ljava/lang/Integer;

    .line 3
    iput-object p2, p0, Lg/g/a/a/i/l/m;->avgRating:Ljava/lang/Double;

    .line 4
    iput-object p3, p0, Lg/g/a/a/i/l/m;->ratingImageUrl:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lg/g/a/a/i/l/m;->ratingsUrl:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lg/g/a/a/i/l/m;->ratingProvider:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvgRating()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/m;->avgRating:Ljava/lang/Double;

    return-object v0
.end method

.method public getRatingCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/m;->ratingCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRatingImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/m;->ratingImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingProvider()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/m;->ratingProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingsUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/m;->ratingsUrl:Ljava/lang/String;

    return-object v0
.end method
