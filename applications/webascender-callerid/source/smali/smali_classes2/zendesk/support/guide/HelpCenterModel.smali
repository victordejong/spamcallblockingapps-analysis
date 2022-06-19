.class Lzendesk/support/guide/HelpCenterModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/guide/HelpCenterMvp$Model;


# instance fields
.field private final provider:Lzendesk/support/HelpCenterProvider;

.field private final settingsProvider:Lzendesk/support/SupportSettingsProvider;


# direct methods
.method constructor <init>(Lzendesk/support/HelpCenterProvider;Lzendesk/support/SupportSettingsProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterModel;->provider:Lzendesk/support/HelpCenterProvider;

    .line 3
    iput-object p2, p0, Lzendesk/support/guide/HelpCenterModel;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    return-void
.end method


# virtual methods
.method public getSettings(Lcom/zendesk/service/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/SupportSdkSettings;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterModel;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    invoke-interface {v0, p1}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/f;)V

    return-void
.end method

.method public search(Ljava/util/List;Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;Lcom/zendesk/service/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/f<",
            "Ljava/util/List<",
            "Lzendesk/support/SearchArticle;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterModel;->provider:Lzendesk/support/HelpCenterProvider;

    new-instance v1, Lzendesk/support/HelpCenterSearch$Builder;

    invoke-direct {v1}, Lzendesk/support/HelpCenterSearch$Builder;-><init>()V

    .line 2
    invoke-virtual {v1, p3}, Lzendesk/support/HelpCenterSearch$Builder;->withQuery(Ljava/lang/String;)Lzendesk/support/HelpCenterSearch$Builder;

    .line 3
    invoke-virtual {v1, p1}, Lzendesk/support/HelpCenterSearch$Builder;->withCategoryIds(Ljava/util/List;)Lzendesk/support/HelpCenterSearch$Builder;

    .line 4
    invoke-virtual {v1, p2}, Lzendesk/support/HelpCenterSearch$Builder;->withSectionIds(Ljava/util/List;)Lzendesk/support/HelpCenterSearch$Builder;

    .line 5
    invoke-virtual {v1, p4}, Lzendesk/support/HelpCenterSearch$Builder;->withLabelNames([Ljava/lang/String;)Lzendesk/support/HelpCenterSearch$Builder;

    .line 6
    invoke-virtual {v1}, Lzendesk/support/HelpCenterSearch$Builder;->build()Lzendesk/support/HelpCenterSearch;

    move-result-object p1

    .line 7
    invoke-interface {v0, p1, p5}, Lzendesk/support/HelpCenterProvider;->searchArticles(Lzendesk/support/HelpCenterSearch;Lcom/zendesk/service/f;)V

    return-void
.end method
