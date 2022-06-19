.class public final Le/a/c/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/b/h;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/p5/a0;

.field public final c:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p5/a0;Le/a/b0/o/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/b/i;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/c/b/i;->b:Le/a/p5/a0;

    iput-object p3, p0, Le/a/c/b/i;->c:Le/a/b0/o/a;

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 3

    const-string v0, "android.permission.READ_SMS"

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "android.permission.RECEIVE_SMS"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/b/i;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/a/c/b/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2, p3}, Le/a/p5/s0/g;->e1(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    return-void
.end method

.method public e([Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Le/a/p5/s0/g;->M0([Ljava/lang/String;[I)V

    return-void
.end method

.method public f(Landroidx/fragment/app/Fragment;[Ljava/lang/String;Ln3/a/e/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "[",
            "Ljava/lang/String;",
            "Ln3/a/e/b<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestLauncher"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v4

    invoke-static {v4, v3}, Le/a/p5/s0/g;->w0(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/s0/g;->Z0(Landroid/content/Context;)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p3, p2, p1}, Ln3/a/e/b;->a(Ljava/lang/Object;Ln3/k/a/c;)V

    :goto_2
    return-void
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/b/i;->b:Le/a/p5/a0;

    const-string v1, "android.permission.READ_SMS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/b/i;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
