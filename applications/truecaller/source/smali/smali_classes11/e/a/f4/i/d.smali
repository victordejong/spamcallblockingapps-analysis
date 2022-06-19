.class public final Le/a/f4/i/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f4/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/r/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f4/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/i3/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f4/b/g/b;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f4/b/f/b;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f4/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/x3/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lo3/a<",
            "Le/a/f4/b/b;",
            ">;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/e/r/a;",
            ">;",
            "Lo3/a<",
            "Le/a/f4/a/d;",
            ">;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/i3/b;",
            ">;>;",
            "Lo3/a<",
            "Le/a/f4/b/g/b;",
            ">;",
            "Lo3/a<",
            "Le/a/f4/b/f/b;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/e/h;",
            ">;",
            "Lo3/a<",
            "Le/a/f4/b/d;",
            ">;",
            "Lo3/a<",
            "Le/a/x3/c;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "appName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appVersion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainResolver"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credentialsChecker"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "edgeLocationsManager"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainFrontingResolver"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tempTokenManager"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restCrossDcSupport"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forcedUpdateManager"

    invoke-static {p14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/i/d;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/f4/i/d;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/f4/i/d;->c:Landroid/content/Context;

    iput-object p4, p0, Le/a/f4/i/d;->d:Lo3/a;

    iput-object p5, p0, Le/a/f4/i/d;->e:Lo3/a;

    iput-object p6, p0, Le/a/f4/i/d;->f:Lo3/a;

    iput-object p7, p0, Le/a/f4/i/d;->g:Lo3/a;

    iput-object p8, p0, Le/a/f4/i/d;->h:Lo3/a;

    iput-object p9, p0, Le/a/f4/i/d;->i:Lo3/a;

    iput-object p10, p0, Le/a/f4/i/d;->j:Lo3/a;

    iput-object p11, p0, Le/a/f4/i/d;->k:Lo3/a;

    iput-object p12, p0, Le/a/f4/i/d;->l:Lo3/a;

    iput-object p13, p0, Le/a/f4/i/d;->m:Lo3/a;

    iput-object p14, p0, Le/a/f4/i/d;->n:Lo3/a;

    return-void
.end method
