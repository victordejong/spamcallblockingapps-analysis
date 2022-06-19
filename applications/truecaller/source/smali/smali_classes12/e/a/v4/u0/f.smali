.class public final Le/a/v4/u0/f;
.super Le/a/v4/u0/a;
.source "SourceFile"


# instance fields
.field public final j:Landroid/os/Bundle;

.field public final k:Le/a/t/b/c/c;

.field public final l:Le/a/v4/b0;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Le/a/t/b/c/c;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/b0;Le/a/v4/l;Le/a/v4/v;I)V
    .locals 6

    and-int/lit8 p2, p8, 0x2

    const/4 p8, 0x0

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Le/a/t/b/c/c;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, p8}, Le/a/t/b/c/c;-><init>(IILcom/truecaller/android/sdk/clients/CustomDataBundle;)V

    move-object p8, p2

    :cond_0
    const-string p2, "extras"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sdkScopeEvaluator"

    invoke-static {p8, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "coreSettings"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "accountSettings"

    invoke-static {p4, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sdkRepository"

    invoke-static {p5, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "eventsTrackerHolder"

    invoke-static {p6, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sdkAccountManager"

    invoke-static {p7, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    move-object v5, p7

    .line 3
    invoke-direct/range {v0 .. v5}, Le/a/v4/u0/a;-><init>(Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/l;Le/a/v4/v;)V

    iput-object p1, p0, Le/a/v4/u0/f;->j:Landroid/os/Bundle;

    iput-object p8, p0, Le/a/v4/u0/f;->k:Le/a/t/b/c/c;

    iput-object p5, p0, Le/a/v4/u0/f;->l:Le/a/v4/b0;

    return-void
.end method


# virtual methods
.method public B()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/f;->j:Landroid/os/Bundle;

    return-object v0
.end method

.method public C()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/u0/f;->j:Landroid/os/Bundle;

    const-string v1, "qr_partner_name"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/v4/u0/h;->b:Z

    .line 2
    iget-object v1, p0, Le/a/v4/u0/f;->j:Landroid/os/Bundle;

    const-string v2, "qr_scan_code"

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iput-boolean v0, p0, Le/a/v4/u0/a;->i:Z

    .line 5
    iget-object v0, p0, Le/a/v4/u0/f;->l:Le/a/v4/b0;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->API:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v2, Le/a/v4/k0;

    invoke-static {v0, v2}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v4/k0;

    invoke-interface {v0, v1}, Le/a/v4/k0;->a(Ljava/lang/String;)Lx3/b;

    move-result-object v0

    .line 8
    invoke-interface {v0, p0}, Lx3/b;->enqueue(Lx3/d;)V

    .line 9
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Le/a/v4/w0/b;->S1()V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "qr_code"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.0"

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    .line 2
    invoke-interface {v0}, Le/a/v4/u0/k/a;->d()V

    .line 3
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Le/a/v4/w0/b;->M3()V

    :cond_0
    return-void
.end method

.method public m()Le/a/t/b/c/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/f;->k:Le/a/t/b/c/c;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/v4/u0/f;->j:Landroid/os/Bundle;

    const-string v1, "qr_scan_code"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "|"

    invoke-static {v0, v3, v1, v2}, Ls1/f0/v;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public x(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/u0/f;->j:Landroid/os/Bundle;

    const-string v1, "qr_scan_code"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/v4/u0/f;->l:Le/a/v4/b0;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Lcom/truecaller/common/network/util/KnownEndpoints;->API:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class p2, Le/a/v4/k0;

    invoke-static {p1, p2}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/v4/k0;

    invoke-interface {p1, v0}, Le/a/v4/k0;->a(Ljava/lang/String;)Lx3/b;

    move-result-object p1

    .line 6
    invoke-interface {p1, p0}, Lx3/b;->enqueue(Lx3/d;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    .line 8
    invoke-interface {p1, p2}, Le/a/v4/u0/k/a;->c(I)V

    .line 9
    iget-object p1, p0, Le/a/v4/u0/f;->l:Le/a/v4/b0;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p2, Lcom/truecaller/common/network/util/KnownEndpoints;->API:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v1, Le/a/v4/l0;

    invoke-static {p2, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/v4/l0;

    invoke-interface {p2, v0}, Le/a/v4/l0;->a(Ljava/lang/String;)Lx3/b;

    move-result-object p2

    .line 12
    new-instance v0, Le/a/v4/e0;

    invoke-direct {v0, p1}, Le/a/v4/e0;-><init>(Le/a/v4/b0;)V

    invoke-interface {p2, v0}, Lx3/b;->enqueue(Lx3/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/v4/u0/f;->j:Landroid/os/Bundle;

    const-string v1, "qr_partner_name"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extras.getString(QR_PARTNER_NAME, \"\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
