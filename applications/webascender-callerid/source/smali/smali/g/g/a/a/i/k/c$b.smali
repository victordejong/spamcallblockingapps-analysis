.class public Lg/g/a/a/i/k/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/i/k/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private direction:Ljava/lang/String;

.field private duration:Ljava/lang/Integer;

.field private isBlock:Ljava/lang/Boolean;

.field private isContact:Ljava/lang/Boolean;

.field private lastInteractionForBlockEvent:Lg/g/a/a/i/o/o;

.field private phone:Lg/g/a/a/i/h;

.field private termination:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private tokensDTOList:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lg/g/a/a/i/k/c;
    .locals 13

    .line 1
    new-instance v12, Lg/g/a/a/i/k/c;

    iget-object v1, p0, Lg/g/a/a/i/k/c$b;->type:Ljava/lang/String;

    iget-object v2, p0, Lg/g/a/a/i/k/c$b;->timestamp:Ljava/lang/String;

    iget-object v3, p0, Lg/g/a/a/i/k/c$b;->phone:Lg/g/a/a/i/h;

    iget-object v4, p0, Lg/g/a/a/i/k/c$b;->isContact:Ljava/lang/Boolean;

    iget-object v5, p0, Lg/g/a/a/i/k/c$b;->direction:Ljava/lang/String;

    iget-object v6, p0, Lg/g/a/a/i/k/c$b;->duration:Ljava/lang/Integer;

    iget-object v7, p0, Lg/g/a/a/i/k/c$b;->tokensDTOList:Ljava/util/List;

    iget-object v8, p0, Lg/g/a/a/i/k/c$b;->termination:Ljava/lang/String;

    iget-object v9, p0, Lg/g/a/a/i/k/c$b;->isBlock:Ljava/lang/Boolean;

    iget-object v10, p0, Lg/g/a/a/i/k/c$b;->lastInteractionForBlockEvent:Lg/g/a/a/i/o/o;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lg/g/a/a/i/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lg/g/a/a/i/h;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lg/g/a/a/i/o/o;Lg/g/a/a/i/k/c$a;)V

    return-object v12
.end method

.method public setDirection(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c$b;->direction:Ljava/lang/String;

    return-object p0
.end method

.method public setDuration(Ljava/lang/Integer;)Lg/g/a/a/i/k/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c$b;->duration:Ljava/lang/Integer;

    return-object p0
.end method

.method public setIsBlock(Ljava/lang/Boolean;)Lg/g/a/a/i/k/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c$b;->isBlock:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsContact(Ljava/lang/Boolean;)Lg/g/a/a/i/k/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c$b;->isContact:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setLastInteractionForBlockEvent(Lg/g/a/a/i/o/o;)Lg/g/a/a/i/k/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c$b;->lastInteractionForBlockEvent:Lg/g/a/a/i/o/o;

    return-object p0
.end method

.method public setPhone(Lg/g/a/a/i/h;)Lg/g/a/a/i/k/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c$b;->phone:Lg/g/a/a/i/h;

    return-object p0
.end method

.method public setTermination(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c$b;->termination:Ljava/lang/String;

    return-object p0
.end method

.method public setTimestamp(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c$b;->timestamp:Ljava/lang/String;

    return-object p0
.end method

.method public setTokensDTOList(Ljava/util/List;)Lg/g/a/a/i/k/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lg/g/a/a/i/k/c$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c$b;->tokensDTOList:Ljava/util/List;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/c$b;->type:Ljava/lang/String;

    return-object p0
.end method
