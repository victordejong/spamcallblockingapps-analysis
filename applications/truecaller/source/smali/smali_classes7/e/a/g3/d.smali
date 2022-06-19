.class public final Le/a/g3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/clevertap/CleverTapManager;


# instance fields
.field public final a:Le/a/g3/b;

.field public final b:Le/a/g3/g;


# direct methods
.method public constructor <init>(Le/a/g3/b;Le/a/g3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "cleverTapAPIWrapper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleverTapPreferences"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g3/d;->a:Le/a/g3/b;

    iput-object p2, p0, Le/a/g3/d;->b:Le/a/g3/g;

    return-void
.end method

.method public static final a(Le/a/g3/d;Ljava/util/Map;)Ljava/util/Map;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Le/a/g3/d;->b:Le/a/g3/g;

    invoke-interface {v4, v2}, Le/a/g3/g;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Le/a/g3/d;->b:Le/a/g3/g;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Le/a/g3/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public init()V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    .line 2
    sget-object v1, Lq3/a/t0;->d:Lq3/a/g0;

    .line 3
    new-instance v3, Le/a/g3/d$a;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Le/a/g3/d$a;-><init>(Le/a/g3/d;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    return-void
.end method

.method public initWithoutActivityLifeCycleCallBacks()V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    .line 2
    sget-object v1, Lq3/a/t0;->d:Lq3/a/g0;

    .line 3
    new-instance v3, Le/a/g3/d$b;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Le/a/g3/d$b;-><init>(Le/a/g3/d;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    return-void
.end method

.method public mayBeProcessNotificationExtras(Landroid/content/Intent;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    .line 3
    sget-object v1, Lq3/a/t0;->d:Lq3/a/g0;

    const/4 v2, 0x0

    .line 4
    new-instance v3, Le/a/g3/d$c;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4, p0}, Le/a/g3/d$c;-><init>(Landroid/os/Bundle;Ls1/w/d;Le/a/g3/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    :cond_0
    return-void
.end method

.method public onUserLogin(Lcom/truecaller/clevertap/CleverTapProfile;)V
    .locals 7

    const-string v0, "profile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    .line 2
    sget-object v2, Lq3/a/t0;->d:Lq3/a/g0;

    .line 3
    new-instance v4, Le/a/g3/d$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/g3/d$d;-><init>(Le/a/g3/d;Lcom/truecaller/clevertap/CleverTapProfile;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    return-void
.end method

.method public push(Ljava/lang/String;)V
    .locals 7

    const-string v0, "eventName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    .line 5
    sget-object v2, Lq3/a/t0;->d:Lq3/a/g0;

    .line 6
    new-instance v4, Le/a/g3/d$f;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/g3/d$f;-><init>(Le/a/g3/d;Ljava/lang/String;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    return-void
.end method

.method public push(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventActions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    .line 2
    sget-object v2, Lq3/a/t0;->d:Lq3/a/g0;

    .line 3
    new-instance v4, Le/a/g3/d$e;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/g3/d$e;-><init>(Le/a/g3/d;Ljava/lang/String;Ljava/util/Map;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    return-void
.end method

.method public updateProfile(Le/a/g3/m;)V
    .locals 2

    const-string v0, "profileUpdate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object p1, p1, Le/a/g3/m;->a:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/g3/n;

    .line 4
    invoke-virtual {v1}, Le/a/g3/n;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Le/a/g3/d;->updateProfile(Ljava/util/Map;)V

    return-void
.end method

.method public updateProfile(Le/a/g3/n;)V
    .locals 1

    const-string v0, "profileUpdate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Le/a/g3/n;->a()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/g3/d;->updateProfile(Ljava/util/Map;)V

    return-void
.end method

.method public updateProfile(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "profileUpdate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    .line 8
    sget-object v2, Lq3/a/t0;->d:Lq3/a/g0;

    .line 9
    new-instance v4, Le/a/g3/d$g;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/g3/d$g;-><init>(Le/a/g3/d;Ljava/util/Map;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    return-void
.end method

.method public updatePushRegistrationId(Le/a/d4/e;Ljava/lang/String;)V
    .locals 7

    const-string v0, "engine"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    .line 2
    sget-object v2, Lq3/a/t0;->d:Lq3/a/g0;

    .line 3
    new-instance v4, Le/a/g3/d$h;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/g3/d$h;-><init>(Le/a/g3/d;Le/a/d4/e;Ljava/lang/String;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    return-void
.end method
