.class public Lcom/google/firebase/inappmessaging/display/b;
.super Lcom/google/firebase/inappmessaging/display/internal/i;
.source "SourceFile"


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/q;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/display/internal/j;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/firebase/inappmessaging/display/internal/e;

.field private final i:Lcom/google/firebase/inappmessaging/display/internal/n;

.field private final j:Lcom/google/firebase/inappmessaging/display/internal/n;

.field private final k:Lcom/google/firebase/inappmessaging/display/internal/g;

.field private final l:Lcom/google/firebase/inappmessaging/display/internal/a;

.field private final m:Landroid/app/Application;

.field private final n:Lcom/google/firebase/inappmessaging/display/internal/c;

.field private o:Lcom/google/firebase/inappmessaging/display/FiamListener;

.field private p:Lcom/google/firebase/inappmessaging/model/i;

.field private q:Lcom/google/firebase/inappmessaging/t;

.field r:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/q;Ljava/util/Map;Lcom/google/firebase/inappmessaging/display/internal/e;Lcom/google/firebase/inappmessaging/display/internal/n;Lcom/google/firebase/inappmessaging/display/internal/n;Lcom/google/firebase/inappmessaging/display/internal/g;Landroid/app/Application;Lcom/google/firebase/inappmessaging/display/internal/a;Lcom/google/firebase/inappmessaging/display/internal/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/q;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/display/internal/j;",
            ">;>;",
            "Lcom/google/firebase/inappmessaging/display/internal/e;",
            "Lcom/google/firebase/inappmessaging/display/internal/n;",
            "Lcom/google/firebase/inappmessaging/display/internal/n;",
            "Lcom/google/firebase/inappmessaging/display/internal/g;",
            "Landroid/app/Application;",
            "Lcom/google/firebase/inappmessaging/display/internal/a;",
            "Lcom/google/firebase/inappmessaging/display/internal/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/internal/i;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/b;->f:Lcom/google/firebase/inappmessaging/q;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/b;->g:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/b;->h:Lcom/google/firebase/inappmessaging/display/internal/e;

    .line 5
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/display/b;->i:Lcom/google/firebase/inappmessaging/display/internal/n;

    .line 6
    iput-object p5, p0, Lcom/google/firebase/inappmessaging/display/b;->j:Lcom/google/firebase/inappmessaging/display/internal/n;

    .line 7
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/display/b;->k:Lcom/google/firebase/inappmessaging/display/internal/g;

    .line 8
    iput-object p7, p0, Lcom/google/firebase/inappmessaging/display/b;->m:Landroid/app/Application;

    .line 9
    iput-object p8, p0, Lcom/google/firebase/inappmessaging/display/b;->l:Lcom/google/firebase/inappmessaging/display/internal/a;

    .line 10
    iput-object p9, p0, Lcom/google/firebase/inappmessaging/display/b;->n:Lcom/google/firebase/inappmessaging/display/internal/c;

    return-void
.end method

.method private A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->o:Lcom/google/firebase/inappmessaging/display/FiamListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/display/FiamListener;->onFiamClick()V

    :cond_0
    return-void
.end method

.method private B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->o:Lcom/google/firebase/inappmessaging/display/FiamListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/display/FiamListener;->onFiamDismiss()V

    :cond_0
    return-void
.end method

.method private C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->o:Lcom/google/firebase/inappmessaging/display/FiamListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/display/FiamListener;->onFiamTrigger()V

    :cond_0
    return-void
.end method

