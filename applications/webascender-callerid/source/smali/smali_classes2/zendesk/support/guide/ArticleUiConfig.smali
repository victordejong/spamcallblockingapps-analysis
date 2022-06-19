.class public Lzendesk/support/guide/ArticleUiConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/commonui/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/guide/ArticleUiConfig$Builder;
    }
.end annotation


# instance fields
.field private final article:Lzendesk/support/guide/ArticleViewModel;

.field private final articleId:J

.field private final configurationState:I

.field private final contactUsVisible:Z

.field private final deflectionEnabled:Z

.field private final uiConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/commonui/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lzendesk/support/guide/ArticleUiConfig$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lzendesk/support/guide/ArticleUiConfig$Builder;->access$000(Lzendesk/support/guide/ArticleUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lzendesk/support/guide/ArticleUiConfig;->configurationState:I

    .line 4
    invoke-static {p1}, Lzendesk/support/guide/ArticleUiConfig$Builder;->access$100(Lzendesk/support/guide/ArticleUiConfig$Builder;)Lzendesk/support/guide/ArticleViewModel;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/guide/ArticleUiConfig;->article:Lzendesk/support/guide/ArticleViewModel;

    .line 5
    invoke-static {p1}, Lzendesk/support/guide/ArticleUiConfig$Builder;->access$200(Lzendesk/support/guide/ArticleUiConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lzendesk/support/guide/ArticleUiConfig;->articleId:J

    .line 6
    invoke-static {p1}, Lzendesk/support/guide/ArticleUiConfig$Builder;->access$300(Lzendesk/support/guide/ArticleUiConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lzendesk/support/guide/ArticleUiConfig;->contactUsVisible:Z

    .line 7
    invoke-static {p1}, Lzendesk/support/guide/ArticleUiConfig$Builder;->access$400(Lzendesk/support/guide/ArticleUiConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lzendesk/support/guide/ArticleUiConfig;->deflectionEnabled:Z

    .line 8
    invoke-static {p1}, Lzendesk/support/guide/ArticleUiConfig$Builder;->access$500(Lzendesk/support/guide/ArticleUiConfig$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/guide/ArticleUiConfig;->uiConfigs:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/guide/ArticleUiConfig$Builder;Lzendesk/support/guide/ArticleUiConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/support/guide/ArticleUiConfig;-><init>(Lzendesk/support/guide/ArticleUiConfig$Builder;)V

    return-void
.end method


# virtual methods
.method getArticle()Lzendesk/support/guide/ArticleViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/ArticleUiConfig;->article:Lzendesk/support/guide/ArticleViewModel;

    return-object v0
.end method

.method getArticleId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzendesk/support/guide/ArticleUiConfig;->articleId:J

    return-wide v0
.end method

.method getConfigurationState()I
    .locals 1

    .line 1
    iget v0, p0, Lzendesk/support/guide/ArticleUiConfig;->configurationState:I

    return v0
.end method

.method public getUiConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/commonui/p;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/ArticleUiConfig;->uiConfigs:Ljava/util/List;

    invoke-static {v0, p0}, Lzendesk/commonui/q;->a(Ljava/util/List;Lzendesk/commonui/p;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isContactUsButtonVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/guide/ArticleUiConfig;->contactUsVisible:Z

    return v0
.end method

.method public isDeflectionEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/guide/ArticleUiConfig;->deflectionEnabled:Z

    return v0
.end method
