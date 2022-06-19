.class public final synthetic Le/a/u4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/scanner/ScannerView;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/scanner/ScannerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/u4/a;->a:Lcom/truecaller/scanner/ScannerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le/a/u4/a;->a:Lcom/truecaller/scanner/ScannerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method
