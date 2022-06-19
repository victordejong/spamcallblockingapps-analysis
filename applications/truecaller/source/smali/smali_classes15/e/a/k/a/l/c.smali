.class public final Le/a/k/a/l/c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/videocallerid/ui/view/RecordButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/view/RecordButton;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/l/c;->b:Lcom/truecaller/videocallerid/ui/view/RecordButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k/a/l/c;->b:Lcom/truecaller/videocallerid/ui/view/RecordButton;

    invoke-static {v0}, Lcom/truecaller/videocallerid/ui/view/RecordButton;->f1(Lcom/truecaller/videocallerid/ui/view/RecordButton;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2710

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