.method private D(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->k:Lcom/google/firebase/inappmessaging/display/internal/g;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/g;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->k:Lcom/google/firebase/inappmessaging/display/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/g;->a(Landroid/app/Activity;)V

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/b;->q()V

    :cond_0
    return-void
.end method

.method private E(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->f:Lcom/google/firebase/inappmessaging/q;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/i;->c()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->UNSUPPORTED:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "The message being triggered is not supported by this version of the sdk."

    .line 3
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/k;->e(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/b;->C()V

    .line 5
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->g:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    .line 6
    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/i;->c()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/b;->m:Landroid/app/Application;

    invoke-static {v2}, Lcom/google/firebase/inappmessaging/display/b;->u(Landroid/app/Application;)I

    move-result v2

    .line 7
    invoke-static {v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/r/b/e;->a(Lcom/google/firebase/inappmessaging/model/MessageType;I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/a/a;

    .line 9
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/display/internal/j;

    .line 10
    sget-object v1, Lcom/google/firebase/inappmessaging/display/b$e;->a:[I

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/model/i;->c()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const-string p1, "No bindings found for this message type"

    .line 11
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/k;->e(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/b;->l:Lcom/google/firebase/inappmessaging/display/internal/a;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/inappmessaging/display/internal/a;->b(Lcom/google/firebase/inappmessaging/display/internal/j;Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/firebase/inappmessaging/display/internal/q/c;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/b;->l:Lcom/google/firebase/inappmessaging/display/internal/a;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/inappmessaging/display/internal/a;->c(Lcom/google/firebase/inappmessaging/display/internal/j;Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/firebase/inappmessaging/display/internal/q/c;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/b;->l:Lcom/google/firebase/inappmessaging/display/internal/a;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/inappmessaging/display/internal/a;->d(Lcom/google/firebase/inappmessaging/display/internal/j;Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/firebase/inappmessaging/display/internal/q/c;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/b;->l:Lcom/google/firebase/inappmessaging/display/internal/a;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/inappmessaging/display/internal/a;->a(Lcom/google/firebase/inappmessaging/display/internal/j;Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/firebase/inappmessaging/display/internal/q/c;

    move-result-object v0

    :goto_0
    const v1, 0x1020002

    .line 16
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/display/b$a;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/firebase/inappmessaging/display/b$a;-><init>(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/q/c;)V

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    :goto_1
    const-string p1, "No active message found to render"

    .line 18
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/k;->e(Ljava/lang/String;)V

    return-void
.end method

.method private F(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.chrome"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private G(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unbinding from activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/k;->f(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->f:Lcom/google/firebase/inappmessaging/q;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/q;->c()V

    .line 5
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->h:Lcom/google/firebase/inappmessaging/display/internal/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/e;->a(Ljava/lang/Class;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/b;->D(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/b;->r:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/q/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/b;->v(Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/q/c;)V

    return-void
.end method

.method static synthetic b(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/b;->q:Lcom/google/firebase/inappmessaging/t;

    return-object p0
.end method

.method static synthetic c(Lcom/google/firebase/inappmessaging/display/b;)Landroid/app/Application;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/b;->m:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic d(Lcom/google/firebase/inappmessaging/display/b;Lcom/google/firebase/inappmessaging/t;)Lcom/google/firebase/inappmessaging/t;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/b;->q:Lcom/google/firebase/inappmessaging/t;

    return-object p1
.end method

.method static synthetic e(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/display/internal/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/b;->n:Lcom/google/firebase/inappmessaging/display/internal/c;

    return-object p0
.end method

.method static synthetic f(Lcom/google/firebase/inappmessaging/display/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/b;->q()V

    return-void
.end method

.method static synthetic g(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/b;->r(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic h(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/b;->y(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic i(Lcom/google/firebase/inappmessaging/display/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/b;->A()V

    return-void
.end method

.method static synthetic j(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/b;->D(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic k(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/model/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    return-object p0
.end method

.method static synthetic l(Lcom/google/firebase/inappmessaging/display/b;Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/firebase/inappmessaging/model/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    return-object p1
.end method

.method static synthetic m(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/display/internal/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/b;->i:Lcom/google/firebase/inappmessaging/display/internal/n;

    return-object p0
.end method

.method static synthetic n(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/display/internal/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/b;->j:Lcom/google/firebase/inappmessaging/display/internal/n;

    return-object p0
.end method

.method static synthetic o(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/display/internal/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/b;->k:Lcom/google/firebase/inappmessaging/display/internal/g;

    return-object p0
.end method

.method private p(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding to activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/k;->f(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->f:Lcom/google/firebase/inappmessaging/q;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/display/a;->a(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/q;->h(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->r:Ljava/lang/String;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/b;->E(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method private q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->i:Lcom/google/firebase/inappmessaging/display/internal/n;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/n;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->j:Lcom/google/firebase/inappmessaging/display/internal/n;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/n;->a()V

    return-void
.end method

.method private r(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "Dismissing fiam"

    .line 1
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/k;->a(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/b;->B()V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/b;->D(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    .line 5
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/b;->q:Lcom/google/firebase/inappmessaging/t;

    return-void
.end method

.method private s(Lcom/google/firebase/inappmessaging/model/i;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/i;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/model/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/google/firebase/inappmessaging/display/b$e;->a:[I

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/i;->c()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/a;->a()Lcom/google/firebase/inappmessaging/model/a$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/a$b;->a()Lcom/google/firebase/inappmessaging/model/a;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    check-cast p1, Lcom/google/firebase/inappmessaging/model/f;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/f;->i()Lcom/google/firebase/inappmessaging/model/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/f;->j()Lcom/google/firebase/inappmessaging/model/a;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    check-cast p1, Lcom/google/firebase/inappmessaging/model/h;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/h;->e()Lcom/google/firebase/inappmessaging/model/a;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    check-cast p1, Lcom/google/firebase/inappmessaging/model/j;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/j;->e()Lcom/google/firebase/inappmessaging/model/a;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    check-cast p1, Lcom/google/firebase/inappmessaging/model/c;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/c;->e()Lcom/google/firebase/inappmessaging/model/a;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method private t(Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/firebase/inappmessaging/model/g;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/i;->c()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->CARD:Lcom/google/firebase/inappmessaging/model/MessageType;

    if-ne v0, v1, :cond_3

    .line 2
    check-cast p1, Lcom/google/firebase/inappmessaging/model/f;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/f;->h()Lcom/google/firebase/inappmessaging/model/g;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/f;->g()Lcom/google/firebase/inappmessaging/model/g;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/b;->m:Landroid/app/Application;

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/display/b;->u(Landroid/app/Application;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/display/b;->w(Lcom/google/firebase/inappmessaging/model/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/b;->w(Lcom/google/firebase/inappmessaging/model/g;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p1

    :cond_2
    return-object v0

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/i;->b()Lcom/google/firebase/inappmessaging/model/g;

    move-result-object p1

    return-object p1
.end method

.method private static u(Landroid/app/Application;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    return p0
.end method

.method private v(Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/q/c;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/display/b$b;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/display/b$b;-><init>(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;)V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    invoke-direct {p0, v2}, Lcom/google/firebase/inappmessaging/display/b;->s(Lcom/google/firebase/inappmessaging/model/i;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/inappmessaging/model/a;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/model/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    new-instance v4, Lcom/google/firebase/inappmessaging/display/b$c;

    invoke-direct {v4, p0, v3, p1}, Lcom/google/firebase/inappmessaging/display/b$c;-><init>(Lcom/google/firebase/inappmessaging/display/b;Lcom/google/firebase/inappmessaging/model/a;Landroid/app/Activity;)V

    goto :goto_1

    :cond_0
    const-string v4, "No action url found for action. Treating as dismiss."

    .line 6
    invoke-static {v4}, Lcom/google/firebase/inappmessaging/display/internal/k;->f(Ljava/lang/String;)V

    move-object v4, v0

    .line 7
    :goto_1
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2, v1, v0}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->g(Ljava/util/Map;Landroid/view/View$OnClickListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->e()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    .line 11
    invoke-direct {p0, v1}, Lcom/google/firebase/inappmessaging/display/b;->t(Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/firebase/inappmessaging/model/g;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/display/b$d;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/firebase/inappmessaging/display/b$d;-><init>(Lcom/google/firebase/inappmessaging/display/b;Lcom/google/firebase/inappmessaging/display/internal/q/c;Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 12
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/firebase/inappmessaging/display/b;->z(Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/q/c;Lcom/google/firebase/inappmessaging/model/g;Lcom/squareup/picasso/e;)V

    return-void
.end method

.method private w(Lcom/google/firebase/inappmessaging/model/g;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic x(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->f:Lcom/google/firebase/inappmessaging/q;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/b;->p:Lcom/google/firebase/inappmessaging/model/i;

    .line 3
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/b;->q:Lcom/google/firebase/inappmessaging/t;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/b;->E(Landroid/app/Activity;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "Active FIAM exists. Skipping trigger"

    .line 5
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/display/internal/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method private y(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/b;->F(Landroid/app/Activity;)Z

    move-result v0

    const/high16 v1, 0x10000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lf/c/b/b$a;

    invoke-direct {v0}, Lf/c/b/b$a;-><init>()V

    invoke-virtual {v0}, Lf/c/b/b$a;->a()Lf/c/b/b;

    move-result-object v0

    .line 3
    iget-object v3, v0, Lf/c/b/b;->a:Landroid/content/Intent;

    .line 4
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0, p1, p2}, Lf/c/b/b;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "Device cannot resolve intent for: android.intent.action.VIEW"

    .line 12
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/k;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private z(Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/q/c;Lcom/google/firebase/inappmessaging/model/g;Lcom/squareup/picasso/e;)V
    .locals 1

    .line 1
    invoke-direct {p0, p3}, Lcom/google/firebase/inappmessaging/display/b;->w(Lcom/google/firebase/inappmessaging/model/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->h:Lcom/google/firebase/inappmessaging/display/internal/e;

    .line 3
    invoke-virtual {p3}, Lcom/google/firebase/inappmessaging/model/g;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/firebase/inappmessaging/display/internal/e;->b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/display/internal/e$a;

    move-result-object p3

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/firebase/inappmessaging/display/internal/e$a;->c(Ljava/lang/Class;)Lcom/google/firebase/inappmessaging/display/internal/e$a;

    sget p1, Lcom/google/firebase/inappmessaging/display/e;->a:I

    .line 5
    invoke-virtual {p3, p1}, Lcom/google/firebase/inappmessaging/display/internal/e$a;->b(I)Lcom/google/firebase/inappmessaging/display/internal/e$a;

    .line 6
    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->e()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p3, p1, p4}, Lcom/google/firebase/inappmessaging/display/internal/e$a;->a(Landroid/widget/ImageView;Lcom/squareup/picasso/e;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p4}, Lcom/squareup/picasso/e;->onSuccess()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/b;->G(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b;->f:Lcom/google/firebase/inappmessaging/q;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/q;->f()V

    .line 3
    invoke-super {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/i;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/i;->onActivityResumed(Landroid/app/Activity;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/b;->p(Landroid/app/Activity;)V

    return-void
.end method
