.class public final Le/a/u4/s/c;
.super Le/a/u4/s/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/u4/s/c$a;
    }
.end annotation


# instance fields
.field public final b:Landroid/os/Handler;

.field public final c:Le/a/p5/c0;

.field public final d:Le/a/u4/m;

.field public final e:Le/a/p5/a0;

.field public final f:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/u4/m;Le/a/p5/a0;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scannerHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u4/s/a;-><init>()V

    iput-object p1, p0, Le/a/u4/s/c;->c:Le/a/p5/c0;

    iput-object p2, p0, Le/a/u4/s/c;->d:Le/a/u4/m;

    iput-object p3, p0, Le/a/u4/s/c;->e:Le/a/p5/a0;

    iput-object p4, p0, Le/a/u4/s/c;->f:Le/a/q2/a;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Le/a/u4/s/c;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public Hj(Ljava/lang/String;)V
    .locals 4

    const-string v0, "actionType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u4/s/c;->f:Le/a/q2/a;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Action"

    .line 3
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "View"

    const-string v2, "Fullscreen"

    .line 4
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Le/a/q2/g$b$a;

    const/4 v2, 0x0

    const-string v3, "SdkScanner"

    invoke-direct {p1, v3, v2, v1, v2}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v1, "AnalyticsEvent.Builder(S\u2026\n                .build()"

    .line 6
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public Ij(Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 5

    const-string v0, "barcode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/u4/s/b;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Le/a/u4/s/c$a;

    iget-object v2, p0, Le/a/u4/s/c;->d:Le/a/u4/m;

    iget-object v3, p0, Le/a/u4/s/c;->c:Le/a/p5/c0;

    iget-object p1, p1, Lcom/google/android/gms/vision/barcode/Barcode;->c:Ljava/lang/String;

    const-string v4, "barcode.displayValue"

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2, v3, p1}, Le/a/u4/s/c$a;-><init>(Le/a/u4/s/b;Le/a/u4/m;Le/a/p5/c0;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/u4/s/c;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final Jj()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/u4/s/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/u4/s/c;->c:Le/a/p5/c0;

    const v2, 0x7f120ee7

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026scanner_CameraRequiredQR)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/u4/s/b;->l(Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Le/a/u4/s/b;->close()V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le/a/u4/s/b;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/u4/s/c;->e:Le/a/p5/a0;

    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Le/a/u4/s/b;->g([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    const-string v0, "CloseCamera"

    .line 1
    invoke-virtual {p0, v0}, Le/a/u4/s/c;->Hj(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/u4/s/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u4/s/b;->close()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "grantResults"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/u4/s/b;

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 2
    array-length p1, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    aget p1, p3, v1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    invoke-interface {p2}, Le/a/u4/s/b;->W8()V

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0}, Le/a/u4/s/c;->Jj()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u4/s/c;->e:Le/a/p5/a0;

    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/u4/s/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u4/s/b;->W8()V

    :cond_0
    return-void
.end method

.method public r3()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/u4/s/c;->Jj()V

    return-void
.end method

.method public sd()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/u4/s/b;

    if-eqz v0, :cond_0

    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Le/a/u4/s/b;->g([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
