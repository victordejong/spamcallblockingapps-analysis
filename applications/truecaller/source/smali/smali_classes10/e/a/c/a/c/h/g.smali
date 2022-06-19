.class public final Le/a/c/a/c/h/g;
.super Ln3/a/e/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/a/e/d/a<",
        "Ls1/s;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/c/b/h;


# direct methods
.method public constructor <init>(Le/a/c/b/h;)V
    .locals 1

    const-string v0, "permissionHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/a/e/d/a;-><init>()V

    iput-object p1, p0, Le/a/c/a/c/h/g;->a:Le/a/c/b/h;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 1

    .line 1
    check-cast p2, Ls1/s;

    const-string p2, "context"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_0

    const-string p2, "role"

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.app.role.RoleManager"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/app/role/RoleManager;

    const-string p2, "android.app.role.SMS"

    .line 5
    invoke-virtual {p1, p2}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "roleManager.createReques\u2026ent(RoleManager.ROLE_SMS)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "package"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/Object;)Ln3/a/e/d/a$a;
    .locals 0

    .line 1
    check-cast p2, Ls1/s;

    const-string p2, "context"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/c/a/c/h/g;->a:Le/a/c/b/h;

    invoke-interface {p1}, Le/a/c/b/h;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Ln3/a/e/d/a$a;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Ln3/a/e/d/a$a;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/c/a/c/h/g;->a:Le/a/c/b/h;

    invoke-interface {p1}, Le/a/c/b/h;->c()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
