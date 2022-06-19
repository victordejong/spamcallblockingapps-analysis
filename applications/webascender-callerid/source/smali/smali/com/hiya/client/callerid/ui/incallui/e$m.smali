.class final Lcom/hiya/client/callerid/ui/incallui/e$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/e;->i1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/incallui/e;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$m;->f:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$m;->f:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/incallui/e;->b1(Lcom/hiya/client/callerid/ui/incallui/e;)Lcom/hiya/client/callerid/ui/incallui/l;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$m;->f:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/l;->z(Landroid/app/Activity;)V

    return-void
.end method
