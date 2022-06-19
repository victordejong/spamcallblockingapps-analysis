.class public Lzendesk/support/SectionItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/HelpItem;


# instance fields
.field private articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/ArticleItem;",
            ">;"
        }
    .end annotation
.end field

.field private categoryId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/v/c;
        value = "category_id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "name"
    .end annotation
.end field

.field private sectionId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/v/c;
        value = "id"
    .end annotation
.end field

.field private totalArticlesCount:I
    .annotation runtime Lcom/google/gson/v/c;
        value = "article_count"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addArticle(Lzendesk/support/ArticleItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SectionItem;->articles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/support/SectionItem;->articles:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lzendesk/support/SectionItem;->articles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1
    const-class v2, Lzendesk/support/SectionItem;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lzendesk/support/SectionItem;

    .line 3
    iget-object v2, p0, Lzendesk/support/SectionItem;->sectionId:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lzendesk/support/SectionItem;->sectionId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lzendesk/support/SectionItem;->sectionId:Ljava/lang/Long;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lzendesk/support/SectionItem;->categoryId:Ljava/lang/Long;

    iget-object p1, p1, Lzendesk/support/SectionItem;->categoryId:Ljava/lang/Long;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getChildren()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/HelpItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lzendesk/support/SectionItem;->articles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Lzendesk/support/SectionItem;->articles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lzendesk/support/SectionItem;->totalArticlesCount:I

    if-ge v1, v2, :cond_0

    .line 4
    new-instance v1, Lzendesk/support/SeeAllArticlesItem;

    invoke-direct {v1, p0}, Lzendesk/support/SeeAllArticlesItem;-><init>(Lzendesk/support/SectionItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SectionItem;->sectionId:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SectionItem;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTotalArticlesCount()I
    .locals 1

    .line 1
    iget v0, p0, Lzendesk/support/SectionItem;->totalArticlesCount:I

    return v0
.end method

.method public getViewType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/SectionItem;->sectionId:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lzendesk/support/SectionItem;->categoryId:Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
