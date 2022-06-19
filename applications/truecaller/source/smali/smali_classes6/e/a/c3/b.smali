.class public final Le/a/c3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c3/a;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Landroid/content/Context;

.field public final f:Le/a/p5/g;

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c3/d;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p5/g;Lo3/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/p5/g;",
            "Lo3/a<",
            "Le/a/c3/d;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildConfigName"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c3/b;->e:Landroid/content/Context;

    iput-object p2, p0, Le/a/c3/b;->f:Le/a/p5/g;

    iput-object p3, p0, Le/a/c3/b;->g:Lo3/a;

    iput-object p4, p0, Le/a/c3/b;->h:Ljava/lang/String;

    .line 2
    new-instance p2, Le/a/c3/b$a;

    invoke-direct {p2, p0}, Le/a/c3/b$a;-><init>(Le/a/c3/b;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/c3/b;->a:Ls1/g;

    .line 3
    new-instance p2, Le/a/c3/b$b;

    invoke-direct {p2, p0}, Le/a/c3/b$b;-><init>(Le/a/c3/b;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/c3/b;->b:Ls1/g;

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-object p1, p0, Le/a/c3/b;->c:Ljava/lang/String;

    const-string p2, "com.android.vending"

    .line 7
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, p3

    goto :goto_2

    :cond_2
    :goto_1
    move p1, p4

    :goto_2
    if-eqz p1, :cond_4

    :cond_3
    move p3, p4

    :cond_4
    iput-boolean p3, p0, Le/a/c3/b;->d:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Le/a/c3/b;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/c3/b;->d:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c3/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/c3/b;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/c3/b;->g:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c3/d;

    const-string v1, "BUILD_KEY"

    invoke-interface {v0, v1}, Le/a/c3/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/c3/b;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 3
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v3

    :goto_1
    if-eqz v4, :cond_5

    .line 4
    iget-object v0, p0, Le/a/c3/b;->h:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Le/a/c3/b;->c:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 6
    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    if-eqz v2, :cond_5

    sget-object v2, Lcom/truecaller/buildinfo/BuildName;->GOOGLE_PLAY:Lcom/truecaller/buildinfo/BuildName;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7
    sget-object v0, Lcom/truecaller/buildinfo/BuildName;->TC_SHARED:Lcom/truecaller/buildinfo/BuildName;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_5
    iget-object v2, p0, Le/a/c3/b;->g:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c3/d;

    invoke-interface {v2, v1, v0}, Le/a/c3/d;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method
