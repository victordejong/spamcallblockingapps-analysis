.class public final Lg/g/a/a/i/o/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/i/o/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private eventDirection:Ljava/lang/String;

.field private eventTimestamp:Ljava/lang/String;

.field private isContact:Z

.field private networkInfoDTO:Lg/g/a/a/i/o/q;

.field private phone:Lg/g/a/a/i/h;

.field private textContent:Ljava/lang/String;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/o/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/g/a/a/i/o/g$b;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lg/g/a/a/i/o/g$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/g$b;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lg/g/a/a/i/o/g$b;)Lg/g/a/a/i/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/g$b;->phone:Lg/g/a/a/i/h;

    return-object p0
.end method

.method static synthetic access$200(Lg/g/a/a/i/o/g$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/g$b;->eventTimestamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lg/g/a/a/i/o/g$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg/g/a/a/i/o/g$b;->isContact:Z

    return p0
.end method

.method static synthetic access$400(Lg/g/a/a/i/o/g$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/g$b;->eventDirection:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lg/g/a/a/i/o/g$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/g$b;->tokens:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lg/g/a/a/i/o/g$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/g$b;->textContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lg/g/a/a/i/o/g$b;)Lg/g/a/a/i/o/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/g$b;->networkInfoDTO:Lg/g/a/a/i/o/q;

    return-object p0
.end method


# virtual methods
.method public build()Lg/g/a/a/i/o/g;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/o/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/g/a/a/i/o/g;-><init>(Lg/g/a/a/i/o/g$b;Lg/g/a/a/i/o/g$a;)V

    return-object v0
.end method

.method public withEventDirection(Ljava/lang/String;)Lg/g/a/a/i/o/g$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/g$b;->eventDirection:Ljava/lang/String;

    return-object p0
.end method

.method public withEventTimestamp(Ljava/lang/String;)Lg/g/a/a/i/o/g$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/g$b;->eventTimestamp:Ljava/lang/String;

    return-object p0
.end method

.method public withIsContact(Z)Lg/g/a/a/i/o/g$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/g/a/a/i/o/g$b;->isContact:Z

    return-object p0
.end method

.method public withNetworkInfo(Lg/g/a/a/i/o/q;)Lg/g/a/a/i/o/g$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/g$b;->networkInfoDTO:Lg/g/a/a/i/o/q;

    return-object p0
.end method

.method public withPhone(Lg/g/a/a/i/h;)Lg/g/a/a/i/o/g$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/g$b;->phone:Lg/g/a/a/i/h;

    return-object p0
.end method

.method public withTextContent(Ljava/lang/String;)Lg/g/a/a/i/o/g$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/g$b;->textContent:Ljava/lang/String;

    return-object p0
.end method

.method public withTokens(Ljava/util/List;)Lg/g/a/a/i/o/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lg/g/a/a/i/o/g$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/g$b;->tokens:Ljava/util/List;

    return-object p0
.end method

.method public withType(Ljava/lang/String;)Lg/g/a/a/i/o/g$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/g$b;->type:Ljava/lang/String;

    return-object p0
.end method
