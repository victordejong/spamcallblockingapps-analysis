.class public Lzendesk/support/SupportModule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final articleVoteStorage:Lzendesk/support/ArticleVoteStorage;

.field private final blipsProvider:Lzendesk/support/SupportBlipsProvider;

.field private final helpCenterProvider:Lzendesk/support/HelpCenterProvider;

.field private final id:Ljava/util/UUID;

.field private final okHttpClient:Lm/c0;

.field private final requestProvider:Lzendesk/support/RequestProvider;

.field private final settingsProvider:Lzendesk/support/SupportSettingsProvider;

.field private final uploadProvider:Lzendesk/support/UploadProvider;

.field private final zendeskTracker:Lzendesk/support/ZendeskTracker;


# direct methods
.method public constructor <init>(Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;Lzendesk/support/HelpCenterProvider;Lzendesk/support/SupportSettingsProvider;Lzendesk/support/SupportBlipsProvider;Lm/c0;Lzendesk/support/ZendeskTracker;Lzendesk/support/ArticleVoteStorage;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/SupportModule;->id:Ljava/util/UUID;

    .line 3
    iput-object p1, p0, Lzendesk/support/SupportModule;->requestProvider:Lzendesk/support/RequestProvider;

    .line 4
    iput-object p2, p0, Lzendesk/support/SupportModule;->uploadProvider:Lzendesk/support/UploadProvider;

    .line 5
    iput-object p3, p0, Lzendesk/support/SupportModule;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    .line 6
    iput-object p4, p0, Lzendesk/support/SupportModule;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    .line 7
    iput-object p5, p0, Lzendesk/support/SupportModule;->blipsProvider:Lzendesk/support/SupportBlipsProvider;

    .line 8
    iput-object p6, p0, Lzendesk/support/SupportModule;->okHttpClient:Lm/c0;

    .line 9
    iput-object p7, p0, Lzendesk/support/SupportModule;->zendeskTracker:Lzendesk/support/ZendeskTracker;

    .line 10
    iput-object p8, p0, Lzendesk/support/SupportModule;->articleVoteStorage:Lzendesk/support/ArticleVoteStorage;

    return-void
.end method


# virtual methods
.method public getId()Ljava/util/UUID;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportModule;->id:Ljava/util/UUID;

    return-object v0
.end method

.method providesArticleVoteStorage()Lzendesk/support/ArticleVoteStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportModule;->articleVoteStorage:Lzendesk/support/ArticleVoteStorage;

    return-object v0
.end method

.method providesBlipsProvider()Lzendesk/support/SupportBlipsProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportModule;->blipsProvider:Lzendesk/support/SupportBlipsProvider;

    return-object v0
.end method

.method providesHelpCenterProvider()Lzendesk/support/HelpCenterProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportModule;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    return-object v0
.end method

.method providesOkHttpClient()Lm/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportModule;->okHttpClient:Lm/c0;

    return-object v0
.end method

.method providesRequestProvider()Lzendesk/support/RequestProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportModule;->requestProvider:Lzendesk/support/RequestProvider;

    return-object v0
.end method

.method providesSettingsProvider()Lzendesk/support/SupportSettingsProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportModule;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    return-object v0
.end method

.method providesUploadProvider()Lzendesk/support/UploadProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportModule;->uploadProvider:Lzendesk/support/UploadProvider;

    return-object v0
.end method
