.class Lzendesk/support/ZendeskHelpCenterSessionCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/HelpCenterSessionCache;


# static fields
.field public static final DEFAULT_SEARCH:Lzendesk/support/LastSearch;


# instance fields
.field private lastSearch:Lzendesk/support/LastSearch;

.field private uniqueSearchResultClick:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/LastSearch;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/support/LastSearch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/support/ZendeskHelpCenterSessionCache;->DEFAULT_SEARCH:Lzendesk/support/LastSearch;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lzendesk/support/ZendeskHelpCenterSessionCache;->uniqueSearchResultClick:Z

    return-void
.end method


# virtual methods
.method public getLastSearch()Lzendesk/support/LastSearch;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterSessionCache;->lastSearch:Lzendesk/support/LastSearch;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lzendesk/support/ZendeskHelpCenterSessionCache;->DEFAULT_SEARCH:Lzendesk/support/LastSearch;

    :goto_0
    return-object v0
.end method

.method public isUniqueSearchResultClick()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/ZendeskHelpCenterSessionCache;->uniqueSearchResultClick:Z

    return v0
.end method

.method public setLastSearch(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/LastSearch;

    invoke-direct {v0, p1, p2}, Lzendesk/support/LastSearch;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lzendesk/support/ZendeskHelpCenterSessionCache;->lastSearch:Lzendesk/support/LastSearch;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lzendesk/support/ZendeskHelpCenterSessionCache;->uniqueSearchResultClick:Z

    return-void
.end method

.method public unsetUniqueSearchResultClick()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lzendesk/support/ZendeskHelpCenterSessionCache;->uniqueSearchResultClick:Z

    return-void
.end method
