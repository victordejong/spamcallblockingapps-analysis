.class public final Le/a/c/i/j/c/c;
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
    c = "com.truecaller.insights.core.senderinfo.rowsenders.RowImportantSendersManagerImpl$prepareSendersList$1"
    f = "RowImportantSendersManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/c/i/j/c/b;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/c/i/j/c/b;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/j/c/c;->e:Le/a/c/i/j/c/b;

    iput-object p2, p0, Le/a/c/i/j/c/c;->f:Ljava/lang/String;

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

    new-instance p1, Le/a/c/i/j/c/c;

    iget-object v0, p0, Le/a/c/i/j/c/c;->e:Le/a/c/i/j/c/b;

    iget-object v1, p0, Le/a/c/i/j/c/c;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/i/j/c/c;-><init>(Le/a/c/i/j/c/b;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/i/j/c/c;

    iget-object v0, p0, Le/a/c/i/j/c/c;->e:Le/a/c/i/j/c/b;

    iget-object v1, p0, Le/a/c/i/j/c/c;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/i/j/c/c;-><init>(Le/a/c/i/j/c/b;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/i/j/c/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Le/a/c/i/j/c/c$a;

    invoke-direct {p1}, Le/a/c/i/j/c/c$a;-><init>()V

    invoke-virtual {p1}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 3
    iget-object v1, p0, Le/a/c/i/j/c/c;->e:Le/a/c/i/j/c/b;

    .line 4
    iget-object v1, v1, Le/a/c/i/j/c/b;->a:Le/m/e/k;

    .line 5
    iget-object v2, p0, Le/a/c/i/j/c/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/insights/core/senderinfo/rowsenders/RowImportantSenderConfig;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/insights/core/senderinfo/rowsenders/RowImportantSenderConfig;->getImportantSenders()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/truecaller/insights/core/senderinfo/rowsenders/RowImportantSenderConfig;->getImportantSenders()Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/insights/core/senderinfo/rowsenders/RowSendersList;

    .line 9
    invoke-virtual {v1}, Lcom/truecaller/insights/core/senderinfo/rowsenders/RowSendersList;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Le/a/c/i/j/c/c;->e:Le/a/c/i/j/c/b;

    .line 10
    iget-object v3, v3, Le/a/c/i/j/c/b;->b:Ljava/lang/String;

    const/4 v4, 0x1

    .line 11
    invoke-static {v2, v3, v4}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    iget-object p1, p0, Le/a/c/i/j/c/c;->e:Le/a/c/i/j/c/b;

    .line 13
    iget-object p1, p1, Le/a/c/i/j/c/b;->d:Ljava/util/Set;

    .line 14
    invoke-virtual {v1}, Lcom/truecaller/insights/core/senderinfo/rowsenders/RowSendersList;->getSenders()Ljava/util/List;

    move-result-object v1

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/String;

    .line 18
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "Locale.ENGLISH"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method
