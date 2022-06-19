.class public Lcom/freshchat/consumer/sdk/service/e/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# instance fields
.field private final gH:Ljava/lang/String;

.field private final mG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/UserEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/UserEvent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/ac;->gH:Ljava/lang/String;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/service/e/ac;->mG:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/ac;->gH:Ljava/lang/String;

    return-object v0
.end method

.method public gM()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/UserEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/ac;->mG:Ljava/util/Map;

    return-object v0
.end method
