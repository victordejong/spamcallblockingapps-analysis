.class public Lg/g/a/a/i/k/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/k/c$b;
    }
.end annotation


# instance fields
.field private direction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "direction"
    .end annotation
.end field

.field private duration:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/v/c;
        value = "duration"
    .end annotation
.end field

.field private isBlock:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/v/c;
        value = "isBlock"
    .end annotation
.end field

.field private isContact:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/v/c;
        value = "isContact"
    .end annotation
.end field

.field private lastInteractionForBlockEvent:Lg/g/a/a/i/o/o;
    .annotation runtime Lcom/google/gson/v/c;
        value = "lastInteraction"
    .end annotation
.end field

.field private phone:Lg/g/a/a/i/h;
    .annotation runtime Lcom/google/gson/v/c;
        value = "phone"
    .end annotation
.end field

.field private termination:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "termination"
    .end annotation
.end field

.field private timestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "timestamp"
    .end annotation
.end field

.field private tokensDTOList:Ljava/util/List;
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
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lg/g/a/a/i/h;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lg/g/a/a/i/o/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lg/g/a/a/i/h;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lg/g/a/a/i/o/o;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lg/g/a/a/i/k/c;->type:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lg/g/a/a/i/k/c;->timestamp:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lg/g/a/a/i/k/c;->phone:Lg/g/a/a/i/h;

    .line 6
    iput-object p4, p0, Lg/g/a/a/i/k/c;->isContact:Ljava/lang/Boolean;

    .line 7
    iput-object p5, p0, Lg/g/a/a/i/k/c;->direction:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lg/g/a/a/i/k/c;->duration:Ljava/lang/Integer;

    .line 9
    iput-object p7, p0, Lg/g/a/a/i/k/c;->tokensDTOList:Ljava/util/List;

    .line 10
    iput-object p8, p0, Lg/g/a/a/i/k/c;->termination:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lg/g/a/a/i/k/c;->isBlock:Ljava/lang/Boolean;

    .line 12
    iput-object p10, p0, Lg/g/a/a/i/k/c;->lastInteractionForBlockEvent:Lg/g/a/a/i/o/o;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lg/g/a/a/i/h;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lg/g/a/a/i/o/o;Lg/g/a/a/i/k/c$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lg/g/a/a/i/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lg/g/a/a/i/h;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lg/g/a/a/i/o/o;)V

    return-void
.end method


# virtual methods
.method public getDirection()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/c;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/c;->duration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsBlock()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/c;->isBlock:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLastInteractionForBlockEvent()Lg/g/a/a/i/o/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/c;->lastInteractionForBlockEvent:Lg/g/a/a/i/o/o;

    return-object v0
.end method

.method public getPhone()Lg/g/a/a/i/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/c;->phone:Lg/g/a/a/i/h;

    return-object v0
.end method

.method public getTermination()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/c;->termination:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/c;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTokensDTOList()Ljava/util/List;
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
    iget-object v0, p0, Lg/g/a/a/i/k/c;->tokensDTOList:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/c;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isContact()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/c;->isContact:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setContact(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c;->isContact:Ljava/lang/Boolean;

    return-void
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c;->direction:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c;->duration:Ljava/lang/Integer;

    return-void
.end method

.method public setIsBlock(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c;->isBlock:Ljava/lang/Boolean;

    return-void
.end method

.method public setLastInteractionForBlockEvent(Lg/g/a/a/i/o/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c;->lastInteractionForBlockEvent:Lg/g/a/a/i/o/o;

    return-void
.end method

.method public setPhone(Lg/g/a/a/i/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c;->phone:Lg/g/a/a/i/h;

    return-void
.end method

.method public setTermination(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c;->termination:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public setTokensList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c;->tokensDTOList:Ljava/util/List;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c;->type:Ljava/lang/String;

    return-void
.end method
