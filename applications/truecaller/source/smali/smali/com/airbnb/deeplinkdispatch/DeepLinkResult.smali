.class public final Lcom/airbnb/deeplinkdispatch/DeepLinkResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final error:Ljava/lang/String;

.field private final successful:Z

.field private final uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->successful:Z

    .line 3
    iput-object p2, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->uriString:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->error:Ljava/lang/String;

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

    if-eqz p1, :cond_7

    .line 1
    const-class v2, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;

    .line 3
    iget-boolean v2, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->successful:Z

    iget-boolean v3, p1, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->successful:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->uriString:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->uriString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->uriString:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 5
    :cond_4
    iget-object v2, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->error:Ljava/lang/String;

    iget-object p1, p1, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->error:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public error()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->error:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->successful:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->uriString:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->error:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->successful:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "DeepLinkResult{successful="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->successful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uriString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->uriString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->error:Ljava/lang/String;

    const/16 v2, 0x27

    const/16 v3, 0x7d

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uriString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;->uriString:Ljava/lang/String;

    return-object v0
.end method
