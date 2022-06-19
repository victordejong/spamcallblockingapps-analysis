.class public final Le/a/k/a/e/f;
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
    c = "com.truecaller.videocallerid.ui.manageincomingvideo.ManageIncomingVideoSettingPresenter$fetchHiddenContacts$1"
    f = "ManageIncomingVideoSettingPresenter.kt"
    l = {
        0x23,
        0x25
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le/a/k/a/e/i;


# direct methods
.method public constructor <init>(Le/a/k/a/e/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/e/f;->j:Le/a/k/a/e/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/k/a/e/f;

    iget-object v0, p0, Le/a/k/a/e/f;->j:Le/a/k/a/e/i;

    invoke-direct {p1, v0, p2}, Le/a/k/a/e/f;-><init>(Le/a/k/a/e/i;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/a/e/f;

    iget-object v0, p0, Le/a/k/a/e/f;->j:Le/a/k/a/e/i;

    invoke-direct {p1, v0, p2}, Le/a/k/a/e/f;-><init>(Le/a/k/a/e/i;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/a/e/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/a/e/f;->i:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/k/a/e/f;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    iget-object v3, p0, Le/a/k/a/e/f;->g:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;

    iget-object v4, p0, Le/a/k/a/e/f;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, p0, Le/a/k/a/e/f;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v6, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/a/e/f;->j:Le/a/k/a/e/i;

    .line 5
    iget-object p1, p1, Le/a/k/a/e/i;->d:Le/a/k/n/e/a;

    .line 6
    iput v3, p0, Le/a/k/a/e/f;->i:I

    .line 7
    check-cast p1, Le/a/k/n/e/b;

    invoke-virtual {p1, p0}, Le/a/k/n/e/b;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p1

    move-object p1, p0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;

    .line 12
    iget-object v5, p1, Le/a/k/a/e/f;->j:Le/a/k/a/e/i;

    .line 13
    iget-object v5, v5, Le/a/k/a/e/i;->f:Le/a/k/j;

    .line 14
    invoke-virtual {v3}, Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;->getContactNumber()Ljava/lang/String;

    move-result-object v6

    iput-object v1, p1, Le/a/k/a/e/f;->e:Ljava/lang/Object;

    iput-object v4, p1, Le/a/k/a/e/f;->f:Ljava/lang/Object;

    iput-object v3, p1, Le/a/k/a/e/f;->g:Ljava/lang/Object;

    iput-object v1, p1, Le/a/k/a/e/f;->h:Ljava/lang/Object;

    iput v2, p1, Le/a/k/a/e/f;->i:I

    check-cast v5, Le/a/k/k;

    invoke-virtual {v5, v6, p1}, Le/a/k/k;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_4

    return-object v0

    :cond_4
    move-object v6, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v3

    :goto_2
    invoke-virtual {v4}, Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;->getContactNumber()Ljava/lang/String;

    move-result-object v4

    .line 15
    new-instance v7, Ls1/k;

    invoke-direct {v7, p1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    move-object v0, v1

    move-object v1, v5

    move-object v4, v6

    goto :goto_1

    .line 17
    :cond_5
    check-cast v1, Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 20
    check-cast v2, Ls1/k;

    .line 21
    iget-object v3, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 22
    check-cast v3, Lcom/truecaller/data/entity/Contact;

    .line 23
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 24
    check-cast v2, Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 25
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 26
    new-instance v4, Le/a/k/a/e/a;

    .line 27
    iget-object v5, p1, Le/a/k/a/e/f;->j:Le/a/k/a/e/i;

    .line 28
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 30
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    .line 31
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 32
    :cond_7
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    const-string v6, "if (it > 0) {\n          \u2026: id.toString()\n        }"

    .line 33
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    if-eqz v5, :cond_9

    goto :goto_6

    .line 34
    :cond_9
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v5

    :goto_6
    if-eqz v5, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v3}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 35
    :goto_7
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v6

    .line 36
    iget-object v7, p1, Le/a/k/a/e/f;->j:Le/a/k/a/e/i;

    .line 37
    iget-object v7, v7, Le/a/k/a/e/i;->f:Le/a/k/j;

    .line 38
    new-instance v8, Le/a/k/a/e/f$a;

    invoke-direct {v8, v2}, Le/a/k/a/e/f$a;-><init>(Ljava/lang/String;)V

    check-cast v7, Le/a/k/k;

    invoke-virtual {v7, v3, v8}, Le/a/k/k;->a(Lcom/truecaller/data/entity/Contact;Ls1/z/b/l;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v3

    .line 39
    invoke-direct {v4, v5, v2, v6, v3}, Le/a/k/a/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_6

    .line 40
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 41
    :cond_c
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 44
    move-object v4, v3

    check-cast v4, Le/a/k/a/e/a;

    .line 45
    iget-object v4, v4, Le/a/k/a/e/a;->a:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 47
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 48
    :cond_e
    invoke-static {v2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 49
    iget-object p1, p1, Le/a/k/a/e/f;->j:Le/a/k/a/e/i;

    .line 50
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/e/e;

    if-eqz p1, :cond_f

    .line 51
    invoke-interface {p1, v0}, Le/a/k/a/e/e;->j(Ljava/util/List;)V

    .line 52
    :cond_f
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
