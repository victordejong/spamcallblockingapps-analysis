.class public final Le/a/k/a/g/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Le/a/k/a/g/f;


# direct methods
.method public constructor <init>(Le/a/k/a/g/f;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/g/n;->a:Le/a/k/a/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x19

    if-ne p2, v1, :cond_0

    .line 1
    iget-object p2, p0, Le/a/k/a/g/n;->a:Le/a/k/a/g/f;

    invoke-virtual {p2}, Le/a/k/a/g/f;->SA()Le/a/k/a/g/w;

    move-result-object p2

    .line 2
    new-instance v1, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;

    .line 3
    sget-object v2, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;->VolumeButton:Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;

    const-string v3, "event"

    .line 4
    invoke-static {p3, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    .line 5
    invoke-direct {v1, v2, p3, v0, p1}, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;-><init>(Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;III)V

    .line 6
    check-cast p2, Le/a/k/a/g/y;

    invoke-virtual {p2, v1}, Le/a/k/a/g/y;->Vj(Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;)V

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method
