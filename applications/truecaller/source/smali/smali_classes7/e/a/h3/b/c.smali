.class public final Le/a/h3/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h3/b/a;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/truecaller/settings/CallingSettings;

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/b0/e/l;

.field public final g:Le/a/o5/f0;

.field public final h:Le/a/c/z/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/settings/CallingSettings;Ljavax/inject/Provider;Le/a/b0/e/l;Le/a/o5/f0;Le/a/c/z/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/truecaller/settings/CallingSettings;",
            "Ljavax/inject/Provider<",
            "Le/a/i0;",
            ">;",
            "Le/a/b0/e/l;",
            "Le/a/o5/f0;",
            "Le/a/c/z/c;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchOnCopyHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingOtpUseCases"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h3/b/c;->c:Landroid/content/Context;

    iput-object p2, p0, Le/a/h3/b/c;->d:Lcom/truecaller/settings/CallingSettings;

    iput-object p3, p0, Le/a/h3/b/c;->e:Ljavax/inject/Provider;

    iput-object p4, p0, Le/a/h3/b/c;->f:Le/a/b0/e/l;

    iput-object p5, p0, Le/a/h3/b/c;->g:Le/a/o5/f0;

    iput-object p6, p0, Le/a/h3/b/c;->h:Le/a/c/z/c;

    .line 2
    new-instance p1, Le/a/h3/b/b;

    invoke-direct {p1, p0}, Le/a/h3/b/b;-><init>(Le/a/h3/b/c;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h3/b/c;->a:Ls1/g;

    .line 3
    sget-object p1, Le/a/h3/b/d;->b:Le/a/h3/b/d;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h3/b/c;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h3/b/c;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "lastCopied"

    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h3/b/c;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "lastCopied"

    invoke-interface {v0, v1, p1}, Lcom/truecaller/settings/CallingSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h3/b/c;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "lastCopiedFromTc"

    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h3/b/c;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "clipboardSearchEnabled"

    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h3/b/c;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "lastCopied"

    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h3/b/c;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "lastCopiedFromTc"

    invoke-interface {v0, v1, p1}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h3/b/c;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i0;

    .line 2
    iget-object v0, v0, Le/a/i0;->a:Le/a/i0$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/h3/b/c;->c:Landroid/content/Context;

    .line 4
    sget v1, Lcom/truecaller/clipboard/ClipboardService;->g:I

    .line 5
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/clipboard/ClipboardService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    iget-object v0, p0, Le/a/h3/b/c;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i0;

    invoke-virtual {v0}, Le/a/i0;->onPrimaryClipChanged()V

    :cond_1
    return-void
.end method

.method public h()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/h3/b/c;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/h3/b/c;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 4
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "text/plain"

    invoke-virtual {v0, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    .line 5
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_4

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p0}, Le/a/h3/b/c;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v0

    :cond_5
    :goto_2
    return v2
.end method

.method public i(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/h3/b/c$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/h3/b/c$c;

    iget v1, v0, Le/a/h3/b/c$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/h3/b/c$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/h3/b/c$c;

    invoke-direct {v0, p0, p2}, Le/a/h3/b/c$c;-><init>(Le/a/h3/b/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/h3/b/c$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/h3/b/c$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/h3/b/c$c;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Le/a/h3/b/c$c;->g:Ljava/lang/Object;

    check-cast v0, Le/a/h3/b/c;

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
    iget-object p2, p0, Le/a/h3/b/c;->h:Le/a/c/z/c;

    iput-object p0, v0, Le/a/h3/b/c$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/h3/b/c$c;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/h3/b/c$c;->e:I

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Lw3/b/a/b;

    invoke-direct {v2}, Lw3/b/a/b;-><init>()V

    const/4 v3, 0x2

    .line 7
    invoke-virtual {v2, v3}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object v2

    .line 8
    iget-object p2, p2, Le/a/c/z/c;->a:Le/a/c/w/b0;

    const-string v3, "startDate"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Le/a/c/w/d0;

    invoke-virtual {p2, v2, v0}, Le/a/c/w/d0;->a(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 9
    :goto_1
    check-cast p2, Ljava/util/Set;

    .line 10
    invoke-virtual {v0, p1, p2}, Le/a/h3/b/c;->o(Ljava/lang/String;Ljava/util/Set;)Ls1/k;

    move-result-object p1

    return-object p1
.end method

.method public j(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h3/b/c;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "clipboardSearchEnabled"

    invoke-interface {v0, v1, p1}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public k(Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/h3/b/c$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/h3/b/c$b;

    iget v1, v0, Le/a/h3/b/c$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/h3/b/c$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/h3/b/c$b;

    invoke-direct {v0, p0, p1}, Le/a/h3/b/c$b;-><init>(Le/a/h3/b/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/h3/b/c$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/h3/b/c$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/h3/b/c$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/h3/b/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/h3/b/c$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/h3/b/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/h3/b/c;->p()Z

    move-result p1

    if-eqz p1, :cond_7

    const-wide/16 v6, 0x3e8

    .line 5
    iput-object p0, v0, Le/a/h3/b/c$b;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/h3/b/c$b;->e:I

    invoke-static {v6, v7, v0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 6
    :goto_1
    iget-object p1, v2, Le/a/h3/b/c;->g:Le/a/o5/f0;

    invoke-interface {p1}, Le/a/o5/f0;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v6, "deviceManager.textFromClipboard ?: return null"

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v2, v0, Le/a/h3/b/c$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/h3/b/c$b;->e:I

    invoke-virtual {v2, p1, v0}, Le/a/h3/b/c;->i(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, v2

    :goto_2
    check-cast p1, Ls1/k;

    if-eqz p1, :cond_7

    .line 8
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 9
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 10
    iget-object v1, v0, Le/a/h3/b/c;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v2, "lastCopiedFallback"

    invoke-interface {v1, v2}, Lcom/truecaller/settings/CallingSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object p1, v5

    :goto_3
    if-eqz p1, :cond_7

    .line 14
    iget-object v0, v0, Le/a/h3/b/c;->d:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v0, v2, p1}, Lcom/truecaller/settings/CallingSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, p1

    :cond_7
    return-object v5
.end method

.method public l(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
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

    instance-of v0, p1, Le/a/h3/b/c$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/h3/b/c$a;

    iget v1, v0, Le/a/h3/b/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/h3/b/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/h3/b/c$a;

    invoke-direct {v0, p0, p1}, Le/a/h3/b/c$a;-><init>(Le/a/h3/b/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/h3/b/c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/h3/b/c$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/h3/b/c$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/h3/b/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/h3/b/c;->p()Z

    move-result p1

    if-eqz p1, :cond_8

    const-wide/16 v7, 0x3e8

    .line 5
    iput-object p0, v0, Le/a/h3/b/c$a;->g:Ljava/lang/Object;

    iput v6, v0, Le/a/h3/b/c$a;->e:I

    invoke-static {v7, v8, v0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 6
    :goto_1
    iget-object p1, v2, Le/a/h3/b/c;->g:Le/a/o5/f0;

    invoke-interface {p1}, Le/a/o5/f0;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v7, "deviceManager.textFromClipboard ?: return false"

    invoke-static {p1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v3, v0, Le/a/h3/b/c$a;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/h3/b/c$a;->e:I

    invoke-virtual {v2, p1, v0}, Le/a/h3/b/c;->i(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p1, Ls1/k;

    if-eqz p1, :cond_6

    .line 8
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 9
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    :cond_6
    if-eqz v3, :cond_8

    move v4, v6

    goto :goto_3

    .line 10
    :cond_7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 11
    :cond_8
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public m()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/h3/b/c;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/h3/b/c;->g:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "deviceManager.textFromClipboard ?: return null"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Le/a/h3/b/c;->h:Le/a/c/z/c;

    .line 4
    iget-object v2, v2, Le/a/c/z/c;->a:Le/a/c/w/b0;

    check-cast v2, Le/a/c/w/d0;

    .line 5
    iget-object v2, v2, Le/a/c/w/d0;->b:Le/a/c/w/z;

    invoke-interface {v2}, Le/a/c/w/z;->b()Ljava/util/Set;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v0, v2}, Le/a/h3/b/c;->o(Ljava/lang/String;Ljava/util/Set;)Ls1/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 9
    iget-object v2, p0, Le/a/h3/b/c;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v3, "lastCopiedFallback"

    invoke-interface {v2, v3}, Lcom/truecaller/settings/CallingSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Le/a/h3/b/c;->d:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v1, v3, v0}, Lcom/truecaller/settings/CallingSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h3/b/c;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "lastCopied"

    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->remove(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/h3/b/c;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "lastCopiedFromTc"

    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/util/Set;)Ls1/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/b0/q/y;

    iget-object v1, p0, Le/a/h3/b/c;->f:Le/a/b0/e/l;

    invoke-interface {v1}, Le/a/b0/e/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/b0/q/y;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Le/a/b0/q/y;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "PhoneNumberExtractor(acc\u2026oneNumbers(clipboardData)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 5
    :goto_0
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 8
    :cond_2
    invoke-static {p1}, Le/a/o5/e1;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v3

    :goto_2
    if-eqz p1, :cond_5

    .line 9
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    new-instance v3, Ls1/k;

    invoke-direct {v3, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_3
    return-object v3
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Le/a/h3/b/c;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
