.class Lzendesk/support/ZendeskDeepLinkParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/ZendeskDeepLinkParser$Module;
    }
.end annotation


# instance fields
.field private final modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/ZendeskDeepLinkParser$Module;",
            ">;"
        }
    .end annotation
.end field

.field private final zendeskHost:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzendesk/support/ZendeskDeepLinkParser$Module;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lm/y;->m(Ljava/lang/String;)Lm/y;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lm/y;->i()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lzendesk/support/ZendeskDeepLinkParser;->zendeskHost:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Lg/k/d/a;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/ZendeskDeepLinkParser;->modules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    iget-object v1, p0, Lzendesk/support/ZendeskDeepLinkParser;->zendeskHost:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lg/k/d/f;->c([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;->invalid()Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lm/y;->m(Ljava/lang/String;)Lm/y;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Lm/y;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/ZendeskDeepLinkParser;->zendeskHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lzendesk/support/ZendeskDeepLinkParser;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/ZendeskDeepLinkParser$Module;

    .line 6
    invoke-interface {v1, p1}, Lzendesk/support/ZendeskDeepLinkParser$Module;->parse(Lm/y;)Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 8
    :cond_3
    invoke-static {}, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;->invalid()Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    :goto_0
    invoke-static {}, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;->invalid()Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;

    move-result-object p1

    return-object p1
.end method
