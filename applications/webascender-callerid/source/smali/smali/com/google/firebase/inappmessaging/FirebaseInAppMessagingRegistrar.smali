.class public Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/i;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;Lcom/google/firebase/components/e;)Lcom/google/firebase/inappmessaging/q;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->providesFirebaseInAppMessaging(Lcom/google/firebase/components/e;)Lcom/google/firebase/inappmessaging/q;

    move-result-object p0

    return-object p0
.end method

.method private providesFirebaseInAppMessaging(Lcom/google/firebase/components/e;)Lcom/google/firebase/inappmessaging/q;
    .locals 7

    .line 1
    const-class v0, Lcom/google/firebase/c;

    invoke-interface {p1, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/c;

    .line 2
    const-class v1, Lcom/google/firebase/installations/g;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/installations/g;

    .line 3
    const-class v2, Lcom/google/firebase/analytics/a/a;

    invoke-interface {p1, v2}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/analytics/a/a;

    .line 4
    const-class v3, Lcom/google/firebase/k/d;

    invoke-interface {p1, v3}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/k/d;

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/c;->h()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Application;

    .line 6
    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/q3/a/c;->q()Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/inappmessaging/j0/q3/b/n;

    invoke-direct {v6, v4}, Lcom/google/firebase/inappmessaging/j0/q3/b/n;-><init>(Landroid/app/Application;)V

    .line 7
    invoke-virtual {v5, v6}, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->c(Lcom/google/firebase/inappmessaging/j0/q3/b/n;)Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;

    new-instance v4, Lcom/google/firebase/inappmessaging/j0/q3/b/k;

    invoke-direct {v4, v2, v3}, Lcom/google/firebase/inappmessaging/j0/q3/b/k;-><init>(Lcom/google/firebase/analytics/a/a;Lcom/google/firebase/k/d;)V

    .line 8
    invoke-virtual {v5, v4}, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->b(Lcom/google/firebase/inappmessaging/j0/q3/b/k;)Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;

    new-instance v2, Lcom/google/firebase/inappmessaging/j0/q3/b/a;

    invoke-direct {v2}, Lcom/google/firebase/inappmessaging/j0/q3/b/a;-><init>()V

    .line 9
    invoke-virtual {v5, v2}, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->a(Lcom/google/firebase/inappmessaging/j0/q3/b/a;)Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;

    new-instance v2, Lcom/google/firebase/inappmessaging/j0/q3/b/a0;

    new-instance v3, Lcom/google/firebase/inappmessaging/j0/r2;

    invoke-direct {v3}, Lcom/google/firebase/inappmessaging/j0/r2;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/firebase/inappmessaging/j0/q3/b/a0;-><init>(Lcom/google/firebase/inappmessaging/j0/r2;)V

    .line 10
    invoke-virtual {v5, v2}, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->e(Lcom/google/firebase/inappmessaging/j0/q3/b/a0;)Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;

    .line 11
    invoke-virtual {v5}, Lcom/google/firebase/inappmessaging/j0/q3/a/c$b;->d()Lcom/google/firebase/inappmessaging/j0/q3/a/d;

    move-result-object v2

    .line 12
    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/q3/a/b;->b()Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/inappmessaging/j0/b;

    const-class v5, Lcom/google/firebase/abt/component/a;

    .line 13
    invoke-interface {p1, v5}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/abt/component/a;

    const-string v6, "fiam"

    .line 14
    invoke-virtual {v5, v6}, Lcom/google/firebase/abt/component/a;->b(Ljava/lang/String;)Lcom/google/firebase/abt/b;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/firebase/inappmessaging/j0/b;-><init>(Lcom/google/firebase/abt/b;)V

    .line 15
    invoke-interface {v3, v4}, Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;->a(Lcom/google/firebase/inappmessaging/j0/b;)Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;

    new-instance v4, Lcom/google/firebase/inappmessaging/j0/q3/b/d;

    .line 16
    invoke-interface {v2}, Lcom/google/firebase/inappmessaging/j0/q3/a/d;->m()Lcom/google/firebase/inappmessaging/j0/r3/a;

    move-result-object v5

    invoke-direct {v4, v0, v1, v5}, Lcom/google/firebase/inappmessaging/j0/q3/b/d;-><init>(Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lcom/google/firebase/inappmessaging/j0/r3/a;)V

    .line 17
    invoke-interface {v3, v4}, Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;->f(Lcom/google/firebase/inappmessaging/j0/q3/b/d;)Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;

    new-instance v1, Lcom/google/firebase/inappmessaging/j0/q3/b/v;

    invoke-direct {v1, v0}, Lcom/google/firebase/inappmessaging/j0/q3/b/v;-><init>(Lcom/google/firebase/c;)V

    .line 18
    invoke-interface {v3, v1}, Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;->e(Lcom/google/firebase/inappmessaging/j0/q3/b/v;)Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;

    .line 19
    invoke-interface {v3, v2}, Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;->b(Lcom/google/firebase/inappmessaging/j0/q3/a/d;)Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;

    const-class v0, Lg/f/a/b/g;

    .line 20
    invoke-interface {p1, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/f/a/b/g;

    invoke-interface {v3, p1}, Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;->d(Lg/f/a/b/g;)Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;

    .line 21
    invoke-interface {v3}, Lcom/google/firebase/inappmessaging/j0/q3/a/a$a;->c()Lcom/google/firebase/inappmessaging/j0/q3/a/a;

    move-result-object p1

    .line 22
    invoke-interface {p1}, Lcom/google/firebase/inappmessaging/j0/q3/a/a;->a()Lcom/google/firebase/inappmessaging/q;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/d<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/firebase/components/d;

    .line 1
    const-class v1, Lcom/google/firebase/inappmessaging/q;

    .line 2
    invoke-static {v1}, Lcom/google/firebase/components/d;->a(Ljava/lang/Class;)Lcom/google/firebase/components/d$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 3
    invoke-static {v2}, Lcom/google/firebase/components/q;->i(Ljava/lang/Class;)Lcom/google/firebase/components/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/d$b;->b(Lcom/google/firebase/components/q;)Lcom/google/firebase/components/d$b;

    const-class v2, Lcom/google/firebase/installations/g;

    .line 4
    invoke-static {v2}, Lcom/google/firebase/components/q;->i(Ljava/lang/Class;)Lcom/google/firebase/components/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/d$b;->b(Lcom/google/firebase/components/q;)Lcom/google/firebase/components/d$b;

    const-class v2, Lcom/google/firebase/c;

    .line 5
    invoke-static {v2}, Lcom/google/firebase/components/q;->i(Ljava/lang/Class;)Lcom/google/firebase/components/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/d$b;->b(Lcom/google/firebase/components/q;)Lcom/google/firebase/components/d$b;

    const-class v2, Lcom/google/firebase/abt/component/a;

    .line 6
    invoke-static {v2}, Lcom/google/firebase/components/q;->i(Ljava/lang/Class;)Lcom/google/firebase/components/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/d$b;->b(Lcom/google/firebase/components/q;)Lcom/google/firebase/components/d$b;

    const-class v2, Lcom/google/firebase/analytics/a/a;

    .line 7
    invoke-static {v2}, Lcom/google/firebase/components/q;->g(Ljava/lang/Class;)Lcom/google/firebase/components/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/d$b;->b(Lcom/google/firebase/components/q;)Lcom/google/firebase/components/d$b;

    const-class v2, Lg/f/a/b/g;

    .line 8
    invoke-static {v2}, Lcom/google/firebase/components/q;->i(Ljava/lang/Class;)Lcom/google/firebase/components/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/d$b;->b(Lcom/google/firebase/components/q;)Lcom/google/firebase/components/d$b;

    const-class v2, Lcom/google/firebase/k/d;

    .line 9
    invoke-static {v2}, Lcom/google/firebase/components/q;->i(Ljava/lang/Class;)Lcom/google/firebase/components/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/d$b;->b(Lcom/google/firebase/components/q;)Lcom/google/firebase/components/d$b;

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/w;->b(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;)Lcom/google/firebase/components/h;

    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/d$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/d$b;

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/components/d$b;->e()Lcom/google/firebase/components/d$b;

    .line 12
    invoke-virtual {v1}, Lcom/google/firebase/components/d$b;->d()Lcom/google/firebase/components/d;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-fiam"

    const-string v2, "19.1.4"

    .line 13
    invoke-static {v1, v2}, Lcom/google/firebase/o/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/d;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
