.class public final Lg/g/a/a/i/o/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/i/o/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private attributionDTO:Lg/g/a/a/i/l/b;

.field private displayCategory:Lg/g/a/a/i/o/w;

.field private displayImageString:Ljava/lang/String;

.field private displayLocation:Lg/g/a/a/i/o/w;

.field private displayMessage:Lg/g/a/a/i/o/w;

.field private displayName:Lg/g/a/a/i/o/w;

.field private entityType:Ljava/lang/String;

.field private localizedLineType:Lg/g/a/a/i/o/p;

.field private profileTag:Ljava/lang/String;

.field private reputationLevel:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/o/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/g/a/a/i/o/b$b;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lg/g/a/a/i/o/b$b;)Lg/g/a/a/i/o/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/b$b;->displayName:Lg/g/a/a/i/o/w;

    return-object p0
.end method

.method static synthetic access$100(Lg/g/a/a/i/o/b$b;)Lg/g/a/a/i/o/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/b$b;->displayLocation:Lg/g/a/a/i/o/w;

    return-object p0
.end method

.method static synthetic access$200(Lg/g/a/a/i/o/b$b;)Lg/g/a/a/i/l/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/b$b;->attributionDTO:Lg/g/a/a/i/l/b;

    return-object p0
.end method

.method static synthetic access$300(Lg/g/a/a/i/o/b$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/b$b;->reputationLevel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lg/g/a/a/i/o/b$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/b$b;->profileTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lg/g/a/a/i/o/b$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/b$b;->entityType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lg/g/a/a/i/o/b$b;)Lg/g/a/a/i/o/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/b$b;->displayMessage:Lg/g/a/a/i/o/w;

    return-object p0
.end method

.method static synthetic access$700(Lg/g/a/a/i/o/b$b;)Lg/g/a/a/i/o/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/b$b;->displayCategory:Lg/g/a/a/i/o/w;

    return-object p0
.end method

.method static synthetic access$800(Lg/g/a/a/i/o/b$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/b$b;->displayImageString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lg/g/a/a/i/o/b$b;)Lg/g/a/a/i/o/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/b$b;->localizedLineType:Lg/g/a/a/i/o/p;

    return-object p0
.end method


# virtual methods
.method public build()Lg/g/a/a/i/o/b;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/o/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/g/a/a/i/o/b;-><init>(Lg/g/a/a/i/o/b$b;Lg/g/a/a/i/o/b$a;)V

    return-object v0
.end method

.method public withAttributionDTO(Lg/g/a/a/i/l/b;)Lg/g/a/a/i/o/b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/b$b;->attributionDTO:Lg/g/a/a/i/l/b;

    return-object p0
.end method

.method public withDisplayCategory(Lg/g/a/a/i/o/w;)Lg/g/a/a/i/o/b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/b$b;->displayCategory:Lg/g/a/a/i/o/w;

    return-object p0
.end method

.method public withDisplayImageURL(Ljava/lang/String;)Lg/g/a/a/i/o/b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/b$b;->displayImageString:Ljava/lang/String;

    return-object p0
.end method

.method public withDisplayLocation(Lg/g/a/a/i/o/w;)Lg/g/a/a/i/o/b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/b$b;->displayLocation:Lg/g/a/a/i/o/w;

    return-object p0
.end method

.method public withDisplayMessage(Lg/g/a/a/i/o/w;)Lg/g/a/a/i/o/b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/b$b;->displayMessage:Lg/g/a/a/i/o/w;

    return-object p0
.end method

.method public withDisplayName(Lg/g/a/a/i/o/w;)Lg/g/a/a/i/o/b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/b$b;->displayName:Lg/g/a/a/i/o/w;

    return-object p0
.end method

.method public withEntityType(Ljava/lang/String;)Lg/g/a/a/i/o/b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/b$b;->entityType:Ljava/lang/String;

    return-object p0
.end method

.method public withLocalizedLineType(Lg/g/a/a/i/o/p;)Lg/g/a/a/i/o/b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/b$b;->localizedLineType:Lg/g/a/a/i/o/p;

    return-object p0
.end method

.method public withProfileTag(Ljava/lang/String;)Lg/g/a/a/i/o/b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/b$b;->profileTag:Ljava/lang/String;

    return-object p0
.end method

.method public withReputationLevel(Ljava/lang/String;)Lg/g/a/a/i/o/b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/b$b;->reputationLevel:Ljava/lang/String;

    return-object p0
.end method
