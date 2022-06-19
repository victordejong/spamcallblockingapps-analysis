.class public final Lg/g/a/a/i/p/h/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/i/p/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private detailsThemeDTO:Lg/g/a/a/i/p/h/a;

.field private listThemeDTO:Lg/g/a/a/i/p/h/a;

.field private poiDetailsDTO:Lg/g/a/a/i/p/h/b;

.field private themeType:Ljava/lang/String;

.field private webLinkDTO:Lg/g/a/a/i/p/h/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/p/h/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/g/a/a/i/p/h/c$b;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lg/g/a/a/i/p/h/c$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/p/h/c$b;->themeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lg/g/a/a/i/p/h/c$b;)Lg/g/a/a/i/p/h/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/p/h/c$b;->poiDetailsDTO:Lg/g/a/a/i/p/h/b;

    return-object p0
.end method

.method static synthetic access$300(Lg/g/a/a/i/p/h/c$b;)Lg/g/a/a/i/p/h/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/p/h/c$b;->webLinkDTO:Lg/g/a/a/i/p/h/d;

    return-object p0
.end method

.method static synthetic access$400(Lg/g/a/a/i/p/h/c$b;)Lg/g/a/a/i/p/h/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/p/h/c$b;->detailsThemeDTO:Lg/g/a/a/i/p/h/a;

    return-object p0
.end method

.method static synthetic access$500(Lg/g/a/a/i/p/h/c$b;)Lg/g/a/a/i/p/h/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/p/h/c$b;->listThemeDTO:Lg/g/a/a/i/p/h/a;

    return-object p0
.end method


# virtual methods
.method public build()Lg/g/a/a/i/p/h/c;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/p/h/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/g/a/a/i/p/h/c;-><init>(Lg/g/a/a/i/p/h/c$b;Lg/g/a/a/i/p/h/c$a;)V

    return-object v0
.end method

.method public withDetailsThemeDTO(Lg/g/a/a/i/p/h/a;)Lg/g/a/a/i/p/h/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/h/c$b;->detailsThemeDTO:Lg/g/a/a/i/p/h/a;

    return-object p0
.end method

.method public withListThemeDTO(Lg/g/a/a/i/p/h/a;)Lg/g/a/a/i/p/h/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/h/c$b;->listThemeDTO:Lg/g/a/a/i/p/h/a;

    return-object p0
.end method

.method public withPoiDetails(Lg/g/a/a/i/p/h/b;)Lg/g/a/a/i/p/h/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/h/c$b;->poiDetailsDTO:Lg/g/a/a/i/p/h/b;

    return-object p0
.end method

.method public withThemeType(Ljava/lang/String;)Lg/g/a/a/i/p/h/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/h/c$b;->themeType:Ljava/lang/String;

    return-object p0
.end method

.method public withWebLinkDTO(Lg/g/a/a/i/p/h/d;)Lg/g/a/a/i/p/h/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/h/c$b;->webLinkDTO:Lg/g/a/a/i/p/h/d;

    return-object p0
.end method
