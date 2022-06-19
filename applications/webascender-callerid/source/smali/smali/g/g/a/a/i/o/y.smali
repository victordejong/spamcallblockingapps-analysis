.class public Lg/g/a/a/i/o/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/o/y$b;
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

.field private feedback:Lg/g/a/a/i/o/c;
    .annotation runtime Lcom/google/gson/v/c;
        value = "feedback"
    .end annotation
.end field

.field private lastInteraction:Lg/g/a/a/i/o/o;
    .annotation runtime Lcom/google/gson/v/c;
        value = "lastInteraction"
    .end annotation
.end field

.field private phone:Lg/g/a/a/i/h;
    .annotation runtime Lcom/google/gson/v/c;
        value = "phone"
    .end annotation
.end field

.field private sender:Lg/g/a/a/i/o/u;
    .annotation runtime Lcom/google/gson/v/c;
        value = "sender"
    .end annotation
.end field

.field private timestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "timestamp"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lg/g/a/a/i/o/y$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lg/g/a/a/i/o/y$b;->access$100(Lg/g/a/a/i/o/y$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/y;->timestamp:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lg/g/a/a/i/o/y$b;->access$200(Lg/g/a/a/i/o/y$b;)Lg/g/a/a/i/h;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/y;->phone:Lg/g/a/a/i/h;

    .line 5
    invoke-static {p1}, Lg/g/a/a/i/o/y$b;->access$300(Lg/g/a/a/i/o/y$b;)Lg/g/a/a/i/o/c;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/y;->feedback:Lg/g/a/a/i/o/c;

    .line 6
    invoke-static {p1}, Lg/g/a/a/i/o/y$b;->access$400(Lg/g/a/a/i/o/y$b;)Lg/g/a/a/i/o/o;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/y;->lastInteraction:Lg/g/a/a/i/o/o;

    .line 7
    invoke-static {p1}, Lg/g/a/a/i/o/y$b;->access$500(Lg/g/a/a/i/o/y$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/y;->cachedProfileTag:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lg/g/a/a/i/o/y$b;->access$600(Lg/g/a/a/i/o/y$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/y;->clientTag:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lg/g/a/a/i/o/y$b;->access$700(Lg/g/a/a/i/o/y$b;)Lg/g/a/a/i/o/u;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/y;->sender:Lg/g/a/a/i/o/u;

    .line 10
    invoke-static {p1}, Lg/g/a/a/i/o/y$b;->access$800(Lg/g/a/a/i/o/y$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/o/y;->clientSignal:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/o/y$b;Lg/g/a/a/i/o/y$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/i/o/y;-><init>(Lg/g/a/a/i/o/y$b;)V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg/g/a/a/i/o/y;->CLIENT_TAG_ITEM_SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg/g/a/a/i/o/y;->CLIENT_TAG_VALUE_SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method public static newBuilder()Lg/g/a/a/i/o/y$b;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/o/y$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/o/y$b;-><init>(Lg/g/a/a/i/o/y$a;)V

    return-object v0
.end method


# virtual methods
.method public getCachedProfileTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/y;->cachedProfileTag:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSignal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/y;->clientSignal:Ljava/lang/String;

    return-object v0
.end method

.method public getClientTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/y;->clientTag:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedback()Lg/g/a/a/i/o/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/y;->feedback:Lg/g/a/a/i/o/c;

    return-object v0
.end method

.method public getLastInteraction()Lg/g/a/a/i/o/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/y;->lastInteraction:Lg/g/a/a/i/o/o;

    return-object v0
.end method

.method public getPhoneDTO()Lg/g/a/a/i/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/y;->phone:Lg/g/a/a/i/h;

    return-object v0
.end method

.method public getSender()Lg/g/a/a/i/o/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/y;->sender:Lg/g/a/a/i/o/u;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/y;->timestamp:Ljava/lang/String;

    return-object v0
.end method
