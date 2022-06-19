.class public final Le/a/c/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/b/e;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Le/a/b0/e/r/a;

.field public final e:Le/a/b0/o/a;

.field public final f:Le/a/p5/g;

.field public final g:Le/a/b0/e/f;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/b0/e/r/a;Le/a/b0/o/a;Le/a/p5/g;Le/a/b0/e/f;Lo3/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/e/r/a;",
            "Le/a/b0/o/a;",
            "Le/a/p5/g;",
            "Le/a/b0/e/f;",
            "Lo3/a<",
            "Le/a/c/h/c;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtils"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentFetcher"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appVersionName"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/b/a;->d:Le/a/b0/e/r/a;

    iput-object p2, p0, Le/a/c/b/a;->e:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/c/b/a;->f:Le/a/p5/g;

    iput-object p4, p0, Le/a/c/b/a;->g:Le/a/b0/e/f;

    iput-object p6, p0, Le/a/c/b/a;->h:Ljava/lang/String;

    .line 2
    new-instance p1, Le/a/c/b/a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p5}, Le/a/c/b/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/c/b/a;->a:Ls1/g;

    .line 3
    sget-object p1, Le/a/c/b/a$b;->b:Le/a/c/b/a$b;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/c/b/a;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/c/b/a$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Le/a/c/b/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/c/b/a;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Le/a/c/b/a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Lcom/truecaller/insights/state/MemoryLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/b/a;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/insights/state/MemoryLevel;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Le/a/c/b/a;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/b/a;->g:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->d()Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/c/b/a;->b()Lcom/truecaller/insights/state/MemoryLevel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0

    :cond_1
    const/16 v0, 0x28

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/b/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/b/a;->d:Le/a/b0/e/r/a;

    const-string v1, "profileCountryIso"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountSettings.getStrin\u2026.PROFILE_COUNTRY_ISO, \"\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
