.class public Lzendesk/support/HelpCenterSearch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/HelpCenterSearch$Builder;
    }
.end annotation


# instance fields
.field private categoryIds:Ljava/lang/String;

.field private include:Ljava/lang/String;

.field private labelNames:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private page:Ljava/lang/Integer;

.field private perPage:Ljava/lang/Integer;

.field private query:Ljava/lang/String;

.field private sectionIds:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/HelpCenterSearch$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzendesk/support/HelpCenterSearch;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lzendesk/support/HelpCenterSearch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/HelpCenterSearch;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lzendesk/support/HelpCenterSearch;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/HelpCenterSearch;->locale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$302(Lzendesk/support/HelpCenterSearch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/HelpCenterSearch;->include:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lzendesk/support/HelpCenterSearch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/HelpCenterSearch;->labelNames:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lzendesk/support/HelpCenterSearch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/HelpCenterSearch;->categoryIds:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lzendesk/support/HelpCenterSearch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/HelpCenterSearch;->sectionIds:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lzendesk/support/HelpCenterSearch;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/HelpCenterSearch;->page:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$802(Lzendesk/support/HelpCenterSearch;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/HelpCenterSearch;->perPage:Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method public getCategoryIds()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/HelpCenterSearch;->categoryIds:Ljava/lang/String;

    return-object v0
.end method

.method public getInclude()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/HelpCenterSearch;->include:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelNames()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/HelpCenterSearch;->labelNames:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/HelpCenterSearch;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPage()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/HelpCenterSearch;->page:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPerPage()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/HelpCenterSearch;->perPage:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/HelpCenterSearch;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionIds()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/HelpCenterSearch;->sectionIds:Ljava/lang/String;

    return-object v0
.end method
