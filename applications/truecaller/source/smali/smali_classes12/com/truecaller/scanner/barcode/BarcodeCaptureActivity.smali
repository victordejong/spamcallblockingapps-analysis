.class public final Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/u4/s/b;
.implements Landroid/view/View$OnClickListener;
.implements Le/a/u4/s/d$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008D\u0010\u0016J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ%\u0010\u000f\u001a\u00020\u00072\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J\u000f\u0010\u0019\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u0016J\u000f\u0010\u001a\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u0016J-\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0016J!\u0010&\u001a\u00020\u00072\u0008\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010%\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010(\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008(\u0010\u0016J\u000f\u0010)\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008)\u0010\u0016J\u000f\u0010*\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008*\u0010\u0016J\u0017\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020+H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u00100\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00080\u0010!R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00086\u00107R\"\u0010@\u001a\u0002098\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u0016\u0010C\u001a\u00020\u00118\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008A\u0010B\u00a8\u0006E"
    }
    d2 = {
        "Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;",
        "Ln3/b/a/h;",
        "Le/a/u4/s/b;",
        "Landroid/view/View$OnClickListener;",
        "Le/a/u4/s/d$a;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "",
        "permissions",
        "",
        "requestCode",
        "g",
        "([Ljava/lang/String;I)V",
        "Landroid/view/View;",
        "view",
        "onClick",
        "(Landroid/view/View;)V",
        "onStart",
        "()V",
        "onResume",
        "W8",
        "onStop",
        "onDestroy",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "message",
        "l",
        "(Ljava/lang/String;)V",
        "H0",
        "Landroid/content/Intent;",
        "data",
        "resultCode",
        "Y0",
        "(Landroid/content/Intent;I)V",
        "B0",
        "L0",
        "close",
        "Lcom/google/android/gms/vision/barcode/Barcode;",
        "barcode",
        "A9",
        "(Lcom/google/android/gms/vision/barcode/Barcode;)V",
        "actionType",
        "L2",
        "",
        "c",
        "Z",
        "isScannerDestroyed",
        "Le/a/u4/o;",
        "a",
        "Le/a/u4/o;",
        "scannerManager",
        "Le/a/u4/s/a;",
        "d",
        "Le/a/u4/s/a;",
        "getPresenter",
        "()Le/a/u4/s/a;",
        "setPresenter",
        "(Le/a/u4/s/a;)V",
        "presenter",
        "b",
        "Landroid/view/View;",
        "rootView",
        "<init>",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/u4/o;

.field public b:Landroid/view/View;

.field public c:Z

.field public d:Le/a/u4/s/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public A9(Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 1

    const-string v0, "barcode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->d:Le/a/u4/s/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/u4/s/a;->Ij(Lcom/google/android/gms/vision/barcode/Barcode;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public B0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->a:Le/a/u4/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u4/o;->onStop()V

    return-void

    :cond_0
    const-string v0, "scannerManager"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public H0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void

    :cond_0
    const-string v0, "rootView"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public L0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->c:Z

    .line 2
    iget-object v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->a:Le/a/u4/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u4/o;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "scannerManager"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public L2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "actionType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->d:Le/a/u4/s/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/u4/s/a;->Hj(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public W8()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->a:Le/a/u4/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u4/o;->onResume()V

    return-void

    :cond_0
    const-string v0, "scannerManager"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public Y0(Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public g([Ljava/lang/String;I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Ln3/k/a/b;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a040c

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->d:Le/a/u4/s/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/u4/s/a;->m()V

    goto :goto_0

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0022

    .line 2
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    const-string v0, "(application as GraphHolder).objectsGraph"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-class v0, Le/a/j2;

    invoke-static {p1, v0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    new-instance v0, Le/a/u4/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le/a/u4/d;-><init>(Le/a/j2;Le/a/u4/d$a;)V

    .line 6
    iget-object v0, v0, Le/a/u4/d;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u4/s/a;

    .line 7
    iput-object v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->d:Le/a/u4/s/a;

    const v0, 0x7f0a1284

    .line 8
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.topLayout)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->b:Landroid/view/View;

    const v0, 0x7f0a040c

    .line 9
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 10
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v0, Lcom/truecaller/scanner/ScannerManagerImpl;

    .line 12
    iget-object v4, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->b:Landroid/view/View;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;->SCAN_PHONE:Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->d:Le/a/u4/s/a;

    const-string v10, "presenter"

    if-eqz v7, :cond_1

    .line 13
    invoke-interface {p1}, Le/a/j2;->t2()Le/a/u4/p;

    move-result-object v8

    sget-object v9, Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;->SCANNER_QR:Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

    move-object v2, v0

    move-object v3, p0

    .line 14
    invoke-direct/range {v2 .. v9}, Lcom/truecaller/scanner/ScannerManagerImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;Le/a/u4/o$a;Le/a/u4/o$b;Le/a/u4/p;Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;)V

    iput-object v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->a:Le/a/u4/o;

    .line 15
    iget-object p1, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->d:Le/a/u4/s/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Le/a/u2/a/b;->Y0(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_1
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "rootView"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->d:Le/a/u4/s/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->d:Le/a/u4/s/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Le/a/u4/s/a;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->d:Le/a/u4/s/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/u4/s/a;->onResume()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->a:Le/a/u4/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u4/o;->onStart()V

    return-void

    :cond_0
    const-string v0, "scannerManager"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->a:Le/a/u4/o;

    const/4 v1, 0x0

    const-string v2, "scannerManager"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/u4/o;->onStop()V

    .line 3
    iget-boolean v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->c:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;->a:Le/a/u4/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u4/o;->onDestroy()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    .line 5
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
