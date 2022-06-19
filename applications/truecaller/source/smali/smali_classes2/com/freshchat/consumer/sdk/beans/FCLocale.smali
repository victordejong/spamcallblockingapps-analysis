.class public Lcom/freshchat/consumer/sdk/beans/FCLocale;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private country:Ljava/lang/String;

.field private direction:Ljava/lang/String;

.field private displayCode:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private localeId:J

.field private region:Ljava/lang/String;

.field private script:Ljava/lang/String;

.field private variant:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 2

    :try_start_0
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    const-class v1, Lcom/freshchat/consumer/sdk/beans/FCLocale;

    .line 1
    invoke-virtual {v0, p0, v1}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-static {v1}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;
    :try_end_0
    .catch Le/m/e/z; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->localeId:J

    return-wide v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->script:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->variant:Ljava/lang/String;

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->country:Ljava/lang/String;

    return-object p0
.end method

.method public setDirection(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->direction:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayCode(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayCode:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public setExtension(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->extension:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->language:Ljava/lang/String;

    return-object p0
.end method

.method public setLocaleId(J)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->localeId:J

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->region:Ljava/lang/String;

    return-object p0
.end method

.method public setScript(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->script:Ljava/lang/String;

    return-object p0
.end method

.method public setVariant(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->variant:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "FCLocale{"

    const-string v1, "localeId=\'"

    invoke-static {v0, v1}, Le/d/c/a/a;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->localeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", language=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->language:Ljava/lang/String;

    const-string v3, ", script=\'"

    invoke-static {v0, v2, v1, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->script:Ljava/lang/String;

    const-string v3, ", region=\'"

    invoke-static {v0, v2, v1, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->region:Ljava/lang/String;

    const-string v3, ", country=\'"

    invoke-static {v0, v2, v1, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->country:Ljava/lang/String;

    const-string v3, ", variant=\'"

    invoke-static {v0, v2, v1, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->variant:Ljava/lang/String;

    const-string v3, ", extension=\'"

    invoke-static {v0, v2, v1, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->extension:Ljava/lang/String;

    const-string v3, ", displayCode=\'"

    invoke-static {v0, v2, v1, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayCode:Ljava/lang/String;

    const-string v3, ", displayName=\'"

    invoke-static {v0, v2, v1, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayName:Ljava/lang/String;

    const-string v3, ", direction=\'"

    invoke-static {v0, v2, v1, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->direction:Ljava/lang/String;

    const/16 v3, 0x7d

    invoke-static {v0, v2, v1, v3}, Le/d/c/a/a;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
