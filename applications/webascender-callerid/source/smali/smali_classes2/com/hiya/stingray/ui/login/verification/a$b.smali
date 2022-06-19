.class final Lcom/hiya/stingray/ui/login/verification/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/login/verification/a;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/login/verification/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/login/verification/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a$b;->f:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a$b;->f:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/verification/a;->n()Landroidx/lifecycle/t;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a$b;->f:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/verification/a;->q()Lcom/hiya/stingray/manager/a4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a$b;->f:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/verification/a;->p()Lcom/hiya/stingray/manager/u3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a$b;->f:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/verification/a;->s()Landroidx/lifecycle/t;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_COMPLETED_SELECT_WARNING:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a$b;->f:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/verification/a;->s()Landroidx/lifecycle/t;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_COMPLETED_SELECT:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a$b;->f:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/verification/a;->s()Landroidx/lifecycle/t;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_COMPLETED:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
