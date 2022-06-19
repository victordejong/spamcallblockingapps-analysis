.class public Lcom/freshchat/consumer/sdk/service/e/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/service/e/am$a;
    }
.end annotation


# instance fields
.field private final categoryId:Ljava/lang/String;

.field private final faqId:Ljava/lang/String;

.field private final lastUpdatedAt:Ljava/lang/String;

.field private final locale:Ljava/lang/String;

.field private final rk:Lcom/freshchat/consumer/sdk/service/e/am$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/freshchat/consumer/sdk/service/e/am$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/am;->categoryId:Ljava/lang/String;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/service/e/am;->faqId:Ljava/lang/String;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/service/e/am;->locale:Ljava/lang/String;

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/service/e/am;->rk:Lcom/freshchat/consumer/sdk/service/e/am$a;

    iput-object p5, p0, Lcom/freshchat/consumer/sdk/service/e/am;->lastUpdatedAt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategoryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/am;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/am;->faqId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdatedAt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/am;->lastUpdatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/am;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public iX()Lcom/freshchat/consumer/sdk/service/e/am$a;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/am;->rk:Lcom/freshchat/consumer/sdk/service/e/am$a;

    return-object v0
.end method
