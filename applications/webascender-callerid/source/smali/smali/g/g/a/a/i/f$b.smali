.class public final Lg/g/a/a/i/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private areaCode:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private isShortCode:Z

.field private isValid:Z

.field private lineType:Ljava/lang/String;

.field private parserVersion:Ljava/lang/String;

.field private rawPhone:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/g/a/a/i/f$b;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lg/g/a/a/i/f$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/f$b;->parserVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lg/g/a/a/i/f$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg/g/a/a/i/f$b;->isValid:Z

    return p0
.end method

.method static synthetic access$200(Lg/g/a/a/i/f$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg/g/a/a/i/f$b;->isShortCode:Z

    return p0
.end method

.method static synthetic access$300(Lg/g/a/a/i/f$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/f$b;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lg/g/a/a/i/f$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/f$b;->areaCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lg/g/a/a/i/f$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/f$b;->rawPhone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lg/g/a/a/i/f$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/f$b;->lineType:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lg/g/a/a/i/f;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/g/a/a/i/f;-><init>(Lg/g/a/a/i/f$b;Lg/g/a/a/i/f$a;)V

    return-object v0
.end method

.method public withAreaCode(Ljava/lang/String;)Lg/g/a/a/i/f$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/f$b;->areaCode:Ljava/lang/String;

    return-object p0
.end method

.method public withCountryCode(Ljava/lang/String;)Lg/g/a/a/i/f$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/f$b;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method public withIsShortCode(Z)Lg/g/a/a/i/f$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/g/a/a/i/f$b;->isShortCode:Z

    return-object p0
.end method

.method public withIsValid(Z)Lg/g/a/a/i/f$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/g/a/a/i/f$b;->isValid:Z

    return-object p0
.end method

.method public withLineType(Ljava/lang/String;)Lg/g/a/a/i/f$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/f$b;->lineType:Ljava/lang/String;

    return-object p0
.end method

.method public withParserVersion(Ljava/lang/String;)Lg/g/a/a/i/f$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/f$b;->parserVersion:Ljava/lang/String;

    return-object p0
.end method

.method public withRawPhone(Ljava/lang/String;)Lg/g/a/a/i/f$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/f$b;->rawPhone:Ljava/lang/String;

    return-object p0
.end method
