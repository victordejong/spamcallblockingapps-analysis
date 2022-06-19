.class public Lcom/freshchat/consumer/sdk/service/e/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# instance fields
.field private categoryId:Ljava/lang/String;

.field private rh:I

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/freshchat/consumer/sdk/service/e/ah;->rh:I

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/service/e/ah;->categoryId:Ljava/lang/String;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/service/e/ah;->tags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCategoryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/ah;->categoryId:Ljava/lang/String;

    return-object v0
.end method

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

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/ah;->tags:Ljava/util/List;

    return-object v0
.end method

.method public iU()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/service/e/ah;->rh:I

    return v0
.end method
