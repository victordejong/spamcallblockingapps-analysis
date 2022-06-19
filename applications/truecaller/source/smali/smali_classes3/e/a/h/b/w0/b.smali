.class public final Le/a/h/b/w0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/w0/d;


# instance fields
.field public final a:Lcom/truecaller/settings/CallingSettings;

.field public final b:Le/a/h/b/w0/a;

.field public final c:Le/a/k3/j/b;


# direct methods
.method public constructor <init>(Lcom/truecaller/settings/CallingSettings;Le/a/h/b/w0/a;Le/a/k3/j/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callingSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mostCalledNumbersProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/w0/b;->a:Lcom/truecaller/settings/CallingSettings;

    iput-object p2, p0, Le/a/h/b/w0/b;->b:Le/a/h/b/w0/a;

    iput-object p3, p0, Le/a/h/b/w0/b;->c:Le/a/k3/j/b;

    return-void
.end method


# virtual methods
.method public a(Le/a/h/b/w0/c;)V
    .locals 2

    const-string v0, "suggestedContact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/h/b/w0/b;->h()Ljava/util/Set;

    move-result-object v0

    .line 2
    iget-object p1, p1, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Ls1/u/i;->r0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/h/b/w0/b;->a:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "hiddenSuggestions"

    invoke-interface {v0, v1, p1}, Lcom/truecaller/settings/CallingSettings;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/a/h/b/w0/b;->j(Ljava/util/Set;)V

    return-void
.end method

.method public c(Le/a/h/b/w0/c;)V
    .locals 1

    const-string v0, "suggestedContact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/h/b/w0/b;->i()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object p1, p1, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->r(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/h/b/w0/b;->k(Ljava/util/List;)V

    return-void
.end method

.method public d(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Le/a/h/b/w0/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/h/b/w0/b;->h()Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "it"

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ljava/lang/String;

    .line 5
    new-instance v7, Le/a/h/b/w0/c;

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v3, v4, v6}, Le/a/h/b/w0/c;-><init>(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Z)V

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/h/b/w0/b;->b:Le/a/h/b/w0/a;

    if-lez p1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, p1

    goto :goto_1

    :cond_1
    move v3, v6

    .line 7
    :goto_1
    iget-object v0, v0, Le/a/h/b/w0/a;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/c;

    invoke-interface {v0, v3}, Le/a/l0/c;->v(I)Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/u/d/b;

    if-eqz v0, :cond_4

    const-string v3, "callHistoryManager.tell(\u2026t() ?: return emptyList()"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 10
    invoke-interface {v0}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 11
    iget-object v7, v7, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    if-eqz v7, :cond_2

    const-string v8, "historyEvent?.normalized\u2026: return@mapAndClose null"

    .line 12
    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v0}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v9, Ls1/k;

    invoke-static {v8, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v8, v8, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 15
    invoke-direct {v9, v7, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    move-object v9, v4

    :goto_3
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {v0, v4}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 17
    invoke-static {v3}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 19
    :cond_4
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    .line 20
    :goto_4
    invoke-static {v0}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v3

    .line 21
    invoke-virtual {p0}, Le/a/h/b/w0/b;->i()Ljava/util/List;

    move-result-object v4

    .line 22
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 24
    check-cast v7, Ljava/lang/String;

    .line 25
    new-instance v8, Le/a/h/b/w0/c;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/data/entity/Contact;

    const/4 v10, 0x1

    invoke-direct {v8, v7, v9, v10}, Le/a/h/b/w0/c;-><init>(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Z)V

    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 26
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 28
    check-cast v2, Ls1/k;

    .line 29
    iget-object v4, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 30
    check-cast v4, Ljava/lang/String;

    .line 31
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 32
    check-cast v2, Lcom/truecaller/data/entity/Contact;

    .line 33
    new-instance v7, Le/a/h/b/w0/c;

    invoke-direct {v7, v4, v2, v6}, Le/a/h/b/w0/c;-><init>(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Z)V

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 34
    :cond_6
    invoke-static {v5, v3}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/u/i;->Z(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-static {v0}, Ls1/u/i;->r(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-lez p1, :cond_7

    .line 36
    invoke-static {v0, p1}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 37
    :cond_7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h/b/w0/c;

    .line 38
    iget-object v2, v1, Le/a/h/b/w0/c;->b:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_8

    goto :goto_8

    .line 39
    :cond_8
    iget-object v2, p0, Le/a/h/b/w0/b;->c:Le/a/k3/j/b;

    .line 40
    iget-object v3, v1, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {v2, v3}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v2

    .line 42
    :goto_8
    iput-object v2, v1, Le/a/h/b/w0/c;->b:Lcom/truecaller/data/entity/Contact;

    goto :goto_7

    :cond_9
    return-object v0
.end method

.method public e(Le/a/h/b/w0/c;)V
    .locals 2

    const-string v0, "suggestedContact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/h/b/w0/b;->h()Ljava/util/Set;

    move-result-object v0

    .line 2
    iget-object p1, p1, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Ls1/u/i;->c0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/h/b/w0/b;->a:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "hiddenSuggestions"

    invoke-interface {v0, v1, p1}, Lcom/truecaller/settings/CallingSettings;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/b/w0/b;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public g(Le/a/h/b/w0/c;)V
    .locals 1

    const-string v0, "suggestedContact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/h/b/w0/b;->i()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object p1, p1, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Ls1/u/i;->a0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/h/b/w0/b;->k(Ljava/util/List;)V

    return-void
.end method

.method public final h()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h/b/w0/b;->a:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "hiddenSuggestions"

    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->p(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "callingSettings.getStrin\u2026tings.HIDDEN_SUGGESTIONS)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/h/b/w0/b;->a:Lcom/truecaller/settings/CallingSettings;

    const-string v2, "pinnedSuggestions"

    invoke-interface {v1, v2}, Lcom/truecaller/settings/CallingSettings;->p(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "callingSettings.getStrin\u2026tings.PINNED_SUGGESTIONS)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Ljava/lang/String;

    const-string v7, "it"

    .line 5
    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "_"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v6, v5}, Ls1/f0/v;->R(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Ljava/util/List;

    .line 9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-ne v7, v5, :cond_2

    .line 10
    :try_start_0
    new-instance v7, Ls1/k;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v7

    goto :goto_3

    :catch_0
    const-string v7, "Cannot parse prefix "

    .line 11
    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string v7, "Cannot proceed prefixed string "

    .line 12
    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 13
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_4

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 15
    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v11, 0x30

    :cond_3
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const-string v11, ""

    .line 16
    invoke-static/range {v10 .. v17}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    :goto_3
    if-eqz v8, :cond_1

    .line 18
    invoke-interface {v1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 19
    :cond_5
    new-instance v2, Le/a/h/b/w0/b$a;

    invoke-direct {v2}, Le/a/h/b/w0/b$a;-><init>()V

    invoke-static {v1, v2}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 22
    check-cast v3, Ls1/k;

    .line 23
    iget-object v3, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 24
    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    return-object v2
.end method

.method public final j(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/h/b/w0/b;->a:Lcom/truecaller/settings/CallingSettings;

    const-string v0, "hiddenSuggestions"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/truecaller/settings/CallingSettings;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h/b/w0/b;->a:Lcom/truecaller/settings/CallingSettings;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_0

    .line 4
    check-cast v3, Ljava/lang/String;

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 p1, 0x0

    throw p1

    .line 7
    :cond_1
    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    const-string v1, "pinnedSuggestions"

    .line 8
    invoke-interface {v0, v1, p1}, Lcom/truecaller/settings/CallingSettings;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
