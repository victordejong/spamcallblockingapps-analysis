.class public final Lcom/hiya/stingray/manager/e4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/q/a/o;

.field private final b:Lcom/hiya/stingray/t/i1/x0;

.field private final c:Lcom/hiya/stingray/t/i1/a1;

.field private final d:Lcom/hiya/stingray/manager/m3;

.field private final e:Lcom/hiya/stingray/manager/w2;

.field private final f:Lcom/hiya/stingray/t/i1/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/hiya/stingray/q/a/o;Lcom/hiya/stingray/t/i1/x0;Lcom/hiya/stingray/t/i1/a1;Lcom/hiya/stingray/manager/m3;Lcom/hiya/stingray/manager/w2;Lcom/hiya/stingray/t/i1/l0;)V
    .locals 1

    const-string v0, "reputationDao"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamReportMapper"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userFeedbackMapper"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneEventManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localOverrideManager"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localOverrideIdMapper"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/e4;->a:Lcom/hiya/stingray/q/a/o;

    iput-object p2, p0, Lcom/hiya/stingray/manager/e4;->b:Lcom/hiya/stingray/t/i1/x0;

    iput-object p3, p0, Lcom/hiya/stingray/manager/e4;->c:Lcom/hiya/stingray/t/i1/a1;

    iput-object p4, p0, Lcom/hiya/stingray/manager/e4;->d:Lcom/hiya/stingray/manager/m3;

    iput-object p5, p0, Lcom/hiya/stingray/manager/e4;->e:Lcom/hiya/stingray/manager/w2;

    iput-object p6, p0, Lcom/hiya/stingray/manager/e4;->f:Lcom/hiya/stingray/t/i1/l0;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/e4;)Lcom/hiya/stingray/t/i1/l0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/e4;->f:Lcom/hiya/stingray/t/i1/l0;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/manager/e4;)Lcom/hiya/stingray/manager/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/e4;->e:Lcom/hiya/stingray/manager/w2;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/stingray/manager/e4;)Lcom/hiya/stingray/t/i1/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/e4;->b:Lcom/hiya/stingray/t/i1/x0;

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/stingray/manager/e4;Lcom/hiya/stingray/t/c1;Lcom/hiya/stingray/t/g1/a;)Li/c/b0/b/e;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/e4;->h(Lcom/hiya/stingray/t/c1;Lcom/hiya/stingray/t/g1/a;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method private final h(Lcom/hiya/stingray/t/c1;Lcom/hiya/stingray/t/g1/a;)Li/c/b0/b/e;
    .locals 3

    const-string v0, "SpamReportManager"

    .line 1
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Submitting report "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v2, "with"

    goto :goto_0

    :cond_0
    const-string v2, "without"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " last interaction."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/e4;->a:Lcom/hiya/stingray/q/a/o;

    iget-object v1, p0, Lcom/hiya/stingray/manager/e4;->c:Lcom/hiya/stingray/t/i1/a1;

    invoke-virtual {v1, p1, p2}, Lcom/hiya/stingray/t/i1/a1;->m(Lcom/hiya/stingray/t/c1;Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/o/y;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/hiya/stingray/q/a/o;->d(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;

    move-result-object p2

    invoke-virtual {p2}, Li/c/b0/b/v;->ignoreElements()Li/c/b0/b/e;

    move-result-object p2

    const-string v0, "reputationDao.postPhoneR\u2026dEvent)).ignoreElements()"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/hiya/stingray/manager/e4;->a:Lcom/hiya/stingray/q/a/o;

    iget-object v0, p0, Lcom/hiya/stingray/manager/e4;->c:Lcom/hiya/stingray/t/i1/a1;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/i1/a1;->l(Lcom/hiya/stingray/t/c1;)Lg/g/a/a/i/o/y;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/hiya/stingray/q/a/o;->d(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;

    move-result-object p2

    invoke-virtual {p2}, Li/c/b0/b/v;->ignoreElements()Li/c/b0/b/e;

    move-result-object p2

    const-string v0, "reputationDao.postPhoneR\u2026report)).ignoreElements()"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/hiya/stingray/manager/e4;->e:Lcom/hiya/stingray/manager/w2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/w2;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/e4;->i(Lcom/hiya/stingray/t/c1;)Li/c/b0/b/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p2

    const-string p1, "completable.andThen(tryC\u2026ateLocalOverride(report))"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object p2
.end method

.method private final i(Lcom/hiya/stingray/t/c1;)Li/c/b0/b/e;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpamReportManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {v1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Trying to create a local override"

    invoke-virtual {v0, v2, v1}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/hiya/stingray/util/p;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataUtil.getCurrentLocaleLanguageTag()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/manager/e4;->f(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/hiya/stingray/manager/e4$e;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/manager/e4$e;-><init>(Lcom/hiya/stingray/manager/e4;Lcom/hiya/stingray/t/c1;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMapCompletable(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "getSpamCategories(DataUt\u2026      }\n                }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_2
    :goto_1
    invoke-static {v1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Phone number of the report is empty: not creating local override"

    invoke-virtual {p1, v1, v0}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "Completable.complete()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/c1;",
            ">;>;"
        }
    .end annotation

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/e4;->a:Lcom/hiya/stingray/q/a/o;

    invoke-interface {v0, p1, p2, v1}, Lcom/hiya/stingray/q/a/o;->a(Ljava/lang/String;Ljava/lang/String;Z)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/manager/e4$a;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/manager/e4$a;-><init>(Lcom/hiya/stingray/manager/e4;)V

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "reputationDao.getPhoneRe\u2026e<List<SpamReportItem>>>)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/b1;",
            ">;>;"
        }
    .end annotation

    const-string v0, "locale"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/e4;->a:Lcom/hiya/stingray/q/a/o;

    invoke-interface {v0, p1}, Lcom/hiya/stingray/q/a/o;->e(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/hiya/stingray/manager/e4$b;->f:Lcom/hiya/stingray/manager/e4$b;

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->onErrorResumeNext(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/hiya/stingray/exception/c;

    sget-object v1, Lg/g/a/a/e;->GET_REPORT_CATEGORIES:Lg/g/a/a/e;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "result.compose(Observabl\u2026S.GET_REPORT_CATEGORIES))"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final g(Lcom/hiya/stingray/t/c1;)Li/c/b0/b/e;
    .locals 3

    const-string v0, "report"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/hiya/stingray/manager/e4;->h(Lcom/hiya/stingray/t/c1;Lcom/hiya/stingray/t/g1/a;)Li/c/b0/b/e;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/e4;->d:Lcom/hiya/stingray/manager/m3;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, "report.parsedPhone!!"

    invoke-static {v2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/hiya/stingray/manager/m3$a;->SPAM_REPORT:Lcom/hiya/stingray/manager/m3$a;

    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/m3;->g(Ljava/lang/String;Lcom/hiya/stingray/manager/m3$a;)Li/c/b0/b/e0;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/manager/e4$c;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/manager/e4$c;-><init>(Lcom/hiya/stingray/manager/e4;Lcom/hiya/stingray/t/c1;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->n(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/hiya/stingray/manager/e4$d;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/manager/e4$d;-><init>(Lcom/hiya/stingray/manager/e4;Lcom/hiya/stingray/t/c1;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->B(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "phoneEventManager.lastEv\u2026, null)\n                }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1

    .line 5
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method
