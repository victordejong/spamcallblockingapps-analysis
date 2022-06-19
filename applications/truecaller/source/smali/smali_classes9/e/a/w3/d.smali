.class public final Le/a/w3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/w3/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/y/c/i;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/o/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b0/e/r/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/y/c/i;Lo3/a;Lo3/a;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/a/y/c/i;",
            "Lo3/a<",
            "Le/a/l0/c;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/o/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/b0/e/r/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "flashPoint"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHistoryManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w3/d;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/w3/d;->b:Le/a/y/c/i;

    iput-object p3, p0, Le/a/w3/d;->c:Lo3/a;

    iput-object p4, p0, Le/a/w3/d;->d:Lo3/a;

    iput-object p5, p0, Le/a/w3/d;->e:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Le/a/y/g/a;",
            ">;"
        }
    .end annotation

    const-string v0, "Please run off the main thread!"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->notOnMainThread([Ljava/lang/String;)V

    .line 2
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    iget-object v1, p0, Le/a/w3/d;->c:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l0/c;

    sget-object v2, Lcom/truecaller/callhistory/data/FilterType;->NONE:Lcom/truecaller/callhistory/data/FilterType;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Le/a/l0/c;->j(Lcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;)Le/a/r2/x;

    move-result-object v1

    invoke-virtual {v1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lcom/truecaller/data/entity/HistoryEvent;

    const-string v5, "it"

    .line 6
    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v3, v3, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0, v2}, Le/a/w3/d;->b(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 10
    iget-object v2, p0, Le/a/w3/d;->c:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/l0/c;

    const/16 v3, 0x64

    invoke-interface {v2, v3}, Le/a/l0/c;->v(I)Le/a/r2/x;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/l0/u/d/b;

    if-eqz v2, :cond_4

    .line 12
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 14
    invoke-interface {v2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 15
    iget-object v5, v5, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    goto :goto_3

    :cond_2
    move-object v5, v4

    .line 16
    :goto_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 17
    :cond_3
    invoke-static {v2, v4}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v4, v3

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    move-object v4, v0

    .line 19
    :goto_5
    invoke-virtual {p0, v4}, Le/a/w3/d;->b(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    .line 20
    invoke-static {v1, v3}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v2, p1}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 21
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 24
    move-object v5, v4

    check-cast v5, Le/a/y/g/a;

    .line 25
    iget-object v5, v5, Le/a/y/g/a;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 27
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 28
    :cond_7
    invoke-static {v3, p1}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 30
    iget-object v1, p0, Le/a/w3/d;->e:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/e/r/a;

    const-string v2, "profileNumber"

    invoke-interface {v1, v2}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v0, "accountSettings.get().ge\u2026ER) ?: return emptyList()"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Le/a/w3/d;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Le/a/b0/q/b0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneNumberNormalizer.no\u2026alizedNumber, countryIso)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {v0}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 33
    new-instance p1, Le/a/y/g/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 34
    iget-object v3, p0, Le/a/w3/d;->d:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "coreSettings.get()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Le/a/b0/o/a;

    invoke-static {v3}, Le/a/l4/k;->I(Le/a/b0/o/a;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, " "

    invoke-static {v2, v1}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 35
    iget-object v2, p0, Le/a/w3/d;->d:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b0/o/a;

    const-string v3, "profileAvatar"

    invoke-interface {v2, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-direct {p1, v1, v0, v2}, Le/a/y/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    :cond_8
    move-object v0, p1

    :cond_9
    :goto_7
    return-object v0
.end method

.method public final b(Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/truecaller/data/entity/Contact;",
            ">;)",
            "Ljava/util/List<",
            "Le/a/y/g/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/truecaller/data/entity/Contact;

    .line 4
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/truecaller/data/entity/Contact;

    .line 7
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v5

    const-string v6, "contact.numbers"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/data/entity/Number;

    if-eqz v5, :cond_4

    .line 8
    iget-object v7, p0, Le/a/w3/d;->b:Le/a/y/c/i;

    const/4 v8, 0x2

    .line 9
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-interface {v7, v8, v5}, Le/a/y/c/i;->w(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "contact.numbers.first()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/truecaller/data/entity/Number;

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Le/a/w3/d;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Le/a/b0/q/b0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PhoneNumberNormalizer.no\u2026alizedNumber, countryIso)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    if-eqz v4, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 14
    check-cast v1, Lcom/truecaller/data/entity/Contact;

    .line 15
    new-instance v2, Le/a/y/g/a;

    .line 16
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v4

    const-string v5, "it.numbers"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "it.numbers.first()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/truecaller/data/entity/Number;

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Le/a/w3/d;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Le/a/b0/q/b0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-direct {v2, v3, v4, v1}, Le/a/y/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 20
    :cond_6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 23
    move-object v3, v2

    check-cast v3, Le/a/y/g/a;

    .line 24
    iget-object v3, v3, Le/a/y/g/a;->b:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 26
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    return-object v1
.end method
