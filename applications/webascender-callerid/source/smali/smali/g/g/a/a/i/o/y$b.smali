.class public final Lg/g/a/a/i/o/y$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/i/o/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private cachedProfileTag:Ljava/lang/String;

.field private clientSignal:Ljava/lang/String;

.field private clientTag:Ljava/lang/String;

.field private feedbackDTO:Lg/g/a/a/i/o/c;

.field private lastInteraction:Lg/g/a/a/i/o/o;

.field private phoneDTO:Lg/g/a/a/i/h;

.field private sender:Lg/g/a/a/i/o/u;

.field private timeStamp:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/o/y$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/g/a/a/i/o/y$b;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lg/g/a/a/i/o/y$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/y$b;->timeStamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lg/g/a/a/i/o/y$b;)Lg/g/a/a/i/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/y$b;->phoneDTO:Lg/g/a/a/i/h;

    return-object p0
.end method

.method static synthetic access$300(Lg/g/a/a/i/o/y$b;)Lg/g/a/a/i/o/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/y$b;->feedbackDTO:Lg/g/a/a/i/o/c;

    return-object p0
.end method

.method static synthetic access$400(Lg/g/a/a/i/o/y$b;)Lg/g/a/a/i/o/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/y$b;->lastInteraction:Lg/g/a/a/i/o/o;

    return-object p0
.end method

.method static synthetic access$500(Lg/g/a/a/i/o/y$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/y$b;->cachedProfileTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lg/g/a/a/i/o/y$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/y$b;->clientTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lg/g/a/a/i/o/y$b;)Lg/g/a/a/i/o/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/y$b;->sender:Lg/g/a/a/i/o/u;

    return-object p0
.end method

.method static synthetic access$800(Lg/g/a/a/i/o/y$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/y$b;->clientSignal:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lg/g/a/a/i/o/y;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/o/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/g/a/a/i/o/y;-><init>(Lg/g/a/a/i/o/y$b;Lg/g/a/a/i/o/y$a;)V

    return-object v0
.end method

.method public withCachedProfileTag(Ljava/lang/String;)Lg/g/a/a/i/o/y$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/y$b;->cachedProfileTag:Ljava/lang/String;

    return-object p0
.end method

.method public withClientSignal(Ljava/lang/String;)Lg/g/a/a/i/o/y$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/y$b;->clientSignal:Ljava/lang/String;

    return-object p0
.end method

.method public withClientTag(Ljava/lang/String;)Lg/g/a/a/i/o/y$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/y$b;->clientTag:Ljava/lang/String;

    return-object p0
.end method

.method public withClientTag(Ljava/util/Map;)Lg/g/a/a/i/o/y$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lg/g/a/a/i/o/y$b;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Lg/g/a/a/i/o/y;->access$900()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {}, Lg/g/a/a/i/o/y;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/o/y$b;->clientTag:Ljava/lang/String;

    return-object p0
.end method

.method public withFeedbackDTO(Lg/g/a/a/i/o/c;)Lg/g/a/a/i/o/y$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/y$b;->feedbackDTO:Lg/g/a/a/i/o/c;

    return-object p0
.end method

.method public withLastInteractionDTO(Lg/g/a/a/i/o/o;)Lg/g/a/a/i/o/y$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/y$b;->lastInteraction:Lg/g/a/a/i/o/o;

    return-object p0
.end method

.method public withPhoneDTO(Lg/g/a/a/i/h;)Lg/g/a/a/i/o/y$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/y$b;->phoneDTO:Lg/g/a/a/i/h;

    return-object p0
.end method

.method public withSender(Lg/g/a/a/i/o/u;)Lg/g/a/a/i/o/y$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/y$b;->sender:Lg/g/a/a/i/o/u;

    return-object p0
.end method

.method public withTimestamp(Ljava/lang/String;)Lg/g/a/a/i/o/y$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/y$b;->timeStamp:Ljava/lang/String;

    return-object p0
.end method
