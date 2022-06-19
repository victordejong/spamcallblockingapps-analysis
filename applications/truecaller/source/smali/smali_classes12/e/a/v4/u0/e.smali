.class public final Le/a/v4/u0/e;
.super Le/a/v4/u0/h;
.source "SourceFile"

# interfaces
.implements Le/a/v4/u0/g;
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/v4/u0/h;",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Lcom/truecaller/android/sdk/TrueResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Lcom/truecaller/android/sdk/PartnerInformation;

.field public final j:Le/a/t/b/c/c;

.field public k:Le/a/r2/a;

.field public l:Lcom/truecaller/android/sdk/TrueResponse;

.field public m:Z

.field public final n:Ls1/w/f;

.field public final o:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/v4/y;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Le/a/r2/j;

.field public final q:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/r2/f;Le/a/r2/j;Landroid/content/pm/PackageManager;Le/a/v4/l;Le/a/v4/v;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Landroid/os/Bundle;",
            "Le/a/b0/o/a;",
            "Le/a/b0/e/r/a;",
            "Le/a/r2/f<",
            "Le/a/v4/y;",
            ">;",
            "Le/a/r2/j;",
            "Landroid/content/pm/PackageManager;",
            "Le/a/v4/l;",
            "Le/a/v4/v;",
            ")V"
        }
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiThread"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTrackerHolder"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkAccountManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p8

    move-object v5, p9

    .line 1
    invoke-direct/range {v0 .. v5}, Le/a/v4/u0/h;-><init>(Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/l;Le/a/v4/v;)V

    iput-object p1, p0, Le/a/v4/u0/e;->n:Ls1/w/f;

    iput-object p5, p0, Le/a/v4/u0/e;->o:Le/a/r2/f;

    iput-object p6, p0, Le/a/v4/u0/e;->p:Le/a/r2/j;

    iput-object p7, p0, Le/a/v4/u0/e;->q:Landroid/content/pm/PackageManager;

    .line 2
    new-instance p1, Lcom/truecaller/android/sdk/PartnerInformation;

    invoke-direct {p1, p2}, Lcom/truecaller/android/sdk/PartnerInformation;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Le/a/v4/u0/e;->i:Lcom/truecaller/android/sdk/PartnerInformation;

    .line 3
    new-instance p1, Le/a/t/b/c/c;

    const-string p3, "truesdk flags"

    const/4 p4, 0x0

    .line 4
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    const-string p5, "truesdk_consent_title"

    .line 5
    invoke-virtual {p2, p5, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p4

    .line 6
    new-instance p5, Lcom/truecaller/android/sdk/clients/CustomDataBundle;

    invoke-direct {p5, p2}, Lcom/truecaller/android/sdk/clients/CustomDataBundle;-><init>(Landroid/os/Bundle;)V

    .line 7
    invoke-direct {p1, p3, p4, p5}, Le/a/t/b/c/c;-><init>(IILcom/truecaller/android/sdk/clients/CustomDataBundle;)V

    iput-object p1, p0, Le/a/v4/u0/e;->j:Le/a/t/b/c/c;

    return-void
.end method


# virtual methods
.method public C()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v1, "PARTNERINFO_TRUESDK_VERSION"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "extras.getString(Partner\u2026n.TRUESDK_VERSION) ?: \"0\""

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "0.5"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 4
    new-instance v0, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v1, Lcom/truecaller/android/sdk/TrueError;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    iput-object v0, p0, Le/a/v4/u0/e;->l:Lcom/truecaller/android/sdk/TrueResponse;

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public D()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/v4/u0/h;->h:Le/a/v4/v;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    const-string v1, "ApplicationBase.getAppBase()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v1, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v2, Lcom/truecaller/android/sdk/TrueError;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    iput-object v1, p0, Le/a/v4/u0/e;->l:Lcom/truecaller/android/sdk/TrueResponse;

    :cond_0
    return v0
.end method

.method public final E(Le/a/r2/d0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/d0<",
            "Lcom/truecaller/android/sdk/TrueResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/v4/u0/e;->k:Le/a/r2/a;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/v4/u0/e;->o:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v4/y;

    .line 3
    iget-object v1, p0, Le/a/v4/u0/e;->i:Lcom/truecaller/android/sdk/PartnerInformation;

    .line 4
    invoke-interface {v0, v1}, Le/a/v4/y;->a(Lcom/truecaller/android/sdk/PartnerInformation;)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/v4/u0/e;->p:Le/a/r2/j;

    invoke-virtual {v0, v1, p1}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object p1

    iput-object p1, p0, Le/a/v4/u0/e;->k:Le/a/r2/a;

    :cond_0
    return-void
.end method

.method public final F()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/a/v4/u0/h;->b:Z

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Le/a/v4/u0/e;->l:Lcom/truecaller/android/sdk/TrueResponse;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Le/a/v4/u0/e;->m:Z

    if-nez v1, :cond_5

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/truecaller/android/sdk/TrueResponse;->trueProfile:Lcom/truecaller/android/sdk/TrueProfile;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 v3, -0x1

    if-eqz v1, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz v1, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    .line 4
    iget-object v0, v0, Lcom/truecaller/android/sdk/TrueResponse;->trueError:Lcom/truecaller/android/sdk/TrueError;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/TrueError;->getErrorType()I

    move-result v2

    .line 5
    :cond_4
    :goto_3
    invoke-virtual {p0, v4, v2}, Le/a/v4/u0/e;->x(II)V

    .line 6
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_5

    .line 7
    invoke-interface {v0}, Le/a/v4/w0/b;->V1()V

    :cond_5
    return-void
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/v4/u0/h;->b:Z

    .line 2
    iget-object v1, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    .line 3
    instance-of v2, v1, Le/a/v4/w0/c;

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0, v0}, Le/a/v4/u0/e;->x(II)V

    .line 5
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Le/a/v4/w0/b;->V1()V

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v0, p0, Le/a/v4/u0/e;->m:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1}, Le/a/v4/w0/b;->S1()V

    .line 9
    :cond_1
    invoke-virtual {p0, p0}, Le/a/v4/u0/e;->E(Le/a/r2/d0;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "android"

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    .line 2
    iput-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    .line 3
    iget-object v0, p0, Le/a/v4/u0/e;->k:Le/a/r2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/r2/a;->b()V

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/e;->i:Lcom/truecaller/android/sdk/PartnerInformation;

    .line 2
    iget-object v0, v0, Lcom/truecaller/android/sdk/PartnerInformation;->sdkVariant:Ljava/lang/String;

    return-object v0
.end method

.method public e()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/v4/u0/e;->m:Z

    .line 2
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/v4/u0/e;->n:Ls1/w/f;

    new-instance v4, Le/a/v4/u0/e$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/v4/u0/e$a;-><init>(Le/a/v4/u0/e;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/u0/e;->i:Lcom/truecaller/android/sdk/PartnerInformation;

    .line 2
    iget-object v0, v0, Lcom/truecaller/android/sdk/PartnerInformation;->truesdkVersion:Ljava/lang/String;

    const-string v1, "partnerInformation.truesdkVersion"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    .line 2
    invoke-interface {v0}, Le/a/v4/u0/k/a;->d()V

    .line 3
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Le/a/v4/w0/b;->M3()V

    .line 5
    instance-of v1, v0, Le/a/v4/w0/c;

    if-eqz v1, :cond_0

    check-cast v0, Le/a/v4/w0/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/v4/w0/c;->T1(Z)V

    .line 6
    :cond_0
    invoke-virtual {p0, p0}, Le/a/v4/u0/e;->E(Le/a/r2/d0;)V

    :cond_1
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/e;->i:Lcom/truecaller/android/sdk/PartnerInformation;

    .line 2
    iget-object v0, v0, Lcom/truecaller/android/sdk/PartnerInformation;->sdkVariantVersion:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/e;->i:Lcom/truecaller/android/sdk/PartnerInformation;

    .line 2
    iget-object v0, v0, Lcom/truecaller/android/sdk/PartnerInformation;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public m()Le/a/t/b/c/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/e;->j:Le/a/t/b/c/c;

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/e;->i:Lcom/truecaller/android/sdk/PartnerInformation;

    .line 2
    iget v0, v0, Lcom/truecaller/android/sdk/PartnerInformation;->theme:I

    return v0
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/a/v4/u0/e;->m:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Le/a/v4/u0/h;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/v4/u0/e;->l:Lcom/truecaller/android/sdk/TrueResponse;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v2, Lcom/truecaller/android/sdk/TrueError;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {v0, v2}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    .line 5
    iput-object v0, p0, Le/a/v4/u0/e;->l:Lcom/truecaller/android/sdk/TrueResponse;

    .line 6
    invoke-virtual {p0, v1, v3}, Le/a/v4/u0/e;->x(II)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 7
    invoke-virtual {p0, v0, v0}, Le/a/v4/u0/e;->x(II)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v2, Lcom/truecaller/android/sdk/TrueError;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {v0, v2}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    .line 9
    iput-object v0, p0, Le/a/v4/u0/e;->l:Lcom/truecaller/android/sdk/TrueResponse;

    .line 10
    invoke-virtual {p0, v1, v3}, Le/a/v4/u0/e;->x(II)V

    .line 11
    :goto_0
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0}, Le/a/v4/w0/b;->V1()V

    :cond_2
    return-void
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/truecaller/android/sdk/TrueResponse;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v1, Lcom/truecaller/android/sdk/TrueError;

    invoke-direct {v1, v0}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {p1, v1}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    .line 3
    :goto_0
    iget-object v1, p1, Lcom/truecaller/android/sdk/TrueResponse;->trueProfile:Lcom/truecaller/android/sdk/TrueProfile;

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v2, :cond_1

    const-string v3, "trueProfile"

    .line 5
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Le/a/v4/w0/b;->o3(Lcom/truecaller/android/sdk/TrueProfile;)V

    .line 6
    :cond_1
    iput-object p1, p0, Le/a/v4/u0/e;->l:Lcom/truecaller/android/sdk/TrueResponse;

    .line 7
    iget-object v1, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v1, :cond_4

    .line 8
    instance-of v2, v1, Le/a/v4/w0/c;

    if-eqz v2, :cond_3

    .line 9
    iget-boolean p1, p1, Lcom/truecaller/android/sdk/TrueResponse;->isSuccessful:Z

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {v1}, Le/a/v4/w0/b;->M3()V

    .line 11
    check-cast v1, Le/a/v4/w0/c;

    invoke-interface {v1, v0}, Le/a/v4/w0/c;->T1(Z)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0, v0, v0}, Le/a/v4/u0/e;->x(II)V

    .line 13
    invoke-interface {v1}, Le/a/v4/w0/b;->V1()V

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Le/a/v4/u0/e;->F()V

    :cond_4
    :goto_1
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/u0/e;->i:Lcom/truecaller/android/sdk/PartnerInformation;

    .line 2
    iget-object v0, v0, Lcom/truecaller/android/sdk/PartnerInformation;->partnerKey:Ljava/lang/String;

    const-string v1, "partnerInformation.partnerKey"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public u()V
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v1, Lcom/truecaller/android/sdk/TrueError;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    .line 2
    iput-object v0, p0, Le/a/v4/u0/e;->l:Lcom/truecaller/android/sdk/TrueResponse;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v2}, Le/a/v4/u0/e;->x(II)V

    .line 4
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/v4/w0/b;->V1()V

    :cond_0
    return-void
.end method

.method public x(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/v4/u0/e;->l:Lcom/truecaller/android/sdk/TrueResponse;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    .line 3
    invoke-interface {v1, p2}, Le/a/v4/u0/k/a;->c(I)V

    .line 4
    iget-object p2, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz p2, :cond_0

    .line 5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-virtual {v0, v2}, Lcom/truecaller/android/sdk/TrueResponse;->writeToBundle(Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9
    invoke-interface {p2, p1, v1}, Le/a/v4/w0/b;->U1(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/v4/u0/e;->q:Landroid/content/pm/PackageManager;

    .line 2
    iget-object v1, p0, Le/a/v4/u0/e;->i:Lcom/truecaller/android/sdk/PartnerInformation;

    .line 3
    iget-object v1, v1, Lcom/truecaller/android/sdk/PartnerInformation;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string v1, "packageManager.getApplic\u2026formation.packageName, 0)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/v4/u0/e;->q:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object v0, p0, Le/a/v4/u0/e;->i:Lcom/truecaller/android/sdk/PartnerInformation;

    .line 6
    iget-object v0, v0, Lcom/truecaller/android/sdk/PartnerInformation;->packageName:Ljava/lang/String;

    const-string v1, "partnerInformation.packageName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
