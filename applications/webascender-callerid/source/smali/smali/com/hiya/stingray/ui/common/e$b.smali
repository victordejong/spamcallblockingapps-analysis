.class Lcom/hiya/stingray/ui/common/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/common/e;->p(Ljava/lang/String;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/util/g0/c$a;

.field final synthetic g:J

.field final synthetic h:Lcom/hiya/stingray/ui/common/e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/common/e;Lcom/hiya/stingray/util/g0/c$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/e$b;->h:Lcom/hiya/stingray/ui/common/e;

    iput-object p2, p0, Lcom/hiya/stingray/ui/common/e$b;->f:Lcom/hiya/stingray/util/g0/c$a;

    iput-wide p3, p0, Lcom/hiya/stingray/ui/common/e$b;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/common/e$b;->f:Lcom/hiya/stingray/util/g0/c$a;

    const-string v0, "not_now"

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/common/e$b;->h:Lcom/hiya/stingray/ui/common/e;

    iget-object p2, p2, Lcom/hiya/stingray/ui/common/e;->n:Lcom/hiya/stingray/manager/e1;

    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e$b;->f:Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    const-string v1, "user_prompt_action"

    invoke-virtual {p2, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/common/e$b;->h:Lcom/hiya/stingray/ui/common/e;

    iget-object p2, p2, Lcom/hiya/stingray/ui/common/e;->j:Lcom/hiya/stingray/manager/i1;

    iget-wide v0, p0, Lcom/hiya/stingray/ui/common/e$b;->g:J

    invoke-virtual {p2, v0, v1}, Lcom/hiya/stingray/manager/i1;->l(J)V

    .line 4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
