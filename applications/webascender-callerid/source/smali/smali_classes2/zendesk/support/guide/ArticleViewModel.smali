.class Lzendesk/support/guide/ArticleViewModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final authorName:Ljava/lang/String;

.field private final body:Ljava/lang/String;

.field private final createdAt:Ljava/util/Date;

.field private final id:J

.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzendesk/support/Article;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lzendesk/support/Article;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lzendesk/support/guide/ArticleViewModel;->id:J

    .line 3
    invoke-virtual {p1}, Lzendesk/support/Article;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/guide/ArticleViewModel;->title:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lzendesk/support/Article;->getBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/guide/ArticleViewModel;->body:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lzendesk/support/Article;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/guide/ArticleViewModel;->createdAt:Ljava/util/Date;

    .line 6
    invoke-virtual {p1}, Lzendesk/support/Article;->getAuthor()Lzendesk/support/User;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lzendesk/support/Article;->getAuthor()Lzendesk/support/User;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/support/User;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lzendesk/support/guide/ArticleViewModel;->authorName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getAuthorName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/ArticleViewModel;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/ArticleViewModel;->body:Ljava/lang/String;

    return-object v0
.end method

.method getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/ArticleViewModel;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzendesk/support/guide/ArticleViewModel;->id:J

    return-wide v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/ArticleViewModel;->title:Ljava/lang/String;

    return-object v0
.end method
