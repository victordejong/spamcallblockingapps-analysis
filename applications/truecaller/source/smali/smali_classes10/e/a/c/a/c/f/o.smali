.class public final Le/a/c/a/c/f/o;
.super Le/a/c/a/i/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/k<",
        "Ls1/s;",
        "Landroidx/lifecycle/LiveData<",
        "Lcom/truecaller/insights/ui/models/AdapterItem$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Le/a/c/c0/o;

.field public final c:Le/a/c/h/i;

.field public final d:Le/a/c/e/c;

.field public final e:Le/a/c/b/j;

.field public final f:Le/a/c/b/e;


# direct methods
.method public constructor <init>(Le/a/c/c0/o;Le/a/c/h/i;Le/a/c/e/c;Le/a/c/b/j;Le/a/c/b/e;Ls1/w/f;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageTranslationContract"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsAnalyticsManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p6}, Le/a/c/a/i/k;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/a/c/f/o;->b:Le/a/c/c0/o;

    iput-object p2, p0, Le/a/c/a/c/f/o;->c:Le/a/c/h/i;

    iput-object p3, p0, Le/a/c/a/c/f/o;->d:Le/a/c/e/c;

    iput-object p4, p0, Le/a/c/a/c/f/o;->e:Le/a/c/b/j;

    iput-object p5, p0, Le/a/c/a/c/f/o;->f:Le/a/c/b/e;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/s;

    invoke-virtual {p0, p2}, Le/a/c/a/c/f/o;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/s;",
            "Ls1/w/d<",
            "-",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/truecaller/insights/ui/models/AdapterItem$a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/a/c/f/k;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/a/c/f/k;

    iget v1, v0, Le/a/c/a/c/f/k;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a/c/f/k;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a/c/f/k;

    invoke-direct {v0, p0, p1}, Le/a/c/a/c/f/k;-><init>(Le/a/c/a/c/f/o;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/a/c/f/k;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a/c/f/k;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Le/a/c/a/c/f/k;->g:Ljava/lang/Object;

    check-cast v0, Le/a/c/a/c/f/o;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/a/c/f/o;->e:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->C()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    iput-object p0, v0, Le/a/c/a/c/f/k;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/c/a/c/f/k;->e:I

    invoke-virtual {p0, v0}, Le/a/c/a/c/f/o;->f(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 6
    :cond_5
    iget-object p1, v0, Le/a/c/a/c/f/o;->b:Le/a/c/c0/o;

    invoke-interface {p1}, Le/a/c/c0/o;->z0()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v1, Le/a/c/a/c/f/l;

    invoke-direct {v1, v0}, Le/a/c/a/c/f/l;-><init>(Le/a/c/a/c/f/o;)V

    new-instance v0, Le/a/c/a/c/f/q;

    invoke-direct {v0, v1}, Le/a/c/a/c/f/q;-><init>(Ls1/z/b/l;)V

    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->Q0(Landroidx/lifecycle/LiveData;Ln3/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    :goto_2
    return-object v3
.end method

.method public final e()Le/a/c/r/d/c;
    .locals 10

    .line 1
    new-instance v9, Le/a/c/r/d/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v0, "translation_smart_sms"

    .line 2
    invoke-virtual {v9, v0}, Le/a/c/r/d/c;->g(Ljava/lang/String;)V

    const-string v0, "model_download"

    .line 3
    invoke-virtual {v9, v0}, Le/a/c/r/d/c;->e(Ljava/lang/String;)V

    return-object v9
.end method

.method public final f(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/a/c/f/o$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/a/c/f/o$a;

    iget v1, v0, Le/a/c/a/c/f/o$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a/c/f/o$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a/c/f/o$a;

    invoke-direct {v0, p0, p1}, Le/a/c/a/c/f/o$a;-><init>(Le/a/c/a/c/f/o;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/a/c/f/o$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a/c/f/o$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/a/c/f/o;->f:Le/a/c/b/e;

    invoke-interface {p1}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0x8a2

    if-eq v2, v4, :cond_4

    const/16 v4, 0xa52

    if-eq v2, v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "SE"

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Le/a/c/a/c/f/o;->c:Le/a/c/h/i;

    sget-object v2, Lcom/truecaller/insights/commons/LanguageCommonNames;->SWEDISH:Lcom/truecaller/insights/commons/LanguageCommonNames;

    invoke-interface {p1, v2}, Le/a/c/h/i;->f(Lcom/truecaller/insights/commons/LanguageCommonNames;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string v2, "EG"

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Le/a/c/a/c/f/o;->c:Le/a/c/h/i;

    sget-object v2, Lcom/truecaller/insights/commons/LanguageCommonNames;->ARABIC:Lcom/truecaller/insights/commons/LanguageCommonNames;

    invoke-interface {p1, v2}, Le/a/c/h/i;->f(Lcom/truecaller/insights/commons/LanguageCommonNames;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_7

    .line 7
    iget-object v2, p0, Le/a/c/a/c/f/o;->c:Le/a/c/h/i;

    iput v3, v0, Le/a/c/a/c/f/o$a;->e:I

    invoke-interface {v2, p1, v0}, Le/a/c/h/i;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    .line 10
    :goto_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
