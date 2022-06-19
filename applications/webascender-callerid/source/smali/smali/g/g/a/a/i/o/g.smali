.class public Lg/g/a/a/i/o/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/o/g$b;
    }
.end annotation


# instance fields
.field private eventDirection:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "direction"
    .end annotation
.end field

.field private eventTimestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "timestamp"
    .end annotation
.end field

.field private isContact:Z
    .annotation runtime Lcom/google/gson/v/c;
        value = "isContact"
    .end annotation
.end field

.field private networkInfoDTO:Lg/g/a/a/i/o/q;
    .annotation runtime Lcom/google/gson/v/c;
        value = "networkInfo"
    .end annotation
.end field

.field private phone:Lg/g/a/a/i/h;
    .annotation runtime Lcom/google/gson/v/c;
        value = "phone"
    .end annotation
.end field

.field private textContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "textContent"
    .end annotation
.end field

.field tokens:Ljava/util/List;
    .annotation runtime Lcom/google/gson/v/c;
        value = "tokens"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "type"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lg/g/a/a/i/o/g$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lg/g/a/a/i/o/g$b;->access$000(Lg/g/a/a/i/o/g$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/g;->type:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lg/g/a/a/i/o/g$b;->access$100(Lg/g/a/a/i/o/g$b;)Lg/g/a/a/i/h;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/g;->phone:Lg/g/a/a/i/h;

    .line 5
    invoke-static {p1}, Lg/g/a/a/i/o/g$b;->access$200(Lg/g/a/a/i/o/g$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/g;->eventTimestamp:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lg/g/a/a/i/o/g$b;->access$300(Lg/g/a/a/i/o/g$b;)Z

    move-result v0

    iput-boolean v0, p0, Lg/g/a/a/i/o/g;->isContact:Z

    .line 7
    invoke-static {p1}, Lg/g/a/a/i/o/g$b;->access$400(Lg/g/a/a/i/o/g$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/g;->eventDirection:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lg/g/a/a/i/o/g$b;->access$500(Lg/g/a/a/i/o/g$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/g;->tokens:Ljava/util/List;

    .line 9
    invoke-static {p1}, Lg/g/a/a/i/o/g$b;->access$600(Lg/g/a/a/i/o/g$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/g;->textContent:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lg/g/a/a/i/o/g$b;->access$700(Lg/g/a/a/i/o/g$b;)Lg/g/a/a/i/o/q;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/o/g;->networkInfoDTO:Lg/g/a/a/i/o/q;

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/o/g$b;Lg/g/a/a/i/o/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/i/o/g;-><init>(Lg/g/a/a/i/o/g$b;)V

    return-void
.end method

.method public static newBuilder()Lg/g/a/a/i/o/g$b;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/o/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/o/g$b;-><init>(Lg/g/a/a/i/o/g$a;)V

    return-object v0
.end method


# virtual methods
.method public getEventDirection()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/g;->eventDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTimestamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/g;->eventTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkInfoDTO()Lg/g/a/a/i/o/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/g;->networkInfoDTO:Lg/g/a/a/i/o/q;

    return-object v0
.end method

.method public getPhone()Lg/g/a/a/i/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/g;->phone:Lg/g/a/a/i/h;

    return-object v0
.end method

.method public getTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/g;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/g;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isContact()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/g/a/a/i/o/g;->isContact:Z

    return v0
.end method
