.class public Ln3/r/a/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Ln3/r/a/k$c;->a:Ln3/r/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/r/a/k$c;->a:Ln3/r/a/k;

    invoke-static {p1}, Ln3/r/a/k;->access$000(Ln3/r/a/k;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/r/a/k$c;->a:Ln3/r/a/k;

    invoke-static {p1}, Ln3/r/a/k;->access$000(Ln3/r/a/k;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln3/r/a/k;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
