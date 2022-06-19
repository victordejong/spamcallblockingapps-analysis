.class Lcom/hiya/stingray/ui/common/e$a;
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

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/hiya/stingray/ui/common/e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/common/e;Lcom/hiya/stingray/util/g0/c$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/e$a;->h:Lcom/hiya/stingray/ui/common/e;

    iput-object p2, p0, Lcom/hiya/stingray/ui/common/e$a;->f:Lcom/hiya/stingray/util/g0/c$a;

    iput-object p3, p0, Lcom/hiya/stingray/ui/common/e$a;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/e$a;->f:Lcom/hiya/stingray/util/g0/c$a;

    const-string p2, "update"

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/e$a;->h:Lcom/hiya/stingray/ui/common/e;

    iget-object p1, p1, Lcom/hiya/stingray/ui/common/e;->n:Lcom/hiya/stingray/manager/e1;

    iget-object p2, p0, Lcom/hiya/stingray/ui/common/e$a;->f:Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {p2}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p2

    const-string v0, "user_prompt_action"

    invoke-virtual {p1, v0, p2}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/e$a;->h:Lcom/hiya/stingray/ui/common/e;

    iget-object p2, p0, Lcom/hiya/stingray/ui/common/e$a;->g:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/hiya/stingray/ui/common/e;->y(Lcom/hiya/stingray/ui/common/e;Ljava/lang/String;)V

    return-void
.end method
