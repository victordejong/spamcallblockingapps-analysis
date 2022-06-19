.class public final Le/a/d4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d4/a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/d4/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/d4/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d4/b;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/d4/b;->b:Le/a/d4/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/d4/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.packageName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ".debug"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/d4/b;->b:Le/a/d4/c;

    sget-object v2, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {v1, v2}, Le/a/d4/c;->d(Le/a/d4/e;)Z

    move-result v1

    const-string v2, "java.lang.String.format(this, *args)"

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "market://details?id=%s"

    invoke-static {v1, v4, v0, v2}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Le/a/d4/b;->b:Le/a/d4/c;

    sget-object v5, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-interface {v1, v5}, Le/a/d4/c;->d(Le/a/d4/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "appmarket://details?id=%s"

    invoke-static {v1, v4, v0, v2}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/d4/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/d4/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "https://www.truecaller.com/download"

    :goto_0
    return-object v0
.end method
