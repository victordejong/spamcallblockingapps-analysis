.class public final Le/a/f5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f5/a;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/a/u3/g;

.field public final c:Le/a/f5/i/b;

.field public final d:Le/a/b0/e/l;

.field public final e:Le/a/b0/o/a;

.field public final f:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/f5/i/b;Le/a/b0/e/l;Le/a/b0/o/a;Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swishAppDataManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f5/b;->b:Le/a/u3/g;

    iput-object p2, p0, Le/a/f5/b;->c:Le/a/f5/i/b;

    iput-object p3, p0, Le/a/f5/b;->d:Le/a/b0/e/l;

    iput-object p4, p0, Le/a/f5/b;->e:Le/a/b0/o/a;

    iput-object p5, p0, Le/a/f5/b;->f:Le/a/p5/c0;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/f5/b;->a:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/Number;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Number;",
            ">;"
        }
    .end annotation

    const-string v0, "numbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/truecaller/data/entity/Number;

    .line 3
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Le/a/f5/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public b(Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Ljava/util/List;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/Number;",
            ">;",
            "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contact"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numbers"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarXConfig"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 3
    new-instance v0, Ln3/b/a/g$a;

    invoke-direct {v0, p1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 4
    sget v1, Lcom/truecaller/swish/R$string;->swish_number_picker_title:I

    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    .line 5
    new-instance v1, Le/a/f5/h/b/b;

    iget-object v2, p0, Le/a/f5/b;->f:Le/a/p5/c0;

    invoke-direct {v1, p1, p3, v2}, Le/a/f5/h/b/b;-><init>(Landroid/content/Context;Ljava/util/List;Le/a/p5/c0;)V

    new-instance v2, Le/a/f5/c;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Le/a/f5/c;-><init>(Le/a/f5/b;Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Ljava/util/List;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 6
    iget-object p1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, p1, Landroidx/appcompat/app/AlertController$b;->r:Landroid/widget/ListAdapter;

    .line 7
    iput-object v2, p1, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void

    .line 9
    :cond_1
    invoke-static {p3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/truecaller/data/entity/Number;

    invoke-virtual {p3}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Le/a/f5/b;->i(Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    return-void
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f5/b;->e:Le/a/b0/o/a;

    const-string v1, "swish_flash_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/f5/b;->c:Le/a/f5/i/b;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget-object v3, v1, Le/a/f5/i/b;->b:Le/a/b0/q/h0;

    invoke-interface {v3, p1}, Le/a/b0/q/h0;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v1, Le/a/f5/i/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Le/a/b0/g/a;

    invoke-virtual {v1}, Le/a/b0/g/a;->T()Ljava/lang/String;

    move-result-object v1

    const-string v3, "(context.applicationCont\u2026se).profileCountryIsoCode"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v3

    .line 6
    invoke-static {v1}, Le/a/b0/q/b0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object p1

    .line 7
    sget-object v1, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    invoke-virtual {v3, p1, v1}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v3, Le/a/f5/i/a;

    const-string v4, "parsedNumber"

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget v4, p1, Le/m/f/a/o;->b:I

    .line 10
    iget-wide v5, p1, Le/m/f/a/o;->d:J

    .line 11
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v5, "normalizedNumber"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, p1, v1}, Le/a/f5/i/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "Cannot parse normalized number"

    .line 13
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    :goto_0
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_2

    return-object v2

    .line 14
    :cond_2
    iget-object p1, v3, Le/a/f5/i/a;->b:Ljava/lang/String;

    .line 15
    iget v1, v3, Le/a/f5/i/a;->a:I

    const/16 v4, 0x2e

    if-eq v1, v4, :cond_3

    return-object v2

    .line 16
    :cond_3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Le/a/f5/d;->b:Ls1/f0/h;

    .line 18
    invoke-virtual {v0, p1}, Ls1/f0/h;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p1

    .line 19
    :cond_4
    sget-object v0, Le/a/f5/d;->a:Ls1/f0/h;

    .line 20
    invoke-virtual {v0, p1}, Ls1/f0/h;->d(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, v3, Le/a/f5/i/a;->c:Ljava/lang/String;

    return-object p1

    :cond_5
    return-object v2
.end method

.method public e(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f5/b;->e:Le/a/b0/o/a;

    const-string v1, "swish_flash_enabled"

    invoke-interface {v0, v1, p1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/f5/d;->b:Ls1/f0/h;

    .line 2
    invoke-virtual {v0, p1}, Ls1/f0/h;->d(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;)Lcom/truecaller/swish/deeplink/data/SwishResultDto;
    .locals 3

    const-string v0, "rawResult"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/f5/b;->a:Le/m/e/k;

    const-string v1, "decodedResult"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Le/a/f5/b$a;

    invoke-direct {v1}, Le/a/f5/b$a;-><init>()V

    invoke-virtual {v1}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "object : TypeToken<T>() {}.type"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1, v1}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "this.fromJson(json, typeToken<T>())"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/swish/deeplink/data/SwishResultDto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Cannot parse Swish payment result"

    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public h(Ljava/lang/String;DLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "UTF-8"

    const-string v1, "payee"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/truecaller/swish/deeplink/data/SwishDto;

    .line 2
    new-instance v2, Lcom/truecaller/swish/deeplink/data/SwishStringDto;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/truecaller/swish/deeplink/data/SwishStringDto;-><init>(Ljava/lang/String;Z)V

    .line 3
    new-instance p1, Lcom/truecaller/swish/deeplink/data/SwishNumberDto;

    invoke-direct {p1, p2, p3, v3}, Lcom/truecaller/swish/deeplink/data/SwishNumberDto;-><init>(DZ)V

    .line 4
    new-instance p2, Lcom/truecaller/swish/deeplink/data/SwishStringDto;

    invoke-direct {p2, p4, v3}, Lcom/truecaller/swish/deeplink/data/SwishStringDto;-><init>(Ljava/lang/String;Z)V

    .line 5
    invoke-direct {v1, v2, p1, p2}, Lcom/truecaller/swish/deeplink/data/SwishDto;-><init>(Lcom/truecaller/swish/deeplink/data/SwishStringDto;Lcom/truecaller/swish/deeplink/data/SwishNumberDto;Lcom/truecaller/swish/deeplink/data/SwishStringDto;)V

    :try_start_0
    const-string p1, "truecaller://swish"

    .line 6
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p2, p0, Le/a/f5/b;->a:Le/m/e/k;

    invoke-virtual {p2, v1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "swish://payment?data="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&callbackurl="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&callbackresultparameter=result"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final i(Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 2

    if-eqz p3, :cond_1

    .line 1
    invoke-static {p3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 2
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/swish/ui/input/SwishInputActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "payee_number"

    .line 3
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "payee_contact"

    .line 4
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "payee_avatarx_config"

    .line 5
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public isEnabled()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/f5/b;->c:Le/a/f5/i/b;

    invoke-virtual {v0}, Le/a/f5/i/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/f5/b;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->A:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/f5/b;->d:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
