.class public Ln3/r/a/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/r/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/r/a/k;


# direct methods
.method public constructor <init>(Ln3/r/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/r/a/k$a;->a:Ln3/r/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/r/a/k$a;->a:Ln3/r/a/k;

    invoke-static {v0}, Ln3/r/a/k;->access$100(Ln3/r/a/k;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Ln3/r/a/k$a;->a:Ln3/r/a/k;

    invoke-static {v1}, Ln3/r/a/k;->access$000(Ln3/r/a/k;)Landroid/app/Dialog;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
