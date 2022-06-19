.class public Lzendesk/support/guide/ArticleUiConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/guide/ArticleUiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private article:Lzendesk/support/guide/ArticleViewModel;

.field private articleId:J

.field private configurationState:I

.field private contactUsVisible:Z

.field private deflectionEnabled:Z

.field private uiConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/commonui/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->contactUsVisible:Z

    .line 3
    iput-boolean v0, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->deflectionEnabled:Z

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->uiConfigs:Ljava/util/List;

    .line 5
    iput-wide p1, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->articleId:J

    .line 6
    iput v0, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->configurationState:I

    return-void
.end method

.method public constructor <init>(Lzendesk/support/Article;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->contactUsVisible:Z

    .line 9
    iput-boolean v0, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->deflectionEnabled:Z

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->uiConfigs:Ljava/util/List;

    .line 11
    new-instance v0, Lzendesk/support/guide/ArticleViewModel;

    invoke-direct {v0, p1}, Lzendesk/support/guide/ArticleViewModel;-><init>(Lzendesk/support/Article;)V

    iput-object v0, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->article:Lzendesk/support/guide/ArticleViewModel;

    const/4 p1, 0x2

    .line 12
    iput p1, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->configurationState:I

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/guide/ArticleUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->configurationState:I

    return p0
.end method

.method static synthetic access$100(Lzendesk/support/guide/ArticleUiConfig$Builder;)Lzendesk/support/guide/ArticleViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->article:Lzendesk/support/guide/ArticleViewModel;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/support/guide/ArticleUiConfig$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->articleId:J

    return-wide v0
.end method

.method static synthetic access$300(Lzendesk/support/guide/ArticleUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->contactUsVisible:Z

    return p0
.end method

.method static synthetic access$400(Lzendesk/support/guide/ArticleUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->deflectionEnabled:Z

    return p0
.end method

.method static synthetic access$500(Lzendesk/support/guide/ArticleUiConfig$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->uiConfigs:Ljava/util/List;

    return-object p0
.end method

.method private setUiConfigs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/commonui/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->uiConfigs:Ljava/util/List;

    .line 2
    const-class v0, Lzendesk/support/guide/ArticleUiConfig;

    .line 3
    invoke-static {p1, v0}, Lzendesk/commonui/q;->e(Ljava/util/List;Ljava/lang/Class;)Lzendesk/commonui/p;

    move-result-object p1

    check-cast p1, Lzendesk/support/guide/ArticleUiConfig;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lzendesk/support/guide/ArticleUiConfig;->isContactUsButtonVisible()Z

    move-result p1

    iput-boolean p1, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->contactUsVisible:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public intent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lzendesk/commonui/p;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lzendesk/support/guide/ArticleUiConfig$Builder;->setUiConfigs(Ljava/util/List;)V

    .line 2
    new-instance p2, Lzendesk/support/guide/ArticleUiConfig;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lzendesk/support/guide/ArticleUiConfig;-><init>(Lzendesk/support/guide/ArticleUiConfig$Builder;Lzendesk/support/guide/ArticleUiConfig$1;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzendesk/support/guide/ViewArticleActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-static {v0, p2}, Lzendesk/commonui/q;->c(Landroid/content/Intent;Lzendesk/commonui/p;)V

    return-object v0
.end method

.method public show(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lzendesk/commonui/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lzendesk/support/guide/ArticleUiConfig$Builder;->intent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public withDeflectionEnabled(Z)Lzendesk/support/guide/ArticleUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzendesk/support/guide/ArticleUiConfig$Builder;->deflectionEnabled:Z

    return-object p0
.end method
