.class public final Le/a/v/a/o0/f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.details_view.ui.socialmedia.SocialMediaPresenter$onDetailsViewModelReceived$1"
    f = "SocialMediaPresenter.kt"
    l = {
        0x1f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/v/a/o0/g;

.field public final synthetic i:Le/a/v/a/s;


# direct methods
.method public constructor <init>(Le/a/v/a/o0/g;Le/a/v/a/s;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/o0/f;->h:Le/a/v/a/o0/g;

    iput-object p2, p0, Le/a/v/a/o0/f;->i:Le/a/v/a/s;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v/a/o0/f;

    iget-object v0, p0, Le/a/v/a/o0/f;->h:Le/a/v/a/o0/g;

    iget-object v1, p0, Le/a/v/a/o0/f;->i:Le/a/v/a/s;

    invoke-direct {p1, v0, v1, p2}, Le/a/v/a/o0/f;-><init>(Le/a/v/a/o0/g;Le/a/v/a/s;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v/a/o0/f;

    iget-object v0, p0, Le/a/v/a/o0/f;->h:Le/a/v/a/o0/g;

    iget-object v1, p0, Le/a/v/a/o0/f;->i:Le/a/v/a/s;

    invoke-direct {p1, v0, v1, p2}, Le/a/v/a/o0/f;-><init>(Le/a/v/a/o0/g;Le/a/v/a/s;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v/a/o0/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/v/a/o0/f;->g:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/v/a/o0/f;->f:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/o0/g;

    iget-object v1, p0, Le/a/v/a/o0/f;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/v/a/o0/f;->h:Le/a/v/a/o0/g;

    .line 5
    iget-object p1, p1, Le/a/v/a/o0/g;->e:Le/a/v/a/o0/a;

    .line 6
    iget-object v1, p0, Le/a/v/a/o0/f;->i:Le/a/v/a/s;

    .line 7
    iget-object v1, v1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 8
    invoke-interface {p1, v1}, Le/a/v/a/o0/a;->c(Lcom/truecaller/data/entity/Contact;)Ljava/util/List;

    move-result-object p1

    .line 9
    iget-object v1, p0, Le/a/v/a/o0/f;->h:Le/a/v/a/o0/g;

    iget-object v4, p0, Le/a/v/a/o0/f;->i:Le/a/v/a/s;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v6, v4, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 13
    invoke-virtual {v1, v6}, Le/a/v/a/o0/g;->Ij(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v2

    :goto_1
    if-nez v6, :cond_4

    .line 14
    iget-object v4, v4, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 15
    invoke-virtual {v1, v4}, Le/a/v/a/o0/g;->Ij(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;

    move-result-object v4

    .line 16
    iget-object v6, v1, Le/a/v/a/o0/g;->g:Le/a/v/a/z/a;

    sget-object v7, Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;->WEBSITE:Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;

    invoke-virtual {v6, v7}, Le/a/v/a/z/a;->c(Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;)V

    .line 17
    new-instance v6, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;

    .line 18
    sget-object v7, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;->WEBSITE:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    .line 19
    iget-object v8, v1, Le/a/v/a/o0/g;->f:Le/a/p5/c0;

    sget v9, Lcom/truecaller/details_view/R$string;->details_view_website:I

    new-array v10, v3, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "resourceProvider.getStri\u2026ing.details_view_website)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget v9, Lcom/truecaller/details_view/R$drawable;->ic_social_web:I

    .line 21
    new-instance v10, Le/a/v/a/o0/e;

    invoke-direct {v10, v1, v4}, Le/a/v/a/o0/e;-><init>(Le/a/v/a/o0/g;Ljava/lang/String;)V

    .line 22
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;-><init>(Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;Ljava/lang/String;ILs1/z/b/a;)V

    .line 23
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/data/entity/Link;

    .line 25
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Link;->getService()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x369e558d

    if-eq v7, v8, :cond_9

    const v8, 0x1b907b2

    if-eq v7, v8, :cond_8

    const v8, 0x1da19ac6

    if-eq v7, v8, :cond_7

    goto :goto_2

    :cond_7
    const-string v7, "facebook"

    .line 26
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 27
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Link;->getInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 28
    iget-object v6, v1, Le/a/v/a/o0/g;->g:Le/a/v/a/z/a;

    sget-object v7, Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;->FACEBOOK:Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;

    invoke-virtual {v6, v7}, Le/a/v/a/z/a;->c(Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;)V

    .line 29
    new-instance v6, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;

    .line 30
    sget-object v7, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;->FACEBOOK:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    .line 31
    iget-object v8, v1, Le/a/v/a/o0/g;->f:Le/a/p5/c0;

    sget v9, Lcom/truecaller/details_view/R$string;->details_view_facebook:I

    new-array v10, v3, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "resourceProvider.getStri\u2026ng.details_view_facebook)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget v9, Lcom/truecaller/details_view/R$drawable;->ic_social_fb:I

    .line 33
    new-instance v10, Lr2;

    invoke-direct {v10, v3, v4, v1, v5}, Lr2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;-><init>(Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;Ljava/lang/String;ILs1/z/b/a;)V

    .line 35
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const-string v7, "instagram"

    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 37
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Link;->getInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 38
    iget-object v6, v1, Le/a/v/a/o0/g;->g:Le/a/v/a/z/a;

    sget-object v7, Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;->INSTAGRAM:Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;

    invoke-virtual {v6, v7}, Le/a/v/a/z/a;->c(Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;)V

    .line 39
    new-instance v6, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;

    .line 40
    sget-object v7, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;->INSTAGRAM:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    .line 41
    iget-object v8, v1, Le/a/v/a/o0/g;->f:Le/a/p5/c0;

    sget v9, Lcom/truecaller/details_view/R$string;->details_view_instagram:I

    new-array v10, v3, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "resourceProvider.getStri\u2026g.details_view_instagram)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget v9, Lcom/truecaller/details_view/R$drawable;->ic_detail_view_social_instagram:I

    .line 43
    new-instance v10, Lr2;

    const/4 v11, 0x2

    invoke-direct {v10, v11, v4, v1, v5}, Lr2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;-><init>(Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;Ljava/lang/String;ILs1/z/b/a;)V

    .line 45
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    const-string v7, "twitter"

    .line 46
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 47
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Link;->getInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 48
    iget-object v6, v1, Le/a/v/a/o0/g;->g:Le/a/v/a/z/a;

    sget-object v7, Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;->TWITTER:Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;

    invoke-virtual {v6, v7}, Le/a/v/a/z/a;->c(Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;)V

    .line 49
    new-instance v6, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;

    .line 50
    sget-object v7, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;->TWITTER:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    .line 51
    iget-object v8, v1, Le/a/v/a/o0/g;->f:Le/a/p5/c0;

    sget v9, Lcom/truecaller/details_view/R$string;->details_view_twitter:I

    new-array v10, v3, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "resourceProvider.getStri\u2026ing.details_view_twitter)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget v9, Lcom/truecaller/details_view/R$drawable;->ic_social_twitter:I

    .line 53
    new-instance v10, Lr2;

    invoke-direct {v10, v2, v4, v1, v5}, Lr2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;-><init>(Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;Ljava/lang/String;ILs1/z/b/a;)V

    .line 55
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 56
    :cond_a
    iget-object p1, p0, Le/a/v/a/o0/f;->h:Le/a/v/a/o0/g;

    .line 57
    iget-object v1, p1, Le/a/v/a/o0/g;->e:Le/a/v/a/o0/a;

    .line 58
    iget-object v4, p0, Le/a/v/a/o0/f;->i:Le/a/v/a/s;

    .line 59
    iget-object v4, v4, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 60
    iput-object v5, p0, Le/a/v/a/o0/f;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/v/a/o0/f;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/v/a/o0/f;->g:I

    invoke-interface {v1, v4, p0}, Le/a/v/a/o0/a;->a(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_b

    return-object v0

    :cond_b
    move-object v0, p1

    move-object p1, v1

    move-object v1, v5

    :goto_3
    check-cast p1, Ljava/util/List;

    .line 61
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/data/entity/AppStores;

    .line 64
    invoke-virtual {v5}, Lcom/truecaller/data/entity/AppStores;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_c

    .line 65
    invoke-virtual {v5}, Lcom/truecaller/data/entity/AppStores;->getLinkType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GooglePlayStore"

    invoke-static {v7, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 66
    iget-object p1, v0, Le/a/v/a/o0/g;->g:Le/a/v/a/z/a;

    sget-object v6, Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;->GOOGLE_PLAY_STORE:Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;

    invoke-virtual {p1, v6}, Le/a/v/a/z/a;->c(Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;)V

    .line 67
    new-instance p1, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;

    .line 68
    sget-object v6, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;->GOOGLE_PLAY_STORE:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    .line 69
    iget-object v7, v0, Le/a/v/a/o0/g;->f:Le/a/p5/c0;

    sget v8, Lcom/truecaller/details_view/R$string;->details_view_android_app:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v7, v8, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "resourceProvider.getStri\u2026details_view_android_app)"

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget v7, Lcom/truecaller/details_view/R$drawable;->ic_google_play_store:I

    .line 71
    new-instance v8, Le/a/v/a/o0/d;

    invoke-direct {v8, v0, v5}, Le/a/v/a/o0/d;-><init>(Le/a/v/a/o0/g;Lcom/truecaller/data/entity/AppStores;)V

    .line 72
    invoke-direct {p1, v6, v3, v7, v8}, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;-><init>(Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;Ljava/lang/String;ILs1/z/b/a;)V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_d
    invoke-static {v1, v4}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 74
    new-instance v0, Le/a/v/a/o0/f$a;

    invoke-direct {v0}, Le/a/v/a/o0/f$a;-><init>()V

    invoke-static {p1, v0}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 75
    iget-object v0, p0, Le/a/v/a/o0/f;->h:Le/a/v/a/o0/g;

    .line 76
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/o0/c;

    if-eqz v0, :cond_f

    .line 77
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_e

    .line 78
    invoke-interface {v0, p1}, Le/a/v/a/o0/c;->a(Ljava/util/List;)V

    goto :goto_4

    .line 79
    :cond_e
    invoke-interface {v0}, Le/a/v/a/o0/c;->b()V

    .line 80
    :cond_f
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
