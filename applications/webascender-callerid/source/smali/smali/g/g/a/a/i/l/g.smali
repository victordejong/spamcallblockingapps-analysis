.class public Lg/g/a/a/i/l/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private directoryDTOs:Ljava/util/List;
    .annotation runtime Lcom/google/gson/v/c;
        value = "businesses"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/e;",
            ">;"
        }
    .end annotation
.end field

.field private totalResultCount:I
    .annotation runtime Lcom/google/gson/v/c;
        value = "totalResultCount"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lg/g/a/a/i/l/g;->totalResultCount:I

    .line 3
    iput-object p2, p0, Lg/g/a/a/i/l/g;->directoryDTOs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDirectorySearchResults()Ljava/util/List;
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
    iget-object v0, p0, Lg/g/a/a/i/l/g;->directoryDTOs:Ljava/util/List;

    return-object v0
.end method

.method public getTotalResultCount()I
    .locals 1

    .line 1
    iget v0, p0, Lg/g/a/a/i/l/g;->totalResultCount:I

    return v0
.end method
