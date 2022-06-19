.class public final Le/a/d/c0/z0$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/z0;->a(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
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
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.VoipIdProviderImpl$idsFromNumbers$2"
    f = "VoipIdProvider.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/c0/z0;

.field public final synthetic f:Ljava/util/Set;


# direct methods
.method public constructor <init>(Le/a/d/c0/z0;Ljava/util/Set;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/z0$d;->e:Le/a/d/c0/z0;

    iput-object p2, p0, Le/a/d/c0/z0$d;->f:Ljava/util/Set;

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

    new-instance p1, Le/a/d/c0/z0$d;

    iget-object v0, p0, Le/a/d/c0/z0$d;->e:Le/a/d/c0/z0;

    iget-object v1, p0, Le/a/d/c0/z0$d;->f:Ljava/util/Set;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/z0$d;-><init>(Le/a/d/c0/z0;Ljava/util/Set;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/z0$d;

    iget-object v0, p0, Le/a/d/c0/z0$d;->e:Le/a/d/c0/z0;

    iget-object v1, p0, Le/a/d/c0/z0$d;->f:Ljava/util/Set;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/z0$d;-><init>(Le/a/d/c0/z0;Ljava/util/Set;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/z0$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fetching voip ids for numbers:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Le/a/d/c0/z0$d;->f:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    iget-object p1, p0, Le/a/d/c0/z0$d;->e:Le/a/d/c0/z0;

    .line 4
    iget-object p1, p1, Le/a/d/c0/z0;->d:Lo3/a;

    .line 5
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "voipDao.get()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le/a/d/t/a;

    .line 6
    new-instance v1, Le/a/d/c0/z0$d$a;

    invoke-direct {v1, p0}, Le/a/d/c0/z0$d$a;-><init>(Le/a/d/c0/z0$d;)V

    invoke-static {p1, v1}, Le/a/p5/s0/g;->W0(Le/a/d/t/a;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/truecaller/voip/db/VoipIdCache;

    .line 9
    iget-object v7, p0, Le/a/d/c0/z0$d;->e:Le/a/d/c0/z0;

    const/4 v8, 0x3

    invoke-static {v7, v6, v3, v2, v8}, Le/a/d/c0/z0;->j(Le/a/d/c0/z0;Lcom/truecaller/voip/db/VoipIdCache;Ljava/lang/Long;ZI)Lcom/truecaller/voip/db/VoipIdCache;

    move-result-object v6

    if-eqz v6, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v2

    .line 10
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v4, v3

    .line 12
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_5

    .line 13
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v5, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v1

    :goto_3
    const/16 v6, 0xa

    if-nez v5, :cond_b

    .line 14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iget-object v7, p0, Le/a/d/c0/z0$d;->f:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v5, v7, :cond_7

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Returning cached voip ids:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    new-instance p1, Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 17
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/voip/db/VoipIdCache;

    .line 18
    invoke-virtual {v1}, Lcom/truecaller/voip/db/VoipIdCache;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/truecaller/voip/db/VoipIdCache;->getVoipId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    return-object p1

    .line 19
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 21
    check-cast v8, Lcom/truecaller/voip/db/VoipIdCache;

    .line 22
    invoke-virtual {v8}, Lcom/truecaller/voip/db/VoipIdCache;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 23
    :cond_8
    iget-object v7, p0, Le/a/d/c0/z0$d;->f:Ljava/util/Set;

    .line 24
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .line 26
    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 27
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 28
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 29
    :cond_b
    iget-object v5, p0, Le/a/d/c0/z0$d;->f:Ljava/util/Set;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    :goto_7
    iget-object v5, p0, Le/a/d/c0/z0$d;->e:Le/a/d/c0/z0;

    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 31
    iget-object v7, v5, Le/a/d/c0/z0;->c:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/d/p/a;

    .line 32
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {p1, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 34
    check-cast v6, Ljava/lang/String;

    .line 35
    invoke-static {v6}, Le/a/p5/s0/f;->v(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    new-instance p1, Lcom/truecaller/voip/api/VoipBatchIdsRequestDto;

    invoke-direct {p1, v8}, Lcom/truecaller/voip/api/VoipBatchIdsRequestDto;-><init>(Ljava/util/List;)V

    invoke-interface {v7, p1}, Le/a/d/p/a;->d(Lcom/truecaller/voip/api/VoipBatchIdsRequestDto;)Lx3/b;

    move-result-object p1

    .line 36
    invoke-virtual {v5, p1}, Le/a/d/c0/z0;->h(Lx3/b;)Ljava/lang/Object;

    move-result-object p1

    .line 37
    check-cast p1, Lcom/truecaller/voip/api/VoipBatchIdsDto;

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fetched voip ids are "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_f

    .line 39
    invoke-virtual {p1}, Lcom/truecaller/voip/api/VoipBatchIdsDto;->getIds()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 40
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 42
    new-instance v9, Lcom/truecaller/voip/db/VoipIdCache;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Le/a/p5/s0/f;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/truecaller/voip/api/VoipBatchIdsDto;->getExpiryEpochSeconds()J

    move-result-wide v11

    invoke-direct {v9, v10, v8, v11, v12}, Lcom/truecaller/voip/db/VoipIdCache;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 43
    :cond_d
    iget-object v5, v5, Le/a/d/c0/z0;->d:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Le/a/d/t/a;

    new-instance v0, Le/a/d/c0/b1;

    invoke-direct {v0, v7}, Le/a/d/c0/b1;-><init>(Ljava/util/List;)V

    invoke-static {v5, v0}, Le/a/p5/s0/g;->W0(Le/a/d/t/a;Ls1/z/b/l;)Ljava/lang/Object;

    .line 44
    :cond_e
    invoke-virtual {p1}, Lcom/truecaller/voip/api/VoipBatchIdsDto;->getIds()Ljava/util/Map;

    move-result-object p1

    goto :goto_a

    :cond_f
    move-object p1, v3

    :goto_a
    if-eqz v4, :cond_11

    .line 45
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_b

    :cond_10
    move v1, v2

    :cond_11
    :goto_b
    if-nez v1, :cond_14

    .line 46
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Le/a/d/c0/z0$d;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p1, :cond_12

    .line 47
    iget-object v1, p0, Le/a/d/c0/z0$d;->e:Le/a/d/c0/z0;

    invoke-static {v1, p1}, Le/a/d/c0/z0;->f(Le/a/d/c0/z0;Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 48
    :cond_12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/voip/db/VoipIdCache;

    .line 49
    invoke-virtual {v1}, Lcom/truecaller/voip/db/VoipIdCache;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/truecaller/voip/db/VoipIdCache;->getVoipId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_13
    return-object v0

    :cond_14
    if-eqz p1, :cond_15

    .line 50
    iget-object v0, p0, Le/a/d/c0/z0$d;->e:Le/a/d/c0/z0;

    invoke-static {v0, p1}, Le/a/d/c0/z0;->f(Le/a/d/c0/z0;Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v3

    :cond_15
    return-object v3
.end method
