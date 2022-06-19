.class public Lcom/hiya/stingray/manager/o2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/q/d/f;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/d/f;)V
    .locals 1

    const-string v0, "pref"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    return-void
.end method

.method private final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this.pref.getFraudDialog\u2026alue(sharedPreferenceKey)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this.pref.getPrivateDial\u2026alue(sharedPreferenceKey)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this.pref.getSpamDialogP\u2026alue(sharedPreferenceKey)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public A(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    const v1, 0x7f11034e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->p(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public B(Landroid/content/Context;)Z
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f11034f

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026tings_call_key_spam_call)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/o2;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public C(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    const v1, 0x7f110351

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->p(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public D(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->A(Z)V

    return-void
.end method

.method public E(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    const v1, 0x7f110346

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/q/d/f;->M(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public F(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/q/d/f;->N(Ljava/lang/String;Z)V

    return-void
.end method

.method public G(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    const v1, 0x7f110347

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/q/d/f;->N(Ljava/lang/String;Z)V

    return-void
.end method

.method public H(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/q/d/f;->B(J)V

    return-void
.end method

.method public I(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    const v1, 0x7f11034b

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/q/d/f;->N(Ljava/lang/String;Z)V

    return-void
.end method

.method public J(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    const v1, 0x7f11034c

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/q/d/f;->M(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public K(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    const v1, 0x7f11034d

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/q/d/f;->N(Ljava/lang/String;Z)V

    return-void
.end method

.method public L(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    const v1, 0x7f11034e

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/q/d/f;->N(Ljava/lang/String;Z)V

    return-void
.end method

.method public M(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->I(Z)V

    return-void
.end method

.method public N(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->J(Z)V

    return-void
.end method

.method public O(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    const v1, 0x7f11034f

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/q/d/f;->M(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->O(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/hiya/stingray/util/y;->g(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Formatted phone number has invalid length."

    .line 4
    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public Q(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->P(Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "it.resources.getStringAr\u2026ings_values\n            )"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 2
    aget-object p2, v0, p2

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/manager/o2;->E(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 3
    aget-object p2, v0, p2

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/manager/o2;->E(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "it.resources.getStringAr\u2026ings_values\n            )"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 2
    aget-object p2, v0, p2

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/manager/o2;->O(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 3
    aget-object p2, v0, p2

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/manager/o2;->O(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->s()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    const-string v0, "allow_send_block_events"

    .line 1
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/manager/o2;->j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    const-string v0, "allow_send_is_contact"

    .line 1
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/manager/o2;->j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    const-string v0, "allow_send_phone_events"

    .line 1
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/manager/o2;->j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    const-string v0, "allow_send_phone_number"

    .line 1
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/manager/o2;->j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    const-string v0, "allow_send_text_events"

    .line 1
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/manager/o2;->j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->p(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public k()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->k()I

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->Q()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->R()Z

    move-result v0

    return v0
.end method

.method public q(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->p(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->u()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "this.pref.isUserNumberVerified"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/o2;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->t()Z

    move-result v0

    return v0
.end method

.method public u(Landroid/content/Context;)Z
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f110346

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026call_key_fraud_scam_call)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/o2;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    const v1, 0x7f110347

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->p(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public w(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    const v1, 0x7f110349

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/q/d/f;->q(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public x(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    const v1, 0x7f11034b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->p(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public y(Landroid/content/Context;)Z
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f11034c

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "it.getString(R.string.se\u2026call_key_private_message)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/o2;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public z(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o2;->a:Lcom/hiya/stingray/q/d/f;

    const v1, 0x7f11034d

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/q/d/f;->q(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
