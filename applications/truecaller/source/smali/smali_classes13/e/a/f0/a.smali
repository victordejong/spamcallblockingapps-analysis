.class public final Le/a/f0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f0/c;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public final g:Le/a/f0/g/a;

.field public final h:Le/a/q2/a;

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/r/a;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/f0/g/a;Le/a/q2/a;Lo3/a;Lo3/a;Le/a/u3/g;)V
    .locals 1
    .param p5    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f0/g/a;",
            "Le/a/q2/a;",
            "Lo3/a<",
            "Le/a/b0/e/r/a;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;",
            "Le/a/u3/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "socialMediaPrefs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truecallerAccountManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f0/a;->g:Le/a/f0/g/a;

    iput-object p2, p0, Le/a/f0/a;->h:Le/a/q2/a;

    iput-object p3, p0, Le/a/f0/a;->i:Lo3/a;

    iput-object p4, p0, Le/a/f0/a;->j:Lo3/a;

    iput-object p5, p0, Le/a/f0/a;->k:Le/a/u3/g;

    .line 2
    new-instance p1, Le/a/f0/a$b;

    invoke-direct {p1, p0}, Le/a/f0/a$b;-><init>(Le/a/f0/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/f0/a;->a:Ls1/g;

    .line 3
    sget-object p1, Le/a/f0/a$d;->b:Le/a/f0/a$d;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/f0/a;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/f0/a$c;

    invoke-direct {p1, p0}, Le/a/f0/a$c;-><init>(Le/a/f0/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/f0/a;->c:Ls1/g;

    .line 5
    new-instance p1, Le/a/f0/a$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Le/a/f0/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/f0/a;->d:Ls1/g;

    .line 6
    new-instance p1, Le/a/f0/a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Le/a/f0/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/f0/a;->e:Ls1/g;

    .line 7
    new-instance p1, Le/a/f0/a$e;

    invoke-direct {p1, p0}, Le/a/f0/a$e;-><init>(Le/a/f0/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/f0/a;->f:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;
    .locals 1

    iget-object v0, p0, Le/a/f0/a;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    return-object v0
.end method

.method public final b()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;
    .locals 1

    iget-object v0, p0, Le/a/f0/a;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    return-object v0
.end method

.method public final c(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string p1, "https://www.tiktok.com/"

    .line 2
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Le/a/f0/a;->b()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getTiktokPage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const-string p1, "https://www.youtube.com/channel/"

    .line 3
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Le/a/f0/a;->b()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getYoutubePage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "https://www.instagram.com/"

    .line 4
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Le/a/f0/a;->b()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getInstagramPage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "https://www.facebook.com/"

    .line 5
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Le/a/f0/a;->b()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getFacebookPage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string p1, "https://twitter.com/"

    .line 6
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Le/a/f0/a;->b()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getTwitterPage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final d(Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string p1, "https://www.tiktok.com/"

    .line 2
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Le/a/f0/a;->b()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getTiktokPage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const-string p1, "vnd.youtube://channel/"

    .line 3
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Le/a/f0/a;->b()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getYoutubePage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "instagram://user?username="

    .line 4
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Le/a/f0/a;->b()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getInstagramPage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "fb://page/"

    .line 5
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Le/a/f0/a;->b()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getFacebookPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string p1, "twitter://user?screen_name="

    .line 6
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Le/a/f0/a;->b()Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;->getTwitterPage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
