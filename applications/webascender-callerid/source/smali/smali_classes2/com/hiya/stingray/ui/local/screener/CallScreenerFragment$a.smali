.class public final Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/login/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment$a;->a:Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment$a;->a:Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;->g1()Lcom/hiya/stingray/manager/e1;

    move-result-object p1

    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v0

    const-string v1, "call_screener"

    .line 2
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v1, "sms_read_write_permission_deny"

    .line 3
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    const-string v1, "user_prompt_action"

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment$a;->a:Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;

    sget v0, Lcom/hiya/stingray/o;->z3:I

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    const-string v0, "screenerSwitch"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment$a;->a:Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;->g1()Lcom/hiya/stingray/manager/e1;

    move-result-object v0

    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "call_screener"

    .line 2
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "sms_read_write_permission_allow"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "user_prompt_action"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment$a;->a:Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;->h1()Lcom/hiya/stingray/ui/local/screener/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/screener/b;->u(Z)V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment$a;->a:Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;

    sget v2, Lcom/hiya/stingray/o;->z3:I

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/local/screener/CallScreenerFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    const-string v2, "screenerSwitch"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
