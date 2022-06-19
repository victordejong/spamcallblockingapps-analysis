.class final Lcom/hiya/client/callerid/ui/a0/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/h;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/a0/h;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/a0/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/h$c;->f:Lcom/hiya/client/callerid/ui/a0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/h$c;->f:Lcom/hiya/client/callerid/ui/a0/h;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/h;->o()Lcom/hiya/client/callerid/ui/a0/h$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hiya/client/callerid/ui/a0/h$a;->a()V

    :cond_0
    return-void
.end method
