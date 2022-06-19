.class public final Le/a/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i0$b;
    }
.end annotation


# instance fields
.field public a:Le/a/i0$b;

.field public b:J

.field public c:Ljava/lang/String;

.field public final d:Lq3/a/i0;

.field public e:Lq3/a/p1;

.field public f:Lq3/a/p1;

.field public final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/ClipboardManager;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o5/j;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o5/f0;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f4/g/r;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/h0/j;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/q/z;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/u;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/h3/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ls1/w/f;

.field public final q:Ls1/w/f;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p10    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p11    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/ClipboardManager;",
            ">;",
            "Lo3/a<",
            "Le/a/p5/a0;",
            ">;",
            "Lo3/a<",
            "Le/a/o5/j;",
            ">;",
            "Lo3/a<",
            "Le/a/o5/f0;",
            ">;",
            "Lo3/a<",
            "Le/a/f4/g/r;",
            ">;",
            "Lo3/a<",
            "Le/a/h0/j;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/q/z;",
            ">;",
            "Lo3/a<",
            "Le/a/p5/u;",
            ">;",
            "Lo3/a<",
            "Le/a/h3/b/a;",
            ">;",
            "Ls1/w/f;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "clipboardManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appListener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipboardDataManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiCoroutineContext"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutineContext"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i0;->g:Ljavax/inject/Provider;

    iput-object p2, p0, Le/a/i0;->h:Lo3/a;

    iput-object p3, p0, Le/a/i0;->i:Lo3/a;

    iput-object p4, p0, Le/a/i0;->j:Lo3/a;

    iput-object p5, p0, Le/a/i0;->k:Lo3/a;

    iput-object p6, p0, Le/a/i0;->l:Lo3/a;

    iput-object p7, p0, Le/a/i0;->m:Lo3/a;

    iput-object p8, p0, Le/a/i0;->n:Lo3/a;

    iput-object p9, p0, Le/a/i0;->o:Lo3/a;

    iput-object p10, p0, Le/a/i0;->p:Ls1/w/f;

    iput-object p11, p0, Le/a/i0;->q:Ls1/w/f;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p1

    invoke-interface {p10, p1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object p1

    iput-object p1, p0, Le/a/i0;->d:Lq3/a/i0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ClipboardManager;Ls1/z/b/l;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ClipboardManager;",
            "Ls1/z/b/l<",
            "-",
            "Landroid/content/ClipboardManager;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final b(Le/a/i0$b;)V
    .locals 4

    .line 1
    iput-object p1, p0, Le/a/i0;->a:Le/a/i0$b;

    .line 2
    iget-object v0, p0, Le/a/i0;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "clipboardManager.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/ClipboardManager;

    new-instance v2, Le/a/i0$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Le/a/i0$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v2}, Le/a/i0;->a(Landroid/content/ClipboardManager;Ls1/z/b/l;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Le/a/i0;->e:Lq3/a/p1;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string v3, "SearchOnCopyHelper destroyed"

    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lq3/a/p1;->d(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Le/a/i0;->g:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/ClipboardManager;

    new-instance v0, Le/a/i0$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Le/a/i0$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Le/a/i0;->a(Landroid/content/ClipboardManager;Ls1/z/b/l;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onPrimaryClipChanged()V
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/i0;->i:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "appListener.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/o5/j;

    invoke-virtual {v0}, Le/a/o5/j;->b()Z

    move-result v0

    .line 2
    new-instance v1, Ls1/z/c/c0;

    invoke-direct {v1}, Ls1/z/c/c0;-><init>()V

    iget-object v2, p0, Le/a/i0;->g:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "clipboardManager.get()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/ClipboardManager;

    sget-object v3, Le/a/i0$d;->b:Le/a/i0$d;

    invoke-virtual {p0, v2, v3}, Le/a/i0;->a(Landroid/content/ClipboardManager;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    iput-object v2, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Le/a/i0;->f:Lq3/a/p1;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v5, p0, Le/a/i0;->d:Lq3/a/i0;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Le/a/i0$c;

    invoke-direct {v8, p0, v1, v0, v3}, Le/a/i0$c;-><init>(Le/a/i0;Ls1/z/c/c0;ZLs1/w/d;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, p0, Le/a/i0;->f:Lq3/a/p1;

    :cond_1
    return-void
.end method
