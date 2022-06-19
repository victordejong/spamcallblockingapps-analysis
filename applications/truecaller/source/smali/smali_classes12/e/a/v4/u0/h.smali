.class public abstract Le/a/v4/u0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v4/u0/g;


# instance fields
.field public a:Le/a/v4/w0/b;

.field public b:Z

.field public c:Le/a/v4/u0/k/a;

.field public final d:Landroid/os/Bundle;

.field public final e:Le/a/b0/o/a;

.field public final f:Le/a/b0/e/r/a;

.field public final g:Le/a/v4/l;

.field public final h:Le/a/v4/v;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/l;Le/a/v4/v;)V
    .locals 8

    const-string v0, "extras"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTrackerHolder"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkAccountManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    iput-object p2, p0, Le/a/v4/u0/h;->e:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/v4/u0/h;->f:Le/a/b0/e/r/a;

    iput-object p4, p0, Le/a/v4/u0/h;->g:Le/a/v4/l;

    iput-object p5, p0, Le/a/v4/u0/h;->h:Le/a/v4/v;

    .line 2
    new-instance p1, Le/a/v4/u0/k/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object v1, p1

    move-object v2, p4

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Le/a/v4/u0/k/b;-><init>(Le/a/v4/l;Le/a/v4/u0/k/a$b;Le/a/v4/u0/k/a$c;Le/a/v4/u0/k/a$a;Le/a/v4/u0/k/a$d;I)V

    iput-object p1, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Le/a/v4/u0/g;->m()Le/a/t/b/c/c;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/t/b/c/c;->c:Lcom/truecaller/android/sdk/clients/CustomDataBundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "it"

    .line 3
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->d:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    xor-int/lit8 v0, v1, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public B()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract C()Z
.end method

