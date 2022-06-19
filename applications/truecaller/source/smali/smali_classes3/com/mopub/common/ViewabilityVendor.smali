.class public Lcom/mopub/common/ViewabilityVendor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/ViewabilityVendor$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/net/URL;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mopub/common/ViewabilityVendor$Builder;Lcom/mopub/common/ViewabilityVendor$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lcom/mopub/common/ViewabilityVendor$Builder;->a:Ljava/lang/String;

    const-string v0, "omid"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p1, Lcom/mopub/common/ViewabilityVendor$Builder;->c:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p1, Lcom/mopub/common/ViewabilityVendor$Builder;->b:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    .line 8
    new-instance p2, Ljava/net/URL;

    .line 9
    iget-object v0, p1, Lcom/mopub/common/ViewabilityVendor$Builder;->c:Ljava/lang/String;

    .line 10
    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    .line 11
    iget-object p2, p1, Lcom/mopub/common/ViewabilityVendor$Builder;->d:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    .line 13
    iget-object p1, p1, Lcom/mopub/common/ViewabilityVendor$Builder;->e:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/mopub/common/ViewabilityVendor;->d:Ljava/lang/String;

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "ViewabilityVendor cannot be created."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createFromJsonArray(Lorg/json/JSONArray;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/mopub/common/ViewabilityVendor$Builder;

    const-string v4, "javascriptResourceUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mopub/common/ViewabilityVendor$Builder;-><init>(Ljava/lang/String;)V

    const-string v4, ""

    const-string v5, "apiFramework"

    .line 5
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mopub/common/ViewabilityVendor$Builder;->withApiFramework(Ljava/lang/String;)Lcom/mopub/common/ViewabilityVendor$Builder;

    move-result-object v5

    const-string v6, "vendorKey"

    .line 6
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mopub/common/ViewabilityVendor$Builder;->withVendorKey(Ljava/lang/String;)Lcom/mopub/common/ViewabilityVendor$Builder;

    move-result-object v5

    const-string v6, "verificationParameters"

    .line 7
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/mopub/common/ViewabilityVendor$Builder;->withVerificationParameters(Ljava/lang/String;)Lcom/mopub/common/ViewabilityVendor$Builder;

    .line 8
    invoke-virtual {v3}, Lcom/mopub/common/ViewabilityVendor$Builder;->build()Lcom/mopub/common/ViewabilityVendor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/mopub/common/ViewabilityVendor;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    check-cast p1, Lcom/mopub/common/ViewabilityVendor;

    .line 3
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    iget-object v2, p1, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/mopub/common/ViewabilityVendor;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getJavascriptResourceUrl()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    return-object v0
.end method

.method public getVendorKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationNotExecuted()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationParameters()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 3
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 4
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2, v1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
