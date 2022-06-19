.class final Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e$a;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e$a;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;

    iget-object p1, p1, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    sget v0, Lcom/hiya/stingray/o;->s:I

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->m()V

    return-void
.end method
