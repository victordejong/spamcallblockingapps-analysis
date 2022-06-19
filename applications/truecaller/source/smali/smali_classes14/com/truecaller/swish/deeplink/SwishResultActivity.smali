.class public final Lcom/truecaller/swish/deeplink/SwishResultActivity;
.super Le/a/f5/g/b;
.source "SourceFile"

# interfaces
.implements Le/a/f5/g/f;


# annotations
.annotation build Lcom/airbnb/deeplinkdispatch/DeepLink;
    value = {
        "truecaller://swish"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\rJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rR\"\u0010\u0015\u001a\u00020\u000e8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/truecaller/swish/deeplink/SwishResultActivity;",
        "Ln3/b/a/h;",
        "Le/a/f5/g/f;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "text",
        "m",
        "(Ljava/lang/String;)V",
        "onDestroy",
        "()V",
        "Le/a/f5/g/e;",
        "d",
        "Le/a/f5/g/e;",
        "getPresenter$swish_integration_release",
        "()Le/a/f5/g/e;",
        "setPresenter$swish_integration_release",
        "(Le/a/f5/g/e;)V",
        "presenter",
        "<init>",
        "swish-integration_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/f5/g/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/f5/g/b;-><init>()V

    return-void
.end method


# virtual methods
.method public m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/swish/deeplink/SwishResultActivity;->d:Le/a/f5/g/e;

    const-string v0, "presenter"

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    check-cast p1, Le/a/u2/a/b;

    .line 3
    iput-object p0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/truecaller/swish/deeplink/SwishResultActivity;->d:Le/a/f5/g/e;

    if-eqz v2, :cond_e

    check-cast v2, Le/a/f5/g/h;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_c

    .line 7
    :try_start_0
    iget-object v0, v2, Le/a/f5/g/h;->g:Le/a/f5/a;

    invoke-interface {v0, p1}, Le/a/f5/a;->g(Ljava/lang/String;)Lcom/truecaller/swish/deeplink/data/SwishResultDto;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/swish/deeplink/data/SwishResultDto;->getResult()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "paid"

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x10fa53b6

    const/4 v6, 0x0

    if-eq v4, v5, :cond_3

    const v5, 0x3462cc

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v2, Le/a/f5/g/h;->h:Le/a/p5/c0;

    sget v4, Lcom/truecaller/swish/R$string;->swish_payment_success:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v4, "unknown"

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v2, Le/a/f5/g/h;->h:Le/a/p5/c0;

    sget v4, Lcom/truecaller/swish/R$string;->ErrorGeneral:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    :goto_1
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_5

    .line 11
    iget-object v4, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/f5/g/f;

    if-eqz v4, :cond_5

    invoke-interface {v4, v0}, Le/a/f5/g/f;->m(Ljava/lang/String;)V

    .line 12
    :cond_5
    iget-object v0, v2, Le/a/f5/g/h;->l:Le/a/q2/a;

    new-instance v4, Le/a/f5/e/b;

    invoke-direct {v4, p1}, Le/a/f5/e/b;-><init>(Lcom/truecaller/swish/deeplink/data/SwishResultDto;)V

    invoke-interface {v0, v4}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/swish/deeplink/data/SwishResultDto;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14
    iget-object v0, v2, Le/a/f5/g/h;->o:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->W()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    invoke-virtual {v2, p1}, Le/a/f5/g/h;->Ij(Lcom/truecaller/swish/deeplink/data/SwishResultDto;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p1}, Lcom/truecaller/swish/deeplink/data/SwishResultDto;->getAmount()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 17
    iget-object p1, v2, Le/a/f5/g/h;->d:Ljava/text/NumberFormat;

    invoke-virtual {p1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object v1, v2, Le/a/f5/g/h;->p:Le/a/f5/i/c;

    const-string v3, "formattedAmount"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v1, Le/a/f5/i/d;

    :try_start_2
    invoke-virtual {v1, v0, p1}, Le/a/f5/i/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 19
    :cond_6
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f5/g/f;

    if-eqz p1, :cond_d

    :goto_3
    invoke-interface {p1}, Le/a/f5/g/f;->finish()V

    goto :goto_5

    :cond_7
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f5/g/f;

    if-eqz p1, :cond_d

    goto :goto_3

    .line 20
    :cond_8
    :try_start_3
    iget-object v4, v2, Le/a/f5/g/h;->f:Ls1/w/f;

    new-instance v6, Le/a/f5/g/g;

    invoke-direct {v6, v2, p1, v1}, Le/a/f5/g/g;-><init>(Le/a/f5/g/h;Lcom/truecaller/swish/deeplink/data/SwishResultDto;Ls1/w/d;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    :cond_9
    :goto_4
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f5/g/f;

    if-eqz p1, :cond_d

    goto :goto_3

    :cond_a
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f5/g/f;

    if-eqz p1, :cond_d

    goto :goto_3

    :catchall_0
    move-exception p1

    iget-object v0, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f5/g/f;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Le/a/f5/g/f;->finish()V

    :cond_b
    throw p1

    :cond_c
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f5/g/f;

    if-eqz p1, :cond_d

    goto :goto_3

    :cond_d
    :goto_5
    return-void

    .line 22
    :cond_e
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_f
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/swish/deeplink/SwishResultActivity;->d:Le/a/f5/g/e;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/a;

    invoke-virtual {v0}, Le/a/u2/a/a;->c()V

    .line 2
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
