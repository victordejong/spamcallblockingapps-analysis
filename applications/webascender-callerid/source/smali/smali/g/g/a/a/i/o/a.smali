.class public final Lg/g/a/a/i/o/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "accessToken"
    .end annotation
.end field

.field private expiresInSeconds:I
    .annotation runtime Lcom/google/gson/v/c;
        value = "expiresInSeconds"
    .end annotation
.end field

.field private grantInfos:Ljava/util/List;
    .annotation runtime Lcom/google/gson/v/c;
        value = "grantInfos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lg/g/a/a/i/o/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lg/g/a/a/i/o/a;->accessToken:Ljava/lang/String;

    .line 3
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/a;->grantInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/a;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiresInSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lg/g/a/a/i/o/a;->expiresInSeconds:I

    return v0
.end method

.method public final getGrantInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/g/a/a/i/o/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/a;->grantInfos:Ljava/util/List;

    return-object v0
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/a;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public final setExpiresInSeconds(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg/g/a/a/i/o/a;->expiresInSeconds:I

    return-void
.end method

.method public final setGrantInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lg/g/a/a/i/o/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/a;->grantInfos:Ljava/util/List;

    return-void
.end method
