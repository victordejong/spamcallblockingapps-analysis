.class public final Le/a/i4/w;
.super Le/a/i4/n;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Le/a/i4/v;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lq3/a/p1;

.field public final c:Landroid/content/Context;

.field public final d:Le/a/h/t0/b;

.field public final e:Le/a/k3/j/g;

.field public final f:Le/a/k3/j/b;

.field public final g:Le/a/h/t0/a;

.field public final h:Ls1/w/f;

.field public final i:Le/a/b0/q/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/h/t0/b;Le/a/k3/j/g;Le/a/k3/j/b;Le/a/h/t0/a;Ls1/w/f;Le/a/b0/q/y;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Async"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatsAppInCallLog"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localContactSearcher"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatsAppEventSaver"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberExtractor"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/i4/n;-><init>()V

    iput-object p1, p0, Le/a/i4/w;->c:Landroid/content/Context;

    iput-object p2, p0, Le/a/i4/w;->d:Le/a/h/t0/b;

    iput-object p3, p0, Le/a/i4/w;->e:Le/a/k3/j/g;

    iput-object p4, p0, Le/a/i4/w;->f:Le/a/k3/j/b;

    iput-object p5, p0, Le/a/i4/w;->g:Le/a/h/t0/a;

    iput-object p6, p0, Le/a/i4/w;->h:Ls1/w/f;

    iput-object p7, p0, Le/a/i4/w;->i:Le/a/b0/q/y;

    .line 2
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Le/a/i4/w;->a:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public b(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    const-string v0, "statusBarNotification"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/i4/w;->e(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/i4/w;->b:Lq3/a/p1;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/i4/w;->c:Landroid/content/Context;

    invoke-static {p1, v0}, Le/a/c/p/a;->r3(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;)Le/a/i4/v;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/i4/w;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Landroid/service/notification/StatusBarNotification;)V
    .locals 9

    const-string v0, "statusBarNotification"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/i4/w;->e(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/i4/w;->b:Lq3/a/p1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_1
    sget-object v3, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v4, p0, Le/a/i4/w;->h:Ls1/w/f;

    const/4 v5, 0x0

    new-instance v6, Le/a/i4/w$a;

    invoke-direct {v6, p0, p1, v1}, Le/a/i4/w$a;-><init>(Le/a/i4/w;Landroid/service/notification/StatusBarNotification;Ls1/w/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/i4/w;->b:Lq3/a/p1;

    return-void
.end method

.method public final e(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i4/w;->d:Le/a/h/t0/b;

    invoke-interface {v0}, Le/a/h/t0/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.whatsapp"

    invoke-static {v2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method
