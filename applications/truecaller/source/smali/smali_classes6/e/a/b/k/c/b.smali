.class public final Le/a/b/k/c/b;
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
    c = "com.truecaller.bizmon.covidDirectory.mvp.CovidContactListPresenter$onAttachView$1$4"
    f = "CovidContactListMvp.kt"
    l = {
        0x60
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/b/k/c/a;

.field public final synthetic g:Ls1/z/c/b0;

.field public final synthetic h:Le/a/b/k/c/c;

.field public final synthetic i:Le/a/b/k/c/a;


# direct methods
.method public constructor <init>(Le/a/b/k/c/a;Ls1/z/c/b0;Ls1/w/d;Le/a/b/k/c/c;Le/a/b/k/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/b/k/c/b;->f:Le/a/b/k/c/a;

    iput-object p2, p0, Le/a/b/k/c/b;->g:Ls1/z/c/b0;

    iput-object p4, p0, Le/a/b/k/c/b;->h:Le/a/b/k/c/c;

    iput-object p5, p0, Le/a/b/k/c/b;->i:Le/a/b/k/c/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/b/k/c/b;

    iget-object v1, p0, Le/a/b/k/c/b;->f:Le/a/b/k/c/a;

    iget-object v2, p0, Le/a/b/k/c/b;->g:Ls1/z/c/b0;

    iget-object v4, p0, Le/a/b/k/c/b;->h:Le/a/b/k/c/c;

    iget-object v5, p0, Le/a/b/k/c/b;->i:Le/a/b/k/c/a;

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Le/a/b/k/c/b;-><init>(Le/a/b/k/c/a;Ls1/z/c/b0;Ls1/w/d;Le/a/b/k/c/c;Le/a/b/k/c/a;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/b/k/c/b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/b/k/c/b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/k/c/b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/b/k/c/b;->e:I

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v8, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

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
    iget-object p1, p0, Le/a/b/k/c/b;->h:Le/a/b/k/c/c;

    .line 5
    iget-object p1, p1, Le/a/b/k/c/c;->h:Ls1/w/f;

    .line 6
    new-instance v1, Le/a/b/k/c/b$a;

    invoke-direct {v1, p0, v5}, Le/a/b/k/c/b$a;-><init>(Le/a/b/k/c/b;Ls1/w/d;)V

    iput v8, p0, Le/a/b/k/c/b;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/b/k/c/b;->h:Le/a/b/k/c/c;

    .line 8
    iget-object v0, p1, Le/a/b/k/c/c;->e:Ljava/lang/String;

    .line 9
    sget v1, Lcom/truecaller/bizmon/R$string;->biz_govt_general_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "others"

    :cond_3
    const-string v1, "COVID_DIRECTORY_CONTACT_LIST"

    const-string v9, "District"

    .line 10
    invoke-static {v9, v0}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 11
    iget-object v7, p1, Le/a/b/k/c/c;->k:Le/a/q2/a;

    const-string v6, "eventBuilder.build()"

    move-object v2, v1

    move-object v3, v5

    .line 12
    invoke-static/range {v2 .. v7}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    .line 13
    iget-object p1, p1, Le/a/b/k/c/c;->l:Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a0;

    .line 14
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 16
    new-instance v1, Ls1/k;

    invoke-direct {v1, v9, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-static {v1}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v0

    .line 18
    invoke-virtual {v2, v0}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 19
    invoke-virtual {v2}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    .line 20
    invoke-interface {p1, v0}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 21
    iget-object p1, p0, Le/a/b/k/c/b;->f:Le/a/b/k/c/a;

    invoke-interface {p1}, Le/a/b/k/c/a;->N1()V

    .line 22
    iget-object p1, p0, Le/a/b/k/c/b;->f:Le/a/b/k/c/a;

    .line 23
    iget-object v0, p0, Le/a/b/k/c/b;->h:Le/a/b/k/c/c;

    .line 24
    iget-object v1, v0, Le/a/b/k/c/c;->f:Le/a/p5/c0;

    .line 25
    sget v2, Lcom/truecaller/bizmon/R$plurals;->biz_govt_contacts_count:I

    .line 26
    iget-object v0, v0, Le/a/b/k/c/c;->d:Ljava/util/List;

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 28
    iget-object v5, p0, Le/a/b/k/c/b;->h:Le/a/b/k/c/c;

    .line 29
    iget-object v5, v5, Le/a/b/k/c/c;->d:Ljava/util/List;

    .line 30
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 31
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v3, v4

    .line 32
    invoke-interface {v1, v2, v0, v3}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getQuan\u2026ize\n                    )"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1, v0}, Le/a/b/k/c/a;->J5(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Le/a/b/k/c/b;->f:Le/a/b/k/c/a;

    iget-object v0, p0, Le/a/b/k/c/b;->h:Le/a/b/k/c/c;

    .line 35
    iget-object v0, v0, Le/a/b/k/c/c;->d:Ljava/util/List;

    .line 36
    invoke-interface {p1, v0}, Le/a/b/k/c/a;->H5(Ljava/util/List;)V

    .line 37
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
