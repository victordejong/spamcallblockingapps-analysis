.class public final Lcom/hiya/stingray/ui/login/verification/a$e;
.super Lcom/google/firebase/auth/s$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/login/verification/a;->A(Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/hiya/stingray/ui/login/verification/a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/login/verification/a;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->b:Lcom/hiya/stingray/ui/login/verification/a;

    iput-object p2, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->d:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/firebase/auth/s$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/google/firebase/auth/s$a;)V
    .locals 1

    const-string v0, "verificationId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->b:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-static {p2, p1}, Lcom/hiya/stingray/ui/login/verification/a;->k(Lcom/hiya/stingray/ui/login/verification/a;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->b:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/a;->s()Landroidx/lifecycle/t;

    move-result-object p1

    sget-object p2, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_CODE_SENT:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->b:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/a;->n()Landroidx/lifecycle/t;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/google/firebase/auth/q;)V
    .locals 2

    const-string v0, "credential"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->b:Lcom/hiya/stingray/ui/login/verification/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/login/verification/a;->j(Lcom/hiya/stingray/ui/login/verification/a;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->b:Lcom/hiya/stingray/ui/login/verification/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->d:Landroid/app/Activity;

    invoke-static {v0, p1, v1}, Lcom/hiya/stingray/ui/login/verification/a;->l(Lcom/hiya/stingray/ui/login/verification/a;Lcom/google/firebase/auth/q;Landroid/app/Activity;)V

    return-void
.end method

.method public d(Lcom/google/firebase/FirebaseException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuthException;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR_INVALID_PHONE_NUMBER"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->b:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/a;->s()Landroidx/lifecycle/t;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/ui/login/verification/a$a;->INVALID_PHONE_NUMBER:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->b:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/a;->r()Landroidx/lifecycle/t;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->b:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-static {v0}, Lcom/hiya/stingray/ui/login/verification/a;->g(Lcom/hiya/stingray/ui/login/verification/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->b:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/a;->n()Landroidx/lifecycle/t;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->b:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/a;->s()Landroidx/lifecycle/t;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_FAILED:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->b:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/a;->r()Landroidx/lifecycle/t;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->b:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-static {v0}, Lcom/hiya/stingray/ui/login/verification/a;->g(Lcom/hiya/stingray/ui/login/verification/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a$e;->b:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/a;->n()Landroidx/lifecycle/t;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
