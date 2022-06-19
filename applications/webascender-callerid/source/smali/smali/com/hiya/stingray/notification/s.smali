.class public Lcom/hiya/stingray/notification/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/manager/c2;

.field private final c:Lcom/hiya/stingray/manager/o1;

.field private final d:Lcom/hiya/stingray/manager/h4;

.field private e:Li/c/b0/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/c2;Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/manager/o2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Li/c/b0/c/b;->b()Li/c/b0/c/c;

    move-result-object p5

    iput-object p5, p0, Lcom/hiya/stingray/notification/s;->e:Li/c/b0/c/c;

    .line 3
    iput-object p1, p0, Lcom/hiya/stingray/notification/s;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/hiya/stingray/notification/s;->b:Lcom/hiya/stingray/manager/c2;

    .line 5
    iput-object p3, p0, Lcom/hiya/stingray/notification/s;->c:Lcom/hiya/stingray/manager/o1;

    .line 6
    iput-object p4, p0, Lcom/hiya/stingray/notification/s;->d:Lcom/hiya/stingray/manager/h4;

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/s;->e:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method private synthetic d(Landroid/content/Context;Ljava/lang/String;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    .line 1
    invoke-static {p2}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const p2, 0x7f110022

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/notification/s;->b()V

    return-void
.end method

.method private synthetic f(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to block from notification"

    .line 1
    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/notification/s;->b()V

    return-void
.end method

.method private synthetic h(Lcom/hiya/stingray/notification/w;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/notification/s;->a:Landroid/content/Context;

    .line 3
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hiya/stingray/t/d0;

    invoke-interface {p1, v1, p3, p2}, Lcom/hiya/stingray/notification/w;->a(Landroid/content/Context;Lcom/hiya/stingray/t/d0;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v0

    const-string p2, "Unable to find call log item for phone. Action: %s"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    invoke-direct {p0}, Lcom/hiya/stingray/notification/s;->b()V

    return-void
.end method

.method private synthetic j(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get last call log item for notification"

    .line 1
    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/notification/s;->b()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/notification/s;->b:Lcom/hiya/stingray/manager/c2;

    iget-object v1, p0, Lcom/hiya/stingray/notification/s;->d:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;->FULL_NUMBER:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hiya/stingray/manager/c2;->a(Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/notification/c;

    invoke-direct {v1, p0, p2, p1}, Lcom/hiya/stingray/notification/c;-><init>(Lcom/hiya/stingray/notification/s;Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/hiya/stingray/notification/a;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/notification/a;-><init>(Lcom/hiya/stingray/notification/s;)V

    .line 4
    invoke-virtual {v0, v1, p1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/notification/s;->e:Li/c/b0/c/c;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/notification/w;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/notification/s;->c:Lcom/hiya/stingray/manager/o1;

    iget-object v2, p0, Lcom/hiya/stingray/notification/s;->d:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/hiya/stingray/manager/o1;->l(Ljava/lang/String;ILjava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 3
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/notification/d;

    invoke-direct {v0, p0, p3, p2}, Lcom/hiya/stingray/notification/d;-><init>(Lcom/hiya/stingray/notification/s;Lcom/hiya/stingray/notification/w;Ljava/lang/String;)V

    new-instance p2, Lcom/hiya/stingray/notification/b;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/notification/b;-><init>(Lcom/hiya/stingray/notification/s;)V

    .line 4
    invoke-virtual {p1, v0, p2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/notification/s;->e:Li/c/b0/c/c;

    return-void
.end method

.method public synthetic e(Landroid/content/Context;Ljava/lang/String;Lretrofit2/Response;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/notification/s;->d(Landroid/content/Context;Ljava/lang/String;Lretrofit2/Response;)V

    return-void
.end method

.method public synthetic g(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/notification/s;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic i(Lcom/hiya/stingray/notification/w;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/notification/s;->h(Lcom/hiya/stingray/notification/w;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic k(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/notification/s;->j(Ljava/lang/Throwable;)V

    return-void
.end method
