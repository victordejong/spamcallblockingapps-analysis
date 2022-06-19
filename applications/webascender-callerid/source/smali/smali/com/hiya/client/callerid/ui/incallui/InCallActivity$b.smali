.class final Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/u<",
        "Lcom/hiya/client/callerid/ui/a0/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;->a:Lcom/hiya/client/callerid/ui/incallui/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/a0/c$b;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;->b(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    return-void
.end method

.method public final b(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;->a:Lcom/hiya/client/callerid/ui/incallui/InCallActivity;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Call object is null"

    invoke-static {p1, v1, v0}, Lcom/hiya/client/support/logging/d;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;->a:Lcom/hiya/client/callerid/ui/incallui/InCallActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;->a:Lcom/hiya/client/callerid/ui/incallui/InCallActivity;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->y(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;)I

    move-result v1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->q()I

    move-result v2

    if-eq v1, v2, :cond_b

    .line 4
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;->a:Lcom/hiya/client/callerid/ui/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->q()I

    move-result v2

    invoke-static {v1, v2}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->A(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;I)V

    .line 5
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;->a:Lcom/hiya/client/callerid/ui/incallui/InCallActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State changed to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;->a:Lcom/hiya/client/callerid/ui/incallui/InCallActivity;

    invoke-static {v3}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->y(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->q()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_9

    const/4 v3, 0x4

    if-eq v1, v3, :cond_8

    const/4 v3, 0x7

    if-eq v1, v3, :cond_1

    const/16 v3, 0x9

    if-eq v1, v3, :cond_8

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    goto/16 :goto_1

    .line 7
    :cond_1
    sget-object v1, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/e;->e()Lcom/hiya/client/callerid/ui/d;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->u()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/e;->e()Lcom/hiya/client/callerid/ui/d;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v3

    .line 10
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v4

    .line 11
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->v()Z

    move-result v5

    .line 12
    iget-object v6, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;->a:Lcom/hiya/client/callerid/ui/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->B()Lcom/hiya/client/callerid/ui/a0/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hiya/client/callerid/ui/a0/c;->z()Z

    move-result v6

    .line 13
    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hiya/client/callerid/ui/d;->c(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->v()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;->a:Lcom/hiya/client/callerid/ui/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->B()Lcom/hiya/client/callerid/ui/a0/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/a0/c;->z()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->u()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->p()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-nez v0, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->p()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;->a:Lcom/hiya/client/callerid/ui/incallui/InCallActivity;

    .line 17
    sget-object v1, Lcom/hiya/client/callerid/ui/incallui/h;->m:Lcom/hiya/client/callerid/ui/incallui/h$a;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/hiya/client/callerid/ui/incallui/h$a;->a(Ljava/lang/String;)Lcom/hiya/client/callerid/ui/incallui/h;

    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->z(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 19
    :cond_7
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;->a:Lcom/hiya/client/callerid/ui/incallui/InCallActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 20
    :cond_8
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;->a:Lcom/hiya/client/callerid/ui/incallui/InCallActivity;

    .line 21
    sget-object v1, Lcom/hiya/client/callerid/ui/incallui/e;->j:Lcom/hiya/client/callerid/ui/incallui/e$a;

    .line 22
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {v1, p1}, Lcom/hiya/client/callerid/ui/incallui/e$a;->a(Ljava/lang/String;)Lcom/hiya/client/callerid/ui/incallui/e;

    move-result-object p1

    .line 24
    invoke-static {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->z(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 25
    :cond_9
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;->a:Lcom/hiya/client/callerid/ui/incallui/InCallActivity;

    sget-object v1, Lcom/hiya/client/callerid/ui/incallui/j;->i:Lcom/hiya/client/callerid/ui/incallui/j$a;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/hiya/client/callerid/ui/incallui/j$a;->a(Ljava/lang/String;)Lcom/hiya/client/callerid/ui/incallui/j;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->z(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 26
    :cond_a
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$b;->a:Lcom/hiya/client/callerid/ui/incallui/InCallActivity;

    sget-object v1, Lcom/hiya/client/callerid/ui/incallui/e;->j:Lcom/hiya/client/callerid/ui/incallui/e$a;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/hiya/client/callerid/ui/incallui/e$a;->a(Ljava/lang/String;)Lcom/hiya/client/callerid/ui/incallui/e;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->z(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;Landroidx/fragment/app/Fragment;)V

    :cond_b
    :goto_1
    return-void
.end method
