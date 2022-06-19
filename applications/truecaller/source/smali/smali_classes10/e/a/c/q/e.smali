.class public final Le/a/c/q/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/q/d;


# instance fields
.field public final a:Le/a/c/w/m;

.field public final b:Le/a/c/b0/d;

.field public final c:Le/a/c/w/c;

.field public final d:Le/a/c/f/h;

.field public final e:Le/a/c/a0/x;

.field public final f:Le/a/c/w/e0;

.field public final g:Le/a/c/w/r;

.field public final h:Le/a/c/y/n/d;

.field public final i:Le/a/c/b/e;


# direct methods
.method public constructor <init>(Le/a/c/w/m;Le/a/c/b0/d;Le/a/c/w/c;Le/a/c/f/h;Le/a/c/a0/x;Le/a/c/w/e0;Le/a/c/w/r;Le/a/c/y/n/d;Le/a/c/b/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "businessInsightsRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bankRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiSchemaBinder"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pdoDataSource"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smsBackupRepository"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterDataRepository"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binder"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/q/e;->a:Le/a/c/w/m;

    iput-object p2, p0, Le/a/c/q/e;->b:Le/a/c/b0/d;

    iput-object p3, p0, Le/a/c/q/e;->c:Le/a/c/w/c;

    iput-object p4, p0, Le/a/c/q/e;->d:Le/a/c/f/h;

    iput-object p5, p0, Le/a/c/q/e;->e:Le/a/c/a0/x;

    iput-object p6, p0, Le/a/c/q/e;->f:Le/a/c/w/e0;

    iput-object p7, p0, Le/a/c/q/e;->g:Le/a/c/w/r;

    iput-object p8, p0, Le/a/c/q/e;->h:Le/a/c/y/n/d;

    iput-object p9, p0, Le/a/c/q/e;->i:Le/a/c/b/e;

    return-void
.end method

.method public static final b(Le/a/c/q/e;Lw3/b/a/b;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p0, Lw3/b/a/b;

    invoke-direct {p0}, Lw3/b/a/b;-><init>()V

    .line 3
    invoke-virtual {p0}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v0

    invoke-virtual {p1}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object v0

    const-string v1, "Days.daysBetween(current\u2026te(), date.toLocalDate())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget v0, v0, Lw3/b/a/e0/i;->a:I

    .line 5
    invoke-virtual {p1}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v1

    .line 6
    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$this$getHumanReadableTime"

    .line 7
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v2, Lcom/truecaller/insights/utils/DateFormat;->hh_mm_aa:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v2}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DateFormat.hh_mm_aa.formatter().print(this)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Locale.US"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_1

    const-string p0, "Today"

    .line 10
    invoke-static {p0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const-string p0, "Yesterday"

    .line 11
    invoke-static {p0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1}, Lw3/b/a/e0/a;->u()I

    move-result v0

    const-string v2, "currentDate"

    invoke-static {p0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lw3/b/a/e0/a;->u()I

    move-result p0

    if-ne v0, p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object p1

    const-string v0, "date.toLocalDate()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$getHumanReadableDateWithoutSuffix"

    .line 13
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/truecaller/insights/utils/DateFormat;->d:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v2}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lw3/b/a/i0/b;->g(Lw3/b/a/b0;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/truecaller/insights/utils/DateFormat;->MMM:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v2}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lw3/b/a/i0/b;->g(Lw3/b/a/b0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/truecaller/insights/utils/DateFormat;->dd_MMM_yyyy:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v0}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public A(Le/a/c/w/o0/k/d;)Lq3/a/x2/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/w/o0/k/d;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/q/h;",
            ">;>;"
        }
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/q/e;->g:Le/a/c/w/r;

    check-cast v0, Le/a/c/w/u;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "input"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p1, Le/a/c/w/o0/k/d;->b:Le/a/c/w/o0/k/c;

    .line 4
    invoke-static {v1}, Le/a/c/p/a;->l3(Le/a/c/w/o0/k/c;)Le/a/c/w/o0/k/b;

    move-result-object v1

    .line 5
    iget-object v2, p1, Le/a/c/w/o0/k/d;->c:Ljava/util/Set;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Le/a/c/w/o0/k/e$c;

    .line 9
    iget-object v4, v4, Le/a/c/w/o0/k/e$c;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 11
    iget-object v3, v0, Le/a/c/w/u;->a:Le/a/c/c/d/w;

    .line 12
    iget-object p1, p1, Le/a/c/w/o0/k/d;->a:Ljava/lang/String;

    .line 13
    iget-object v4, v1, Le/a/c/w/o0/k/b;->a:Ljava/util/List;

    .line 14
    iget-object v5, v1, Le/a/c/w/o0/k/b;->b:Ljava/util/List;

    .line 15
    invoke-static {v4, v5}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 16
    iget-object v5, v1, Le/a/c/w/o0/k/b;->c:Ljava/util/List;

    .line 17
    invoke-static {v2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    .line 18
    invoke-interface {v3, p1, v4, v5, v6}, Le/a/c/c/d/w;->c(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lq3/a/x2/f;

    move-result-object p1

    .line 19
    new-instance v3, Le/a/c/w/t;

    invoke-direct {v3, p1, v0, v1, v2}, Le/a/c/w/t;-><init>(Lq3/a/x2/f;Le/a/c/w/u;Le/a/c/w/o0/k/b;Ljava/util/Set;)V

    return-object v3
.end method

.method public B(Lw3/b/a/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/b/a/b;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/q/e;->b:Le/a/c/b0/d;

    invoke-interface {v0, p1, p2}, Le/a/c/b0/d;->g(Lw3/b/a/b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public C(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/c/q/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/q/e;->b:Le/a/c/b0/d;

    invoke-interface {v0, p1}, Le/a/c/b0/d;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public D(Le/a/c/q/f;)Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/q/f;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/q/c;",
            ">;>;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/c/q/e;->c:Le/a/c/w/c;

    check-cast v1, Le/a/c/w/d;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/c/w/d;->a:Le/a/c/a0/h;

    invoke-interface {v0, p1}, Le/a/c/a0/h;->c(Le/a/c/q/f;)Lq3/a/x2/f;

    move-result-object p1

    .line 4
    new-instance v0, Le/a/c/q/e$a;

    invoke-direct {v0, p1, p0}, Le/a/c/q/e$a;-><init>(Lq3/a/x2/f;Le/a/c/q/e;)V

    return-object v0
.end method

.method public a()Lq3/a/x2/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/insightsui/CategoryModel;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/q/e;->g:Le/a/c/w/r;

    check-cast v0, Le/a/c/w/u;

    .line 2
    iget-object v1, v0, Le/a/c/w/u;->a:Le/a/c/c/d/w;

    invoke-interface {v1}, Le/a/c/c/d/w;->a()Lq3/a/x2/f;

    move-result-object v1

    iget-object v2, v0, Le/a/c/w/u;->a:Le/a/c/c/d/w;

    invoke-interface {v2}, Le/a/c/c/d/w;->b()Lq3/a/x2/f;

    move-result-object v2

    new-instance v3, Le/a/c/w/s;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Le/a/c/w/s;-><init>(Le/a/c/w/u;Ls1/w/d;)V

    .line 3
    new-instance v0, Lq3/a/x2/w0;

    invoke-direct {v0, v1, v2, v3}, Lq3/a/x2/w0;-><init>(Lq3/a/x2/f;Lq3/a/x2/f;Ls1/z/b/q;)V

    return-object v0
.end method

.method public r()Lq3/a/x2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Le/a/c/q/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/q/e;->a:Le/a/c/w/m;

    invoke-interface {v0}, Le/a/c/w/m;->r()Lq3/a/x2/f;

    move-result-object v0

    return-object v0
.end method

.method public s(Le/a/c/q/f;)Lq3/a/x2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/q/f;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/q/k;",
            ">;>;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/q/e;->b:Le/a/c/b0/d;

    invoke-interface {v0, p1}, Le/a/c/b0/d;->s(Le/a/c/q/f;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public t(IJ)Lq3/a/x2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/q/k;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/q/e;->b:Le/a/c/b0/d;

    invoke-interface {v0, p1, p2, p3}, Le/a/c/b0/d;->t(IJ)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public u(Z)Lq3/a/x2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/q/j;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/q/e;->a:Le/a/c/w/m;

    invoke-interface {v0, p1}, Le/a/c/w/m;->u(Z)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public v(Le/a/c/q/f;)Lq3/a/x2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/q/f;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/q/j;",
            ">;>;"
        }
    .end annotation

    const-string v0, "loadConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/q/e;->a:Le/a/c/w/m;

    invoke-interface {v0, p1}, Le/a/c/w/m;->v(Le/a/c/q/f;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public w(Le/a/c/w/o0/k/a;)Lq3/a/x2/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/w/o0/k/a;",
            ")",
            "Lq3/a/x2/f<",
            "Ln3/z/b2<",
            "Ls1/l<",
            "Le/a/c/y/m;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "feedConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/c/q/e;->f:Le/a/c/w/e0;

    move-object v4, v1

    check-cast v4, Le/a/c/w/f0;

    .line 2
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 5
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6
    iget-object v0, p1, Le/a/c/w/o0/k/a;->a:Ln3/z/a2;

    .line 7
    new-instance v1, Le/a/c/w/j0;

    invoke-direct {v1, v4, p1}, Le/a/c/w/j0;-><init>(Le/a/c/w/f0;Le/a/c/w/o0/k/a;)V

    const-string p1, "config"

    .line 8
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pagingSourceFactory"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance p1, Ln3/z/d1;

    .line 11
    instance-of v2, v1, Ln3/z/d3;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 12
    new-instance v2, Ln3/z/y1;

    invoke-direct {v2, v1}, Ln3/z/y1;-><init>(Ls1/z/b/a;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance v2, Ln3/z/z1;

    invoke-direct {v2, v1, v3}, Ln3/z/z1;-><init>(Ls1/z/b/a;Ls1/w/d;)V

    .line 14
    :goto_0
    invoke-direct {p1, v2, v3, v0}, Ln3/z/d1;-><init>(Ls1/z/b/l;Ljava/lang/Object;Ln3/z/a2;)V

    .line 15
    iget-object v3, p1, Ln3/z/d1;->c:Lq3/a/x2/f;

    .line 16
    new-instance p1, Le/a/c/w/i0;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Le/a/c/w/i0;-><init>(Lq3/a/x2/f;Le/a/c/w/f0;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 17
    new-instance v0, Le/a/c/q/e$c;

    invoke-direct {v0, p1, p0}, Le/a/c/q/e$c;-><init>(Lq3/a/x2/f;Le/a/c/q/e;)V

    return-object v0
.end method

.method public x(Lw3/b/a/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/b/a/b;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/q/e;->e:Le/a/c/a0/x;

    check-cast v0, Le/a/c/a0/y;

    invoke-virtual {v0, p1, p2}, Le/a/c/a0/y;->c(Lw3/b/a/b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y(ILw3/b/a/p;)Lq3/a/x2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lw3/b/a/p;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/q/c;",
            ">;>;"
        }
    .end annotation

    const-string v0, "showForLast"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/q/e;->a:Le/a/c/w/m;

    invoke-interface {v0, p1, p2}, Le/a/c/w/m;->a(ILw3/b/a/p;)Lq3/a/x2/f;

    move-result-object p1

    .line 2
    new-instance p2, Le/a/c/q/e$b;

    invoke-direct {p2, p1, p0}, Le/a/c/q/e$b;-><init>(Lq3/a/x2/f;Le/a/c/q/e;)V

    return-object p2
.end method

.method public z(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/c/q/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/q/e;->c:Le/a/c/w/c;

    check-cast v0, Le/a/c/w/d;

    invoke-virtual {v0, p1}, Le/a/c/w/d;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
