.class final Lcom/hiya/client/callerid/ui/incallui/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/j;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/incallui/j;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/j$d;->f:Lcom/hiya/client/callerid/ui/incallui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/j$d;->f:Lcom/hiya/client/callerid/ui/incallui/j;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/incallui/j;->b1(Lcom/hiya/client/callerid/ui/incallui/j;)Lcom/hiya/client/callerid/ui/incallui/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/incallui/l;->j()V

    const/4 p1, 0x1

    return p1
.end method
