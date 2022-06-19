.class public Le/a/c/g/b0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/b0/c;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u001d\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000f\u001a\u00020\u0010H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012J\u001f\u0010\u0018\u001a\u00020\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/insights/categorizer/multiClass/MultiClassClassifierImpl;",
        "Lcom/truecaller/insights/categorizer/multiClass/MultiClassClassifier;",
        "multiClassProbCalculator",
        "Lcom/truecaller/insights/categorizer/multiClass/MultiClassProbCalculator;",
        "multiClassMetadataRepository",
        "Lcom/truecaller/insights/categorizer/datasource/MultiClassMetadataRepository;",
        "multiClassClassifierTrainer",
        "Lcom/truecaller/insights/categorizer/multiClass/MultiClassClassifierTrainer;",
        "snippetsProcessor",
        "Lcom/truecaller/insights/categorizer/snippets/SnippetsProcessor;",
        "categorizerConfig",
        "Lcom/truecaller/insights/categorizer/CategorizerConfig;",
        "(Lcom/truecaller/insights/categorizer/multiClass/MultiClassProbCalculator;Lcom/truecaller/insights/categorizer/datasource/MultiClassMetadataRepository;Lcom/truecaller/insights/categorizer/multiClass/MultiClassClassifierTrainer;Lcom/truecaller/insights/categorizer/snippets/SnippetsProcessor;Lcom/truecaller/insights/categorizer/CategorizerConfig;)V",
        "calculateProbabilities",
        "Lcom/truecaller/insights/categorizer/multiClass/ClassProbability;",
        "message",
        "",
        "calculateProbabilities$insights_categorizer",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "calculateSnippet",
        "classificationResult",
        "Lcom/truecaller/insights/categorizer/model/ClassificationResult;",
        "(Ljava/lang/String;Lcom/truecaller/insights/categorizer/model/ClassificationResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "classifyMessage",
        "reclassify",
        "",
        "trainingData",
        "",
        "Lcom/truecaller/insights/categorizer/model/MultiClassTrainingData;",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "insights-categorizer"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Le/a/c/g/b0/g;

.field public final b:Le/a/c/g/y/n;

.field public final c:Le/a/c/g/b0/e;

.field public final d:Le/a/c/g/b;


