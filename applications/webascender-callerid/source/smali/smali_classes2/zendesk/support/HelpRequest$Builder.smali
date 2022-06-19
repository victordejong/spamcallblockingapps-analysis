.class public Lzendesk/support/HelpRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/HelpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private articlesPerSectionLimit:I

.field private categoryIds:Ljava/lang/String;

.field private includes:Ljava/lang/String;

.field private labelNames:[Ljava/lang/String;

.field private sectionIds:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lzendesk/support/HelpRequest$Builder;->articlesPerSectionLimit:I

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/HelpRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/HelpRequest$Builder;->categoryIds:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/HelpRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/HelpRequest$Builder;->sectionIds:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/support/HelpRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/HelpRequest$Builder;->includes:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/support/HelpRequest$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lzendesk/support/HelpRequest$Builder;->articlesPerSectionLimit:I

    return p0
.end method

.method static synthetic access$400(Lzendesk/support/HelpRequest$Builder;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/HelpRequest$Builder;->labelNames:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lzendesk/support/HelpRequest;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/HelpRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzendesk/support/HelpRequest;-><init>(Lzendesk/support/HelpRequest$Builder;Lzendesk/support/HelpRequest$1;)V

    return-object v0
.end method

.method public includeCategories()Lzendesk/support/HelpRequest$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/HelpRequest$Builder;->includes:Ljava/lang/String;

    invoke-static {v0}, Lg/k/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "categories"

    .line 2
    iput-object v0, p0, Lzendesk/support/HelpRequest$Builder;->includes:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lzendesk/support/HelpRequest$Builder;->includes:Ljava/lang/String;

    const-string v1, "sections"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "categories,sections"

    .line 4
    iput-object v0, p0, Lzendesk/support/HelpRequest$Builder;->includes:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public includeSections()Lzendesk/support/HelpRequest$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/HelpRequest$Builder;->includes:Ljava/lang/String;

    invoke-static {v0}, Lg/k/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sections"

    .line 2
    iput-object v0, p0, Lzendesk/support/HelpRequest$Builder;->includes:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lzendesk/support/HelpRequest$Builder;->includes:Ljava/lang/String;

    const-string v1, "categories"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "categories,sections"

    .line 4
    iput-object v0, p0, Lzendesk/support/HelpRequest$Builder;->includes:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public withCategoryIds(Ljava/util/List;)Lzendesk/support/HelpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lzendesk/support/HelpRequest$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lg/k/d/f;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/HelpRequest$Builder;->categoryIds:Ljava/lang/String;

    return-object p0
.end method

.method public varargs withLabelNames([Ljava/lang/String;)Lzendesk/support/HelpRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/HelpRequest$Builder;->labelNames:[Ljava/lang/String;

    return-object p0
.end method

.method public withSectionIds(Ljava/util/List;)Lzendesk/support/HelpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lzendesk/support/HelpRequest$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lg/k/d/f;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/HelpRequest$Builder;->sectionIds:Ljava/lang/String;

    return-object p0
.end method