.method public D()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/u0/h;->h:Le/a/v4/v;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    const-string v1, "ApplicationBase.getAppBase()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/truecaller/android/sdk/TrueProfile;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/u0/h;->e:Le/a/b0/o/a;

    iget-object v1, p0, Le/a/v4/u0/h;->f:Le/a/b0/e/r/a;

    invoke-static {v0, v1}, Le/a/l4/k;->B(Le/a/b0/o/a;Le/a/b0/e/r/a;)Lcom/truecaller/android/sdk/TrueProfile;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-interface {p0}, Le/a/v4/u0/g;->m()Le/a/t/b/c/c;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/t/b/c/c;->c:Lcom/truecaller/android/sdk/clients/CustomDataBundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    sget-object v2, Le/a/v4/u0/c;->e:Ljava/util/Map;

    .line 4
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const-string v6, "customDataBundle"

    .line 7
    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v6, v0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->g:I

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-eqz v5, :cond_0

    .line 9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ls1/u/i;->d(Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Ls1/u/i;->u(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 12
    :cond_3
    sget-object v0, Le/a/v4/u0/c;->e:Ljava/util/Map;

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/u/i;->u(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Le/a/v4/u0/g;->m()Le/a/t/b/c/c;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/t/b/c/c;->c:Lcom/truecaller/android/sdk/clients/CustomDataBundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "it"

    .line 3
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->c:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    xor-int/lit8 v0, v1, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public l()Ljava/util/Locale;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_0

    instance-of v1, v0, Le/a/v4/w0/c;

    if-eqz v1, :cond_0

    const-string v0, "FullScreen"

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    instance-of v0, v0, Le/a/v4/w0/a;

    if-eqz v0, :cond_1

    const-string v0, "Bottomsheet"

    goto :goto_0

    :cond_1
    const-string v0, "Popup"

    :goto_0
    return-object v0
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/v4/u0/h;->B()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "keySaveInstance"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final q(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    .line 2
    invoke-interface {v0, p1}, Le/a/v4/u0/k/a;->b(Z)V

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-interface {p0}, Le/a/v4/u0/g;->m()Le/a/t/b/c/c;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/t/b/c/c;->c:Lcom/truecaller/android/sdk/clients/CustomDataBundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    sget-object v2, Le/a/v4/u0/c;->c:Ljava/util/Map;

    .line 4
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const-string v6, "customDataBundle"

    .line 7
    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v6, v0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->e:I

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-eqz v5, :cond_0

    .line 9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ls1/u/i;->d(Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Ls1/u/i;->u(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 12
    :cond_3
    sget-object v0, Le/a/v4/u0/c;->c:Ljava/util/Map;

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/u/i;->u(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Le/a/v4/u0/g;->m()Le/a/t/b/c/c;

    move-result-object v0

    const/16 v1, 0x800

    .line 2
    invoke-virtual {v0, v1}, Le/a/t/b/c/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rect"

    goto :goto_0

    :cond_0
    const-string v0, "round"

    :goto_0
    return-object v0
.end method

.method public final t(Le/a/v4/w0/b;)V
    .locals 2

    const-string v0, "presenterView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    .line 2
    iget-object v0, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    .line 3
    invoke-interface {v0}, Le/a/v4/u0/k/a;->a()V

    .line 4
    invoke-virtual {p0}, Le/a/v4/u0/h;->C()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    .line 5
    invoke-interface {p0, v1, v0}, Le/a/v4/u0/g;->x(II)V

    .line 6
    invoke-interface {p1}, Le/a/v4/w0/b;->V1()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Le/a/v4/u0/h;->D()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    .line 8
    invoke-interface {p0, v1, v0}, Le/a/v4/u0/g;->x(II)V

    .line 9
    invoke-interface {p1}, Le/a/v4/w0/b;->V1()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p1}, Le/a/v4/w0/b;->r4()V

    :goto_0
    return-void
.end method

.method public u()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xe

    .line 1
    invoke-interface {p0, v0, v1}, Le/a/v4/u0/g;->x(II)V

    .line 2
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/v4/w0/b;->V1()V

    :cond_0
    return-void
.end method

.method public v()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/v4/u0/h;->B()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PARTNERINFO_OTHER_NUMBER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Le/a/v4/u0/g;->m()Le/a/t/b/c/c;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Le/a/t/b/c/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "skip"

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Le/a/v4/u0/g;->m()Le/a/t/b/c/c;

    move-result-object v0

    invoke-virtual {v0}, Le/a/t/b/c/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "None"

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p0}, Le/a/v4/u0/g;->m()Le/a/t/b/c/c;

    move-result-object v0

    const/16 v1, 0x100

    .line 5
    invoke-virtual {v0, v1}, Le/a/t/b/c/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "uam"

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p0}, Le/a/v4/u0/g;->m()Le/a/t/b/c/c;

    move-result-object v0

    const/16 v1, 0x200

    .line 7
    invoke-virtual {v0, v1}, Le/a/t/b/c/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "edm"

    goto :goto_0

    .line 8
    :cond_3
    invoke-interface {p0}, Le/a/v4/u0/g;->m()Le/a/t/b/c/c;

    move-result-object v0

    const/16 v1, 0x1000

    .line 9
    invoke-virtual {v0, v1}, Le/a/t/b/c/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "idl"

    goto :goto_0

    :cond_4
    const-string v0, "uan"

    :goto_0
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-interface {p0}, Le/a/v4/u0/g;->m()Le/a/t/b/c/c;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/t/b/c/c;->c:Lcom/truecaller/android/sdk/clients/CustomDataBundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    sget-object v2, Le/a/v4/u0/c;->d:Ljava/util/Map;

    .line 4
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const-string v6, "customDataBundle"

    .line 7
    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v6, v0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->f:I

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-eqz v5, :cond_0

    .line 9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ls1/u/i;->d(Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Ls1/u/i;->u(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 12
    :cond_3
    sget-object v0, Le/a/v4/u0/c;->d:Ljava/util/Map;

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/u/i;->u(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
