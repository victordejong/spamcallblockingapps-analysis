.class public Lcom/freshchat/consumer/sdk/beans/UserEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private eventName:Ljava/lang/String;

.field private occTime:J

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/UserEvent;->eventName:Ljava/lang/String;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/beans/UserEvent;->properties:Ljava/util/Map;

    iput-wide p3, p0, Lcom/freshchat/consumer/sdk/beans/UserEvent;->occTime:J

    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UserEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getOccTime()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/UserEvent;->occTime:J

    return-wide v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UserEvent;->properties:Ljava/util/Map;

    return-object v0
.end method
