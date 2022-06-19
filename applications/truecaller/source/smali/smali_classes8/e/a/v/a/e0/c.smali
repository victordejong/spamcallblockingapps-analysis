.class public final Le/a/v/a/e0/c;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/e0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/v/a/e0/b;",
        ">;",
        "Le/a/v/a/e0/a;"
    }
.end annotation


# instance fields
.field public d:Le/a/v/a/s;

.field public final e:Ls1/w/f;

.field public final f:Le/a/b0/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/g5/p;

.field public final h:Le/a/a0/n;

.field public final i:Le/a/a0/p;

.field public final j:Le/a/p5/c0;

.field public final k:Le/a/b0/e/l;

.field public final l:Le/a/x4/g;

.field public final m:Le/a/x4/l/b;

.field public final n:Le/a/z2/a;

.field public final o:Le/a/v/a/z/a;

.field public final p:Le/a/k5/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/b0/a/b/b;Le/a/g5/p;Le/a/a0/n;Le/a/a0/p;Le/a/p5/c0;Le/a/b0/e/l;Le/a/x4/g;Le/a/x4/l/b;Le/a/z2/a;Le/a/v/a/z/a;Le/a/k5/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;",
            "Le/a/g5/p;",
            "Le/a/a0/n;",
            "Le/a/a0/p;",
            "Le/a/p5/c0;",
            "Le/a/b0/e/l;",
            "Le/a/x4/g;",
            "Le/a/x4/l/b;",
            "Le/a/z2/a;",
            "Le/a/v/a/z/a;",
            "Le/a/k5/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarXConfigProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDisplayUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamCategoryFetcher"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamCategoryRepresentationBuilder"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truecallerAccountManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchWarningsHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchWarningsPresenter"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeHelper"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsViewAnalytics"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timezoneHelper"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/v/a/e0/c;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/v/a/e0/c;->f:Le/a/b0/a/b/b;

    iput-object p3, p0, Le/a/v/a/e0/c;->g:Le/a/g5/p;

    iput-object p4, p0, Le/a/v/a/e0/c;->h:Le/a/a0/n;

    iput-object p5, p0, Le/a/v/a/e0/c;->i:Le/a/a0/p;

    iput-object p6, p0, Le/a/v/a/e0/c;->j:Le/a/p5/c0;

    iput-object p7, p0, Le/a/v/a/e0/c;->k:Le/a/b0/e/l;

    iput-object p8, p0, Le/a/v/a/e0/c;->l:Le/a/x4/g;

    iput-object p9, p0, Le/a/v/a/e0/c;->m:Le/a/x4/l/b;

    iput-object p10, p0, Le/a/v/a/e0/c;->n:Le/a/z2/a;

    iput-object p11, p0, Le/a/v/a/e0/c;->o:Le/a/v/a/z/a;

    iput-object p12, p0, Le/a/v/a/e0/c;->p:Le/a/k5/a;

    return-void
.end method


# virtual methods
.method public final Ij(Le/a/v/a/s;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/v/a/s;",
            "Ls1/w/d<",
            "-",
            "Le/a/v/a/e0/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/v/a/e0/c$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/v/a/e0/c$a;

    iget v1, v0, Le/a/v/a/e0/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/v/a/e0/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/v/a/e0/c$a;

    invoke-direct {v0, p0, p2}, Le/a/v/a/e0/c$a;-><init>(Le/a/v/a/e0/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/v/a/e0/c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/v/a/e0/c$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/v/a/e0/c$a;->h:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/d;

    iget-object v0, v0, Le/a/v/a/e0/c$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/e0/c;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 5
    iget-object p1, p1, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 6
    instance-of v2, p1, Le/a/v/a/d$f;

    if-eqz v2, :cond_7

    move-object v2, p1

    check-cast v2, Le/a/v/a/d$f;

    .line 7
    iget v2, v2, Le/a/v/a/d$f;->a:I

    if-lez v2, :cond_7

    .line 8
    iget-object v2, p0, Le/a/v/a/e0/c;->h:Le/a/a0/n;

    iput-object p0, v0, Le/a/v/a/e0/c$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/v/a/e0/c$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/v/a/e0/c$a;->e:I

    invoke-static {v2, p2, v0}, Le/a/l4/k;->Y(Le/a/a0/n;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 9
    :goto_1
    check-cast p2, Lcom/truecaller/data/entity/SpamCategoryModel;

    .line 10
    iget-object v5, v0, Le/a/v/a/e0/c;->i:Le/a/a0/p;

    check-cast p1, Le/a/v/a/d$f;

    .line 11
    iget v6, p1, Le/a/v/a/d$f;->a:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v7, p2

    .line 12
    invoke-static/range {v5 .. v11}, Le/a/l4/k;->s(Le/a/a0/p;ILcom/truecaller/data/entity/SpamCategoryModel;IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Locale.getDefault()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Le/a/v/a/e0/h;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/truecaller/data/entity/SpamCategoryModel;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/truecaller/data/entity/SpamCategoryModel;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    invoke-direct {v0, p1, v1, v4}, Le/a/v/a/e0/h;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v3, v0

    :cond_7
    return-object v3
.end method
