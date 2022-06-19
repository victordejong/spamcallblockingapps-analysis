.class public final Le/a/b0/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/a/p;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/w/f;

.field public final c:Ls1/w/f;

.field public final d:Le/a/b0/e/l;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/b0/e/l;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contextUI"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContextIO"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/a/q;->b:Ls1/w/f;

    iput-object p2, p0, Le/a/b0/a/q;->c:Ls1/w/f;

    iput-object p3, p0, Le/a/b0/a/q;->d:Le/a/b0/e/l;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ln3/v/b0;Landroid/content/Intent;)V
    .locals 14

    move-object v7, p0

    const-string v0, "context"

    move-object v3, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v2, "intent.extras ?: return"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "extra_btm_dlg_url"

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const/4 v6, 0x0

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v6

    :goto_1
    if-eqz v2, :cond_7

    const-string v4, "extra_btm_dlg_type"

    .line 3
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v8, Lcom/truecaller/common/ui/constant/WebViewContainerType;->Companion:Lcom/truecaller/common/ui/constant/WebViewContainerType$a;

    const-string v9, "it"

    invoke-static {v4, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "id"

    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/truecaller/common/ui/constant/WebViewContainerType;->values()[Lcom/truecaller/common/ui/constant/WebViewContainerType;

    move-result-object v8

    :goto_2
    const/4 v9, 0x3

    if-ge v5, v9, :cond_3

    aget-object v9, v8, v5

    invoke-virtual {v9}, Lcom/truecaller/common/ui/constant/WebViewContainerType;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move-object v9, v6

    :goto_3
    if-eqz v9, :cond_4

    move-object v4, v9

    goto :goto_4

    .line 6
    :cond_4
    sget-object v4, Lcom/truecaller/common/ui/constant/WebViewContainerType;->BOTTOM_SHEET:Lcom/truecaller/common/ui/constant/WebViewContainerType;

    :goto_4
    const-string v5, "extra_html_content"

    .line 7
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v0, v7, Le/a/b0/a/q;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v6, v0

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 9
    :cond_6
    invoke-static/range {p2 .. p2}, Ln3/v/r;->b(Ln3/v/b0;)Ln3/v/w;

    move-result-object v8

    iget-object v9, v7, Le/a/b0/a/q;->b:Ls1/w/f;

    const/4 v10, 0x0

    new-instance v11, Le/a/b0/a/q$a;

    const/4 v6, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Le/a/b0/a/q$a;-><init>(Le/a/b0/a/q;Ljava/lang/String;Landroid/content/Context;Lcom/truecaller/common/ui/constant/WebViewContainerType;Ljava/lang/String;Ls1/w/d;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_7
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/truecaller/common/ui/constant/WebViewContainerType;)Landroid/content/Intent;
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_btm_dlg_url"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/common/ui/constant/WebViewContainerType;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "extra_btm_dlg_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final synthetic c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/b0/a/q$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/b0/a/q$b;

    iget v1, v0, Le/a/b0/a/q$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/b0/a/q$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/b0/a/q$b;

    invoke-direct {v0, p0, p2}, Le/a/b0/a/q$b;-><init>(Le/a/b0/a/q;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/b0/a/q$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/b0/a/q$b;->e:I

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
    invoke-static {p2}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object p2

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    const-string v4, "atr"

    .line 5
    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 6
    iget-object p1, p0, Le/a/b0/a/q;->c:Ls1/w/f;

    new-instance v2, Le/a/b0/a/q$c;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p2, v4}, Le/a/b0/a/q$c;-><init>(Le/a/b0/a/q;Ls1/z/c/c0;Ls1/w/d;)V

    iput v3, v0, Le/a/b0/a/q$b;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p1, "withContext(asyncContext\u2026.toString()\n            }"

    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    :cond_4
    return-object p1
.end method
