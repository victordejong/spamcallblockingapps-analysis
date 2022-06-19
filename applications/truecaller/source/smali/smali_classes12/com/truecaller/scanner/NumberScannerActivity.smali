.class public Lcom/truecaller/scanner/NumberScannerActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/u4/g;
.implements Le/a/u4/o$a;
.implements Landroid/view/View$OnClickListener;
.implements Le/a/u4/o$b;


# static fields
.field public static final synthetic f:I


# instance fields
.field public a:Le/a/u4/o;

.field public b:Landroid/view/View;

.field public c:Z

.field public d:Z

.field public e:Le/a/u4/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->c:Z

    .line 3
    iput-boolean v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->d:Z

    return-void
.end method


# virtual methods
.method public B0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->a:Le/a/u4/o;

    invoke-interface {v0}, Le/a/u4/o;->onStop()V

    return-void
.end method

.method public H0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->b:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public H8()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->c:Z

    .line 2
    iget-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->a:Le/a/u4/o;

    invoke-interface {v0}, Le/a/u4/o;->onResume()V

    return-void
.end method

.method public L0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->d:Z

    .line 2
    iget-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->a:Le/a/u4/o;

    invoke-interface {v0}, Le/a/u4/o;->onDestroy()V

    return-void
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
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ln3/k/a/b;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a040c

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/truecaller/scanner/NumberScannerActivity;->e:Le/a/u4/e;

    invoke-virtual {p1}, Le/a/u4/e;->m()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0041

    .line 2
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 3
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v0, Le/a/j2;

    invoke-static {p1, v0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    new-instance v0, Le/a/u4/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le/a/u4/d;-><init>(Le/a/j2;Le/a/u4/d$a;)V

    .line 7
    iget-object p1, v0, Le/a/u4/d;->d:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/u4/e;

    .line 8
    iput-object p1, p0, Lcom/truecaller/scanner/NumberScannerActivity;->e:Le/a/u4/e;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 10
    sget-object v0, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;->SCAN_PHONE:Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "scan_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    const v1, 0x7f0a037c

    if-ne v5, v0, :cond_1

    .line 13
    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120eec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120eed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    const v0, 0x7f0a1284

    .line 15
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->b:Landroid/view/View;

    const v0, 0x7f0a040c

    .line 16
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 17
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance v0, Lcom/truecaller/scanner/ScannerManagerImpl;

    iget-object v4, p0, Lcom/truecaller/scanner/NumberScannerActivity;->b:Landroid/view/View;

    invoke-interface {p1}, Le/a/j2;->t2()Le/a/u4/p;

    move-result-object v8

    .line 19
    sget-object v9, Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;->SCANNER_TEXT:Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v2 .. v9}, Lcom/truecaller/scanner/ScannerManagerImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;Le/a/u4/o$a;Le/a/u4/o$b;Le/a/u4/p;Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;)V

    .line 20
    iput-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->a:Le/a/u4/o;

    .line 21
    iget-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->e:Le/a/u4/e;

    .line 22
    iput-object p0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 23
    invoke-interface {p1}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/truecaller/scanner/NumberScannerActivity;->c:Z

    .line 24
    iget-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->e:Le/a/u4/e;

    invoke-virtual {v0, p1}, Le/a/u4/e;->Ij(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->e:Le/a/u4/e;

    invoke-virtual {v0}, Le/a/u2/a/b;->c()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->e:Le/a/u4/e;

    invoke-virtual {v0, p1, p2, p3}, Le/a/u4/e;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->a:Le/a/u4/o;

    invoke-interface {v0}, Le/a/u4/o;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->a:Le/a/u4/o;

    invoke-interface {v0}, Le/a/u4/o;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->a:Le/a/u4/o;

    invoke-interface {v0}, Le/a/u4/o;->onStop()V

    .line 3
    iget-boolean v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->d:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->a:Le/a/u4/o;

    invoke-interface {v0}, Le/a/u4/o;->onDestroy()V

    :cond_0
    return-void
.end method

.method public r3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->e:Le/a/u4/e;

    invoke-virtual {v0}, Le/a/u4/e;->r3()V

    return-void
.end method

.method public sd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/NumberScannerActivity;->e:Le/a/u4/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/a/u4/e;->Ij(Z)V

    return-void
.end method
