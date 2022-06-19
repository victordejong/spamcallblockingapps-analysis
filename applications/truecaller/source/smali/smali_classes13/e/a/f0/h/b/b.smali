.class public final Le/a/f0/h/b/b;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/f0/h/b/a;",
        ">;",
        "Le/a/f0/h/b/b;"
    }
.end annotation


# instance fields
.field public final b:Le/a/f0/c;


# direct methods
.method public constructor <init>(Le/a/f0/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "socialMediaManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/f0/h/b/b;->b:Le/a/f0/c;

    return-void
.end method


# virtual methods
.method public final Hj(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f0/h/b/b;->b:Le/a/f0/c;

    check-cast v0, Le/a/f0/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "link"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_0

    const-string v0, "uri"

    .line 5
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    return-object v0
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/f0/h/b/a;

    const-string v2, "presenterView"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    sget-object v2, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget v2, Lcom/truecaller/social_media/R$drawable;->bg_truecaller_news_dark:I

    goto :goto_0

    .line 6
    :cond_0
    sget v2, Lcom/truecaller/social_media/R$drawable;->bg_truecaller_news_light:I

    .line 7
    :goto_0
    iget-object v3, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f0/h/b/a;

    if-eqz v3, :cond_1

    invoke-interface {v3, v2}, Le/a/f0/h/b/a;->Ze(I)V

    .line 8
    :cond_1
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f0/h/b/a;

    const/4 v3, 0x1

    if-eqz v2, :cond_15

    .line 9
    iget-object v4, v0, Le/a/f0/h/b/b;->b:Le/a/f0/c;

    check-cast v4, Le/a/f0/a;

    const/4 v5, 0x5

    new-array v5, v5, [Le/a/f0/h/a/a;

    .line 10
    invoke-virtual {v4}, Le/a/f0/a;->a()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getInstagramPage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v3

    :goto_2
    const/4 v8, 0x0

    if-nez v6, :cond_4

    .line 11
    new-instance v6, Le/a/f0/h/a/a;

    .line 12
    sget-object v10, Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;->INSTAGRAM:Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;

    .line 13
    sget v11, Lcom/truecaller/social_media/R$string;->follow_us_on_instagram:I

    .line 14
    sget v12, Lcom/truecaller/social_media/R$drawable;->ic_social_instagram:I

    .line 15
    invoke-virtual {v4, v10}, Le/a/f0/a;->c(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;)Ljava/lang/String;

    move-result-object v13

    .line 16
    invoke-virtual {v4, v10}, Le/a/f0/a;->d(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "instagram"

    move-object v9, v6

    .line 17
    invoke-direct/range {v9 .. v15}, Le/a/f0/h/a/a;-><init>(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v6, v8

    :goto_3
    aput-object v6, v5, v7

    .line 18
    invoke-virtual {v4}, Le/a/f0/a;->a()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getTwitterPage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    move v6, v7

    goto :goto_5

    :cond_6
    :goto_4
    move v6, v3

    :goto_5
    if-nez v6, :cond_7

    .line 19
    new-instance v6, Le/a/f0/h/a/a;

    .line 20
    sget-object v10, Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;->TWITTER:Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;

    .line 21
    sget v11, Lcom/truecaller/social_media/R$string;->follow_us_on_twitter:I

    .line 22
    sget v12, Lcom/truecaller/social_media/R$drawable;->ic_social_media_twitter:I

    .line 23
    invoke-virtual {v4, v10}, Le/a/f0/a;->c(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;)Ljava/lang/String;

    move-result-object v13

    .line 24
    invoke-virtual {v4, v10}, Le/a/f0/a;->d(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "twitter"

    move-object v9, v6

    .line 25
    invoke-direct/range {v9 .. v15}, Le/a/f0/h/a/a;-><init>(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object v6, v8

    :goto_6
    aput-object v6, v5, v3

    const/4 v6, 0x2

    .line 26
    invoke-virtual {v4}, Le/a/f0/a;->a()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v9

    invoke-virtual {v9}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getTiktokPage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_8

    goto :goto_7

    :cond_8
    move v9, v7

    goto :goto_8

    :cond_9
    :goto_7
    move v9, v3

    :goto_8
    if-nez v9, :cond_e

    .line 27
    iget-object v9, v4, Le/a/f0/a;->f:Ls1/g;

    invoke-interface {v9}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 28
    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_9

    .line 29
    :cond_a
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 30
    iget-object v11, v4, Le/a/f0/a;->a:Ls1/g;

    invoke-interface {v11}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 31
    invoke-static {v10, v11, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_b

    move v9, v3

    goto :goto_a

    :cond_c
    :goto_9
    move v9, v7

    :goto_a
    if-nez v9, :cond_e

    .line 32
    new-instance v9, Le/a/f0/h/a/a;

    .line 33
    sget-object v11, Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;->TIKTOK:Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;

    .line 34
    sget v12, Lcom/truecaller/social_media/R$string;->follow_us_on_tiktok:I

    .line 35
    sget-object v10, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->f()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 36
    sget v10, Lcom/truecaller/social_media/R$drawable;->ic_tiktok_dark_24:I

    goto :goto_b

    .line 37
    :cond_d
    sget v10, Lcom/truecaller/social_media/R$drawable;->ic_tiktok_light_24:I

    :goto_b
    move v13, v10

    .line 38
    invoke-virtual {v4, v11}, Le/a/f0/a;->c(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;)Ljava/lang/String;

    move-result-object v14

    .line 39
    invoke-virtual {v4, v11}, Le/a/f0/a;->d(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "tiktok"

    move-object v10, v9

    .line 40
    invoke-direct/range {v10 .. v16}, Le/a/f0/h/a/a;-><init>(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_e
    move-object v9, v8

    :goto_c
    aput-object v9, v5, v6

    const/4 v6, 0x3

    .line 41
    invoke-virtual {v4}, Le/a/f0/a;->a()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v9

    invoke-virtual {v9}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getFacebookPage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_f

    goto :goto_d

    :cond_f
    move v9, v7

    goto :goto_e

    :cond_10
    :goto_d
    move v9, v3

    :goto_e
    if-nez v9, :cond_11

    .line 42
    new-instance v9, Le/a/f0/h/a/a;

    .line 43
    sget-object v11, Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;->FACEBOOK:Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;

    .line 44
    sget v12, Lcom/truecaller/social_media/R$string;->like_us_on_facebook:I

    .line 45
    sget v13, Lcom/truecaller/social_media/R$drawable;->ic_social_facebook:I

    .line 46
    invoke-virtual {v4, v11}, Le/a/f0/a;->c(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;)Ljava/lang/String;

    move-result-object v14

    .line 47
    invoke-virtual {v4, v11}, Le/a/f0/a;->d(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "facebook"

    move-object v10, v9

    .line 48
    invoke-direct/range {v10 .. v16}, Le/a/f0/h/a/a;-><init>(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_11
    move-object v9, v8

    :goto_f
    aput-object v9, v5, v6

    const/4 v6, 0x4

    .line 49
    invoke-virtual {v4}, Le/a/f0/a;->a()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v9

    invoke-virtual {v9}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getYoutubePage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_13

    :cond_12
    move v7, v3

    :cond_13
    if-nez v7, :cond_14

    .line 50
    new-instance v8, Le/a/f0/h/a/a;

    .line 51
    sget-object v10, Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;->YOUTUBE:Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;

    .line 52
    sget v11, Lcom/truecaller/social_media/R$string;->subscribe_to_our_youtube:I

    .line 53
    sget v12, Lcom/truecaller/social_media/R$drawable;->ic_social_youtube:I

    .line 54
    invoke-virtual {v4, v10}, Le/a/f0/a;->c(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;)Ljava/lang/String;

    move-result-object v13

    .line 55
    invoke-virtual {v4, v10}, Le/a/f0/a;->d(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "youtube"

    move-object v9, v8

    .line 56
    invoke-direct/range {v9 .. v15}, Le/a/f0/h/a/a;-><init>(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    aput-object v8, v5, v6

    .line 57
    invoke-static {v5}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 58
    invoke-interface {v2, v4}, Le/a/f0/h/b/a;->Gz(Ljava/util/List;)V

    .line 59
    :cond_15
    invoke-interface {v1}, Le/a/f0/h/b/a;->getSource()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_10

    .line 60
    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x7c4a0b5c

    if-eq v2, v4, :cond_17

    goto :goto_10

    :cond_17
    const-string v2, "sidebar"

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Le/a/f0/h/b/b;->b:Le/a/f0/c;

    check-cast v2, Le/a/f0/a;

    .line 62
    iget-object v2, v2, Le/a/f0/a;->g:Le/a/f0/g/a;

    invoke-interface {v2, v3}, Le/a/f0/g/a;->K2(Z)V

    .line 63
    :cond_18
    :goto_10
    iget-object v2, v0, Le/a/f0/h/b/b;->b:Le/a/f0/c;

    check-cast v2, Le/a/f0/a;

    .line 64
    iget-object v2, v2, Le/a/f0/a;->h:Le/a/q2/a;

    .line 65
    new-instance v3, Le/a/f0/d/a;

    const-string v4, "Truecaller_News_Opened"

    invoke-direct {v3, v4, v1}, Le/a/f0/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-interface {v2, v3}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method
