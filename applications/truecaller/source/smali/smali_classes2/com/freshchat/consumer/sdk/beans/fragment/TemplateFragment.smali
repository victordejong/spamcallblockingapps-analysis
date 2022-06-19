.class public abstract Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;
.super Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;
    }
.end annotation


# instance fields
.field private final sectionMap:Ljava/util/HashMap;
    .annotation runtime Lcom/freshchat/consumer/sdk/j/ab$c;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;",
            ">;"
        }
    .end annotation
.end field

.field private final templateType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEMPLATE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sectionMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->templateType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFragmentsForSection(Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sections:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sectionMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;->getSectionKey()Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    move-result-object v3

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;->access$000(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sections:Ljava/util/List;

    return-object v0
.end method

.method public getSingleFragmentFromSection(Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->getFragmentsForSection(Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getTemplateType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->templateType:Ljava/lang/String;

    return-object v0
.end method

.method public replaceSection(Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sections:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;->getSectionKey()Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    move-result-object v3

    if-ne v3, p1, :cond_1

    move-object v0, v2

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;->setSectionKey(Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)V

    invoke-virtual {v0, p2}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;->setFragments(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sections:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSections(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sections:Ljava/util/List;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sectionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "TemplateFragment{messageFragment=\'"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    const-string v3, ", templateType=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->templateType:Ljava/lang/String;

    const-string v3, ", sections="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sections:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sectionMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;->sectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
