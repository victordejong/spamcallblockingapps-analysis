.class public final Le/a/b/k/c/g$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/k/c/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.bizmon.covidDirectory.mvp.CovidDistrictListPresenter$loadDataFromDB$2$1"
    f = "CovidDistrictListMvp.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Le/a/b/k/c/g;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ls1/w/d;Le/a/b/k/c/g;)V
    .locals 0

    iput-object p1, p0, Le/a/b/k/c/g$a;->e:Ljava/util/ArrayList;

    iput-object p3, p0, Le/a/b/k/c/g$a;->f:Le/a/b/k/c/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/b/k/c/g$a;

    iget-object v0, p0, Le/a/b/k/c/g$a;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Le/a/b/k/c/g$a;->f:Le/a/b/k/c/g;

    invoke-direct {p1, v0, p2, v1}, Le/a/b/k/c/g$a;-><init>(Ljava/util/ArrayList;Ls1/w/d;Le/a/b/k/c/g;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/k/c/g$a;

    iget-object v0, p0, Le/a/b/k/c/g$a;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Le/a/b/k/c/g$a;->f:Le/a/b/k/c/g;

    invoke-direct {p1, v0, p2, v1}, Le/a/b/k/c/g$a;-><init>(Ljava/util/ArrayList;Ls1/w/d;Le/a/b/k/c/g;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/k/c/g$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/b/k/c/g$a;->f:Le/a/b/k/c/g;

    iget-object p1, p1, Le/a/b/k/c/g;->a:Le/a/b/k/c/i;

    .line 3
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/k/c/e;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p1, Le/a/b/k/c/i;->m:Le/a/b/p/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "covid_dir_last_sync_time"

    invoke-interface {v1, v4, v2, v3}, Le/a/b/p/c;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 5
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "dd-MM-yyyy"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/b/k/c/e;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 8
    iget-object p1, p1, Le/a/b/k/c/i;->g:Le/a/p5/c0;

    sget v5, Lcom/truecaller/bizmon/R$string;->biz_last_updated_on:I

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-interface {p1, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getStri\u2026t_updated_on, dateString)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v2, p1}, Le/a/b/k/c/e;->zp(Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-interface {v0}, Le/a/b/k/c/e;->Y1()V

    .line 11
    iget-object p1, p0, Le/a/b/k/c/g$a;->f:Le/a/b/k/c/g;

    iget-object p1, p1, Le/a/b/k/c/g;->a:Le/a/b/k/c/i;

    .line 12
    iget-object p1, p1, Le/a/b/k/c/i;->g:Le/a/p5/c0;

    .line 13
    sget v1, Lcom/truecaller/bizmon/R$string;->biz_covid_directory_district_list_title:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getStri\u2026tory_district_list_title)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/b/k/c/e;->s2(Ljava/lang/String;)V

    .line 14
    invoke-interface {v0}, Le/a/b/k/c/e;->O2()V

    .line 15
    iget-object p1, p0, Le/a/b/k/c/g$a;->e:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_1

    .line 16
    invoke-interface {v0}, Le/a/b/k/c/e;->y4()V

    .line 17
    iget-object p1, p0, Le/a/b/k/c/g$a;->e:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Le/a/b/k/c/e;->X2(Ljava/util/ArrayList;)V

    .line 18
    invoke-interface {v0}, Le/a/b/k/c/e;->G1()V

    .line 19
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
