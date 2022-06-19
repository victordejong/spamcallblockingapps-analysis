.class Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/ViewArticleDeepLinkParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionPayload"
.end annotation


# instance fields
.field private final action:Ljava/lang/String;

.field private final payload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;->action:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;->payload:Ljava/util/Map;

    return-void
.end method

.method static invalid()Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method static invalid(Ljava/lang/String;)Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;
    .locals 2

    .line 2
    new-instance v0, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method static valid(Ljava/lang/String;Ljava/util/Map;)Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;

    invoke-direct {v0, p0, p1}, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;->payload:Ljava/util/Map;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;->action:Ljava/lang/String;

    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;->payload:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
