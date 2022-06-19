.class public Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;
.super Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;
.source "SourceFile"


# instance fields
.field private selected:Z
    .annotation runtime Lcom/freshchat/consumer/sdk/j/ab$c;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->CAROUSEL_CARD_DEFAULT:Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;->selected:Z

    return-void
.end method


# virtual methods
.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;->selected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;->selected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "CarouselCardDefaultFragment{messageFragment=\'"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    const-string v3, ", selected="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;->selected:Z

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
