.class Lzendesk/support/request/DocumentRenderer$HtmlParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/DocumentRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HtmlParser"
.end annotation


# static fields
.field private static final UNCLOSED_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final xpp:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "br"

    const-string v2, "hr"

    const-string v3, "img"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lzendesk/support/request/DocumentRenderer$HtmlParser;->UNCLOSED_TAGS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 3
    invoke-virtual {v3, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setValidating(Z)V

    .line 4
    sget-object v4, Landroid/util/Xml;->FEATURE_RELAXED:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-object v0, p0, Lzendesk/support/request/DocumentRenderer$HtmlParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "RequestActivity"

    const-string v5, "Unable to parse rich text. Error: \'%s\' | \'%s\'"

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 8
    invoke-static {v4, v5, v0}, Lg/k/b/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    iput-object v2, p0, Lzendesk/support/request/DocumentRenderer$HtmlParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    :goto_0
    return-void

    :goto_1
    iput-object v2, p0, Lzendesk/support/request/DocumentRenderer$HtmlParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    throw v0
.end method

.method private endTag(Lzendesk/support/request/DocumentRenderer$Node;)Lzendesk/support/request/DocumentRenderer$Node;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lzendesk/support/request/DocumentRenderer$Node;->getParent()Lzendesk/support/request/DocumentRenderer$Node;

    move-result-object p1

    return-object p1
.end method

.method private getAttributes()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer$HtmlParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    if-lez v0, :cond_0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Lzendesk/support/request/DocumentRenderer$HtmlParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lzendesk/support/request/DocumentRenderer$HtmlParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private startDocument()Lzendesk/support/request/DocumentRenderer$Node;
    .locals 3

    .line 1
    sget-object v0, Lzendesk/support/request/DocumentRenderer$Node$Type;->Document:Lzendesk/support/request/DocumentRenderer$Node$Type;

    invoke-virtual {v0}, Lzendesk/support/request/DocumentRenderer$Node$Type;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lzendesk/support/request/DocumentRenderer$HtmlParser;->getAttributes()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lzendesk/support/request/DocumentRenderer$Node;->withTag(Ljava/lang/String;Lzendesk/support/request/DocumentRenderer$Node;Ljava/util/Map;)Lzendesk/support/request/DocumentRenderer$Node;

    move-result-object v0

    return-object v0
.end method

.method private startTag(Lzendesk/support/request/DocumentRenderer$Node;)Lzendesk/support/request/DocumentRenderer$Node;
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer$HtmlParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lzendesk/support/request/DocumentRenderer$HtmlParser;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lzendesk/support/request/DocumentRenderer$Node;->withTag(Ljava/lang/String;Lzendesk/support/request/DocumentRenderer$Node;Ljava/util/Map;)Lzendesk/support/request/DocumentRenderer$Node;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v1}, Lzendesk/support/request/DocumentRenderer$Node;->addChild(Lzendesk/support/request/DocumentRenderer$Node;)V

    .line 4
    sget-object v2, Lzendesk/support/request/DocumentRenderer$HtmlParser;->UNCLOSED_TAGS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method private text(Lzendesk/support/request/DocumentRenderer$Node;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer$HtmlParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lzendesk/support/request/DocumentRenderer$HtmlParser;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lzendesk/support/request/DocumentRenderer$Node;->withContent(Lzendesk/support/request/DocumentRenderer$Node;Ljava/lang/String;Ljava/util/Map;)Lzendesk/support/request/DocumentRenderer$Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzendesk/support/request/DocumentRenderer$Node;->addChild(Lzendesk/support/request/DocumentRenderer$Node;)V

    :cond_0
    return-void
.end method


# virtual methods
.method parse(Ljava/lang/String;Ljava/lang/String;)Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, p0, Lzendesk/support/request/DocumentRenderer$HtmlParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 2
    iget-object v3, p0, Lzendesk/support/request/DocumentRenderer$HtmlParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    move-object v4, v2

    move-object v5, v4

    :goto_0
    if-eq v3, v0, :cond_4

    if-nez v3, :cond_0

    .line 3
    invoke-direct {p0}, Lzendesk/support/request/DocumentRenderer$HtmlParser;->startDocument()Lzendesk/support/request/DocumentRenderer$Node;

    move-result-object v4

    move-object v5, v4

    goto :goto_1

    :cond_0
    if-ne v3, v1, :cond_1

    .line 4
    invoke-direct {p0, v5}, Lzendesk/support/request/DocumentRenderer$HtmlParser;->startTag(Lzendesk/support/request/DocumentRenderer$Node;)Lzendesk/support/request/DocumentRenderer$Node;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    .line 5
    invoke-direct {p0, v5}, Lzendesk/support/request/DocumentRenderer$HtmlParser;->endTag(Lzendesk/support/request/DocumentRenderer$Node;)Lzendesk/support/request/DocumentRenderer$Node;

    move-result-object v5

    goto :goto_1

    :cond_2
    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    .line 6
    invoke-direct {p0, v5}, Lzendesk/support/request/DocumentRenderer$HtmlParser;->text(Lzendesk/support/request/DocumentRenderer$Node;)V

    .line 7
    :cond_3
    :goto_1
    iget-object v3, p0, Lzendesk/support/request/DocumentRenderer$HtmlParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    :cond_4
    if-ne v4, v5, :cond_5

    .line 8
    new-instance v3, Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;

    invoke-direct {v3, v4, p2}, Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;-><init>(Lzendesk/support/request/DocumentRenderer$Node;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    aput-object p1, v1, v0

    const-string p1, "RequestActivity"

    const-string v0, "Unable to parse rich text. Error: \'%s\' | \'%s\'"

    .line 10
    invoke-static {p1, v0, v1}, Lg/k/b/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :cond_5
    new-instance p1, Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;

    invoke-direct {p1, v2, p2}, Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;-><init>(Lzendesk/support/request/DocumentRenderer$Node;Ljava/lang/String;)V

    return-object p1
.end method
