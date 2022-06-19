.class public Lg/g/a/a/i/o/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hashCountries:Ljava/util/List;
    .annotation runtime Lcom/google/gson/v/c;
        value = "hashCountries"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHashCountries()Ljava/util/List;
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
    iget-object v0, p0, Lg/g/a/a/i/o/k;->hashCountries:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/g/a/a/i/o/k;->timestamp:J

    return-wide v0
.end method

.method public setHashCountries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/k;->hashCountries:Ljava/util/List;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lg/g/a/a/i/o/k;->timestamp:J

    return-void
.end method
