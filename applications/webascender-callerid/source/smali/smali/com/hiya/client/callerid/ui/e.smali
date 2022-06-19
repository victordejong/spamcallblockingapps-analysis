.class public final Lcom/hiya/client/callerid/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/hiya/client/callerid/ui/v;

.field private static b:Lcom/hiya/client/callerid/ui/d;

.field private static c:Lcom/hiya/client/callerid/ui/b;

.field private static d:Lcom/hiya/client/callerid/ui/c;

.field private static e:Lcom/hiya/client/callerid/ui/a;

.field public static final f:Lcom/hiya/client/callerid/ui/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/e;

    invoke-direct {v0}, Lcom/hiya/client/callerid/ui/e;-><init>()V

    sput-object v0, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/hiya/client/callerid/ui/CallEventReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 3
    :goto_0
    invoke-virtual {v0, v1, p2, p1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private final h(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/e;->a:Lcom/hiya/client/callerid/ui/v;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/hiya/client/callerid/ui/v;

    invoke-direct {v0, p1}, Lcom/hiya/client/callerid/ui/v;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hiya/client/callerid/ui/e;->a:Lcom/hiya/client/callerid/ui/v;

    :cond_0
    return-void
.end method

.method private final o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Lg/g/a/a/j/c/d;

    invoke-direct {v0, p1}, Lg/g/a/a/j/c/d;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Lcom/hiya/client/callerid/ui/e0/d;->a(Landroid/content/Context;)Lcom/hiya/client/support/io/hiyaservice/c;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/hiya/client/callerid/ui/i;

    .line 4
    invoke-virtual {v1}, Lcom/hiya/client/support/io/hiyaservice/c;->a()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Lcom/hiya/client/support/io/hiyaservice/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {p1}, Lcom/hiya/client/callerid/ui/e0/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {p2, v4}, Lcom/hiya/client/callerid/ui/e0/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-direct {v2, p1, v3, v1, p2}, Lcom/hiya/client/callerid/ui/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/i;->m()Lg/g/a/a/j/c/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/g/a/a/j/c/d;->i(Lg/g/a/a/j/c/a;)V

    .line 10
    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/i;->n()Lg/g/a/a/j/c/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/g/a/a/j/c/d;->j(Lg/g/a/a/j/c/b;)V

    .line 11
    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/i;->o()Lg/g/a/a/j/c/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/g/a/a/j/c/d;->k(Lg/g/a/a/j/c/f;)V

    .line 12
    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/i;->l()Lg/g/a/a/j/c/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/g/a/a/j/c/d;->h(Lg/g/a/a/j/c/c;)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/hiya/client/callerid/ui/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/e;->e:Lcom/hiya/client/callerid/ui/a;

    return-object v0
.end method

.method public final c()Lcom/hiya/client/callerid/ui/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/e;->c:Lcom/hiya/client/callerid/ui/b;

    return-object v0
.end method

.method public final d()Lcom/hiya/client/callerid/ui/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/e;->d:Lcom/hiya/client/callerid/ui/c;

    return-object v0
.end method

.method public final e()Lcom/hiya/client/callerid/ui/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/e;->b:Lcom/hiya/client/callerid/ui/d;

    return-object v0
.end method

.method public final f(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/e;->h(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/hiya/client/callerid/ui/e;->a:Lcom/hiya/client/callerid/ui/v;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/v;->b()Lcom/hiya/client/callerid/ui/a0/k;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hiya/client/callerid/ui/a0/k;->d(Z)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final g(Landroid/content/Context;Lg/g/b/a/a;Ljava/lang/String;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdSpec"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userPhoneNumber"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/hiya/client/callerid/ui/e;->q(Landroid/content/Context;Lg/g/b/a/a;Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final i(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    .line 3
    const-class v2, Lcom/hiya/client/callerid/ui/service/OurInCallService;

    .line 4
    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/hiya/client/callerid/ui/e0/i;->a:Lcom/hiya/client/callerid/ui/e0/i;

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/e0/i;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final k(Lcom/hiya/client/callerid/ui/a;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/hiya/client/callerid/ui/e;->e:Lcom/hiya/client/callerid/ui/a;

    return-void
.end method

.method public final l(Lcom/hiya/client/callerid/ui/b;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/hiya/client/callerid/ui/e;->c:Lcom/hiya/client/callerid/ui/b;

    return-void
.end method

.method public final m(Lcom/hiya/client/callerid/ui/c;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/hiya/client/callerid/ui/e;->d:Lcom/hiya/client/callerid/ui/c;

    return-void
.end method

.method public final n(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/e;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "In-call UI is not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/hiya/client/callerid/ui/service/OurInCallService;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    .line 4
    :goto_1
    invoke-virtual {v0, v1, p2, p1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public final p(Landroid/content/Context;Lcom/hiya/client/callerid/ui/d;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/e;->h(Landroid/content/Context;)V

    .line 2
    sput-object p2, Lcom/hiya/client/callerid/ui/e;->b:Lcom/hiya/client/callerid/ui/d;

    const/4 p2, 0x1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/hiya/client/callerid/ui/e;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public final q(Landroid/content/Context;Lg/g/b/a/a;Ljava/lang/String;)Li/c/b0/b/e;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdSpec"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userPhoneNumber"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lg/g/b/a/i/c/e;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/hiya/client/callerid/ui/e;->o(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/e;->h(Landroid/content/Context;)V

    .line 4
    sget-object p1, Lcom/hiya/client/callerid/ui/e;->a:Lcom/hiya/client/callerid/ui/v;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/v;->a()Lg/g/b/a/b;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lg/g/b/a/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p2}, Lg/g/b/a/a;->b()Z

    move-result v2

    .line 7
    invoke-virtual {p2}, Lg/g/b/a/a;->c()Z

    move-result v3

    .line 8
    invoke-virtual {p2}, Lg/g/b/a/a;->f()Z

    move-result v4

    .line 9
    invoke-virtual {p2}, Lg/g/b/a/a;->d()Ljava/lang/Boolean;

    move-result-object v5

    .line 10
    invoke-virtual {p2}, Lg/g/b/a/a;->a()Lg/g/b/a/g/b/a;

    move-result-object v6

    .line 11
    invoke-virtual/range {v0 .. v6}, Lg/g/b/a/b;->G(Ljava/lang/String;ZZZLjava/lang/Boolean;Lg/g/b/a/g/b/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method
