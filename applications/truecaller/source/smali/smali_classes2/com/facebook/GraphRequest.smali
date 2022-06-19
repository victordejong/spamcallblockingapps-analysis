.class public final Lcom/facebook/GraphRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphRequest$c;,
        Lcom/facebook/GraphRequest$a;,
        Lcom/facebook/GraphRequest$e;,
        Lcom/facebook/GraphRequest$g;,
        Lcom/facebook/GraphRequest$b;,
        Lcom/facebook/GraphRequest$f;,
        Lcom/facebook/GraphRequest$d;,
        Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 `2\u00020\u0001:\t^_`abcdefBO\u0008\u0017\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\rB\u0019\u0008\u0010\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010F\u001a\u00020GH\u0002J\u0018\u0010H\u001a\u00020\u00052\u0006\u0010I\u001a\u00020\u00052\u0006\u0010J\u001a\u00020\u001eH\u0002J\u0006\u0010K\u001a\u00020LJ\u0006\u0010M\u001a\u00020NJ\n\u0010O\u001a\u0004\u0018\u00010\u0005H\u0002J\n\u0010P\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010Q\u001a\u00020\u00052\u0006\u0010I\u001a\u00020\u0005H\u0002J\u0008\u0010R\u001a\u00020\u001eH\u0002J\u0008\u0010S\u001a\u00020\u001eH\u0002J$\u0010T\u001a\u00020G2\u0006\u0010U\u001a\u00020V2\u0012\u0010W\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020Y0XH\u0002J\u000e\u0010Z\u001a\u00020G2\u0006\u0010[\u001a\u00020\u001eJ\u0008\u0010\\\u001a\u00020\u001eH\u0002J\u0008\u0010]\u001a\u00020\u0005H\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017\"\u0004\u0008\u001c\u0010\u0019R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R(\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u000e\u0010\'\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010(\u001a\u0004\u0018\u00010)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0017\"\u0004\u0008/\u0010\u0019R\u0016\u00100\u001a\u0004\u0018\u00010\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u0017R(\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u00102\u001a\u0004\u0018\u00010\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u0011\u0010;\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010\u0017R\u001c\u0010=\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u0011\u0010B\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010\u0017R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010\u0017\"\u0004\u0008E\u0010\u0019\u00a8\u0006g"
    }
    d2 = {
        "Lcom/facebook/GraphRequest;",
        "",
        "accessToken",
        "Lcom/facebook/AccessToken;",
        "graphPath",
        "",
        "parameters",
        "Landroid/os/Bundle;",
        "httpMethod",
        "Lcom/facebook/HttpMethod;",
        "callback",
        "Lcom/facebook/GraphRequest$Callback;",
        "version",
        "(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;)V",
        "overriddenURL",
        "Ljava/net/URL;",
        "(Lcom/facebook/AccessToken;Ljava/net/URL;)V",
        "getAccessToken",
        "()Lcom/facebook/AccessToken;",
        "setAccessToken",
        "(Lcom/facebook/AccessToken;)V",
        "batchEntryDependsOn",
        "getBatchEntryDependsOn",
        "()Ljava/lang/String;",
        "setBatchEntryDependsOn",
        "(Ljava/lang/String;)V",
        "batchEntryName",
        "getBatchEntryName",
        "setBatchEntryName",
        "batchEntryOmitResultOnSuccess",
        "",
        "getBatchEntryOmitResultOnSuccess",
        "()Z",
        "setBatchEntryOmitResultOnSuccess",
        "(Z)V",
        "getCallback",
        "()Lcom/facebook/GraphRequest$Callback;",
        "setCallback",
        "(Lcom/facebook/GraphRequest$Callback;)V",
        "forceApplicationRequest",
        "graphObject",
        "Lorg/json/JSONObject;",
        "getGraphObject",
        "()Lorg/json/JSONObject;",
        "setGraphObject",
        "(Lorg/json/JSONObject;)V",
        "getGraphPath",
        "setGraphPath",
        "graphPathWithVersion",
        "getGraphPathWithVersion",
        "value",
        "getHttpMethod",
        "()Lcom/facebook/HttpMethod;",
        "setHttpMethod",
        "(Lcom/facebook/HttpMethod;)V",
        "getParameters",
        "()Landroid/os/Bundle;",
        "setParameters",
        "(Landroid/os/Bundle;)V",
        "relativeUrlForBatchedRequest",
        "getRelativeUrlForBatchedRequest",
        "tag",
        "getTag",
        "()Ljava/lang/Object;",
        "setTag",
        "(Ljava/lang/Object;)V",
        "urlForSingleRequest",
        "getUrlForSingleRequest",
        "getVersion",
        "setVersion",
        "addCommonParameters",
        "",
        "appendParametersToBaseUrl",
        "baseUrl",
        "isBatch",
        "executeAndWait",
        "Lcom/facebook/GraphResponse;",
        "executeAsync",
        "Lcom/facebook/GraphRequestAsyncTask;",
        "getAccessTokenToUseForRequest",
        "getClientTokenForRequest",
        "getUrlWithGraphPath",
        "isApplicationRequest",
        "isValidGraphRequestForDomain",
        "serializeToBatch",
        "batch",
        "Lorg/json/JSONArray;",
        "attachments",
        "",
        "Lcom/facebook/GraphRequest$Attachment;",
        "setForceApplicationRequest",
        "forceOverride",
        "shouldForceClientTokenForRequest",
        "toString",
        "Attachment",
        "Callback",
        "Companion",
        "GraphJSONArrayCallback",
        "GraphJSONObjectCallback",
        "KeyValueSerializer",
        "OnProgressCallback",
        "ParcelableResourceWithMimeType",
        "Serializer",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final k:Lcom/facebook/GraphRequest$c;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/util/regex/Pattern;

.field public static volatile o:Ljava/lang/String;


# instance fields
.field public a:Lcom/facebook/AccessToken;

.field public b:Ljava/lang/String;

.field public c:Lorg/json/JSONObject;

.field public d:Z

.field public e:Landroid/os/Bundle;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/String;

.field public h:Lcom/facebook/GraphRequest$b;

.field public i:Le/j/m0;

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/facebook/GraphRequest$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/GraphRequest$c;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/facebook/GraphRequest;->k:Lcom/facebook/GraphRequest$c;

    .line 1
    const-class v0, Lcom/facebook/GraphRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphRequest::class.java.simpleName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/GraphRequest;->l:Ljava/lang/String;

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "(this as java.lang.String).toCharArray()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0xb

    .line 5
    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    if-lez v3, :cond_1

    const/4 v4, 0x0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 6
    array-length v5, v0

    invoke-virtual {v2, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    aget-char v5, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lt v4, v3, :cond_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buffer.toString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/GraphRequest;->m:Ljava/lang/String;

    const-string v0, "^/?v\\d+\\.\\d+/(.*)"

    .line 8
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->n:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Le/j/m0;Lcom/facebook/GraphRequest$b;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Le/j/m0;Lcom/facebook/GraphRequest$b;)V
    .locals 8

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Le/j/m0;Lcom/facebook/GraphRequest$b;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Le/j/m0;Lcom/facebook/GraphRequest$b;Ljava/lang/String;I)V
    .locals 1

    and-int/lit8 p6, p7, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p7, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p7, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p6, p7, 0x8

    if-eqz p6, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p7, 0x10

    if-eqz p6, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p6, p7, 0x20

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x1

    .line 2
    iput-boolean p6, p0, Lcom/facebook/GraphRequest;->d:Z

    .line 3
    iput-object p1, p0, Lcom/facebook/GraphRequest;->a:Lcom/facebook/AccessToken;

    .line 4
    iput-object p2, p0, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p5}, Lcom/facebook/GraphRequest;->k(Lcom/facebook/GraphRequest$b;)V

    if-nez p4, :cond_5

    .line 7
    sget-object p4, Le/j/m0;->a:Le/j/m0;

    :cond_5
    iput-object p4, p0, Lcom/facebook/GraphRequest;->i:Le/j/m0;

    if-eqz p3, :cond_6

    .line 8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    goto :goto_0

    .line 9
    :cond_6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    if-nez p1, :cond_7

    .line 11
    sget-object p1, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    :cond_7
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const-string v4, "|"

    .line 3
    invoke-static {v1, v4, v3, v2}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v4

    :goto_0
    const/4 v5, 0x1

    if-eqz v1, :cond_1

    const-string v6, "IG"

    .line 4
    invoke-static {v1, v6, v3, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v4, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    move v3, v5

    goto :goto_3

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->j()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    const-string v1, "access_token"

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_5
    :goto_4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 11
    sget-object v1, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v1

    :cond_6
    const-string v1, "sdk"

    const-string v2, "android"

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "format"

    const-string v2, "json"

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object v1, Le/j/f0;->a:Le/j/f0;

    sget-object v1, Le/j/n0;->h:Le/j/n0;

    invoke-static {v1}, Le/j/f0;->k(Le/j/n0;)Z

    move-result v1

    const-string v2, "debug"

    if-eqz v1, :cond_7

    const-string v1, "info"

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 16
    :cond_7
    sget-object v1, Le/j/n0;->g:Le/j/n0;

    invoke-static {v1}, Le/j/f0;->k(Le/j/n0;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "warning"

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public final b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/facebook/GraphRequest;->i:Le/j/m0;

    sget-object v0, Le/j/m0;->b:Le/j/m0;

    if-ne p2, v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 4
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    .line 6
    :cond_1
    instance-of v2, v1, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    instance-of v5, v1, Ljava/lang/Boolean;

    if-nez v5, :cond_3

    instance-of v5, v1, Ljava/lang/Number;

    if-nez v5, :cond_3

    instance-of v5, v1, Ljava/util/Date;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v4

    :goto_2
    if-eqz v5, :cond_8

    if-eqz v2, :cond_4

    .line 7
    check-cast v1, Ljava/lang/String;

    goto :goto_4

    .line 8
    :cond_4
    instance-of v2, v1, Ljava/lang/Boolean;

    if-nez v2, :cond_7

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    instance-of v2, v1, Ljava/util/Date;

    if-eqz v2, :cond_6

    .line 10
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 11
    check-cast v1, Ljava/util/Date;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "iso8601DateFormat.format(value)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported parameter type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_7
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 15
    :cond_8
    iget-object v0, p0, Lcom/facebook/GraphRequest;->i:Le/j/m0;

    sget-object v2, Le/j/m0;->a:Le/j/m0;

    if-ne v0, v2, :cond_9

    goto :goto_0

    .line 16
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v4, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 19
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Unsupported parameter type for GET request: %s"

    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "java.lang.String.format(locale, format, *args)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "uriBuilder.toString()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c()Le/j/l0;
    .locals 5

    .line 1
    sget-object v0, Lcom/facebook/GraphRequest;->k:Lcom/facebook/GraphRequest$c;

    const-string v1, "request"

    .line 2
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v4, "requests"

    .line 3
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v2}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v4, Le/j/k0;

    invoke-direct {v4, v2}, Le/j/k0;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4}, Lcom/facebook/GraphRequest$c;->c(Le/j/k0;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/j/l0;

    return-object v0

    .line 9
    :cond_0
    new-instance v0, Le/j/c0;

    const-string v1, "invalid state: expected a single response"

    invoke-direct {v0, v1}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Le/j/j0;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v2, "requests"

    .line 1
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v3, Le/j/k0;

    invoke-direct {v3, v0}, Le/j/k0;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/facebook/internal/r0;->a:Lcom/facebook/internal/r0;

    invoke-static {v3, v2}, Lcom/facebook/internal/r0;->c(Ljava/util/Collection;Ljava/lang/String;)V

    .line 7
    new-instance v0, Le/j/j0;

    invoke-direct {v0, v3}, Le/j/j0;-><init>(Le/j/k0;)V

    .line 8
    sget-object v2, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->e()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/GraphRequest;->a:Lcom/facebook/AccessToken;

    const-string v1, "access_token"

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    iget-object v0, v0, Lcom/facebook/AccessToken;->e:Ljava/lang/String;

    .line 4
    sget-object v1, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    invoke-virtual {v1, v0}, Lcom/facebook/internal/k0$a;->d(Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Le/j/f0;->d()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    const/16 v2, 0x7c

    .line 4
    invoke-static {v0, v2, v1}, Le/d/c/a/a;->h2(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 5
    :cond_2
    sget-boolean v0, Le/j/f0;->i:Z

    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/facebook/GraphRequest;->i:Le/j/m0;

    sget-object v2, Le/j/m0;->b:Le/j/m0;

    const-string v3, "java.lang.String.format(format, *args)"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const-string v2, "/videos"

    .line 3
    invoke-static {v0, v2, v5, v1}, Ls1/f0/r;->m(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/facebook/internal/o0;->a:Lcom/facebook/internal/o0;

    new-array v0, v4, [Ljava/lang/Object;

    .line 5
    sget-object v1, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->g()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "https://graph-video.%s"

    invoke-static {v0, v4, v1, v3}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/facebook/internal/o0;->a:Lcom/facebook/internal/o0;

    sget-object v0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "subdomain"

    .line 7
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    const-string v0, "https://graph.%s"

    .line 8
    invoke-static {v1, v4, v0, v3}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequest;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->a()V

    .line 11
    invoke-virtual {p0, v0, v5}, Lcom/facebook/GraphRequest;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->j()Z

    move-result v0

    const-string v1, "java.lang.String.format(format, *args)"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/facebook/internal/o0;->a:Lcom/facebook/internal/o0;

    new-array p1, v2, [Ljava/lang/Object;

    .line 3
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    .line 4
    sget-object v0, Le/j/f0;->s:Ljava/lang/String;

    aput-object v0, p1, v3

    const-string v0, "https://graph.%s"

    .line 5
    invoke-static {p1, v2, v0, v1}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 6
    sget-object p1, Lcom/facebook/GraphRequest;->n:Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    const-string v5, "%s/%s"

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 9
    iget-object v6, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    aput-object v6, p1, v3

    iget-object v3, p0, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    aput-object v3, p1, v2

    invoke-static {p1, v0, v5, v1}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    aput-object p1, v4, v2

    .line 10
    invoke-static {v4, v0, v5, v1}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "^/?"

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/?.*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-boolean v2, p0, Lcom/facebook/GraphRequest;->j:Z

    if-nez v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    const-string v2, "^/?app/?.*"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final j()Z
    .locals 2

    .line 1
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "instagram.com"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->i()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final k(Lcom/facebook/GraphRequest$b;)V
    .locals 1

    .line 1
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    sget-object v0, Le/j/n0;->h:Le/j/n0;

    invoke-static {v0}, Le/j/f0;->k(Le/j/n0;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Le/j/n0;->g:Le/j/n0;

    invoke-static {v0}, Le/j/f0;->k(Le/j/n0;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/facebook/GraphRequest;->h:Lcom/facebook/GraphRequest$b;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Le/j/q;

    invoke-direct {v0, p1}, Le/j/q;-><init>(Lcom/facebook/GraphRequest$b;)V

    .line 5
    iput-object v0, p0, Lcom/facebook/GraphRequest;->h:Lcom/facebook/GraphRequest$b;

    :goto_1
    return-void
.end method

.method public final l(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "{Request: "

    const-string v1, " accessToken: "

    .line 1
    invoke-static {v0, v1}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/facebook/GraphRequest;->a:Lcom/facebook/AccessToken;

    if-nez v1, :cond_0

    const-string v1, "null"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", graphPath: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", graphObject: "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/facebook/GraphRequest;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", httpMethod: "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lcom/facebook/GraphRequest;->i:Le/j/m0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parameters: "

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder()\n        .append(\"{Request: \")\n        .append(\" accessToken: \")\n        .append(if (accessToken == null) \"null\" else accessToken)\n        .append(\", graphPath: \")\n        .append(graphPath)\n        .append(\", graphObject: \")\n        .append(graphObject)\n        .append(\", httpMethod: \")\n        .append(httpMethod)\n        .append(\", parameters: \")\n        .append(parameters)\n        .append(\"}\")\n        .toString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
