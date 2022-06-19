.class public final Lcom/hiya/stingray/ui/login/verification/a;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/login/verification/a$a;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/google/firebase/auth/s$a;

.field private f:Ljava/lang/String;

.field public g:Li/c/b0/c/a;

.field public h:Lcom/hiya/stingray/manager/l1;

.field public i:Lcom/hiya/stingray/manager/u3;

.field public j:Lcom/hiya/stingray/q/d/f;

.field public k:Lcom/hiya/stingray/manager/e1;

.field public l:Lcom/hiya/stingray/manager/o3;

.field public m:Lcom/hiya/stingray/manager/a4;

.field public n:Ljava/lang/String;

.field public o:Lcom/hiya/stingray/manager/o2;

.field private final p:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Lcom/hiya/stingray/ui/login/verification/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 3

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->d:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->f:Ljava/lang/String;

    .line 4
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->p:Landroidx/lifecycle/t;

    .line 5
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->q:Landroidx/lifecycle/t;

    .line 6
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->r:Landroidx/lifecycle/t;

    .line 7
    sget-object v1, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;->ONBAORDING:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    iput-object v1, p0, Lcom/hiya/stingray/ui/login/verification/a;->s:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    .line 8
    invoke-static {p1}, Lcom/hiya/stingray/s/a;->b(Landroid/content/Context;)Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->S(Lcom/hiya/stingray/ui/login/verification/a;)V

    .line 9
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a;->o:Lcom/hiya/stingray/manager/o2;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/o2;->s()Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a;->l:Lcom/hiya/stingray/manager/o3;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Lcom/hiya/stingray/manager/o3;->c(Z)V

    return-void

    :cond_0
    const-string p1, "phoneNumberVerificationManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "deviceUserInfoManager"

    .line 11
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public static final synthetic g(Lcom/hiya/stingray/ui/login/verification/a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/verification/a;->o()Z

    move-result p0

    return p0
.end method

.method public static final synthetic h(Lcom/hiya/stingray/ui/login/verification/a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/login/verification/a;->t(Ljava/lang/Exception;)V

    return-void
.end method

.method public static final synthetic i(Lcom/hiya/stingray/ui/login/verification/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/verification/a;->u()V

    return-void
.end method

.method public static final synthetic j(Lcom/hiya/stingray/ui/login/verification/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/login/verification/a;->v(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic k(Lcom/hiya/stingray/ui/login/verification/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic l(Lcom/hiya/stingray/ui/login/verification/a;Lcom/google/firebase/auth/q;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/login/verification/a;->x(Lcom/google/firebase/auth/q;Landroid/app/Activity;)V

    return-void
.end method

.method private final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->h:Lcom/hiya/stingray/manager/l1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v3, v3, v2, v1}, Lcom/hiya/stingray/manager/l1;->c(Lcom/hiya/stingray/manager/l1;ZZILjava/lang/Object;)Li/c/b0/b/e;

    move-result-object v0

    const-wide/16 v2, 0x3

    .line 3
    invoke-virtual {v0, v2, v3}, Li/c/b0/b/e;->C(J)Li/c/b0/b/e;

    move-result-object v0

    .line 4
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v0, v2}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 5
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v0, v2}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 6
    new-instance v2, Lcom/hiya/stingray/ui/login/verification/a$b;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/login/verification/a$b;-><init>(Lcom/hiya/stingray/ui/login/verification/a;)V

    .line 7
    new-instance v3, Lcom/hiya/stingray/ui/login/verification/a$c;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/login/verification/a$c;-><init>(Lcom/hiya/stingray/ui/login/verification/a;)V

    .line 8
    invoke-virtual {v0, v2, v3}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/hiya/stingray/ui/login/verification/a;->g:Li/c/b0/c/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void

    :cond_0
    const-string v0, "compositeDisposable"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "authenticationManager"

    .line 10
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->o:Lcom/hiya/stingray/manager/o2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o2;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->s:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;->SETTINGS:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "deviceUserInfoManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final t(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->q:Landroidx/lifecycle/t;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 2
    instance-of p1, p1, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a;->p:Landroidx/lifecycle/t;

    sget-object v0, Lcom/hiya/stingray/ui/login/verification/a$a;->INVALID_VERIFICATION_CODE:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a;->r:Landroidx/lifecycle/t;

    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/verification/a;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a;->p:Landroidx/lifecycle/t;

    sget-object v0, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_FAILED:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a;->r:Landroidx/lifecycle/t;

    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/verification/a;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/login/verification/a;->v(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/verification/a;->m()V

    return-void
.end method

.method private final v(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    iget-object v2, p0, Lcom/hiya/stingray/ui/login/verification/a;->n:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {p1, v1}, Lcom/hiya/stingray/util/y;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PhoneNumberUtil.formatPh\u2026berToE164(number, simIso)"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/login/verification/a;->o:Lcom/hiya/stingray/manager/o2;

    const-string v2, "deviceUserInfoManager"

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/manager/o2;->P(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/ui/login/verification/a;->o:Lcom/hiya/stingray/manager/o2;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/manager/o2;->Q(Z)V

    .line 5
    invoke-static {p1}, Lcom/hiya/stingray/util/y;->g(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Formatted phone number has invalid length."

    .line 7
    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 9
    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p1, "simIso"

    .line 10
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3
.end method

.method private final x(Lcom/google/firebase/auth/q;Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->i(Lcom/google/firebase/auth/c;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/login/verification/a$d;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/login/verification/a$d;-><init>(Lcom/hiya/stingray/ui/login/verification/a;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/g;->c(Landroid/app/Activity;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 10

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a;->p:Landroidx/lifecycle/t;

    sget-object p2, Lcom/hiya/stingray/ui/login/verification/a$a;->INVALID_PHONE_NUMBER:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a;->r:Landroidx/lifecycle/t;

    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/verification/a;->o()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->q:Landroidx/lifecycle/t;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a;->f:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/firebase/auth/s;->b()Lcom/google/firebase/auth/s;

    move-result-object v2

    const-wide/16 v4, 0x5

    .line 7
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    new-instance v8, Lcom/hiya/stingray/ui/login/verification/a$e;

    invoke-direct {v8, p0, p1, p2}, Lcom/hiya/stingray/ui/login/verification/a$e;-><init>(Lcom/hiya/stingray/ui/login/verification/a;Ljava/lang/String;Landroid/app/Activity;)V

    .line 9
    iget-object v9, p0, Lcom/hiya/stingray/ui/login/verification/a;->e:Lcom/google/firebase/auth/s$a;

    move-object v3, p1

    move-object v7, p2

    .line 10
    invoke-virtual/range {v2 .. v9}, Lcom/google/firebase/auth/s;->d(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lcom/google/firebase/auth/s$b;Lcom/google/firebase/auth/s$a;)V

    return-void
.end method

.method protected d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->g:Li/c/b0/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/c/b0/c/a;->dispose()V

    return-void

    :cond_0
    const-string v0, "compositeDisposable"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final n()Landroidx/lifecycle/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->q:Landroidx/lifecycle/t;

    return-object v0
.end method

.method public final p()Lcom/hiya/stingray/manager/u3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->i:Lcom/hiya/stingray/manager/u3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "premiumManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final q()Lcom/hiya/stingray/manager/a4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->m:Lcom/hiya/stingray/manager/a4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "selectManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final r()Landroidx/lifecycle/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->r:Landroidx/lifecycle/t;

    return-object v0
.end method

.method public final s()Landroidx/lifecycle/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/t<",
            "Lcom/hiya/stingray/ui/login/verification/a$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->p:Landroidx/lifecycle/t;

    return-object v0
.end method

.method public final w(Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a;->s:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->r:Landroidx/lifecycle/t;

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;->ONBAORDING:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final y(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->q:Landroidx/lifecycle/t;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/firebase/auth/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/q;

    move-result-object p1

    const-string v0, "PhoneAuthProvider.getCre\u2026ial(verificationId, code)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/login/verification/a;->x(Lcom/google/firebase/auth/q;Landroid/app/Activity;)V

    return-void
.end method

.method public final z(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->f:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a;->p:Landroidx/lifecycle/t;

    sget-object v0, Lcom/hiya/stingray/ui/login/verification/a$a;->INVALID_PHONE_NUMBER:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a;->r:Landroidx/lifecycle/t;

    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/verification/a;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/hiya/stingray/ui/login/verification/a;->A(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
