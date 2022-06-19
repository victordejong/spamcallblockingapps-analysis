.class final Lcom/hiya/client/callerid/ui/incallui/h$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/h$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/incallui/h$b;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/h$b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/h$b$a;->f:Lcom/hiya/client/callerid/ui/incallui/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h$b$a;->f:Lcom/hiya/client/callerid/ui/incallui/h$b;

    iget-object v0, v0, Lcom/hiya/client/callerid/ui/incallui/h$b;->f:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
