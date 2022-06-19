.class public final Le/a/f/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/z/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/f/g$a;
    }
.end annotation


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Landroid/content/Context;

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/d0/j0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/f4/g/r;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h0/j;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/g5/p;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/settings/CallingSettings;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k3/l/f;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a0/n;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k3/j/b;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/z2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider<",
            "Le/a/d0/j0;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/f4/g/r;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/h0/j;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/g5/p;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/settings/CallingSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/k3/l/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/a0/n;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/k3/j/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/z2/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchEngine"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDisplayUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberProvider"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamCategoryFetcher"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeHelper"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/g;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/f/g;->b:Landroid/content/Context;

    iput-object p3, p0, Le/a/f/g;->c:Ljavax/inject/Provider;

    iput-object p4, p0, Le/a/f/g;->d:Ljavax/inject/Provider;

    iput-object p5, p0, Le/a/f/g;->e:Ljavax/inject/Provider;

    iput-object p6, p0, Le/a/f/g;->f:Ljavax/inject/Provider;

    iput-object p7, p0, Le/a/f/g;->g:Ljavax/inject/Provider;

    iput-object p8, p0, Le/a/f/g;->h:Ljavax/inject/Provider;

    iput-object p9, p0, Le/a/f/g;->i:Ljavax/inject/Provider;

    iput-object p10, p0, Le/a/f/g;->j:Ljavax/inject/Provider;

    iput-object p11, p0, Le/a/f/g;->k:Ljavax/inject/Provider;

    return-void
.end method

.method public static final a(Le/a/f/g;Lcom/truecaller/blocking/FilterMatch;)Lcom/truecaller/incallui/utils/BlockAction;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 3
    sget-object v0, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_2

    .line 4
    :cond_1
    iget-object p0, p0, Le/a/f/g;->g:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "callingSettings.get()"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/truecaller/settings/CallingSettings;

    invoke-interface {p0}, Lcom/truecaller/settings/CallingSettings;->z()Lcom/truecaller/settings/CallingSettings$BlockMethod;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eq p0, v1, :cond_3

    .line 5
    :goto_1
    sget-object p0, Lcom/truecaller/incallui/utils/BlockAction;->HANG_UP:Lcom/truecaller/incallui/utils/BlockAction;

    goto :goto_2

    .line 6
    :cond_3
    sget-object p0, Lcom/truecaller/incallui/utils/BlockAction;->MUTE:Lcom/truecaller/incallui/utils/BlockAction;

    :goto_2
    return-object p0
.end method

.method public static final b(Le/a/f/g;Ljava/lang/String;)Lcom/truecaller/blocking/FilterMatch;
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/f/g;->b:Landroid/content/Context;

    invoke-static {v0}, Le/a/p5/s0/g;->j0(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toUpperCase(locale)"

    const-string v3, "Locale.ENGLISH"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v5, v3, v1, v5, v2}, Le/d/c/a/a;->p(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v5, v3, v0, v5, v2}, Le/d/c/a/a;->p(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v4

    .line 4
    :goto_1
    iget-object p0, p0, Le/a/f/g;->e:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Le/a/h0/j;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_3

    .line 5
    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    move-object v4, v1

    :cond_2
    if-eqz v4, :cond_3

    move-object v9, v4

    goto :goto_2

    :cond_3
    move-object v9, v0

    :goto_2
    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, p1

    .line 6
    invoke-interface/range {v5 .. v11}, Le/a/h0/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p0

    const-string p1, "filterManager.get().find\u2026           true\n        )"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final c(Lcom/truecaller/blocking/FilterMatch;I)Le/a/f/g$a;
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    .line 2
    sget-object v1, Lcom/truecaller/blocking/ActionSource;->TOP_SPAMMER:Lcom/truecaller/blocking/ActionSource;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget p1, p1, Lcom/truecaller/blocking/FilterMatch;->f:I

    if-le p1, p2, :cond_0

    move p2, p1

    :cond_0
    move v4, v3

    move v3, v2

    move v2, v4

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p1, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 5
    sget-object p2, Lcom/truecaller/blocking/FilterAction;->ALLOW_WHITELISTED:Lcom/truecaller/blocking/FilterAction;

    if-ne p1, p2, :cond_2

    move p2, v3

    goto :goto_0

    :cond_2
    move p2, v3

    move v2, p2

    .line 6
    :goto_0
    new-instance p1, Le/a/f/g$a;

    invoke-direct {p1, p2, v2, v3}, Le/a/f/g$a;-><init>(IZZ)V

    return-object p1
.end method
