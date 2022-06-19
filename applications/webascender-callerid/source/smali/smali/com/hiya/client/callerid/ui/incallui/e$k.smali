.class final Lcom/hiya/client/callerid/ui/incallui/e$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/e;->h1(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/incallui/e;

.field final synthetic g:Landroid/view/View;

.field final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/e;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$k;->f:Lcom/hiya/client/callerid/ui/incallui/e;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/incallui/e$k;->g:Landroid/view/View;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/incallui/e$k;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "motionEvent"

    .line 1
    invoke-static {p2, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$k;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$k;->f:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/incallui/e;->b1(Lcom/hiya/client/callerid/ui/incallui/e;)Lcom/hiya/client/callerid/ui/incallui/l;

    move-result-object p1

    iget-object p2, p0, Lcom/hiya/client/callerid/ui/incallui/e$k;->h:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/c0/m;->M0(Ljava/lang/CharSequence;)C

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hiya/client/callerid/ui/incallui/l;->Q(C)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$k;->g:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 6
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$k;->f:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/incallui/e;->b1(Lcom/hiya/client/callerid/ui/incallui/e;)Lcom/hiya/client/callerid/ui/incallui/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/incallui/l;->O()V

    :cond_1
    :goto_0
    return v0
.end method
