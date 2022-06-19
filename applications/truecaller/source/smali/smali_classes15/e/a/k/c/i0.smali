.class public final Le/a/k/c/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/h0;


# instance fields
.field public final a:Le/a/k/j;

.field public final b:Le/a/k/c/i1;

.field public final c:Le/a/k/c/r0;

.field public final d:Le/a/k/n/e/a;

.field public final e:Le/a/k/n/f/d;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/k/j;Le/a/k/c/i1;Le/a/k/c/r0;Le/a/k/n/e/a;Le/a/k/n/f/d;Ls1/w/f;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "support"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availability"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiddenContactRepository"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "incomingVideoRepository"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iOContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/i0;->a:Le/a/k/j;

    iput-object p2, p0, Le/a/k/c/i0;->b:Le/a/k/c/i1;

    iput-object p3, p0, Le/a/k/c/i0;->c:Le/a/k/c/r0;

    iput-object p4, p0, Le/a/k/c/i0;->d:Le/a/k/n/e/a;

    iput-object p5, p0, Le/a/k/c/i0;->e:Le/a/k/n/f/d;

    iput-object p6, p0, Le/a/k/c/i0;->f:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/k/c/i0;->h()Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    move-result-object v0

    sget-object v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->NoOne:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Le/a/k/n/e/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k/n/e/g;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k/c/i0;->d:Le/a/k/n/e/a;

    check-cast v0, Le/a/k/n/e/b;

    invoke-virtual {v0, p1, p2}, Le/a/k/n/e/b;->a(Le/a/k/n/e/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/c/i0$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/c/i0$a;

    iget v1, v0, Le/a/k/c/i0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/c/i0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/c/i0$a;

    invoke-direct {v0, p0, p2}, Le/a/k/c/i0$a;-><init>(Le/a/k/c/i0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/c/i0$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/c/i0$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/k/c/i0;->a()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Le/a/k/c/i0;->d:Le/a/k/n/e/a;

    iput v3, v0, Le/a/k/c/i0$a;->e:I

    check-cast p2, Le/a/k/n/e/b;

    invoke-virtual {p2, p1, v0}, Le/a/k/n/e/b;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 5
    :cond_5
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k/c/i0;->f:Ls1/w/f;

    new-instance v1, Le/a/k/c/i0$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/k/c/i0$b;-><init>(Le/a/k/c/i0;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public e()Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/k/c/i0;->h()Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/util/List;Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactNumbers"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Le/a/k/a/e/k/a;->i:Le/a/k/a/e/k/a$b;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/k/a/e/k/a;

    invoke-direct {v0}, Le/a/k/a/e/k/a;-><init>()V

    const-string v1, "hiddenContactNameArg"

    .line 4
    invoke-static {v1, p2}, Le/d/c/a/a;->X0(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p3, "hiddenContactNumbersArg"

    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    iput-object p4, v0, Le/a/k/a/e/k/a;->g:Ls1/z/b/l;

    .line 8
    const-class p2, Le/a/k/a/e/k/a;

    invoke-static {p2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p2

    invoke-interface {p2}, Ls1/a/c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public g(Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;)V
    .locals 2

    const-string v0, "settings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/c/i0;->b:Le/a/k/c/i1;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->getValue()I

    move-result p1

    const-string v1, "receiveContactPreference"

    invoke-interface {v0, v1, p1}, Le/a/k/c/i1;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final h()Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k/c/i0;->b:Le/a/k/c/i1;

    const-string v1, "receiveContactPreference"

    invoke-interface {v0, v1}, Le/a/k/c/i1;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/k/c/i0;->b:Le/a/k/c/i1;

    const-string v1, "hiddenForAllContacts"

    invoke-interface {v0, v1, v2}, Le/a/k/c/i1;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->NoOne:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->Everyone:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    :goto_0
    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/k/c/i0;->b:Le/a/k/c/i1;

    .line 6
    invoke-interface {v0, v1, v2}, Le/a/k/c/i1;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7
    sget-object v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->Everyone:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    invoke-virtual {v1}, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    sget-object v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->Contacts:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    invoke-virtual {v1}, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    sget-object v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->NoOne:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    invoke-virtual {v1}, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->getValue()I

    :goto_1
    return-object v1
.end method

.method public final i(Ls1/w/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    instance-of v2, p1, Le/a/k/c/i0$c;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Le/a/k/c/i0$c;

    iget v3, v2, Le/a/k/c/i0$c;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/k/c/i0$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/k/c/i0$c;

    invoke-direct {v2, p0, p1}, Le/a/k/c/i0$c;-><init>(Le/a/k/c/i0;Ls1/w/d;)V

    :goto_0
    iget-object p1, v2, Le/a/k/c/i0$c;->d:Ljava/lang/Object;

    .line 1
    iget v3, v2, Le/a/k/c/i0$c;->e:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v3, :cond_4

    if-eq v3, v4, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v6, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v3, v2, Le/a/k/c/i0$c;->k:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    iget-object v7, v2, Le/a/k/c/i0$c;->j:Ljava/lang/Object;

    check-cast v7, Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;

    iget-object v8, v2, Le/a/k/c/i0$c;->i:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v2, Le/a/k/c/i0$c;->h:Ljava/lang/Object;

    check-cast v9, Ljava/util/Collection;

    iget-object v10, v2, Le/a/k/c/i0$c;->g:Ljava/lang/Object;

    check-cast v10, Le/a/k/c/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v11, v10

    move-object v10, v8

    move-object v8, v7

    move-object v7, v3

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_3

    :cond_3
    iget-object v3, v2, Le/a/k/c/i0$c;->g:Ljava/lang/Object;

    check-cast v3, Le/a/k/c/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/c/i0;->d:Le/a/k/n/e/a;

    iput-object p0, v2, Le/a/k/c/i0$c;->g:Ljava/lang/Object;

    iput v4, v2, Le/a/k/c/i0$c;->e:I

    .line 5
    check-cast p1, Le/a/k/n/e/b;

    invoke-virtual {p1, v2}, Le/a/k/n/e/b;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v3, p0

    .line 6
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {p1, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v8, p1

    move-object p1, v1

    move-object v10, v3

    move-object v3, v7

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 9
    check-cast v7, Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;

    .line 10
    iget-object v9, v10, Le/a/k/c/i0;->a:Le/a/k/j;

    invoke-virtual {v7}, Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;->getContactNumber()Ljava/lang/String;

    move-result-object v11

    iput-object v10, v2, Le/a/k/c/i0$c;->g:Ljava/lang/Object;

    iput-object v3, v2, Le/a/k/c/i0$c;->h:Ljava/lang/Object;

    iput-object v8, v2, Le/a/k/c/i0$c;->i:Ljava/lang/Object;

    iput-object v7, v2, Le/a/k/c/i0$c;->j:Ljava/lang/Object;

    iput-object v3, v2, Le/a/k/c/i0$c;->k:Ljava/lang/Object;

    iput v5, v2, Le/a/k/c/i0$c;->e:I

    check-cast v9, Le/a/k/k;

    invoke-virtual {v9, v11, v2}, Le/a/k/k;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_6

    return-object v1

    :cond_6
    move-object v11, v10

    move-object v10, v8

    move-object v8, v7

    move-object v7, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, p1

    move-object p1, v9

    move-object v9, v7

    :goto_3
    invoke-virtual {v8}, Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;->getContactNumber()Ljava/lang/String;

    move-result-object v8

    .line 11
    new-instance v12, Ls1/k;

    invoke-direct {v12, p1, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object p1, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v9

    move-object v8, v10

    move-object v10, v11

    goto :goto_2

    .line 13
    :cond_7
    check-cast v3, Ljava/util/List;

    .line 14
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ls1/k;

    .line 16
    iget-object v8, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 17
    check-cast v8, Lcom/truecaller/data/entity/Contact;

    if-eqz v8, :cond_a

    .line 18
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    move v8, v4

    .line 19
    :goto_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 20
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 21
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 23
    check-cast v5, Ls1/k;

    .line 24
    iget-object v8, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 25
    check-cast v8, Lcom/truecaller/data/entity/Contact;

    .line 26
    iget-object v5, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 27
    check-cast v5, Ljava/lang/String;

    .line 28
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_c

    .line 29
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->e0()Ljava/util/List;

    move-result-object v7

    :cond_c
    if-eqz v7, :cond_d

    .line 30
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_d
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :goto_8
    invoke-static {v3, v9}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_7

    .line 32
    :cond_e
    iget-object v4, v10, Le/a/k/c/i0;->d:Le/a/k/n/e/a;

    iput-object v7, v2, Le/a/k/c/i0$c;->g:Ljava/lang/Object;

    iput-object v7, v2, Le/a/k/c/i0$c;->h:Ljava/lang/Object;

    iput-object v7, v2, Le/a/k/c/i0$c;->i:Ljava/lang/Object;

    iput-object v7, v2, Le/a/k/c/i0$c;->j:Ljava/lang/Object;

    iput-object v7, v2, Le/a/k/c/i0$c;->k:Ljava/lang/Object;

    iput v6, v2, Le/a/k/c/i0$c;->e:I

    check-cast v4, Le/a/k/n/e/b;

    .line 33
    iget-object v5, v4, Le/a/k/n/e/b;->b:Ls1/w/f;

    new-instance v6, Le/a/k/n/e/d;

    invoke-direct {v6, v4, v3, v7}, Le/a/k/n/e/d;-><init>(Le/a/k/n/e/b;Ljava/util/List;Ls1/w/d;)V

    invoke-static {v5, v6, v2}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_f

    goto :goto_9

    :cond_f
    move-object v2, v0

    :goto_9
    if-ne v2, v1, :cond_10

    return-object v1

    :cond_10
    :goto_a
    return-object v0
.end method

.method public final synthetic j(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/k/c/i0$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/k/c/i0$e;

    iget v1, v0, Le/a/k/c/i0$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/c/i0$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/c/i0$e;

    invoke-direct {v0, p0, p1}, Le/a/k/c/i0$e;-><init>(Le/a/k/c/i0;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/k/c/i0$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/c/i0$e;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_1

    iget-object v2, v0, Le/a/k/c/i0$e;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v3, v0, Le/a/k/c/i0$e;->g:Ljava/lang/Object;

    check-cast v3, Le/a/k/c/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/k/c/i0$e;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v3, v0, Le/a/k/c/i0$e;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    iget-object v6, v0, Le/a/k/c/i0$e;->g:Ljava/lang/Object;

    check-cast v6, Le/a/k/c/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v2, v0, Le/a/k/c/i0$e;->g:Ljava/lang/Object;

    check-cast v2, Le/a/k/c/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/c/i0;->d:Le/a/k/n/e/a;

    iput-object p0, v0, Le/a/k/c/i0$e;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/k/c/i0$e;->e:I

    .line 5
    check-cast p1, Le/a/k/n/e/b;

    invoke-virtual {p1, v0}, Le/a/k/n/e/b;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 6
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 9
    check-cast v6, Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;

    .line 10
    iget-object v7, p1, Le/a/k/c/i0;->a:Le/a/k/j;

    invoke-virtual {v6}, Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;->getContactNumber()Ljava/lang/String;

    move-result-object v6

    iput-object p1, v0, Le/a/k/c/i0$e;->g:Ljava/lang/Object;

    iput-object v3, v0, Le/a/k/c/i0$e;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/k/c/i0$e;->i:Ljava/lang/Object;

    iput v4, v0, Le/a/k/c/i0$e;->e:I

    check-cast v7, Le/a/k/k;

    invoke-virtual {v7, v6, v0}, Le/a/k/k;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_6

    return-object v1

    :cond_6
    move-object v8, v6

    move-object v6, p1

    move-object p1, v8

    :goto_3
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_7

    .line 11
    invoke-interface {v3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object p1, v6

    goto :goto_2

    .line 12
    :cond_8
    check-cast v3, Ljava/util/List;

    .line 13
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, p1

    :cond_9
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 14
    iget-object v4, v3, Le/a/k/c/i0;->d:Le/a/k/n/e/a;

    new-instance v6, Le/a/k/n/e/g;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->e0()Ljava/util/List;

    move-result-object p1

    const-string v7, "it.tcSourcedNumbers"

    invoke-static {p1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, p1}, Le/a/k/n/e/g;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Le/a/k/c/i0$e;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/k/c/i0$e;->h:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, v0, Le/a/k/c/i0$e;->i:Ljava/lang/Object;

    iput v5, v0, Le/a/k/c/i0$e;->e:I

    check-cast v4, Le/a/k/n/e/b;

    invoke-virtual {v4, v6, v0}, Le/a/k/n/e/b;->a(Le/a/k/n/e/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 15
    :cond_a
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public n(ZLjava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/k/c/i0$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/k/c/i0$d;

    iget v1, v0, Le/a/k/c/i0$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/c/i0$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/c/i0$d;

    invoke-direct {v0, p0, p3}, Le/a/k/c/i0$d;-><init>(Le/a/k/c/i0;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/k/c/i0$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/c/i0$d;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/k/c/i0$d;->h:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    iget-object p1, v0, Le/a/k/c/i0$d;->g:Ljava/lang/Object;

    check-cast p1, Le/a/k/c/i0;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/k/c/i0;->c:Le/a/k/c/r0;

    invoke-interface {p3}, Le/a/k/c/r0;->isAvailable()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 5
    iget-object p3, p0, Le/a/k/c/i0;->c:Le/a/k/c/r0;

    invoke-interface {p3}, Le/a/k/c/r0;->b()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 6
    invoke-virtual {p0}, Le/a/k/c/i0;->a()Z

    move-result p3

    if-nez p3, :cond_6

    .line 7
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, v4

    if-eqz p3, :cond_6

    if-eqz p1, :cond_6

    .line 8
    iget-object p1, p0, Le/a/k/c/i0;->d:Le/a/k/n/e/a;

    iput-object p0, v0, Le/a/k/c/i0$d;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/k/c/i0$d;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/k/c/i0$d;->e:I

    check-cast p1, Le/a/k/n/e/b;

    invoke-virtual {p1, p2, v0}, Le/a/k/n/e/b;->c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_6

    .line 9
    iget-object p1, p1, Le/a/k/c/i0;->e:Le/a/k/n/f/d;

    const/4 p3, 0x0

    iput-object p3, v0, Le/a/k/c/i0$d;->g:Ljava/lang/Object;

    iput-object p3, v0, Le/a/k/c/i0$d;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/k/c/i0$d;->e:I

    check-cast p1, Le/a/k/n/f/f;

    invoke-virtual {p1, p2, v0}, Le/a/k/n/f/f;->c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 10
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
