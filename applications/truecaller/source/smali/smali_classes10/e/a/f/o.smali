.class public final Le/a/f/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/b;


# instance fields
.field public final b:Le/a/f/m;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f/y/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/f/z/y;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f/z/v;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/f/z/q;


# direct methods
.method public constructor <init>(Le/a/f/m;Lo3/a;Ljavax/inject/Provider;Lo3/a;Le/a/f/z/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f/m;",
            "Lo3/a<",
            "Le/a/f/y/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/f/z/y;",
            ">;",
            "Lo3/a<",
            "Le/a/f/z/v;",
            ">;",
            "Le/a/f/z/q;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "inCallUIConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUISettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promoManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureWatchDog"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/o;->b:Le/a/f/m;

    iput-object p2, p0, Le/a/f/o;->c:Lo3/a;

    iput-object p3, p0, Le/a/f/o;->d:Ljavax/inject/Provider;

    iput-object p4, p0, Le/a/f/o;->e:Lo3/a;

    iput-object p5, p0, Le/a/f/o;->f:Le/a/f/z/q;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/o;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/z/v;

    invoke-interface {v0}, Le/a/f/z/v;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/o;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/z/v;

    invoke-interface {v0}, Le/a/f/z/v;->b()V

    return-void
.end method

.method public c()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/f/o;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/f/o;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->l()Lq3/a/w2/h;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    xor-int/lit8 v0, v1, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/o;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/z/v;

    invoke-interface {v0}, Le/a/f/z/v;->c()Z

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/o;->b:Le/a/f/m;

    invoke-interface {v0, p1}, Le/a/f/m;->e(Z)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/o;->b:Le/a/f/m;

    invoke-interface {v0}, Le/a/f/m;->a()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/o;->b:Le/a/f/m;

    invoke-interface {v0}, Le/a/f/m;->g()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/o;->b:Le/a/f/m;

    invoke-interface {v0}, Le/a/f/m;->h()Z

    move-result v0

    return v0
.end method

.method public i(Landroidx/fragment/app/FragmentManager;Z)V
    .locals 3

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Le/a/f/a/v/b;->h:Le/a/f/a/v/b$b;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/f/a/v/b;

    invoke-direct {v0}, Le/a/f/a/v/b;-><init>()V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "forceDarkTheme"

    .line 5
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    const-class p2, Le/a/f/a/v/b;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/o;->b:Le/a/f/m;

    invoke-interface {v0}, Le/a/f/m;->j()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/o;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/z/y;

    const-string v1, "voipTooltip"

    invoke-interface {v0, v1}, Le/a/f/z/y;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/o;->b:Le/a/f/m;

    invoke-interface {v0}, Le/a/f/m;->c()Z

    move-result v0

    return v0
.end method

.method public m(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/f/o;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/a/f/o;->s(Landroid/content/Context;)V

    return-void
.end method

.method public n()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f/o;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/z/y;

    const-string v1, "showPromo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/f/z/y;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public o(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/o;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/z/y;

    const-string v1, "showPromo"

    invoke-interface {v0, v1, p1}, Le/a/f/z/y;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public p()Lq3/a/w2/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/z<",
            "Ljava/util/List<",
            "Le/a/f/y/x;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/f/o;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->l()Lq3/a/w2/h;

    move-result-object v0

    invoke-interface {v0}, Lq3/a/w2/h;->p2()Lq3/a/w2/z;

    move-result-object v0

    return-object v0
.end method

.method public q(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/f/o;->b:Le/a/f/m;

    invoke-interface {v0}, Le/a/f/m;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/f/o;->t()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/truecaller/incallui/service/InCallUIService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Le/a/f/o;->s(Landroid/content/Context;)V

    .line 6
    :goto_0
    iget-object p1, p0, Le/a/f/o;->f:Le/a/f/z/q;

    invoke-interface {p1}, Le/a/f/z/q;->init()V

    return-void
.end method

.method public r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/o;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/z/y;

    const-string v1, "incalluiEnabled"

    invoke-interface {v0, v1}, Le/a/f/z/y;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final s(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/f/o;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/truecaller/incallui/service/InCallUIService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public final t()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
