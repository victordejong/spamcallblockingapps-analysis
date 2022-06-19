.class public final Lg/g/a/a/i/p/h/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/i/p/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/p/h/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/g/a/a/i/p/h/a$b;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lg/g/a/a/i/p/h/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/p/h/a$b;->description:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lg/g/a/a/i/p/h/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/p/h/a$b;->id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lg/g/a/a/i/p/h/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/p/h/a$b;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lg/g/a/a/i/p/h/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/p/h/a$b;->imageUrl:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lg/g/a/a/i/p/h/a;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/p/h/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/g/a/a/i/p/h/a;-><init>(Lg/g/a/a/i/p/h/a$b;Lg/g/a/a/i/p/h/a$a;)V

    return-object v0
.end method

.method public withDescription(Ljava/lang/String;)Lg/g/a/a/i/p/h/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/h/a$b;->description:Ljava/lang/String;

    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lg/g/a/a/i/p/h/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/h/a$b;->id:Ljava/lang/String;

    return-object p0
.end method

.method public withImageUrl(Ljava/lang/String;)Lg/g/a/a/i/p/h/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/h/a$b;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lg/g/a/a/i/p/h/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/h/a$b;->title:Ljava/lang/String;

    return-object p0
.end method
