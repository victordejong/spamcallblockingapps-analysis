.class public Lzendesk/support/SeeAllArticlesItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/HelpItem;


# instance fields
.field private isLoading:Z

.field private section:Lzendesk/support/SectionItem;


# direct methods
.method public constructor <init>(Lzendesk/support/SectionItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/SeeAllArticlesItem;->section:Lzendesk/support/SectionItem;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lzendesk/support/SeeAllArticlesItem;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lzendesk/support/SeeAllArticlesItem;

    .line 3
    iget-object v2, p0, Lzendesk/support/SeeAllArticlesItem;->section:Lzendesk/support/SectionItem;

    iget-object p1, p1, Lzendesk/support/SeeAllArticlesItem;->section:Lzendesk/support/SectionItem;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lzendesk/support/SectionItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SeeAllArticlesItem;->section:Lzendesk/support/SectionItem;

    invoke-virtual {v0}, Lzendesk/support/SectionItem;->getId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getSection()Lzendesk/support/SectionItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SeeAllArticlesItem;->section:Lzendesk/support/SectionItem;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SeeAllArticlesItem;->section:Lzendesk/support/SectionItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzendesk/support/SectionItem;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/SeeAllArticlesItem;->isLoading:Z

    return v0
.end method

.method public setLoading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzendesk/support/SeeAllArticlesItem;->isLoading:Z

    return-void
.end method
