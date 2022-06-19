.class public final Le/a/v/a/b0/c;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/b0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/v/a/b0/b;",
        ">;",
        "Le/a/v/a/b0/a;"
    }
.end annotation


# instance fields
.field public d:Le/a/v/a/s;

.field public e:Lq3/a/p1;

.field public final f:Le/a/v/a/b0/c$a;

.field public final g:Ls1/w/f;

.field public final h:Ls1/w/f;

.field public final i:Le/a/v/p/a;

.field public final j:Le/a/o5/b0;

.field public final k:Le/a/p5/c0;

.field public final l:Le/a/p5/h0;

.field public final m:Le/a/e4/b0;

.field public final n:Landroid/content/ContentResolver;

.field public final o:Landroid/os/Handler;

.field public final p:Le/a/v/a/z/a;

.field public final q:Le/a/p5/a0;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/v/p/a;Le/a/o5/b0;Le/a/p5/c0;Le/a/p5/h0;Le/a/e4/b0;Landroid/content/ContentResolver;Landroid/os/Handler;Le/a/v/a/z/a;Le/a/p5/a0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHistoryManagerDelegate"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themedResourceProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simInfoCache"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsViewAnalytics"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/v/a/b0/c;->g:Ls1/w/f;

    iput-object p2, p0, Le/a/v/a/b0/c;->h:Ls1/w/f;

    iput-object p3, p0, Le/a/v/a/b0/c;->i:Le/a/v/p/a;

    iput-object p4, p0, Le/a/v/a/b0/c;->j:Le/a/o5/b0;

    iput-object p5, p0, Le/a/v/a/b0/c;->k:Le/a/p5/c0;

    iput-object p6, p0, Le/a/v/a/b0/c;->l:Le/a/p5/h0;

    iput-object p7, p0, Le/a/v/a/b0/c;->m:Le/a/e4/b0;

    iput-object p8, p0, Le/a/v/a/b0/c;->n:Landroid/content/ContentResolver;

    iput-object p9, p0, Le/a/v/a/b0/c;->o:Landroid/os/Handler;

    iput-object p10, p0, Le/a/v/a/b0/c;->p:Le/a/v/a/z/a;

    iput-object p11, p0, Le/a/v/a/b0/c;->q:Le/a/p5/a0;

    .line 2
    new-instance p1, Le/a/v/a/b0/c$a;

    invoke-direct {p1, p0, p9}, Le/a/v/a/b0/c$a;-><init>(Le/a/v/a/b0/c;Landroid/os/Handler;)V

    iput-object p1, p0, Le/a/v/a/b0/c;->f:Le/a/v/a/b0/c$a;

    return-void
.end method


# virtual methods
.method public final Ij(Lcom/truecaller/data/entity/HistoryEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    const-string v0, "com.truecaller.voip.manager.VOIP"

    .line 2
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final Jj()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/v/a/b0/c;->d:Le/a/v/a/s;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Le/a/v/a/b0/c;->e:Lq3/a/p1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4
    new-instance v7, Le/a/v/a/b0/c$b;

    invoke-direct {v7, v0, v2, p0}, Le/a/v/a/b0/c$b;-><init>(Lcom/truecaller/data/entity/Contact;Ls1/w/d;Le/a/v/a/b0/c;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, p0, Le/a/v/a/b0/c;->e:Lq3/a/p1;

    :cond_1
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le/a/v/a/b0/b;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/v/a/b0/c;->q:Le/a/p5/a0;

    const-string v0, "android.permission.READ_CALL_LOG"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-object p1, p0, Le/a/v/a/b0/c;->n:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Le/a/v/a/b0/c;->f:Le/a/v/a/b0/c$a;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/v/a/b0/c;->n:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/v/a/b0/c;->f:Le/a/v/a/b0/c$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
