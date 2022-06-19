.class public final Le/a/d/d/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/d/c/b;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Ls1/w/f;

.field public final c:Le/a/d/f;

.field public final d:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;

.field public final e:Le/a/h/b/w0/d;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/d/f;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;Le/a/h/b/w0/d;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContextIo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContextComputation"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voip"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortedContactsRepository"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestedContactsManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/d/c/c;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/d/d/c/c;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/d/d/c/c;->c:Le/a/d/f;

    iput-object p4, p0, Le/a/d/d/c/c;->d:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;

    iput-object p5, p0, Le/a/d/d/c/c;->e:Le/a/h/b/w0/d;

    return-void
.end method

.method public static final a(Le/a/d/d/c/c;Ljava/util/List;ZZZLjava/util/HashSet;Z)Ljava/util/List;
    .locals 12

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/Contact;

    .line 4
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "contact.numbers"

    if-le v3, v4, :cond_1

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/truecaller/data/entity/Number;

    const-string v3, "number"

    .line 7
    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, v2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move v9, p2

    move/from16 v10, p6

    .line 8
    invoke-virtual/range {v3 .. v10}, Le/a/d/d/c/c;->b(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/Number;ZZLjava/util/HashSet;ZZ)Le/a/d/d/c/a;

    move-result-object v3

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "contact.numbers.first()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Lcom/truecaller/data/entity/Number;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, v2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move v9, p2

    move/from16 v10, p6

    .line 11
    invoke-virtual/range {v3 .. v10}, Le/a/d/d/c/c;->b(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/Number;ZZLjava/util/HashSet;ZZ)Le/a/d/d/c/a;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final b(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/Number;ZZLjava/util/HashSet;ZZ)Le/a/d/d/c/a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Lcom/truecaller/data/entity/Number;",
            "ZZ",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Le/a/d/d/c/a;"
        }
    .end annotation

    move-object v0, p5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_1

    .line 1
    invoke-interface {p5}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p7, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move v1, v2

    :cond_0
    move v6, v1

    move v7, v6

    goto :goto_0

    :cond_1
    move v6, v1

    move v7, v2

    .line 4
    :goto_0
    new-instance v0, Le/a/d/d/c/a;

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v5, v1

    const-string v1, "contact.name ?: contact.displayNameOrNumber"

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v8, p3

    move/from16 v9, p6

    .line 6
    invoke-direct/range {v2 .. v9}, Le/a/d/d/c/a;-><init>(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/Number;Ljava/lang/String;ZZZZ)V

    return-object v0
.end method

.method public c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/d/d/c/a;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/d/d/c/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/d/c/c$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/d/c/c$a;

    iget v1, v0, Le/a/d/d/c/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/d/c/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/d/c/c$a;

    invoke-direct {v0, p0, p2}, Le/a/d/d/c/c$a;-><init>(Le/a/d/d/c/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/d/c/c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/d/c/c$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/d/d/c/c$a;->j:Ljava/lang/Object;

    check-cast p1, Ls1/z/c/c0;

    iget-object v2, v0, Le/a/d/d/c/c$a;->i:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/c0;

    iget-object v4, v0, Le/a/d/d/c/c$a;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v6, v0, Le/a/d/d/c/c$a;->g:Ljava/lang/Object;

    check-cast v6, Le/a/d/d/c/c;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object p2, Ln3/k/e/h;->b:Ljava/lang/reflect/Method;

    const-string p2, "VOIP - Fetch suggested contacts"

    .line 5
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    new-instance p2, Ls1/z/c/c0;

    invoke-direct {p2}, Ls1/z/c/c0;-><init>()V

    iget-object v2, p0, Le/a/d/d/c/c;->a:Ls1/w/f;

    new-instance v6, Le/a/d/d/c/c$c;

    invoke-direct {v6, p0, v5}, Le/a/d/d/c/c$c;-><init>(Le/a/d/d/c/c;Ls1/w/d;)V

    iput-object p0, v0, Le/a/d/d/c/c$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/d/c/c$a;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/d/c/c$a;->i:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/d/c/c$a;->j:Ljava/lang/Object;

    iput v4, v0, Le/a/d/d/c/c$a;->e:I

    invoke-static {v2, v6, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, p0

    move-object v4, p1

    move-object p1, p2

    move-object p2, v2

    move-object v2, p1

    .line 7
    :goto_1
    check-cast p2, Ljava/util/List;

    iput-object p2, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 8
    iget-object p1, v6, Le/a/d/d/c/c;->b:Ls1/w/f;

    new-instance p2, Le/a/d/d/c/c$b;

    invoke-direct {p2, v2, v4, v5}, Le/a/d/d/c/c$b;-><init>(Ls1/z/c/c0;Ljava/util/List;Ls1/w/d;)V

    iput-object v5, v0, Le/a/d/d/c/c$a;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/d/d/c/c$a;->h:Ljava/lang/Object;

    iput-object v5, v0, Le/a/d/d/c/c$a;->i:Ljava/lang/Object;

    iput-object v5, v0, Le/a/d/d/c/c$a;->j:Ljava/lang/Object;

    iput v3, v0, Le/a/d/d/c/c$a;->e:I

    invoke-static {p1, p2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 9
    :cond_5
    :goto_2
    check-cast p2, Ljava/util/List;

    .line 10
    sget-object p1, Ln3/k/e/h;->b:Ljava/lang/reflect/Method;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p2
.end method
