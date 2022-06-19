.class public final Le/a/o/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/f;
.implements Lq3/a/i0;


# instance fields
.field public final a:I

.field public final b:Ls1/g;

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/o/b/o;

.field public final g:Le/a/o/p/a/c;

.field public final h:Le/a/o/p/e/e;

.field public final i:Le/a/b0/q/z;

.field public final j:Le/a/o/p/b/d;

.field public final k:Le/a/b0/e/l;

.field public final l:Le/a/d4/c;

.field public final m:Le/a/o/b/k;

.field public final n:Ls1/w/f;

.field public final o:Ls1/w/f;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/o/b/o;Le/a/o/p/a/c;Le/a/o/p/e/e;Le/a/b0/q/z;Le/a/o/p/b/d;Le/a/b0/e/l;Le/a/d4/c;Le/a/o/b/k;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p12    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p13    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Le/a/o/b/o;",
            "Le/a/o/p/a/c;",
            "Le/a/o/p/e/e;",
            "Le/a/b0/q/z;",
            "Le/a/o/p/b/d;",
            "Le/a/b0/e/l;",
            "Le/a/d4/c;",
            "Le/a/o/b/k;",
            "Ls1/w/f;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callReasonFeatureFlag"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondCallOnDemandReasonPickerFeatureFlag"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "midCallOnDemandReasonPickerFF"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityDbHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reasonRepository"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiddenNumberRepository"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promoManager"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/b/g;->c:Ljavax/inject/Provider;

    iput-object p2, p0, Le/a/o/b/g;->d:Ljavax/inject/Provider;

    iput-object p3, p0, Le/a/o/b/g;->e:Ljavax/inject/Provider;

    iput-object p4, p0, Le/a/o/b/g;->f:Le/a/o/b/o;

    iput-object p5, p0, Le/a/o/b/g;->g:Le/a/o/p/a/c;

    iput-object p6, p0, Le/a/o/b/g;->h:Le/a/o/p/e/e;

    iput-object p7, p0, Le/a/o/b/g;->i:Le/a/b0/q/z;

    iput-object p8, p0, Le/a/o/b/g;->j:Le/a/o/p/b/d;

    iput-object p9, p0, Le/a/o/b/g;->k:Le/a/b0/e/l;

    iput-object p10, p0, Le/a/o/b/g;->l:Le/a/d4/c;

    iput-object p11, p0, Le/a/o/b/g;->m:Le/a/o/b/k;

    iput-object p12, p0, Le/a/o/b/g;->n:Ls1/w/f;

    iput-object p13, p0, Le/a/o/b/g;->o:Ls1/w/f;

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Le/a/o/b/g;->a:I

    .line 3
    new-instance p1, Le/a/o/b/g$b;

    invoke-direct {p1, p0}, Le/a/o/b/g$b;-><init>(Le/a/o/b/g;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/o/b/g;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;)V
    .locals 7

    const-string v0, "contextCallAvailability"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Le/a/o/b/g;->n:Ls1/w/f;

    new-instance v4, Le/a/o/b/g$i;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/o/b/g$i;-><init>(Le/a/o/b/g;Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Le/a/o/b/g$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/o/b/g$c;

    iget v1, v0, Le/a/o/b/g$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/o/b/g$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/o/b/g$c;

    invoke-direct {v0, p0, p2}, Le/a/o/b/g$c;-><init>(Le/a/o/b/g;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/o/b/g$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/o/b/g$c;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

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
    iget-object p1, v0, Le/a/o/b/g$c;->g:Ljava/lang/Object;

    check-cast p1, Le/a/o/b/g;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p0}, Le/a/o/b/g;->isSupported()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 5
    iget-object p2, p0, Le/a/o/b/g;->e:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    const-string v2, "midCallOnDemandReasonPickerFF.get()"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 6
    iput-object p0, v0, Le/a/o/b/g$c;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/o/b/g$c;->e:I

    .line 7
    iget-object p2, p0, Le/a/o/b/g;->n:Ls1/w/f;

    new-instance v2, Le/a/o/b/g$a;

    invoke-direct {v2, p0, p1, v3}, Le/a/o/b/g$a;-><init>(Le/a/o/b/g;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 8
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 9
    iput-object v3, v0, Le/a/o/b/g$c;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/o/b/g$c;->e:I

    invoke-virtual {p1, v0}, Le/a/o/b/g;->f(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    instance-of p1, p2, Le/a/o/b/j$a;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    .line 10
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Le/a/o/b/g$h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/o/b/g$h;

    iget v1, v0, Le/a/o/b/g$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/o/b/g$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/o/b/g$h;

    invoke-direct {v0, p0, p2}, Le/a/o/b/g$h;-><init>(Le/a/o/b/g;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/o/b/g$h;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/o/b/g$h;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

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
    iget-object p1, v0, Le/a/o/b/g$h;->g:Ljava/lang/Object;

    check-cast p1, Le/a/o/b/g;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p0}, Le/a/o/b/g;->isSupported()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 5
    iget-object p2, p0, Le/a/o/b/g;->d:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    const-string v2, "secondCallOnDemandReasonPickerFeatureFlag.get()"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 6
    iput-object p0, v0, Le/a/o/b/g$h;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/o/b/g$h;->e:I

    .line 7
    iget-object p2, p0, Le/a/o/b/g;->n:Ls1/w/f;

    new-instance v2, Le/a/o/b/g$a;

    invoke-direct {v2, p0, p1, v3}, Le/a/o/b/g$a;-><init>(Le/a/o/b/g;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 8
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 9
    iput-object v3, v0, Le/a/o/b/g$h;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/o/b/g$h;->e:I

    invoke-virtual {p1, v0}, Le/a/o/b/g;->f(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    instance-of p1, p2, Le/a/o/b/j$a;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    .line 10
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public d(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o/b/g;->f:Le/a/o/b/o;

    invoke-virtual {p0}, Le/a/o/b/g;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "onBoardingChurn"

    invoke-interface {v0, v2, v1}, Le/a/o/b/o;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Le/a/o/b/g;->f:Le/a/o/b/o;

    const-string v1, "pref_contextCallIsEnabled"

    invoke-interface {v0, v1, p1}, Le/a/o/b/o;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public e()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/o/b/g;->f:Le/a/o/b/o;

    const-string v1, "onBoardingIsShown"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Le/a/m0/a1$k;->F(Le/a/o/b/o;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/o/b/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/o/b/g$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/o/b/g$d;

    iget v1, v0, Le/a/o/b/g$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/o/b/g$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/o/b/g$d;

    invoke-direct {v0, p0, p1}, Le/a/o/b/g$d;-><init>(Le/a/o/b/g;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/o/b/g$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/o/b/g$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

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
    invoke-virtual {p0}, Le/a/o/b/g;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    iput v3, v0, Le/a/o/b/g$d;->e:I

    invoke-virtual {p0, v0}, Le/a/o/b/g;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Le/a/o/b/j;

    goto :goto_2

    .line 6
    :cond_4
    new-instance p1, Le/a/o/b/j$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v3}, Le/a/o/b/j$a;-><init>(ZI)V

    :goto_2
    return-object p1
.end method

.method public final synthetic g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
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

    .line 1
    iget-object v0, p0, Le/a/o/b/g;->n:Ls1/w/f;

    new-instance v1, Le/a/o/b/g$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/o/b/g$a;-><init>(Le/a/o/b/g;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/b/g;->o:Ls1/w/f;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/o/b/g;->a:I

    return v0
.end method

.method public final synthetic h(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/o/b/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/o/b/g$f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/o/b/g$f;

    iget v1, v0, Le/a/o/b/g$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/o/b/g$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/o/b/g$f;

    invoke-direct {v0, p0, p1}, Le/a/o/b/g$f;-><init>(Le/a/o/b/g;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/o/b/g$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/o/b/g$f;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/o/b/g$f;->g:Ljava/lang/Object;

    check-cast v0, Le/a/o/b/g;

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
    iget-object p1, p0, Le/a/o/b/g;->m:Le/a/o/b/k;

    invoke-interface {p1}, Le/a/o/b/k;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 5
    iget-object p1, p0, Le/a/o/b/g;->h:Le/a/o/p/e/e;

    iput-object p0, v0, Le/a/o/b/g$f;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/o/b/g$f;->e:I

    invoke-interface {p1, v0}, Le/a/o/p/e/e;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gtz p1, :cond_4

    goto :goto_3

    .line 6
    :cond_4
    invoke-virtual {v0}, Le/a/o/b/g;->i()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7
    sget-object p1, Le/a/o/b/j$b;->a:Le/a/o/b/j$b;

    goto :goto_2

    .line 8
    :cond_5
    new-instance p1, Le/a/o/b/j$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v3}, Le/a/o/b/j$a;-><init>(ZI)V

    :goto_2
    return-object p1

    .line 9
    :cond_6
    :goto_3
    new-instance p1, Le/a/o/b/j$a;

    invoke-direct {p1, v3}, Le/a/o/b/j$a;-><init>(Z)V

    return-object p1
.end method

.method public i()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/o/b/g;->f:Le/a/o/b/o;

    const-string v1, "pref_contextCallIsEnabled"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Le/a/m0/a1$k;->F(Le/a/o/b/o;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o/b/g;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "callReasonFeatureFlag.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/o/b/g;->k:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/o/b/g;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o/b/g;->f:Le/a/o/b/o;

    const-string v1, "onBoardingChurn"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/o/b/o;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public n(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, Le/a/o/b/g$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/o/b/g$g;

    iget v1, v0, Le/a/o/b/g$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/o/b/g$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/o/b/g$g;

    invoke-direct {v0, p0, p2}, Le/a/o/b/g$g;-><init>(Le/a/o/b/g;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/o/b/g$g;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/o/b/g$g;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

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
    iget-object p1, v0, Le/a/o/b/g$g;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Le/a/o/b/g$g;->g:Ljava/lang/Object;

    check-cast v2, Le/a/o/b/g;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/o/b/g;->isSupported()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 5
    iput-object p0, v0, Le/a/o/b/g$g;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/o/b/g$g;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/o/b/g$g;->e:I

    invoke-virtual {p0, v0}, Le/a/o/b/g;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    instance-of p2, p2, Le/a/o/b/j$a;

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    .line 6
    iput-object p2, v0, Le/a/o/b/g$g;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/o/b/g$g;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/o/b/g$g;->e:I

    invoke-virtual {v2, p1, v0}, Le/a/o/b/g;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 7
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/o/b/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/o/b/g$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/o/b/g$e;

    iget v1, v0, Le/a/o/b/g$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/o/b/g$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/o/b/g$e;

    invoke-direct {v0, p0, p2}, Le/a/o/b/g$e;-><init>(Le/a/o/b/g;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/o/b/g$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/o/b/g$e;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/o/b/g$e;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Le/a/o/b/g$e;->g:Ljava/lang/Object;

    check-cast v2, Le/a/o/b/g;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Le/a/o/b/g$e;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Le/a/o/b/g$e;->g:Ljava/lang/Object;

    check-cast v2, Le/a/o/b/g;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/o/b/g;->isSupported()Z

    move-result p2

    if-nez p2, :cond_5

    .line 5
    new-instance p1, Le/a/o/b/i$b;

    invoke-direct {p1, v5, v6}, Le/a/o/b/i$b;-><init>(ZI)V

    return-object p1

    .line 6
    :cond_5
    iput-object p0, v0, Le/a/o/b/g$e;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/o/b/g$e;->h:Ljava/lang/Object;

    iput v6, v0, Le/a/o/b/g$e;->e:I

    invoke-virtual {p0, v0}, Le/a/o/b/g;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    :goto_1
    instance-of p2, p2, Le/a/o/b/j$a;

    if-eqz p2, :cond_7

    .line 7
    new-instance p1, Le/a/o/b/i$b;

    invoke-direct {p1, v5, v6}, Le/a/o/b/i$b;-><init>(ZI)V

    return-object p1

    .line 8
    :cond_7
    iget-object p2, v2, Le/a/o/b/g;->j:Le/a/o/p/b/d;

    iput-object v2, v0, Le/a/o/b/g$e;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/o/b/g$e;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/o/b/g$e;->e:I

    invoke-interface {p2, p1, v0}, Le/a/o/p/b/d;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 9
    new-instance p1, Le/a/o/b/i$b;

    invoke-direct {p1, v5, v6}, Le/a/o/b/i$b;-><init>(ZI)V

    return-object p1

    :cond_9
    const/4 p2, 0x0

    .line 10
    iput-object p2, v0, Le/a/o/b/g$e;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/o/b/g$e;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/o/b/g$e;->e:I

    invoke-virtual {v2, p1, v0}, Le/a/o/b/g;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    return-object v1

    :cond_a
    :goto_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_b

    .line 11
    new-instance p1, Le/a/o/b/i$b;

    invoke-direct {p1, v6}, Le/a/o/b/i$b;-><init>(Z)V

    return-object p1

    .line 12
    :cond_b
    sget-object p1, Le/a/o/b/i$a;->a:Le/a/o/b/i$a;

    return-object p1
.end method

.method public q()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/o/b/g;->i()Z

    move-result v0

    return v0
.end method
