.class public final Le/a/f5/g/g;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.swish.deeplink.SwishResultPresenter$maybeSendPaymentSuccessFlash$1"
    f = "SwishResultPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/f5/g/h;

.field public final synthetic f:Lcom/truecaller/swish/deeplink/data/SwishResultDto;


# direct methods
.method public constructor <init>(Le/a/f5/g/h;Lcom/truecaller/swish/deeplink/data/SwishResultDto;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f5/g/g;->e:Le/a/f5/g/h;

    iput-object p2, p0, Le/a/f5/g/g;->f:Lcom/truecaller/swish/deeplink/data/SwishResultDto;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f5/g/g;

    iget-object v0, p0, Le/a/f5/g/g;->e:Le/a/f5/g/h;

    iget-object v1, p0, Le/a/f5/g/g;->f:Lcom/truecaller/swish/deeplink/data/SwishResultDto;

    invoke-direct {p1, v0, v1, p2}, Le/a/f5/g/g;-><init>(Le/a/f5/g/h;Lcom/truecaller/swish/deeplink/data/SwishResultDto;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f5/g/g;

    iget-object v0, p0, Le/a/f5/g/g;->e:Le/a/f5/g/h;

    iget-object v1, p0, Le/a/f5/g/g;->f:Lcom/truecaller/swish/deeplink/data/SwishResultDto;

    invoke-direct {p1, v0, v1, p2}, Le/a/f5/g/g;-><init>(Le/a/f5/g/h;Lcom/truecaller/swish/deeplink/data/SwishResultDto;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f5/g/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/f5/g/g;->e:Le/a/f5/g/h;

    .line 3
    iget-object p1, p1, Le/a/f5/g/h;->k:Le/a/b0/o/a;

    const-string v1, "flash_disabled"

    .line 4
    invoke-interface {p1, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Le/a/f5/g/g;->e:Le/a/f5/g/h;

    .line 6
    iget-object p1, p1, Le/a/f5/g/h;->g:Le/a/f5/a;

    .line 7
    invoke-interface {p1}, Le/a/f5/a;->c()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/f5/g/g;->f:Lcom/truecaller/swish/deeplink/data/SwishResultDto;

    invoke-virtual {p1}, Lcom/truecaller/swish/deeplink/data/SwishResultDto;->getPayee()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    iget-object v1, p0, Le/a/f5/g/g;->f:Lcom/truecaller/swish/deeplink/data/SwishResultDto;

    invoke-virtual {v1}, Lcom/truecaller/swish/deeplink/data/SwishResultDto;->getAmount()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 10
    :try_start_0
    iget-object v3, p0, Le/a/f5/g/g;->e:Le/a/f5/g/h;

    iget-object v4, p0, Le/a/f5/g/g;->f:Lcom/truecaller/swish/deeplink/data/SwishResultDto;

    .line 11
    invoke-virtual {v3, v4}, Le/a/f5/g/h;->Ij(Lcom/truecaller/swish/deeplink/data/SwishResultDto;)Ljava/lang/String;

    move-result-object v3

    .line 12
    iget-object v4, p0, Le/a/f5/g/g;->e:Le/a/f5/g/h;

    .line 13
    iget-object v4, v4, Le/a/f5/g/h;->j:Le/a/k3/j/b;

    .line 14
    invoke-virtual {v4, v3}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->B0()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 17
    iget-object p1, p0, Le/a/f5/g/g;->e:Le/a/f5/g/h;

    .line 18
    iget-object p1, p1, Le/a/f5/g/h;->d:Ljava/text/NumberFormat;

    .line 19
    invoke-virtual {p1, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v1, p0, Le/a/f5/g/g;->e:Le/a/f5/g/h;

    .line 21
    iget-object v2, v1, Le/a/f5/g/h;->i:Le/a/y/c/b;

    .line 22
    iget-object v1, v1, Le/a/f5/g/h;->h:Le/a/p5/c0;

    .line 23
    sget v5, Lcom/truecaller/swish/R$array;->swish_flash_buttons:I

    invoke-interface {v1, v5}, Le/a/p5/c0;->i(I)[Ljava/lang/String;

    move-result-object v1

    const-string v5, "resourceProvider.getStri\u2026rray.swish_flash_buttons)"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 24
    iget-object v5, p0, Le/a/f5/g/g;->e:Le/a/f5/g/h;

    .line 25
    iget-object v5, v5, Le/a/f5/g/h;->h:Le/a/p5/c0;

    .line 26
    sget v6, Lcom/truecaller/swish/R$string;->swish_flash_message:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-interface {v5, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "resourceProvider.getStri\u2026message, formattedAmount)"

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {v2, v3, v4, v1, p1}, Le/a/y/c/b;->t(JLjava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    const-string p1, "Cannot parse Swish payment result number"

    .line 28
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0
.end method
