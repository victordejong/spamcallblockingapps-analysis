.class public Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation


# instance fields
.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private sectionKey:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;
    .annotation runtime Le/m/e/d0/b;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;->fragments:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;->fragments:Ljava/util/List;

    return-object v0
.end method

.method public getSectionKey()Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;->sectionKey:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    return-object v0
.end method

.method public setFragments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;->fragments:Ljava/util/List;

    return-void
.end method

.method public setSectionKey(Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;->sectionKey:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Section{sectionKey=\'"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;->sectionKey:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", fragments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;->fragments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
