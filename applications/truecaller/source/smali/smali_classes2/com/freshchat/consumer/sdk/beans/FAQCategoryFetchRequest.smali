.class public Lcom/freshchat/consumer/sdk/beans/FAQCategoryFetchRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# instance fields
.field private pageIndex:I

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
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/FAQCategoryFetchRequest;->pageIndex:I

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/beans/FAQCategoryFetchRequest;->tags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPageIndex()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/FAQCategoryFetchRequest;->pageIndex:I

    return v0
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

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FAQCategoryFetchRequest;->tags:Ljava/util/List;

    return-object v0
.end method
