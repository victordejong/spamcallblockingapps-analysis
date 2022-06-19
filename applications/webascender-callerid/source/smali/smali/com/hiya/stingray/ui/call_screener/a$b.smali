.class Lcom/hiya/stingray/ui/call_screener/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/call_screener/a;->i(Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;Ljava/lang/String;Lcom/hiya/stingray/ui/call_screener/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/hiya/stingray/ui/call_screener/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/call_screener/a;Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/call_screener/a$b;->h:Lcom/hiya/stingray/ui/call_screener/a;

    iput-object p2, p0, Lcom/hiya/stingray/ui/call_screener/a$b;->f:Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;

    iput-object p3, p0, Lcom/hiya/stingray/ui/call_screener/a$b;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/call_screener/a$b;->f:Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;

    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/a$b;->g:Ljava/lang/String;

    sget-object v1, Lcom/hiya/stingray/ui/call_screener/e;->CONFIRMATION:Lcom/hiya/stingray/ui/call_screener/e;

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->b(Ljava/lang/String;Lcom/hiya/stingray/ui/call_screener/e;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/call_screener/a$b;->h:Lcom/hiya/stingray/ui/call_screener/a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/a$b;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/call_screener/a;->b(Lcom/hiya/stingray/ui/call_screener/a;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/call_screener/a$b;->h:Lcom/hiya/stingray/ui/call_screener/a;

    const-string v0, "allow_yes"

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/call_screener/a;->a(Lcom/hiya/stingray/ui/call_screener/a;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/call_screener/a$b;->h:Lcom/hiya/stingray/ui/call_screener/a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/a$b;->f:Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;

    iget-object v0, v0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;->leftButton:Landroid/widget/Button;

    const-string v1, "ok"

    invoke-static {p1, v0, v1}, Lcom/hiya/stingray/ui/call_screener/a;->c(Lcom/hiya/stingray/ui/call_screener/a;Landroid/widget/Button;Ljava/lang/String;)V

    return-void
.end method
