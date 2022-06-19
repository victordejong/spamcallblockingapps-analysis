.class Lcom/hiya/stingray/ui/login/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/login/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/login/i;->u(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/login/i;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/login/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/login/i$a;->a:Lcom/hiya/stingray/ui/login/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/i$a;->a:Lcom/hiya/stingray/ui/login/i;

    iget-object p1, p1, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast p1, Lcom/hiya/stingray/ui/login/j;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/login/j;->h()V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/i$a;->a:Lcom/hiya/stingray/ui/login/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/login/i;->t(Lcom/hiya/stingray/ui/login/i;Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/i$a;->a:Lcom/hiya/stingray/ui/login/i;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/i;->A()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/i$a;->a:Lcom/hiya/stingray/ui/login/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/login/i;->t(Lcom/hiya/stingray/ui/login/i;Z)V

    return-void
.end method
