.class final Lcom/hiya/stingray/ui/t/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/t/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/t/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/t/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/t/a$a;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/t/a$a;->f:Lcom/hiya/stingray/ui/t/a;

    const-string v0, "sad"

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/t/a;->e(Lcom/hiya/stingray/ui/t/a;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/t/a$a;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/t/a;->f(Lcom/hiya/stingray/ui/t/a;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/t/a$a;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/t/a;->j()Lcom/hiya/stingray/manager/u2;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/manager/u2$a;->SAD:Lcom/hiya/stingray/manager/u2$a;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/manager/u2;->b(Lcom/hiya/stingray/manager/u2$a;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/t/a$a;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/t/a;->i()Lcom/hiya/stingray/ui/t/c;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/t/a$a;->f:Lcom/hiya/stingray/ui/t/a;

    invoke-static {v0}, Lcom/hiya/stingray/ui/t/a;->a(Lcom/hiya/stingray/ui/t/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/t/c;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method
