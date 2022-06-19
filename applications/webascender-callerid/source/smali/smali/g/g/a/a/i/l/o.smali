.class public final Lg/g/a/a/i/l/o;
.super Lg/g/a/a/i/l/p;
.source "SourceFile"


# instance fields
.field private businessId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "metadata"
    .end annotation
.end field

.field private directoryDTO:Lg/g/a/a/i/l/e;
    .annotation runtime Lcom/google/gson/v/c;
        value = "business"
    .end annotation
.end field

.field private isAd:Z
    .annotation runtime Lcom/google/gson/v/c;
        value = "isAd"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/g/a/a/i/l/p;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lg/g/a/a/i/l/o;->businessId:Ljava/lang/String;

    .line 3
    new-instance v0, Lg/g/a/a/i/l/e;

    invoke-direct {v0}, Lg/g/a/a/i/l/e;-><init>()V

    iput-object v0, p0, Lg/g/a/a/i/l/o;->directoryDTO:Lg/g/a/a/i/l/e;

    return-void
.end method


# virtual methods
.method public final getBusinessId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/o;->businessId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDirectoryDTO()Lg/g/a/a/i/l/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/o;->directoryDTO:Lg/g/a/a/i/l/e;

    return-object v0
.end method

.method public final isAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/g/a/a/i/l/o;->isAd:Z

    return v0
.end method

.method public final setAd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/g/a/a/i/l/o;->isAd:Z

    return-void
.end method

.method public final setBusinessId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/o;->businessId:Ljava/lang/String;

    return-void
.end method

.method public final setDirectoryDTO(Lg/g/a/a/i/l/e;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/o;->directoryDTO:Lg/g/a/a/i/l/e;

    return-void
.end method
