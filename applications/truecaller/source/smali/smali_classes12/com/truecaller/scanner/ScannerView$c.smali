.class public Lcom/truecaller/scanner/ScannerView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/scanner/ScannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/scanner/ScannerView;


# direct methods
.method public constructor <init>(Lcom/truecaller/scanner/ScannerView;Lcom/truecaller/scanner/ScannerView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/scanner/ScannerView$c;->a:Lcom/truecaller/scanner/ScannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/scanner/ScannerView$c;->a:Lcom/truecaller/scanner/ScannerView;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/truecaller/scanner/ScannerView;->c:Z

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/scanner/ScannerView;->a()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/scanner/ScannerView$c;->a:Lcom/truecaller/scanner/ScannerView;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/truecaller/scanner/ScannerView;->c:Z

    return-void
.end method