# direct methods
.method public constructor <init>(Le/a/c/g/b0/g;Le/a/c/g/y/n;Le/a/c/g/b0/e;Le/a/c/g/e0/a;Le/a/c/g/b;)V
    .locals 1

    const-string v0, "multiClassProbCalculator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiClassMetadataRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiClassClassifierTrainer"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "snippetsProcessor"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "categorizerConfig"

    invoke-static {p5, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/c/g/b0/d;->a:Le/a/c/g/b0/g;

    .line 3
    iput-object p2, p0, Le/a/c/g/b0/d;->b:Le/a/c/g/y/n;

    .line 4
    iput-object p3, p0, Le/a/c/g/b0/d;->c:Le/a/c/g/b0/e;

    .line 5
    iput-object p5, p0, Le/a/c/g/b0/d;->d:Le/a/c/g/b;

    return-void
.end method

.method public static c(Le/a/c/g/b0/d;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Le/a/c/g/b0/d$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/g/b0/d$b;

    iget v1, v0, Le/a/c/g/b0/d$b;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/g/b0/d$b;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/g/b0/d$b;

    invoke-direct {v0, p0, p2}, Le/a/c/g/b0/d$b;-><init>(Le/a/c/g/b0/d;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/g/b0/d$b;->e:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/g/b0/d$b;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Le/a/c/g/b0/d$b;->d:Ljava/lang/Object;

    check-cast p0, Le/a/c/g/b0/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Le/a/c/g/b0/d$b;->d:Ljava/lang/Object;

    check-cast p0, Le/a/c/g/b0/d;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/c/g/b0/d$b;->d:Ljava/lang/Object;

    iput v4, v0, Le/a/c/g/b0/d$b;->g:I

    invoke-virtual {p0, p1, v0}, Le/a/c/g/b0/d;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 5
    :cond_4
    :goto_1
    move-object p1, p2

    check-cast p1, Le/a/c/g/b0/b;

    if-nez p1, :cond_5

    goto :goto_3

    .line 6
    :cond_5
    iget-object p0, p0, Le/a/c/g/b0/d;->b:Le/a/c/g/y/n;

    .line 7
    iget p2, p1, Le/a/c/g/b0/b;->a:I

    .line 8
    iput-object p1, v0, Le/a/c/g/b0/d$b;->d:Ljava/lang/Object;

    iput v3, v0, Le/a/c/g/b0/d$b;->g:I

    invoke-interface {p0, p2, v0}, Le/a/c/g/y/n;->b(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object p0, p1

    .line 9
    :goto_2
    check-cast p2, Le/a/c/g/a0/d;

    if-nez p2, :cond_7

    goto :goto_3

    .line 10
    :cond_7
    iget-object p0, p0, Le/a/c/g/b0/b;->b:Ljava/lang/Double;

    if-nez p0, :cond_8

    goto :goto_3

    .line 11
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    .line 12
    new-instance v5, Le/a/c/g/a0/e;

    invoke-interface {p2}, Le/a/c/g/a0/d;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Le/a/c/g/a0/d;->getClassId()I

    move-result p2

    invoke-direct {v5, v0, p2, p0, p1}, Le/a/c/g/a0/e;-><init>(Ljava/lang/String;ID)V

    :goto_3
    return-object v5
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/a0/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Le/a/c/g/b0/d;->c(Le/a/c/g/b0/d;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/b0/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Le/a/c/g/b0/d$a;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/c/g/b0/d$a;

    iget v4, v3, Le/a/c/g/b0/d$a;->l:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/c/g/b0/d$a;->l:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/c/g/b0/d$a;

    invoke-direct {v3, v0, v2}, Le/a/c/g/b0/d$a;-><init>(Le/a/c/g/b0/d;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/c/g/b0/d$a;->j:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/c/g/b0/d$a;->l:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v10, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v9, :cond_1

    iget-wide v4, v3, Le/a/c/g/b0/d$a;->i:D

    iget-object v1, v3, Le/a/c/g/b0/d$a;->e:Ljava/lang/Object;

    check-cast v1, Le/a/c/g/b0/b;

    iget-object v3, v3, Le/a/c/g/b0/d$a;->d:Ljava/lang/Object;

    check-cast v3, Le/a/c/g/b0/b;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget v1, v3, Le/a/c/g/b0/d$a;->h:I

    iget-object v5, v3, Le/a/c/g/b0/d$a;->g:Ljava/lang/Object;

    iget-object v11, v3, Le/a/c/g/b0/d$a;->f:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v3, Le/a/c/g/b0/d$a;->e:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v3, Le/a/c/g/b0/d$a;->d:Ljava/lang/Object;

    check-cast v13, Le/a/c/g/b0/d;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_3
    iget-object v1, v3, Le/a/c/g/b0/d$a;->d:Ljava/lang/Object;

    check-cast v1, Le/a/c/g/b0/d;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_4
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    move v2, v10

    goto :goto_1

    :cond_5
    move v2, v7

    :goto_1
    if-eqz v2, :cond_22

    const-string v2, "message"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v2, Le/q/d/b;->a:Le/q/d/b;

    invoke-virtual {v2, v1}, Le/q/d/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v2, ""

    const/4 v5, 0x4

    const-string v11, "."

    .line 8
    invoke-static {v1, v11, v2, v7, v5}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    const-string v11, ","

    .line 9
    invoke-static {v1, v11, v2, v7, v5}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    const-string v11, "/"

    .line 10
    invoke-static {v1, v11, v2, v7, v5}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    const-string v11, ":"

    .line 11
    invoke-static {v1, v11, v2, v7, v5}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v11, "\n"

    .line 12
    invoke-static {v1, v11, v2, v7, v5}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    .line 13
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    invoke-static {v1, v2, v7, v7, v5}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v1

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 16
    check-cast v11, Ljava/lang/String;

    const-string v12, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 17
    invoke-static {v11, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v11}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 20
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_8

    move v12, v10

    goto :goto_4

    :cond_8
    move v12, v7

    :goto_4
    if-eqz v12, :cond_7

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 21
    :cond_9
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v1, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    .line 24
    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const-string v11, "(this as java.lang.String).toCharArray()"

    invoke-static {v5, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    array-length v11, v5

    move v12, v7

    :goto_6
    if-ge v12, v11, :cond_c

    aget-char v14, v5, v12

    .line 26
    invoke-static {v14}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    if-ne v14, v15, :cond_a

    move v14, v10

    goto :goto_7

    :cond_a
    move v14, v7

    :goto_7
    if-nez v14, :cond_b

    move v5, v7

    goto :goto_8

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_c
    move v5, v10

    :goto_8
    if-eqz v5, :cond_d

    goto :goto_9

    .line 27
    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "(this as java.lang.String).toLowerCase()"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const-string v14, " "

    .line 28
    invoke-static/range {v13 .. v20}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    .line 29
    iget-object v2, v0, Le/a/c/g/b0/d;->d:Le/a/c/g/b;

    .line 30
    iget v5, v2, Le/a/c/g/b;->a:I

    .line 31
    iget v2, v2, Le/a/c/g/b;->b:I

    .line 32
    invoke-static {v1, v5, v2}, Le/a/c/g/f0/b;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 33
    iget-object v2, v0, Le/a/c/g/b0/d;->a:Le/a/c/g/b0/g;

    invoke-static {v1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iput-object v0, v3, Le/a/c/g/b0/d$a;->d:Ljava/lang/Object;

    iput v10, v3, Le/a/c/g/b0/d$a;->l:I

    invoke-interface {v2, v1, v3}, Le/a/c/g/b0/g;->a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_f

    return-object v4

    :cond_f
    move-object v1, v0

    .line 34
    :goto_a
    check-cast v2, Le/a/c/g/b0/a;

    .line 35
    iget-object v2, v2, Le/a/c/g/b0/a;->b:Ljava/util/List;

    .line 36
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v13, v1

    move-object v12, v2

    move-object v11, v5

    :cond_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Le/a/c/g/b0/b;

    .line 37
    iget v1, v1, Le/a/c/g/b0/b;->a:I

    .line 38
    iget-object v2, v13, Le/a/c/g/b0/d;->b:Le/a/c/g/y/n;

    iput-object v13, v3, Le/a/c/g/b0/d$a;->d:Ljava/lang/Object;

    iput-object v12, v3, Le/a/c/g/b0/d$a;->e:Ljava/lang/Object;

    iput-object v11, v3, Le/a/c/g/b0/d$a;->f:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/g/b0/d$a;->g:Ljava/lang/Object;

    iput v1, v3, Le/a/c/g/b0/d$a;->h:I

    iput v8, v3, Le/a/c/g/b0/d$a;->l:I

    invoke-interface {v2, v3}, Le/a/c/g/y/n;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_11

    return-object v4

    :cond_11
    :goto_b
    check-cast v2, Le/a/c/g/a0/d;

    if-nez v2, :cond_12

    goto :goto_c

    :cond_12
    invoke-interface {v2}, Le/a/c/g/a0/d;->getClassId()I

    move-result v2

    if-ne v1, v2, :cond_13

    move v1, v10

    goto :goto_d

    :cond_13
    :goto_c
    move v1, v7

    :goto_d
    if-eqz v1, :cond_10

    goto :goto_e

    :cond_14
    move-object v5, v6

    :goto_e
    move-object v1, v5

    check-cast v1, Le/a/c/g/b0/b;

    .line 39
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_15

    move-object v5, v6

    goto :goto_11

    .line 41
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_16

    goto :goto_11

    .line 43
    :cond_16
    move-object v7, v5

    check-cast v7, Le/a/c/g/b0/b;

    .line 44
    iget-object v7, v7, Le/a/c/g/b0/b;->b:Ljava/lang/Double;

    const-wide/16 v10, 0x1

    if-nez v7, :cond_17

    move-wide v7, v10

    goto :goto_f

    .line 45
    :cond_17
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 46
    :cond_18
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 47
    move-object v14, v12

    check-cast v14, Le/a/c/g/b0/b;

    .line 48
    iget-object v14, v14, Le/a/c/g/b0/b;->b:Ljava/lang/Double;

    if-nez v14, :cond_19

    move-wide v14, v10

    goto :goto_10

    .line 49
    :cond_19
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 50
    :goto_10
    invoke-static {v7, v8, v14, v15}, Ljava/lang/Double;->compare(DD)I

    move-result v16

    if-gez v16, :cond_1a

    move-object v5, v12

    move-wide v7, v14

    .line 51
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_18

    .line 52
    :goto_11
    move-object v2, v5

    check-cast v2, Le/a/c/g/b0/b;

    if-nez v1, :cond_1b

    goto :goto_17

    :cond_1b
    const-wide/16 v7, 0x0

    if-nez v2, :cond_1c

    goto :goto_12

    .line 53
    :cond_1c
    iget-object v5, v2, Le/a/c/g/b0/b;->b:Ljava/lang/Double;

    if-nez v5, :cond_1d

    :goto_12
    move-wide v10, v7

    goto :goto_13

    .line 54
    :cond_1d
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 55
    :goto_13
    iget-object v5, v1, Le/a/c/g/b0/b;->b:Ljava/lang/Double;

    if-nez v5, :cond_1e

    goto :goto_14

    .line 56
    :cond_1e
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    :goto_14
    sub-double v7, v10, v7

    .line 57
    iget-object v5, v13, Le/a/c/g/b0/d;->b:Le/a/c/g/y/n;

    iput-object v1, v3, Le/a/c/g/b0/d$a;->d:Ljava/lang/Object;

    iput-object v2, v3, Le/a/c/g/b0/d$a;->e:Ljava/lang/Object;

    iput-object v6, v3, Le/a/c/g/b0/d$a;->f:Ljava/lang/Object;

    iput-object v6, v3, Le/a/c/g/b0/d$a;->g:Ljava/lang/Object;

    iput-wide v7, v3, Le/a/c/g/b0/d$a;->i:D

    iput v9, v3, Le/a/c/g/b0/d$a;->l:I

    invoke-interface {v5, v3}, Le/a/c/g/y/n;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_1f

    return-object v4

    :cond_1f
    move-wide v4, v7

    move-object/from16 v21, v3

    move-object v3, v1

    move-object v1, v2

    move-object/from16 v2, v21

    :goto_15
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double v2, v4, v6

    if-gtz v2, :cond_20

    move-object v2, v3

    goto :goto_16

    :cond_20
    move-object v2, v1

    :goto_16
    if-nez v2, :cond_21

    move-object v2, v1

    :cond_21
    :goto_17
    return-object v2

    .line 58
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Message text cannot be empty"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
