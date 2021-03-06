.class public abstract Lcom/appnext/core/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public backButtonCanClose:Ljava/lang/Boolean;

.field private categories:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field private mSpecificCategories:Ljava/lang/String;

.field public maxVideoLength:I

.field public minVideoLength:I

.field public mute:Ljava/lang/Boolean;

.field public orientation:Ljava/lang/String;

.field public postback:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/appnext/core/Configuration;->categories:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/appnext/core/Configuration;->mSpecificCategories:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/appnext/core/Configuration;->postback:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/appnext/core/Configuration;->maxVideoLength:I

    .line 6
    iput v1, p0, Lcom/appnext/core/Configuration;->minVideoLength:I

    const-string v1, "not_set"

    .line 7
    iput-object v1, p0, Lcom/appnext/core/Configuration;->orientation:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/appnext/core/Configuration;->language:Ljava/lang/String;

    return-void
.end method

.method private static x(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "UTF-8"

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v2
.end method


# virtual methods
.method public abstract g()Lcom/appnext/core/SettingsManager;
.end method

.method public getCategories()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Configuration;->categories:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Configuration;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxVideoLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/core/Configuration;->maxVideoLength:I

    return v0
.end method

.method public getMinVideoLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/core/Configuration;->minVideoLength:I

    return v0
.end method

.method public getMute()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Configuration;->mute:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appnext/core/Configuration;->g()Lcom/appnext/core/SettingsManager;

    move-result-object v0

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Configuration;->orientation:Ljava/lang/String;

    return-object v0
.end method

.method public getPostback()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Configuration;->postback:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificCategories()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Configuration;->mSpecificCategories:Ljava/lang/String;

    return-object v0
.end method

.method public isBackButtonCanClose()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Configuration;->backButtonCanClose:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appnext/core/Configuration;->g()Lcom/appnext/core/SettingsManager;

    move-result-object v0

    const-string v1, "can_close"

    invoke-virtual {v0, v1}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setCategories(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/appnext/core/Configuration;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/Configuration;->categories:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/Configuration;->language:Ljava/lang/String;

    return-void
.end method

.method public setMaxVideoLength(I)V
    .locals 1

    if-ltz p1, :cond_2

    if-lez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/appnext/core/Configuration;->getMinVideoLength()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/appnext/core/Configuration;->getMinVideoLength()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max Length cannot be lower than min length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput p1, p0, Lcom/appnext/core/Configuration;->maxVideoLength:I

    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max Length must be higher than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinVideoLength(I)V
    .locals 1

    if-ltz p1, :cond_2

    if-lez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/appnext/core/Configuration;->getMaxVideoLength()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/appnext/core/Configuration;->getMaxVideoLength()I

    move-result v0

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Min Length cannot be higher than max length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput p1, p0, Lcom/appnext/core/Configuration;->minVideoLength:I

    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Min Length must be higher than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMute(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/Configuration;->mute:Ljava/lang/Boolean;

    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    const-string v0, "automatic"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "not_set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong orientation type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/appnext/core/Configuration;->orientation:Ljava/lang/String;

    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "orientation type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPostback(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/appnext/core/Configuration;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/Configuration;->postback:Ljava/lang/String;

    return-void
.end method

.method public setSpecificCategories(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/appnext/core/Configuration;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/Configuration;->mSpecificCategories:Ljava/lang/String;

    return-void
.end method
