.class public final Le/a/v/p/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v/p/l;


# instance fields
.field public final a:Le/a/w4/d;

.field public final b:Le/a/v/p/f;

.field public final c:Le/a/f4/g/r;


# direct methods
.method public constructor <init>(Le/a/w4/d;Le/a/v/p/f;Le/a/f4/g/r;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contactStalenessHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v/p/m;->a:Le/a/w4/d;

    iput-object p2, p0, Le/a/v/p/m;->b:Le/a/v/p/f;

    iput-object p3, p0, Le/a/v/p/m;->c:Le/a/f4/g/r;

    return-void
.end method


# virtual methods
.method public a(ILe/a/v/a/s;Z)V
    .locals 5

    const-string v0, "detailsViewModel"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p2, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v0

    const-string v1, "detailsViewModel.contact.numbers"

    invoke-static {v0, v1}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "it"

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lcom/truecaller/data/entity/Number;

    .line 5
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    iget-object v2, p2, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 9
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Lcom/truecaller/data/entity/Number;

    .line 12
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 13
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {v1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v3

    :goto_3
    if-eqz v4, :cond_6

    return-void

    .line 16
    :cond_6
    iget-object p2, p2, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    if-nez p3, :cond_8

    .line 17
    iget-object p3, p0, Le/a/v/p/m;->b:Le/a/v/p/f;

    .line 18
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/truecaller/TrueApp;->W()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 20
    iget-object p3, p0, Le/a/v/p/m;->a:Le/a/w4/d;

    invoke-interface {p3, p2}, Le/a/w4/d;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result p2

    if-eqz p2, :cond_7

    move p2, v3

    goto :goto_4

    :cond_7
    move p2, v2

    :goto_4
    if-eqz p2, :cond_9

    .line 21
    :cond_8
    iget-object p2, p0, Le/a/v/p/m;->c:Le/a/f4/g/r;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    const-string v4, "UUID.randomUUID()"

    invoke-static {p3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "detailView"

    invoke-interface {p2, p3, v4}, Le/a/f4/g/r;->b(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/p;

    move-result-object p2

    .line 22
    iput p1, p2, Le/a/f4/g/p;->o:I

    .line 23
    iput-object v0, p2, Le/a/f4/g/p;->p:Ljava/lang/String;

    .line 24
    invoke-virtual {p2, v1}, Le/a/f4/g/p;->c(Ljava/lang/String;)Le/a/f4/g/p;

    .line 25
    iput-boolean v2, p2, Le/a/f4/g/p;->g:Z

    .line 26
    iput-boolean v3, p2, Le/a/f4/g/p;->i:Z

    const/4 p1, 0x0

    .line 27
    new-instance p3, Le/a/f4/g/p$a;

    invoke-direct {p3}, Le/a/f4/g/p$a;-><init>()V

    invoke-virtual {p2, p1, v2, v3, p3}, Le/a/f4/g/p;->f(Le/a/j4/a/d;ZZLe/a/f4/g/p$c;)Landroid/os/AsyncTask;

    :cond_9
    return-void
.end method
