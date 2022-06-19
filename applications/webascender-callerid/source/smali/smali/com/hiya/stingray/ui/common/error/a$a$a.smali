.class Lcom/hiya/stingray/ui/common/error/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/common/error/a$a;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/common/error/a$a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/common/error/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/error/a$a$a;->f:Lcom/hiya/stingray/ui/common/error/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/error/a$a$a;->f:Lcom/hiya/stingray/ui/common/error/a$a;

    iget-object p1, p1, Lcom/hiya/stingray/ui/common/error/a$a;->b:Lcom/hiya/stingray/ui/common/error/a;

    iget-object v0, p1, Lcom/hiya/stingray/ui/common/error/b;->A:Lcom/hiya/stingray/exception/a;

    iget-object p1, p1, Lcom/hiya/stingray/ui/common/error/b;->B:Lg/g/a/a/e;

    .line 2
    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->t1(Lcom/hiya/stingray/exception/a;Lg/g/a/a/e;)Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/error/a$a$a;->f:Lcom/hiya/stingray/ui/common/error/a$a;

    iget-object v0, v0, Lcom/hiya/stingray/ui/common/error/a$a;->b:Lcom/hiya/stingray/ui/common/error/a;

    const-string v1, "ERROR_DEBUGGER_ALERT_DIALOG"

    invoke-static {v0, p1, v1}, Lcom/hiya/stingray/ui/common/error/a;->v1(Lcom/hiya/stingray/ui/common/error/a;Landroidx/fragment/app/d;Ljava/lang/String;)V

    return-void
.end method
