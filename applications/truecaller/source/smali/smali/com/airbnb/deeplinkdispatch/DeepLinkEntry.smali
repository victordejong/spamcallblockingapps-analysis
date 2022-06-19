.class public final Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;
    }
.end annotation


# static fields
.field private static final PARAM:Ljava/lang/String; = "([a-zA-Z][a-zA-Z0-9_-]*)"

.field private static final PARAM_PATTERN:Ljava/util/regex/Pattern;

.field private static final PARAM_REGEX:Ljava/lang/String; = "%7B(([a-zA-Z][a-zA-Z0-9_-]*))%7D"

.field private static final PARAM_VALUE:Ljava/lang/String; = "([a-zA-Z0-9_#\'!+%~,\\-\\.\\@\\$\\:]+)"


# instance fields
.field private final activityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/String;

.field private final parameters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final regex:Ljava/util/regex/Pattern;

.field private final type:Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;

.field private final uriTemplate:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "%7B(([a-zA-Z][a-zA-Z0-9_-]*))%7D"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->PARAM_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/airbnb/deeplinkdispatch/DeepLinkUri;->parse(Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkUri;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->schemeHostAndPath(Lcom/airbnb/deeplinkdispatch/DeepLinkUri;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iput-object p1, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->uriTemplate:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->type:Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;

    .line 6
    iput-object p3, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->activityClass:Ljava/lang/Class;

    .line 7
    iput-object p4, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->method:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->parseParameters(Lcom/airbnb/deeplinkdispatch/DeepLinkUri;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->parameters:Ljava/util/Set;

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "%7B(([a-zA-Z][a-zA-Z0-9_-]*))%7D"

    const-string p3, "([a-zA-Z0-9_#\'!+%~,\\-\\.\\@\\$\\:]+)"

    invoke-virtual {v1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "$"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->regex:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static parseParameters(Lcom/airbnb/deeplinkdispatch/DeepLinkUri;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/deeplinkdispatch/DeepLinkUri;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->PARAM_PATTERN:Ljava/util/regex/Pattern;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/airbnb/deeplinkdispatch/DeepLinkUri;->encodedHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/deeplinkdispatch/DeepLinkUri;->encodedPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static parsePath(Lcom/airbnb/deeplinkdispatch/DeepLinkUri;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/deeplinkdispatch/DeepLinkUri;->encodedPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private schemeHostAndPath(Lcom/airbnb/deeplinkdispatch/DeepLinkUri;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/airbnb/deeplinkdispatch/DeepLinkUri;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/airbnb/deeplinkdispatch/DeepLinkUri;->encodedHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->parsePath(Lcom/airbnb/deeplinkdispatch/DeepLinkUri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->activityClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->parameters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->parameters:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/airbnb/deeplinkdispatch/DeepLinkUri;->parse(Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkUri;

    move-result-object p1

    .line 4
    iget-object v2, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->regex:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->schemeHostAndPath(Lcom/airbnb/deeplinkdispatch/DeepLinkUri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    .line 8
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 10
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getType()Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->type:Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;

    return-object v0
.end method

.method public getUriTemplate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->uriTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/airbnb/deeplinkdispatch/DeepLinkUri;->parse(Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkUri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->regex:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->schemeHostAndPath(Lcom/airbnb/deeplinkdispatch/DeepLinkUri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
