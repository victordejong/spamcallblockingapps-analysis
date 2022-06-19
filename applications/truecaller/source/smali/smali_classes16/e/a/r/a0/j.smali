.class public final Le/a/r/a0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/a0/i;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Ln3/r/a/l;

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/e4/p;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b0/q/z;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/r/c/a0/a;

.field public final f:Le/a/r/c/t;

.field public final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r/a0/l;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/h5/w;

.field public final i:Le/a/p5/a0;


# direct methods
.method public constructor <init>(Ls1/w/f;Ln3/r/a/l;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/r/c/a0/a;Le/a/r/c/t;Ljavax/inject/Provider;Le/a/h5/w;Le/a/p5/a0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ln3/r/a/l;",
            "Ljavax/inject/Provider<",
            "Le/a/e4/p;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/b0/q/z;",
            ">;",
            "Le/a/r/c/a0/a;",
            "Le/a/r/c/t;",
            "Ljavax/inject/Provider<",
            "Le/a/r/a0/l;",
            ">;",
            "Le/a/h5/w;",
            "Le/a/p5/a0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countriesHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardDeviceUtilsHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simPhoneNumbersDialogOpener"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionsUtil"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/a0/j;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/r/a0/j;->b:Ln3/r/a/l;

    iput-object p3, p0, Le/a/r/a0/j;->c:Ljavax/inject/Provider;

    iput-object p4, p0, Le/a/r/a0/j;->d:Ljavax/inject/Provider;

    iput-object p5, p0, Le/a/r/a0/j;->e:Le/a/r/c/a0/a;

    iput-object p6, p0, Le/a/r/a0/j;->f:Le/a/r/c/t;

    iput-object p7, p0, Le/a/r/a0/j;->g:Ljavax/inject/Provider;

    iput-object p8, p0, Le/a/r/a0/j;->h:Le/a/h5/w;

    iput-object p9, p0, Le/a/r/a0/j;->i:Le/a/p5/a0;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/r/a0/i$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/r/a0/j$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/r/a0/j$a;

    iget v1, v0, Le/a/r/a0/j$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/r/a0/j$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/r/a0/j$a;

    invoke-direct {v0, p0, p1}, Le/a/r/a0/j$a;-><init>(Le/a/r/a0/j;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/r/a0/j$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/r/a0/j$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

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
    iget-object p1, p0, Le/a/r/a0/j;->i:Le/a/p5/a0;

    new-instance v2, Ls1/z/c/f0;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ls1/z/c/f0;-><init>(I)V

    .line 5
    iget-object v4, v2, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v4, p0, Le/a/r/a0/j;->h:Le/a/h5/w;

    invoke-interface {v4}, Le/a/h5/w;->g()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ls1/z/c/f0;->b()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 7
    iget-object v2, v2, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 9
    sget-object p1, Le/a/r/a0/i$a$c;->a:Le/a/r/a0/i$a$c;

    return-object p1

    .line 10
    :cond_3
    new-instance p1, Ls1/z/c/c0;

    invoke-direct {p1}, Ls1/z/c/c0;-><init>()V

    iget-object v2, p0, Le/a/r/a0/j;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "multiSimManager.get()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Le/a/e4/p;

    invoke-interface {v2}, Le/a/e4/p;->d()Ljava/util/List;

    move-result-object v2

    const-string v4, "multiSimManager.get().allSimInfos"

    invoke-static {v2, v4}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 11
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/truecaller/multisim/SimInfo;

    if-eqz v7, :cond_7

    .line 12
    iget-object v7, v7, Lcom/truecaller/multisim/SimInfo;->c:Ljava/lang/String;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    move v7, v6

    goto :goto_3

    :cond_6
    :goto_2
    move v7, v3

    :goto_3
    if-nez v7, :cond_7

    move v6, v3

    .line 13
    :cond_7
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iput-object v4, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 15
    iget-object v2, p0, Le/a/r/a0/j;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/e4/p;

    invoke-interface {v2}, Le/a/e4/p;->h()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    iget-object v2, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_a

    .line 16
    iget-object v2, p0, Le/a/r/a0/j;->a:Ls1/w/f;

    new-instance v5, Le/a/r/a0/j$b;

    invoke-direct {v5, p0, p1, v4}, Le/a/r/a0/j$b;-><init>(Le/a/r/a0/j;Ls1/z/c/c0;Ls1/w/d;)V

    iput v3, v0, Le/a/r/a0/j$a;->e:I

    invoke-static {v2, v5, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    :goto_4
    check-cast p1, Le/a/r/a0/i$a;

    goto :goto_6

    .line 17
    :cond_a
    iget-object v0, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_b

    .line 18
    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/multisim/SimInfo;

    .line 19
    new-instance v0, Le/a/r/a0/i$a$b;

    const-string v1, "simInfo"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/r/a0/j;->b(Lcom/truecaller/multisim/SimInfo;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v1

    iget-object p1, p1, Lcom/truecaller/multisim/SimInfo;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Le/a/r/a0/i$a$b;-><init>(Lcom/truecaller/common/network/country/CountryListDto$a;Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_6

    .line 20
    :cond_b
    iget-object p1, p0, Le/a/r/a0/j;->f:Le/a/r/c/t;

    .line 21
    iget-object p1, p1, Le/a/r/c/t;->a:Landroid/content/Context;

    const-string v0, "phone"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    move v3, v6

    .line 24
    :cond_d
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    move-object v4, p1

    :cond_e
    if-eqz v4, :cond_f

    .line 26
    new-instance p1, Le/a/r/a0/i$a$b;

    invoke-virtual {p0, v4}, Le/a/r/a0/j;->c(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Le/a/r/a0/i$a$b;-><init>(Lcom/truecaller/common/network/country/CountryListDto$a;Ljava/lang/String;)V

    goto :goto_6

    .line 27
    :cond_f
    sget-object p1, Le/a/r/a0/i$a$e;->a:Le/a/r/a0/i$a$e;

    :goto_6
    return-object p1
.end method

.method public final b(Lcom/truecaller/multisim/SimInfo;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/truecaller/multisim/SimInfo;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/r/a0/j;->e:Le/a/r/c/a0/a;

    const-string v2, "it"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Le/a/r/c/a0/a;->e(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/truecaller/multisim/SimInfo;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Le/a/r/a0/j;->c(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

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
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 2
    :cond_2
    iget-object v0, p0, Le/a/r/a0/j;->e:Le/a/r/c/a0/a;

    invoke-interface {v0, p1}, Le/a/r/c/a0/a;->d(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_2

    .line 3
    :cond_3
    iget-object v0, p0, Le/a/r/a0/j;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/q/z;

    invoke-interface {v0, p1}, Le/a/b0/q/z;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    iget-object v0, p0, Le/a/r/a0/j;->e:Le/a/r/c/a0/a;

    invoke-interface {v0, p1}, Le/a/r/c/a0/a;->e(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v1

    :cond_4
    :goto_2
    return-object v1
.end method
