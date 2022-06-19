.class public final Le/a/e/b/b/f;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/e/b/b/d;",
        ">;",
        "Le/a/e/b/b/c;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/a/i0;

.field public final f:Le/a/a/g1/b;

.field public final g:Ls1/w/f;

.field public final h:Ls1/w/f;

.field public final i:Le/a/p5/u;

.field public final j:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/a/i0;Le/a/a/g1/b;Ls1/w/f;Ls1/w/f;Le/a/p5/u;Le/a/u3/g;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messagingSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translator"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/e/b/b/f;->e:Le/a/a/i0;

    iput-object p2, p0, Le/a/e/b/b/f;->f:Le/a/a/g1/b;

    iput-object p3, p0, Le/a/e/b/b/f;->g:Ls1/w/f;

    iput-object p4, p0, Le/a/e/b/b/f;->h:Ls1/w/f;

    iput-object p5, p0, Le/a/e/b/b/f;->i:Le/a/p5/u;

    iput-object p6, p0, Le/a/e/b/b/f;->j:Le/a/u3/g;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/e/b/b/f;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public F8(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    iget-object v0, p0, Le/a/e/b/b/f;->i:Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/b/d;

    if-eqz v0, :cond_2

    const v1, 0x7f1201c6

    invoke-interface {v0, v1}, Le/a/e/b/b/d;->a(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object v0, p0, Le/a/e/b/b/f;->i:Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/b/d;

    if-eqz v0, :cond_2

    const v1, 0x7f1201cc

    invoke-interface {v0, v1}, Le/a/e/b/b/d;->a(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/b/d;

    if-eqz v0, :cond_2

    const v1, 0x7f1201c7

    invoke-interface {v0, v1}, Le/a/e/b/b/d;->a(I)V

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Le/a/e/b/b/f;->e:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->j2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifiOrMobile"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 7
    iget-object v1, p0, Le/a/e/b/b/f;->f:Le/a/a/g1/b;

    new-instance v2, Le/a/e/b/b/f$b;

    invoke-direct {v2, p0}, Le/a/e/b/b/f$b;-><init>(Le/a/e/b/b/f;)V

    invoke-interface {v1, p1, p2, v0, v2}, Le/a/a/g1/b;->j(Ljava/lang/String;ZZLs1/z/b/l;)V

    .line 8
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/b/d;

    if-eqz p1, :cond_3

    iget-object p2, p0, Le/a/e/b/b/f;->e:Le/a/a/i0;

    invoke-interface {p2}, Le/a/a/i0;->j2()Ljava/lang/String;

    move-result-object p2

    const-string v0, "messagingSettings.autoDownloadTranslations"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/e/b/b/d;->nf(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public Gg(Ljava/lang/String;)V
    .locals 1

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/b/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/e/b/b/d;->E9(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final Ij()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/e/b/b/f;->f:Le/a/a/g1/b;

    invoke-interface {v0}, Le/a/a/g1/b;->h()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 4
    iget-object v4, p0, Le/a/e/b/b/f;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "en"

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public Q8()V
    .locals 6

    .line 1
    iget-object v1, p0, Le/a/e/b/b/f;->g:Ls1/w/f;

    new-instance v3, Le/a/e/b/b/f$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/e/b/b/f$a;-><init>(Le/a/e/b/b/f;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Wh(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e/b/b/f;->e:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->i1(Ljava/lang/String;)V

    return-void
.end method

.method public X9(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e/b/b/f;->e:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->B0(Ljava/lang/String;)V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Le/a/e/b/b/d;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/e/b/b/f;->e:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->t2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "messagingSettings.autoDownloadMedia"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/e/b/b/d;->BA(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/b/d;

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/a/e/b/b/f;->j:Le/a/u3/g;

    .line 6
    iget-object v1, v0, Le/a/u3/g;->R5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x169

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/e/b/b/d;->b8(Z)V

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/b/d;

    if-eqz p1, :cond_1

    iget-object v0, p0, Le/a/e/b/b/f;->e:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->j2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "messagingSettings.autoDownloadTranslations"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/e/b/b/d;->nf(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public e1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/e/b/b/f;->d:Ljava/util/List;

    return-object v0
.end method

.method public f1()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    return-object v0
.end method

.method public if()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/t;->a:Ls1/u/t;

    return-object v0
.end method

.method public k6(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public p3(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public u7()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/b/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/e/b/b/f;->Ij()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/e/b/b/d;->Ha(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public w5(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/b/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/e/b/b/f;->f:Le/a/a/g1/b;

    invoke-interface {v1, p1}, Le/a/a/g1/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Le/a/e/b/b/f$c;

    invoke-direct {v2, p0, p1}, Le/a/e/b/b/f$c;-><init>(Le/a/e/b/b/f;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Le/a/e/b/b/d;->fi(Ljava/lang/String;Ls1/z/b/a;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public y4()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/b/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/b/b/d;->do()V

    :cond_0
    return-void
.end method
