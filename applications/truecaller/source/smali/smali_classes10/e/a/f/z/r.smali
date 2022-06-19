.class public final Le/a/f/z/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/z/q;
.implements Lq3/a/i0;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile c:Lcom/truecaller/incallui/utils/WatchDogConfig;

.field public final d:Ls1/w/f;

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/v0/b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/p5/l;

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f/m;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f/y/c;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f/z/y;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/a/p5/c;

.field public final l:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/q/h0;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/e4/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Lo3/a;Lo3/a;Le/a/p5/l;Lo3/a;Lo3/a;Lo3/a;Le/a/p5/c;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Lo3/a;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Lo3/a<",
            "Le/a/p5/v0/b;",
            ">;",
            "Le/a/p5/l;",
            "Lo3/a<",
            "Le/a/f/m;",
            ">;",
            "Lo3/a<",
            "Le/a/f/y/c;",
            ">;",
            "Lo3/a<",
            "Le/a/f/z/y;",
            ">;",
            "Le/a/p5/c;",
            "Lo3/a<",
            "Le/a/b0/q/h0;",
            ">;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;",
            "Lo3/a<",
            "Le/a/e4/p;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telephonyUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gsonUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUIConfig"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialNumberResolver"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/z/r;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/f/z/r;->e:Lo3/a;

    iput-object p3, p0, Le/a/f/z/r;->f:Lo3/a;

    iput-object p4, p0, Le/a/f/z/r;->g:Le/a/p5/l;

    iput-object p5, p0, Le/a/f/z/r;->h:Lo3/a;

    iput-object p6, p0, Le/a/f/z/r;->i:Lo3/a;

    iput-object p7, p0, Le/a/f/z/r;->j:Lo3/a;

    iput-object p8, p0, Le/a/f/z/r;->k:Le/a/p5/c;

    iput-object p9, p0, Le/a/f/z/r;->l:Lo3/a;

    iput-object p10, p0, Le/a/f/z/r;->m:Lo3/a;

    iput-object p11, p0, Le/a/f/z/r;->n:Lo3/a;

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 2
    invoke-static {p2, p3, p2}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p2

    invoke-interface {p1, p2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    iput-object p1, p0, Le/a/f/z/r;->a:Ls1/w/f;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/a/f/z/r;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance p1, Lcom/truecaller/incallui/utils/WatchDogConfig;

    const/4 p4, 0x0

    const/4 p5, 0x0

    const-wide/16 p6, 0x0

    const/4 p8, 0x0

    const/16 p9, 0xf

    const/4 p10, 0x0

    move-object p3, p1

    invoke-direct/range {p3 .. p10}, Lcom/truecaller/incallui/utils/WatchDogConfig;-><init>(ZIJZILs1/z/c/f;)V

    iput-object p1, p0, Le/a/f/z/r;->c:Lcom/truecaller/incallui/utils/WatchDogConfig;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/z/r;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/z/y;

    const-string v1, "watchDogInCallUIDisabledTimestamp"

    invoke-interface {v0, v1}, Le/a/f/z/y;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/z/r;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/z/y;

    const-string v1, "watchDogInCallUIFailureCount"

    invoke-interface {v0, v1}, Le/a/f/z/y;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/z/r;->a:Ls1/w/f;

    return-object v0
.end method

.method public init()V
    .locals 6

    .line 1
    new-instance v3, Le/a/f/z/r$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/f/z/r$a;-><init>(Le/a/f/z/r;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
