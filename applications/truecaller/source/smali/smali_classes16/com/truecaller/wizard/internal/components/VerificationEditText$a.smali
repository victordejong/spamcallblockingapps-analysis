.class public Lcom/truecaller/wizard/internal/components/VerificationEditText$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/wizard/internal/components/VerificationEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/wizard/internal/components/VerificationEditText;


# direct methods
.method public constructor <init>(Lcom/truecaller/wizard/internal/components/VerificationEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText$a;->a:Lcom/truecaller/wizard/internal/components/VerificationEditText;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText$a;->a:Lcom/truecaller/wizard/internal/components/VerificationEditText;

    .line 2
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText$a;->a:Lcom/truecaller/wizard/internal/components/VerificationEditText;

    .line 5
    iget-object v0, p1, Lcom/truecaller/wizard/internal/components/VerificationEditText;->f:Lcom/truecaller/wizard/internal/components/VerificationEditText$b;

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p1, Lcom/truecaller/wizard/internal/components/VerificationEditText;->c:Landroid/widget/EditText;

    .line 7
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText$a;->a:Lcom/truecaller/wizard/internal/components/VerificationEditText;

    .line 10
    iget-object v0, v0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->f:Lcom/truecaller/wizard/internal/components/VerificationEditText$b;

    .line 11
    invoke-interface {v0, p1}, Lcom/truecaller/wizard/internal/components/VerificationEditText$b;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
