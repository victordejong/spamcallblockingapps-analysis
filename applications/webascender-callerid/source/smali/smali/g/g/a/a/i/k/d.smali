.class public Lg/g/a/a/i/k/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/k/d$b;
    }
.end annotation


# static fields
.field private static CLIENT_TAG_ITEM_SEPARATOR:Ljava/lang/String; = "\u00a6"

.field private static CLIENT_TAG_VALUE_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private cachedProfileTag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "cachedProfileTag"
    .end annotation
.end field

.field private clientSignal:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "clientSignal"
    .end annotation
.end field

.field private clientTag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "clientTag"
    .end annotation
.end field

.field private disposition:Lg/g/a/a/i/k/b;
    .annotation runtime Lcom/google/gson/v/c;
        value = "disposition"
    .end annotation
.end field

.field private eventProfileEvent:Lg/g/a/a/i/k/c;
    .annotation runtime Lcom/google/gson/v/c;
        value = "eventProfileEvent"
    .end annotation
.end field

.field private profileTag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "profileTag"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lg/g/a/a/i/k/c;Ljava/lang/String;Lg/g/a/a/i/k/b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lg/g/a/a/i/k/d;->eventProfileEvent:Lg/g/a/a/i/k/c;

    .line 4
    iput-object p2, p0, Lg/g/a/a/i/k/d;->profileTag:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lg/g/a/a/i/k/d;->disposition:Lg/g/a/a/i/k/b;

    return-void
.end method

.method public constructor <init>(Lg/g/a/a/i/k/c;Ljava/lang/String;Ljava/lang/String;Lg/g/a/a/i/k/b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lg/g/a/a/i/k/d;->eventProfileEvent:Lg/g/a/a/i/k/c;

    .line 8
    iput-object p2, p0, Lg/g/a/a/i/k/d;->profileTag:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lg/g/a/a/i/k/d;->cachedProfileTag:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lg/g/a/a/i/k/d;->disposition:Lg/g/a/a/i/k/b;

    return-void
.end method

.method private constructor <init>(Lg/g/a/a/i/k/d$b;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lg/g/a/a/i/k/d$b;->access$100(Lg/g/a/a/i/k/d$b;)Lg/g/a/a/i/k/c;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/k/d;->eventProfileEvent:Lg/g/a/a/i/k/c;

    .line 13
    invoke-static {p1}, Lg/g/a/a/i/k/d$b;->access$200(Lg/g/a/a/i/k/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/k/d;->profileTag:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lg/g/a/a/i/k/d$b;->access$300(Lg/g/a/a/i/k/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/k/d;->cachedProfileTag:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lg/g/a/a/i/k/d$b;->access$400(Lg/g/a/a/i/k/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/k/d;->clientTag:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lg/g/a/a/i/k/d$b;->access$500(Lg/g/a/a/i/k/d$b;)Lg/g/a/a/i/k/b;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/k/d;->disposition:Lg/g/a/a/i/k/b;

    .line 17
    invoke-static {p1}, Lg/g/a/a/i/k/d$b;->access$600(Lg/g/a/a/i/k/d$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/k/d;->clientSignal:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/k/d$b;Lg/g/a/a/i/k/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/i/k/d;-><init>(Lg/g/a/a/i/k/d$b;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg/g/a/a/i/k/d;->CLIENT_TAG_VALUE_SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg/g/a/a/i/k/d;->CLIENT_TAG_ITEM_SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method public static newBuilder()Lg/g/a/a/i/k/d$b;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/k/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/k/d$b;-><init>(Lg/g/a/a/i/k/d$a;)V

    return-object v0
.end method


# virtual methods
.method public getCachedProfileTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/d;->cachedProfileTag:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSignal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/d;->clientSignal:Ljava/lang/String;

    return-object v0
.end method

.method public getClientTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/d;->clientTag:Ljava/lang/String;

    return-object v0
.end method

.method public getDisposition()Lg/g/a/a/i/k/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/d;->disposition:Lg/g/a/a/i/k/b;

    return-object v0
.end method

.method public getEventProfileEvent()Lg/g/a/a/i/k/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/d;->eventProfileEvent:Lg/g/a/a/i/k/c;

    return-object v0
.end method

.method public getProfileTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/d;->profileTag:Ljava/lang/String;

    return-object v0
.end method
