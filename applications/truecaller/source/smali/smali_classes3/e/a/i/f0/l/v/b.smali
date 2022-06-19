.class public final Le/a/i/f0/l/v/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/f0/l/v/a;
.implements Lq3/a/i0;


# instance fields
.field public a:Z

.field public b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

.field public final c:Landroid/content/Context;

.field public final d:Ls1/w/f;

.field public final e:Le/a/u3/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Le/a/u3/g;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/f0/l/v/b;->c:Landroid/content/Context;

    iput-object p2, p0, Le/a/i/f0/l/v/b;->d:Ls1/w/f;

    iput-object p3, p0, Le/a/i/f0/l/v/b;->e:Le/a/u3/g;

    return-void
.end method

.method public static final b(Le/a/i/f0/l/v/b;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    iget-object p0, p0, Le/a/i/f0/l/v/b;->b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    if-eqz p0, :cond_2

    .line 4
    iget-object p0, p0, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->revokeConsent()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->grantConsent()V

    goto :goto_0

    :cond_2
    const-string p0, "currentState"

    .line 8
    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;)V
    .locals 14

    const-string v0, "targetingState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/v/b;->b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 2
    :cond_0
    iput-object p1, p0, Le/a/i/f0/l/v/b;->b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    .line 3
    iget-object p1, p0, Le/a/i/f0/l/v/b;->e:Le/a/u3/g;

    const-string v0, "featuresRegistry"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p1, Le/a/u3/g;->h2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xa3

    aget-object v2, v2, v3

    invoke-virtual {v0, p1, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    check-cast p1, Le/a/u3/i;

    .line 6
    invoke-interface {p1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v3, v2}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-static {v2}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_4

    .line 13
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 14
    iget-boolean p1, p0, Le/a/i/f0/l/v/b;->a:Z

    if-nez p1, :cond_4

    .line 15
    iput-boolean v1, p0, Le/a/i/f0/l/v/b;->a:Z

    .line 16
    iget-object v3, p0, Le/a/i/f0/l/v/b;->d:Ls1/w/f;

    const/4 v4, 0x0

    .line 17
    new-instance v5, Le/a/i/f0/l/v/b$a;

    invoke-direct {v5, p0, v0}, Le/a/i/f0/l/v/b$a;-><init>(Le/a/i/f0/l/v/b;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_1

    .line 18
    :cond_3
    iget-object v9, p0, Le/a/i/f0/l/v/b;->d:Ls1/w/f;

    const/4 v10, 0x0

    .line 19
    new-instance v11, Le/a/i/f0/l/v/b$b;

    invoke-direct {v11, p0, v0}, Le/a/i/f0/l/v/b$b;-><init>(Le/a/i/f0/l/v/b;Ls1/w/d;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v8, p0

    invoke-static/range {v8 .. v13}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_4
    :goto_1
    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/v/b;->d:Ls1/w/f;

    return-object v0
.end method
