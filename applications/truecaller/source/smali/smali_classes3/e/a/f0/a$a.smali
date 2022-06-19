.class public final Le/a/f0/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f0/a;-><init>(Le/a/f0/g/a;Le/a/q2/a;Lo3/a;Lo3/a;Le/a/u3/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/f0/a$a;->b:I

    iput-object p2, p0, Le/a/f0/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Le/a/f0/a$a;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    if-ne v0, v2, :cond_a

    .line 1
    iget-object v0, p0, Le/a/f0/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/f0/a;

    .line 2
    iget-object v0, v0, Le/a/f0/a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 3
    iget-object v0, p0, Le/a/f0/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/f0/a;

    .line 4
    iget-object v3, v0, Le/a/f0/a;->c:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/social_media/domain/data/TCNewsLinksConfig;

    .line 5
    invoke-virtual {v3}, Lcom/truecaller/social_media/domain/data/TCNewsLinksConfig;->getConfig()Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    .line 7
    invoke-virtual {v6}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, v5

    .line 8
    :cond_1
    check-cast v1, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    if-eqz v1, :cond_8

    .line 9
    new-instance v2, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getTwitterPage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Le/a/f0/a;->a()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getTwitterPage()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v5, v3

    .line 11
    invoke-virtual {v1}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getInstagramPage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Le/a/f0/a;->a()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getInstagramPage()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v6, v3

    .line 12
    invoke-virtual {v1}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getFacebookPage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Le/a/f0/a;->a()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getFacebookPage()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v7, v3

    .line 13
    invoke-virtual {v1}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getFacebookPageId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Le/a/f0/a;->a()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getFacebookPageId()Ljava/lang/String;

    move-result-object v3

    :goto_3
    move-object v8, v3

    .line 14
    invoke-virtual {v1}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getYoutubePage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Le/a/f0/a;->a()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getYoutubePage()Ljava/lang/String;

    move-result-object v3

    :goto_4
    move-object v9, v3

    .line 15
    invoke-virtual {v1}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getTiktokPage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    move-object v10, v1

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Le/a/f0/a;->a()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getTiktokPage()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    :goto_5
    move-object v3, v2

    .line 16
    invoke-direct/range {v3 .. v10}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 17
    :cond_8
    invoke-virtual {v0}, Le/a/f0/a;->a()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v2

    :goto_6
    if-eqz v2, :cond_9

    goto :goto_7

    .line 18
    :cond_9
    iget-object v0, p0, Le/a/f0/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/f0/a;

    .line 19
    invoke-virtual {v0}, Le/a/f0/a;->a()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v2

    :goto_7
    return-object v2

    .line 20
    :cond_a
    throw v1

    .line 21
    :cond_b
    iget-object v0, p0, Le/a/f0/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/f0/a;

    .line 22
    iget-object v0, v0, Le/a/f0/a;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/social_media/domain/data/TCNewsLinksConfig;

    .line 23
    invoke-virtual {v0}, Lcom/truecaller/social_media/domain/data/TCNewsLinksConfig;->getConfig()Ljava/util/List;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    .line 25
    invoke-virtual {v4}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default"

    invoke-static {v4, v5, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v1, v3

    .line 26
    :cond_d
    check-cast v1, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    if-eqz v1, :cond_e

    goto :goto_8

    .line 27
    :cond_e
    iget-object v0, p0, Le/a/f0/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/f0/a;

    .line 28
    iget-object v0, v0, Le/a/f0/a;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    :goto_8
    return-object v1
.end method
