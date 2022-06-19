.class final Lcom/hiya/client/callerid/ui/incallui/e$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/e$f;->b(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/a0/c$a;

.field final synthetic g:Lcom/hiya/client/callerid/ui/incallui/e$f;

.field final synthetic h:Lcom/google/android/material/bottomsheet/a;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/a0/c$a;Lcom/hiya/client/callerid/ui/incallui/e$f;Lcom/google/android/material/bottomsheet/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$f$a;->f:Lcom/hiya/client/callerid/ui/a0/c$a;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/incallui/e$f$a;->g:Lcom/hiya/client/callerid/ui/incallui/e$f;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/incallui/e$f$a;->h:Lcom/google/android/material/bottomsheet/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$f$a;->g:Lcom/hiya/client/callerid/ui/incallui/e$f;

    iget-object p1, p1, Lcom/hiya/client/callerid/ui/incallui/e$f;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/incallui/e;->b1(Lcom/hiya/client/callerid/ui/incallui/e;)Lcom/hiya/client/callerid/ui/incallui/l;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$f$a;->f:Lcom/hiya/client/callerid/ui/a0/c$a;

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/l;->F(Lcom/hiya/client/callerid/ui/a0/c$a;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$f$a;->h:Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p1}, Landroidx/appcompat/app/g;->dismiss()V

    return-void
.end method
