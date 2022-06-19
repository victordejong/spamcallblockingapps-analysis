.class public final Le/a/u4/s/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/u4/s/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/a/u4/s/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/u4/m;

.field public final c:Le/a/p5/c0;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/u4/s/b;Le/a/u4/m;Le/a/p5/c0;Ljava/lang/String;)V
    .locals 1

    const-string v0, "barcodeCaptureView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scannerHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "barcodeDisplayValue"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/u4/s/c$a;->b:Le/a/u4/m;

    iput-object p3, p0, Le/a/u4/s/c$a;->c:Le/a/p5/c0;

    iput-object p4, p0, Le/a/u4/s/c$a;->d:Ljava/lang/String;

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Le/a/u4/s/c$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u4/s/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u4/s/b;

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Le/a/u4/s/c$a;->b:Le/a/u4/m;

    iget-object v2, p0, Le/a/u4/s/c$a;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Le/a/u4/m;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "InvalidQR"

    .line 3
    invoke-interface {v0, v1}, Le/a/u4/s/b;->L2(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/u4/s/c$a;->c:Le/a/p5/c0;

    const v3, 0x7f120eee

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026tring.scanner_invalid_qr)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/u4/s/b;->l(Ljava/lang/String;)V

    goto :goto_2

    .line 5
    :cond_0
    invoke-interface {v0}, Le/a/u4/s/b;->H0()V

    .line 6
    iget-object v1, p0, Le/a/u4/s/c$a;->d:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    iget-object v2, p0, Le/a/u4/s/c$a;->d:Ljava/lang/String;

    const-string v3, "extra_barcode_value"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Le/a/u4/s/b;->Y0(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Le/a/u4/s/b;->Y0(Landroid/content/Intent;I)V

    :goto_1
    const-string v1, "ValidQR"

    .line 11
    invoke-interface {v0, v1}, Le/a/u4/s/b;->L2(Ljava/lang/String;)V

    .line 12
    invoke-interface {v0}, Le/a/u4/s/b;->B0()V

    .line 13
    invoke-interface {v0}, Le/a/u4/s/b;->L0()V

    :cond_3
    :goto_2
    return-void
.end method
