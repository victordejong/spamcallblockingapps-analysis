.class public Lcom/freshchat/consumer/sdk/service/e/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# instance fields
.field private final rh:I

.field private final rj:Ljava/lang/String;

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/ak;->rj:Ljava/lang/String;

    iput p2, p0, Lcom/freshchat/consumer/sdk/service/e/ak;->rh:I

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/service/e/ak;->tags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/ak;->tags:Ljava/util/List;

    return-object v0
.end method

.method public iU()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/service/e/ak;->rh:I

    return v0
.end method

.method public iW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/ak;->rj:Ljava/lang/String;

    return-object v0
.end method
