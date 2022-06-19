.class public final Le/a/i4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i4/g;


# instance fields
.field public a:Le/a/i4/i;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V
    .locals 5

    const-string v0, "notification"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i4/h;->a:Le/a/i4/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/i4/i;->a(Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p1

    .line 4
    sget-object v2, Ln3/m0/h;->a:Ln3/m0/h;

    .line 5
    new-instance v3, Ln3/m0/r$a;

    const-class v4, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;

    invoke-direct {v3, v4}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 6
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Ln3/m0/z$a;->f(JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object v0

    check-cast v0, Ln3/m0/r$a;

    .line 7
    new-instance v1, Ln3/m0/d$a;

    invoke-direct {v1}, Ln3/m0/d$a;-><init>()V

    sget-object v3, Ln3/m0/q;->b:Ln3/m0/q;

    .line 8
    iput-object v3, v1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 9
    new-instance v3, Ln3/m0/d;

    invoke-direct {v3, v1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 10
    iget-object v1, v0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v3, v1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 11
    invoke-virtual {v0}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/r;

    const-string v1, "BusinessCardBackgroundWorker"

    .line 12
    invoke-virtual {p1, v1, v2, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void

    :cond_0
    const-string p1, "credProfileUpdateHelper"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
