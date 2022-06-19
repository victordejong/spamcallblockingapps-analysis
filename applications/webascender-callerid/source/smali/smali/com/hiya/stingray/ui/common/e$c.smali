.class Lcom/hiya/stingray/ui/common/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/common/e;->p(Ljava/lang/String;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/common/e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/common/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/e$c;->f:Lcom/hiya/stingray/ui/common/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/e$c;->f:Lcom/hiya/stingray/ui/common/e;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
