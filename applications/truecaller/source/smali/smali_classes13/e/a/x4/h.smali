.class public final Le/a/x4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/x4/g;


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Le/a/x4/j/a;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/x4/j/a;)V
    .locals 1
    .param p1    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchWarningsRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/x4/h;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/x4/h;->b:Le/a/x4/j/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/SearchWarning;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/SearchWarning;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/x4/h$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/x4/h$a;

    iget v1, v0, Le/a/x4/h$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/x4/h$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/x4/h$a;

    invoke-direct {v0, p0, p2}, Le/a/x4/h$a;-><init>(Le/a/x4/h;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/x4/h$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/x4/h$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/x4/h$a;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/SearchWarning;

    iget-object v0, v0, Le/a/x4/h$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/x4/h;

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
    invoke-virtual {p1}, Lcom/truecaller/data/entity/SearchWarning;->getId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 5
    iget-object v2, p0, Le/a/x4/h;->b:Le/a/x4/j/a;

    iput-object p0, v0, Le/a/x4/h$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/x4/h$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/x4/h$a;->e:I

    invoke-interface {v2, p2, v0}, Le/a/x4/j/a;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p2, Lcom/truecaller/searchwarnings/data/SearchWarningDTO;

    if-eqz p2, :cond_7

    .line 6
    new-instance v3, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/searchwarnings/data/SearchWarningDTO;->getId()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p2}, Lcom/truecaller/searchwarnings/data/SearchWarningDTO;->getHeader()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_4

    .line 10
    invoke-virtual {p2}, Lcom/truecaller/searchwarnings/data/SearchWarningDTO;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/l4/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v7, v0

    goto :goto_4

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/SearchWarning;->getFeatures()Ljava/util/List;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/truecaller/searchwarnings/data/SearchWarningDTO;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning$Feature;

    const/16 v4, 0x7b

    .line 14
    invoke-static {v4}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v2, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning$Feature;->name:Ljava/lang/String;

    const/16 v8, 0x7d

    invoke-static {v4, v7, v8}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    const-string v0, ""

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v7

    iget-object v2, v2, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning$Feature;->value:Ljava/lang/String;

    invoke-virtual {v1, v7, v4, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 17
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "builder.toString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/l4/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 18
    :goto_4
    invoke-virtual {p2}, Lcom/truecaller/searchwarnings/data/SearchWarningDTO;->getBackgroundColor()Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-virtual {p2}, Lcom/truecaller/searchwarnings/data/SearchWarningDTO;->getForegroundColor()Ljava/lang/String;

    move-result-object v9

    .line 20
    invoke-virtual {p2}, Lcom/truecaller/searchwarnings/data/SearchWarningDTO;->getIconUrl()Ljava/lang/String;

    move-result-object v10

    .line 21
    invoke-virtual {p1}, Lcom/truecaller/data/entity/SearchWarning;->getRuleName()Ljava/lang/String;

    move-result-object v11

    move-object v4, v3

    .line 22
    invoke-direct/range {v4 .. v11}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v3
.end method

.method public b(Lcom/truecaller/data/entity/Contact;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->Y()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public c(Lcom/truecaller/data/entity/Contact;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p0, Le/a/x4/h;->a:Le/a/u3/g;

    .line 2
    iget-object v2, v1, Le/a/u3/g;->v4:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x11d

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->Y()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {p1}, Le/a/m0/a1$k;->J0(Lcom/truecaller/data/entity/Contact;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
