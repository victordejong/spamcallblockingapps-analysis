.class public final Le/a/k3/f$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k3/f;->d(Lcom/truecaller/data/entity/HistoryEvent$b;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Lcom/truecaller/data/entity/HistoryEvent$b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.data.HistoryEventFactoryImpl$populateNormalizeNumber$2"
    f = "HistoryEventFactory.kt"
    l = {
        0x8d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k3/f;

.field public final synthetic g:Lcom/truecaller/data/entity/HistoryEvent$b;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/k3/f;Lcom/truecaller/data/entity/HistoryEvent$b;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k3/f$c;->f:Le/a/k3/f;

    iput-object p2, p0, Le/a/k3/f$c;->g:Lcom/truecaller/data/entity/HistoryEvent$b;

    iput-object p3, p0, Le/a/k3/f$c;->h:Ljava/lang/String;

    iput-object p4, p0, Le/a/k3/f$c;->i:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/k3/f$c;

    iget-object v1, p0, Le/a/k3/f$c;->f:Le/a/k3/f;

    iget-object v2, p0, Le/a/k3/f$c;->g:Lcom/truecaller/data/entity/HistoryEvent$b;

    iget-object v3, p0, Le/a/k3/f$c;->h:Ljava/lang/String;

    iget-object v4, p0, Le/a/k3/f$c;->i:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/k3/f$c;-><init>(Le/a/k3/f;Lcom/truecaller/data/entity/HistoryEvent$b;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/k3/f$c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/k3/f$c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k3/f$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k3/f$c;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_6

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
    iget-object p1, p0, Le/a/k3/f$c;->h:Ljava/lang/String;

    invoke-static {p1}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 5
    :try_start_1
    iget-object p1, p0, Le/a/k3/f$c;->g:Lcom/truecaller/data/entity/HistoryEvent$b;

    iget-object v1, p0, Le/a/k3/f$c;->h:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent$b;->a:Lcom/truecaller/data/entity/HistoryEvent;

    .line 7
    iput-object v1, p1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Le/a/k3/f$c;->f:Le/a/k3/f;

    .line 9
    iget-object p1, p1, Le/a/k3/f;->a:Le/m/f/a/j;

    .line 10
    iget-object v3, p0, Le/a/k3/f$c;->i:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object p1

    .line 11
    iget-object v1, p0, Le/a/k3/f$c;->f:Le/a/k3/f;

    .line 12
    iget-object v1, v1, Le/a/k3/f;->a:Le/m/f/a/j;

    .line 13
    sget-object v3, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    invoke-virtual {v1, p1, v3}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object v3, p0, Le/a/k3/f$c;->g:Lcom/truecaller/data/entity/HistoryEvent$b;

    .line 15
    iget-object v4, v3, Lcom/truecaller/data/entity/HistoryEvent$b;->a:Lcom/truecaller/data/entity/HistoryEvent;

    .line 16
    iput-object v1, v4, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 17
    iget-object v4, p0, Le/a/k3/f$c;->f:Le/a/k3/f;

    .line 18
    iget-object v4, v4, Le/a/k3/f;->a:Le/m/f/a/j;

    .line 19
    invoke-virtual {v4, p1}, Le/m/f/a/j;->w(Le/m/f/a/o;)Le/m/f/a/j$d;

    move-result-object p1

    .line 20
    iget-object v3, v3, Lcom/truecaller/data/entity/HistoryEvent$b;->a:Lcom/truecaller/data/entity/HistoryEvent;

    .line 21
    iput-object p1, v3, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    .line 22
    iget-object p1, p0, Le/a/k3/f$c;->f:Le/a/k3/f;

    .line 23
    iget-object p1, p1, Le/a/k3/f;->b:Le/a/b0/j/b;

    .line 24
    iput v2, p0, Le/a/k3/f$c;->e:I

    invoke-interface {p1, v1, p0}, Le/a/b0/j/b;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 25
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/common/network/country/CountryListDto$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 26
    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 27
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v2

    :goto_3
    if-nez v3, :cond_7

    if-eqz p1, :cond_6

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string p1, "(this as java.lang.String).toUpperCase()"

    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_7
    iget-object p1, p0, Le/a/k3/f$c;->i:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_8

    goto :goto_4

    :cond_8
    move v2, v1

    :goto_4
    if-eqz v2, :cond_9

    .line 30
    iget-object v0, p0, Le/a/k3/f$c;->i:Ljava/lang/String;

    .line 31
    :cond_9
    :goto_5
    iget-object p1, p0, Le/a/k3/f$c;->g:Lcom/truecaller/data/entity/HistoryEvent$b;

    .line 32
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent$b;->a:Lcom/truecaller/data/entity/HistoryEvent;

    .line 33
    iput-object v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;
    :try_end_1
    .catch Le/m/f/a/e; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 34
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 35
    :cond_a
    :goto_7
    iget-object p1, p0, Le/a/k3/f$c;->g:Lcom/truecaller/data/entity/HistoryEvent$b;

    return-object p1
.end method
