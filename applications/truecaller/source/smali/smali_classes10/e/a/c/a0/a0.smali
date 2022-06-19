.class public final Le/a/c/a0/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a0/z;


# instance fields
.field public final a:Le/a/c/c/d/f0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/f0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "senderInfoDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a0/a0;->a:Le/a/c/c/d/f0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/source/SourceType;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/c/a0/b0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/c/a0/a0$a;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/c/a0/a0$a;

    iget v1, v0, Le/a/c/a0/a0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a0/a0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a0/a0$a;

    invoke-direct {v0, p0, p4}, Le/a/c/a0/a0$a;-><init>(Le/a/c/a0/a0;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/c/a0/a0$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a0/a0$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/c/a0/a0$a;->i:Ljava/lang/Object;

    check-cast p1, Ls1/z/c/c0;

    iget-object p2, v0, Le/a/c/a0/a0$a;->h:Ljava/lang/Object;

    check-cast p2, Ls1/z/c/c0;

    iget-object p3, v0, Le/a/c/a0/a0$a;->g:Ljava/lang/Object;

    check-cast p3, Lcom/truecaller/insights/source/SourceType;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, p4

    move-object p4, p2

    move-object p2, p3

    move-object p3, v8

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object p4

    .line 4
    iget-object v2, p0, Le/a/c/a0/a0;->a:Le/a/c/c/d/f0;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "Locale.getDefault()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, v0, Le/a/c/a0/a0$a;->g:Ljava/lang/Object;

    iput-object p4, v0, Le/a/c/a0/a0$a;->h:Ljava/lang/Object;

    iput-object p4, v0, Le/a/c/a0/a0$a;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/c/a0/a0$a;->e:I

    invoke-interface {v2, p1, p3, v0}, Le/a/c/c/d/f0;->g(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p3, p1

    move-object p1, p4

    .line 5
    :goto_1
    check-cast p3, Ljava/util/List;

    iput-object p3, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    if-eqz p2, :cond_7

    .line 6
    iget-object p1, p4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/c/r/i/a;

    .line 9
    iget-object v1, v1, Le/a/c/r/i/a;->g:Lcom/truecaller/insights/source/SourceType;

    if-ne v1, p2, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 10
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_6
    iput-object p3, p4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 13
    :cond_7
    iget-object p1, p4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 16
    check-cast p3, Le/a/c/r/i/a;

    const-string p4, "$this$toSenderInfoModel"

    .line 17
    invoke-static {p3, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance p4, Le/a/c/a0/b0;

    .line 19
    iget-object v1, p3, Le/a/c/r/i/a;->b:Ljava/lang/String;

    .line 20
    iget-object v2, p3, Le/a/c/r/i/a;->c:Ljava/lang/String;

    .line 21
    iget-object v3, p3, Le/a/c/r/i/a;->d:Ljava/lang/String;

    .line 22
    iget-object v4, p3, Le/a/c/r/i/a;->e:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 23
    iget-object v5, p3, Le/a/c/r/i/a;->f:Ljava/util/List;

    .line 24
    iget-object v6, p3, Le/a/c/r/i/a;->g:Lcom/truecaller/insights/source/SourceType;

    .line 25
    iget-object v7, p3, Le/a/c/r/i/a;->h:Ljava/lang/String;

    move-object v0, p4

    .line 26
    invoke-direct/range {v0 .. v7}, Le/a/c/a0/b0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V

    .line 27
    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    return-object p2
.end method

.method public b(Le/a/c/a0/b0;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a0/b0;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/a0/a0;->a:Le/a/c/c/d/f0;

    const-string v1, "$this$toSenderInfoEntity"

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Le/a/c/r/i/a;

    .line 4
    iget-object v2, p1, Le/a/c/a0/b0;->a:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "Locale.getDefault()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v6, p1, Le/a/c/a0/b0;->b:Ljava/lang/String;

    .line 7
    iget-object v7, p1, Le/a/c/a0/b0;->c:Ljava/lang/String;

    .line 8
    iget-object v8, p1, Le/a/c/a0/b0;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 9
    iget-object v9, p1, Le/a/c/a0/b0;->e:Ljava/util/List;

    .line 10
    iget-object v10, p1, Le/a/c/a0/b0;->f:Lcom/truecaller/insights/source/SourceType;

    .line 11
    iget-object v11, p1, Le/a/c/a0/b0;->g:Ljava/lang/String;

    const-wide/16 v3, 0x0

    move-object v2, v1

    .line 12
    invoke-direct/range {v2 .. v11}, Le/a/c/r/i/a;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V

    .line 13
    invoke-interface {v0, v1, p2}, Le/a/c/c/d/f0;->b(Le/a/c/r/i/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public c(Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/source/SmartSMSFeatureStatus;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/truecaller/insights/source/SourceType;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p0

    .line 1
    iget-object v2, v1, Le/a/c/a0/a0;->a:Le/a/c/c/d/f0;

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "Locale.getDefault()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const-string v5, ","

    move-object v4, p3

    .line 3
    invoke-static/range {v4 .. v11}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v5

    move-object v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 4
    invoke-interface/range {v2 .. v7}, Le/a/c/c/d/f0;->h(Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/lang/String;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V

    .line 5
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method

.method public d(Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/source/SmartSMSFeatureStatus;",
            "Lcom/truecaller/insights/source/SourceType;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p5, p0, Le/a/c/a0/a0;->a:Le/a/c/c/d/f0;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Locale.getDefault()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p5, p1, p2, p3, p4}, Le/a/c/c/d/f0;->e(Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
