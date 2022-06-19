.class public final Le/a/k/c/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/c2;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/k/c/h0;

.field public final c:Le/a/k/j;

.field public final d:Le/a/k/c/c;

.field public final e:Le/a/k/c/b0;

.field public final f:Le/a/b0/q/z;

.field public final g:Le/a/p5/c;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/k/c/h0;Le/a/k/j;Le/a/k/c/c;Le/a/k/c/b0;Le/a/b0/q/z;Le/a/p5/c;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiveVideoSettingsManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdSupport"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessVideoPlayerConfigProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "incomingVideoProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/d2;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/k/c/d2;->b:Le/a/k/c/h0;

    iput-object p3, p0, Le/a/k/c/d2;->c:Le/a/k/j;

    iput-object p4, p0, Le/a/k/c/d2;->d:Le/a/k/c/c;

    iput-object p5, p0, Le/a/k/c/d2;->e:Le/a/k/c/b0;

    iput-object p6, p0, Le/a/k/c/d2;->f:Le/a/b0/q/z;

    iput-object p7, p0, Le/a/k/c/d2;->g:Le/a/p5/c;

    return-void
.end method

.method public static synthetic n(Le/a/k/c/d2;ZLjava/lang/String;ZZLs1/w/d;I)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p4, 0x1

    :cond_0
    move v4, p4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v5}, Le/a/k/c/d2;->m(ZLjava/lang/String;ZZLs1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Le/a/k/a/k/l;
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/k/c/d2;->d:Le/a/k/c/c;

    check-cast v0, Le/a/k/c/f;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Le/a/k/c/f;->d(Lcom/truecaller/data/entity/Contact;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Le/a/k/c/f;->b(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5
    new-instance v1, Le/a/k/a/k/l$c;

    .line 6
    new-instance v4, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;

    const v0, 0x42c7cccd    # 99.9f

    invoke-direct {v4, v0}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;-><init>(F)V

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x20

    move-object v3, v1

    move-object v8, p2

    .line 8
    invoke-direct/range {v3 .. v10}, Le/a/k/a/k/l$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public b(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Le/a/k/a/k/l;
    .locals 10

    .line 1
    iget-object p2, p0, Le/a/k/c/d2;->d:Le/a/k/c/c;

    check-cast p2, Le/a/k/c/f;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p2, p1}, Le/a/k/c/f;->d(Lcom/truecaller/data/entity/Contact;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2, p1}, Le/a/k/c/f;->a(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5
    new-instance p2, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 6
    sget-object v0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->WAIT_FOR_BUFFER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    .line 7
    sget-object v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;->WAIT_FOR_BUFFER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;

    .line 8
    invoke-direct {p2, v0, v1}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;)V

    .line 9
    new-instance v0, Le/a/k/a/k/l$c;

    .line 10
    new-instance v3, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;

    invoke-direct {v3, p2}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;)V

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {p1}, Le/a/m0/a1$k;->X(Lcom/truecaller/data/entity/Contact;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x20

    move-object v2, v0

    .line 13
    invoke-direct/range {v2 .. v9}, Le/a/k/a/k/l$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public c(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/String;",
            "Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;",
            "Ls1/w/d<",
            "-",
            "Le/a/k/a/k/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Le/a/k/c/d2;->d:Le/a/k/c/c;

    check-cast v0, Le/a/k/c/f;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "contact"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "playerContext"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Le/a/k/c/f;->d(Lcom/truecaller/data/entity/Contact;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Le/a/k/c/f;->b(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    new-instance p4, Le/a/k/a/k/a$c;

    .line 6
    iget-object p3, v0, Le/a/k/c/f;->c:Le/a/k/j;

    new-instance v0, Le/a/k/c/e;

    invoke-direct {v0, p2}, Le/a/k/c/e;-><init>(Ljava/lang/String;)V

    check-cast p3, Le/a/k/k;

    invoke-virtual {p3, p1, v0}, Le/a/k/k;->a(Lcom/truecaller/data/entity/Contact;Ls1/z/b/l;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v2

    .line 7
    new-instance v4, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;

    const p3, 0x42c7cccd    # 99.9f

    invoke-direct {v4, p3}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;-><init>(F)V

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x40

    move-object v1, p4

    move-object v7, p2

    .line 9
    invoke-direct/range {v1 .. v9}, Le/a/k/a/k/a$c;-><init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLjava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V

    :cond_1
    :goto_0
    return-object p4
.end method

.method public d(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/k/c/d2;->d:Le/a/k/c/c;

    check-cast p2, Le/a/k/c/f;

    invoke-virtual {p2, p1}, Le/a/k/c/f;->c(Lcom/truecaller/data/entity/Contact;)Z

    move-result p1

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k/c/d2;->d:Le/a/k/c/c;

    check-cast v0, Le/a/k/c/f;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {v0, p1}, Le/a/k/c/f;->d(Lcom/truecaller/data/entity/Contact;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Le/a/k/c/f;->b(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v2, v0, Le/a/k/c/f;->a:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->C()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Le/a/k/c/f;->a(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public f(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;ZZLs1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/String;",
            "Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;",
            "Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;",
            "ZZ",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
            "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Le/a/k/a/k/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p8, Le/a/k/c/d2$c;

    if-eqz v0, :cond_0

    move-object v0, p8

    check-cast v0, Le/a/k/c/d2$c;

    iget v1, v0, Le/a/k/c/d2$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/c/d2$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/c/d2$c;

    invoke-direct {v0, p0, p8}, Le/a/k/c/d2$c;-><init>(Le/a/k/c/d2;Ls1/w/d;)V

    :goto_0
    move-object v6, v0

    iget-object p8, v6, Le/a/k/c/d2$c;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v6, Le/a/k/c/d2$c;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v6, Le/a/k/c/d2$c;->k:Ljava/lang/Object;

    move-object p7, p1

    check-cast p7, Ls1/z/b/l;

    iget-object p1, v6, Le/a/k/c/d2$c;->j:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    iget-object p1, v6, Le/a/k/c/d2$c;->i:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iget-object p1, v6, Le/a/k/c/d2$c;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    iget-object p2, v6, Le/a/k/c/d2$c;->g:Ljava/lang/Object;

    check-cast p2, Le/a/k/c/d2;

    invoke-static {p8}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p8}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result p8

    iput-object p0, v6, Le/a/k/c/d2$c;->g:Ljava/lang/Object;

    iput-object p1, v6, Le/a/k/c/d2$c;->h:Ljava/lang/Object;

    iput-object p3, v6, Le/a/k/c/d2$c;->i:Ljava/lang/Object;

    iput-object p4, v6, Le/a/k/c/d2$c;->j:Ljava/lang/Object;

    iput-object p7, v6, Le/a/k/c/d2$c;->k:Ljava/lang/Object;

    iput v2, v6, Le/a/k/c/d2$c;->e:I

    move-object v1, p0

    move v2, p8

    move-object v3, p2

    move v4, p5

    move v5, p6

    invoke-virtual/range {v1 .. v6}, Le/a/k/c/d2;->m(ZLjava/lang/String;ZZLs1/w/d;)Ljava/lang/Object;

    move-result-object p8

    if-ne p8, v0, :cond_3

    return-object v0

    :cond_3
    move-object p2, p0

    :goto_1
    check-cast p8, Le/a/k/l/b;

    if-eqz p8, :cond_4

    .line 5
    new-instance p5, Le/a/k/a/k/a$b;

    .line 6
    iget-object p2, p2, Le/a/k/c/d2;->c:Le/a/k/j;

    check-cast p2, Le/a/k/k;

    invoke-virtual {p2, p1, p7}, Le/a/k/k;->a(Lcom/truecaller/data/entity/Contact;Ls1/z/b/l;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p1

    const-string p6, "contact.numbers"

    invoke-static {p1, p6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance p6, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    .line 9
    iget-object p7, p8, Le/a/k/l/b;->d:Ljava/lang/String;

    .line 10
    iget-object p8, p8, Le/a/k/l/b;->a:Ljava/lang/String;

    .line 11
    invoke-direct {p6, p4, p7, p8}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;-><init>(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p5, p2, p1, p3, p6}, Le/a/k/a/k/a$b;-><init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/util/List;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;)V

    return-object p5

    .line 13
    :cond_4
    invoke-virtual {p2, p1, p7}, Le/a/k/c/d2;->l(Lcom/truecaller/data/entity/Contact;Ls1/z/b/l;)Le/a/k/a/k/a$a;

    move-result-object p1

    return-object p1

    .line 14
    :cond_5
    invoke-virtual {p0, p1, p7}, Le/a/k/c/d2;->l(Lcom/truecaller/data/entity/Contact;Ls1/z/b/l;)Le/a/k/a/k/a$a;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Z)Le/a/k/c/b;
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/k/c/d2;->d:Le/a/k/c/c;

    check-cast v0, Le/a/k/c/f;

    .line 2
    iget-object v1, v0, Le/a/k/c/f;->a:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->C()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {v0, p1}, Le/a/k/c/f;->d(Lcom/truecaller/data/entity/Contact;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Le/a/k/c/f;->c(Lcom/truecaller/data/entity/Contact;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Le/a/k/c/f;->a(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 6
    new-instance v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 7
    sget-object v2, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->WAIT_FOR_BUFFER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    .line 8
    sget-object v3, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;->WAIT_FOR_BUFFER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;

    .line 9
    invoke-direct {v1, v2, v3}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;)V

    if-eqz p3, :cond_1

    .line 10
    new-instance p3, Le/a/k/c/b$a;

    .line 11
    new-instance v1, Le/a/k/a/k/a$c;

    .line 12
    iget-object v0, v0, Le/a/k/c/f;->c:Le/a/k/j;

    new-instance v2, Le/a/k/c/d;

    invoke-direct {v2, p2}, Le/a/k/c/d;-><init>(Ljava/lang/String;)V

    check-cast v0, Le/a/k/k;

    invoke-virtual {v0, p1, v2}, Le/a/k/k;->a(Lcom/truecaller/data/entity/Contact;Ls1/z/b/l;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v4

    .line 13
    new-instance v6, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;

    const p2, 0x42c7cccd    # 99.9f

    invoke-direct {v6, p2}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;-><init>(F)V

    .line 14
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-static {p1}, Le/a/m0/a1$k;->X(Lcom/truecaller/data/entity/Contact;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x40

    move-object v3, v1

    .line 16
    invoke-direct/range {v3 .. v11}, Le/a/k/a/k/a$c;-><init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLjava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V

    .line 17
    invoke-direct {p3, v1}, Le/a/k/c/b$a;-><init>(Le/a/k/a/k/a;)V

    move-object v2, p3

    goto :goto_0

    .line 18
    :cond_1
    new-instance p2, Le/a/k/c/b$b;

    .line 19
    new-instance p3, Le/a/k/a/k/l$c;

    .line 20
    new-instance v4, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;

    invoke-direct {v4, v1}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;)V

    .line 21
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-static {p1}, Le/a/m0/a1$k;->X(Lcom/truecaller/data/entity/Contact;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x20

    move-object v3, p3

    .line 23
    invoke-direct/range {v3 .. v10}, Le/a/k/a/k/l$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V

    .line 24
    invoke-direct {p2, p3}, Le/a/k/c/b$b;-><init>(Le/a/k/a/k/l;)V

    move-object v2, p2

    :cond_2
    :goto_0
    return-object v2
.end method

.method public h(Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/k/c/d2;->a:Ls1/w/f;

    new-instance v1, Le/a/k/c/d2$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/k/c/d2$e;-><init>(Le/a/k/c/d2;Ljava/lang/String;ZLs1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;ZLs1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/String;",
            "Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;",
            "Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Le/a/k/a/k/l;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v1, v0, Le/a/k/c/d2$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/k/c/d2$a;

    iget v2, v1, Le/a/k/c/d2$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/k/c/d2$a;->e:I

    move-object/from16 v9, p0

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/k/c/d2$a;

    move-object/from16 v9, p0

    invoke-direct {v1, v9, v0}, Le/a/k/c/d2$a;-><init>(Le/a/k/c/d2;Ls1/w/d;)V

    :goto_0
    move-object v7, v1

    iget-object v0, v7, Le/a/k/c/d2$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v7, Le/a/k/c/d2$a;->e:I

    const/4 v10, 0x0

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v7, Le/a/k/c/d2$a;->h:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    iget-object v2, v7, Le/a/k/c/d2$a;->g:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v12, v2

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v0

    const/4 v6, 0x0

    const/16 v8, 0x8

    move-object/from16 v11, p3

    iput-object v11, v7, Le/a/k/c/d2$a;->g:Ljava/lang/Object;

    move-object/from16 v12, p4

    iput-object v12, v7, Le/a/k/c/d2$a;->h:Ljava/lang/Object;

    iput v3, v7, Le/a/k/c/d2$a;->e:I

    move-object/from16 v2, p0

    move v3, v0

    move-object/from16 v4, p2

    move/from16 v5, p5

    invoke-static/range {v2 .. v8}, Le/a/k/c/d2;->n(Le/a/k/c/d2;ZLjava/lang/String;ZZLs1/w/d;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, v12

    move-object v12, v11

    :goto_1
    check-cast v0, Le/a/k/l/b;

    if-eqz v0, :cond_4

    .line 5
    new-instance v2, Le/a/k/a/k/l$c;

    .line 6
    iget-object v3, v0, Le/a/k/l/b;->e:Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 7
    iget-object v13, v3, Lcom/truecaller/videocallerid/data/VideoDetails;->a:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 8
    new-instance v3, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    .line 9
    iget-object v4, v0, Le/a/k/l/b;->d:Ljava/lang/String;

    .line 10
    iget-object v0, v0, Le/a/k/l/b;->a:Ljava/lang/String;

    .line 11
    invoke-direct {v3, v1, v4, v0}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;-><init>(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v18, 0x1c

    move-object v11, v2

    move-object/from16 v17, v3

    .line 12
    invoke-direct/range {v11 .. v18}, Le/a/k/a/k/l$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V

    return-object v2

    :cond_4
    return-object v10
.end method

.method public j(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Le/a/k/a/k/l;
    .locals 11

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/c/d2;->d:Le/a/k/c/c;

    check-cast v0, Le/a/k/c/f;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Le/a/k/c/f;->d(Lcom/truecaller/data/entity/Contact;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Le/a/k/c/f;->b(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5
    new-instance v0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 6
    sget-object v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->WAIT_FOR_BUFFER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    .line 7
    sget-object v2, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;->PLAY_PARTLY_ONCE_THEN_BUFFER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;)V

    .line 9
    new-instance v1, Le/a/k/a/k/l$c;

    .line 10
    new-instance v4, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;

    invoke-direct {v4, v0}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;)V

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x20

    move-object v3, v1

    move-object v8, p2

    .line 12
    invoke-direct/range {v3 .. v10}, Le/a/k/a/k/l$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public k(ZLjava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    invoke-static {p2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    if-nez p1, :cond_2

    goto :goto_2

    .line 2
    :cond_2
    iget-object v0, p0, Le/a/k/c/d2;->a:Ls1/w/f;

    new-instance v7, Le/a/k/c/d2$d;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/k/c/d2$d;-><init>(Le/a/k/c/d2;Ljava/lang/String;ZZLs1/w/d;)V

    invoke-static {v0, v7, p4}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_3
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public l(Lcom/truecaller/data/entity/Contact;Ls1/z/b/l;)Le/a/k/a/k/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
            "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
            ">;)",
            "Le/a/k/a/k/a$a;"
        }
    .end annotation

    const-string v0, "avatarXConfigModifier"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/k/a/k/a$a;

    iget-object v1, p0, Le/a/k/c/d2;->c:Le/a/k/j;

    check-cast v1, Le/a/k/k;

    invoke-virtual {v1, p1, p2}, Le/a/k/k;->a(Lcom/truecaller/data/entity/Contact;Ls1/z/b/l;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/k/a/k/a$a;-><init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    return-object v0
.end method

.method public final m(ZLjava/lang/String;ZZLs1/w/d;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZ",
            "Ls1/w/d<",
            "-",
            "Le/a/k/l/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    instance-of v3, v2, Le/a/k/c/d2$b;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/k/c/d2$b;

    iget v4, v3, Le/a/k/c/d2$b;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/k/c/d2$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/k/c/d2$b;

    invoke-direct {v3, p0, v2}, Le/a/k/c/d2$b;-><init>(Le/a/k/c/d2;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/k/c/d2$b;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/k/c/d2$b;->e:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Le/a/k/c/d2$b;->g:Ljava/lang/Object;

    check-cast v1, Le/a/k/l/b;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-boolean v1, v3, Le/a/k/c/d2$b;->i:Z

    iget-object v5, v3, Le/a/k/c/d2$b;->h:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v8, v3, Le/a/k/c/d2$b;->g:Ljava/lang/Object;

    check-cast v8, Le/a/k/c/d2;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v14, v2

    move v2, v1

    move-object v1, v5

    move-object v5, v14

    goto :goto_1

    :cond_4
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    if-nez p4, :cond_5

    goto :goto_4

    .line 4
    :cond_5
    iput-object v0, v3, Le/a/k/c/d2$b;->g:Ljava/lang/Object;

    iput-object v1, v3, Le/a/k/c/d2$b;->h:Ljava/lang/Object;

    move/from16 v2, p3

    iput-boolean v2, v3, Le/a/k/c/d2$b;->i:Z

    iput v8, v3, Le/a/k/c/d2$b;->e:I

    .line 5
    iget-object v5, v0, Le/a/k/c/d2;->e:Le/a/k/c/b0;

    invoke-interface {v5, v1, v3}, Le/a/k/c/b0;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_6

    return-object v4

    :cond_6
    move-object v8, v0

    .line 6
    :goto_1
    check-cast v5, Le/a/k/l/b;

    if-eqz v5, :cond_a

    if-eqz v2, :cond_8

    .line 7
    iget-object v2, v8, Le/a/k/c/d2;->g:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v10

    .line 8
    iget-wide v12, v5, Le/a/k/l/b;->c:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x4e20

    cmp-long v2, v10, v12

    if-lez v2, :cond_8

    .line 9
    iget-object v2, v8, Le/a/k/c/d2;->e:Le/a/k/c/b0;

    iput-object v9, v3, Le/a/k/c/d2$b;->g:Ljava/lang/Object;

    iput-object v9, v3, Le/a/k/c/d2$b;->h:Ljava/lang/Object;

    iput v7, v3, Le/a/k/c/d2$b;->e:I

    invoke-interface {v2, v1, v3}, Le/a/k/c/b0;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_7

    return-object v4

    :cond_7
    :goto_2
    return-object v9

    .line 10
    :cond_8
    iget-object v2, v8, Le/a/k/c/d2;->b:Le/a/k/c/h0;

    iput-object v5, v3, Le/a/k/c/d2$b;->g:Ljava/lang/Object;

    iput-object v9, v3, Le/a/k/c/d2$b;->h:Ljava/lang/Object;

    iput v6, v3, Le/a/k/c/d2$b;->e:I

    invoke-interface {v2, v1, v3}, Le/a/k/c/h0;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_9

    return-object v4

    :cond_9
    move-object v1, v5

    :goto_3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    move-object v9, v1

    :cond_a
    :goto_4
    return-object v9
.end method
