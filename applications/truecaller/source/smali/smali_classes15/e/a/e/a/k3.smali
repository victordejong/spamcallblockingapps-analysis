.class public Le/a/e/a/k3;
.super Le/a/e/a/u2;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/a/k3$g;,
        Le/a/e/a/k3$e;,
        Le/a/e/a/k3$d;,
        Le/a/e/a/k3$f;,
        Le/a/e/a/k3$h;,
        Le/a/e/a/k3$i;
    }
.end annotation


# static fields
.field public static final synthetic s0:I


# instance fields
.field public final A:Le/a/r5/i0;

.field public final B:Le/a/i/f0/d;

.field public final C:Le/a/i/c/d/a;

.field public final D:Le/a/z4/a;

.field public final E:Le/a/a/i0;

.field public final J:Le/a/p5/a0;

.field public final K:Le/a/u3/g;

.field public final L:Le/a/g3/j;

.field public final M:Le/a/p4/b;

.field public final N:Le/a/l/p2/o0;

.field public final O:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/i3/b;",
            ">;"
        }
    .end annotation
.end field

.field public final P:Le/a/h/p0/c;

.field public final Q:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l4/h;",
            ">;"
        }
    .end annotation
.end field

.field public final R:Le/a/d/f;

.field public final S:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public final T:Le/a/d4/c;

.field public final U:Le/a/c/c0/o;

.field public final V:Le/a/c/c0/k;

.field public final W:Le/a/c/t/a;

.field public final X:Le/a/p5/g;

.field public final Y:Le/a/o/c;

.field public final Z:Le/a/l/c2;

.field public e:Le/a/x3/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/q5/i;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/q5/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final g0:Le/a/h4/n;

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/g0/d;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final h0:Lcom/truecaller/callrecording/CallRecordingManager;

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r4/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final i0:Le/a/x4/j/a;

.field public j:Le/a/r/e/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final j0:Le/a/b/c;

.field public final k:Le/a/h0/t;

.field public final k0:Le/a/b/i/c;

.field public final l:Le/a/h0/j;

.field public final l0:Le/a/q/i/a;

.field public final m:Le/a/k3/l/f;

.field public final m0:Le/a/k/h;

.field public final n:Lcom/truecaller/settings/CallingSettings;

.field public final n0:Le/a/e3/a;

.field public final o:Le/a/z4/d;

.field public final o0:Le/a/k0/f;

.field public final p:Le/a/b0/o/a;

.field public final p0:Z

.field public final q:Le/a/b0/e/r/a;

.field public q0:Le/a/d0/t;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final r:Le/a/c3/d;

.field public final r0:Le/a/f/b;

.field public final s:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Le/a/i4/e;

.field public u:Le/a/p2/i;

.field public v:Lcom/truecaller/referral/ReferralManager;

.field public final w:Le/a/n4/a;

.field public final x:Le/a/y/c/b;

.field public final y:Le/a/f4/b/g/b;

.field public final z:Le/a/b0/e/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/a/e/a/u2;-><init>()V

    .line 2
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v1

    invoke-virtual {v1}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v1

    .line 4
    invoke-interface {v0}, Le/a/j2;->H0()Le/a/h0/t;

    move-result-object v2

    iput-object v2, p0, Le/a/e/a/k3;->k:Le/a/h0/t;

    .line 5
    invoke-interface {v0}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v2

    iput-object v2, p0, Le/a/e/a/k3;->l:Le/a/h0/j;

    .line 6
    invoke-interface {v0}, Le/a/j2;->q0()Le/a/k3/l/f;

    move-result-object v2

    iput-object v2, p0, Le/a/e/a/k3;->m:Le/a/k3/l/f;

    .line 7
    invoke-interface {v0}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v2

    iput-object v2, p0, Le/a/e/a/k3;->n:Lcom/truecaller/settings/CallingSettings;

    .line 8
    invoke-interface {v0}, Le/a/j2;->x4()Le/a/z4/d;

    move-result-object v2

    iput-object v2, p0, Le/a/e/a/k3;->o:Le/a/z4/d;

    .line 9
    invoke-interface {v0}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v2

    iput-object v2, p0, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    .line 10
    invoke-interface {v1}, Le/a/b0/c;->Y()Le/a/b0/e/r/a;

    move-result-object v2

    iput-object v2, p0, Le/a/e/a/k3;->q:Le/a/b0/e/r/a;

    .line 11
    invoke-interface {v1}, Le/a/b0/c;->S2()Le/a/c3/d;

    move-result-object v2

    iput-object v2, p0, Le/a/e/a/k3;->r:Le/a/c3/d;

    .line 12
    invoke-interface {v0}, Le/a/j2;->g7()Le/a/p2/i;

    move-result-object v2

    iput-object v2, p0, Le/a/e/a/k3;->u:Le/a/p2/i;

    .line 13
    invoke-interface {v0}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v2

    iput-object v2, p0, Le/a/e/a/k3;->s:Le/a/r2/f;

    .line 14
    invoke-interface {v0}, Le/a/j2;->O1()Le/a/i4/e;

    move-result-object v2

    iput-object v2, p0, Le/a/e/a/k3;->t:Le/a/i4/e;

    .line 15
    invoke-interface {v0}, Le/a/j2;->n1()Le/a/n4/a;

    move-result-object v2

    iput-object v2, p0, Le/a/e/a/k3;->w:Le/a/n4/a;

    .line 16
    invoke-interface {v0}, Le/a/j2;->A3()Le/a/y/c/b;

    move-result-object v2

    iput-object v2, p0, Le/a/e/a/k3;->x:Le/a/y/c/b;

    .line 17
    invoke-interface {v1}, Le/a/b0/c;->E1()Le/a/f4/b/g/b;

    move-result-object v2

    iput-object v2, p0, Le/a/e/a/k3;->y:Le/a/f4/b/g/b;

    .line 18
    invoke-interface {v1}, Le/a/b0/c;->V()Le/a/b0/e/f;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->z:Le/a/b0/e/f;

    .line 19
    invoke-interface {v0}, Le/a/j2;->P1()Le/a/r5/i0;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->A:Le/a/r5/i0;

    .line 20
    invoke-interface {v0}, Le/a/j2;->h7()Le/a/i/f0/d;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->B:Le/a/i/f0/d;

    .line 21
    invoke-interface {v0}, Le/a/j2;->u5()Le/a/z4/a;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->D:Le/a/z4/a;

    .line 22
    invoke-interface {v0}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->E:Le/a/a/i0;

    .line 23
    invoke-interface {v0}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->J:Le/a/p5/a0;

    .line 24
    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->K:Le/a/u3/g;

    .line 25
    invoke-interface {v0}, Le/a/j2;->Y6()Le/a/g3/j;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->L:Le/a/g3/j;

    .line 26
    invoke-interface {v0}, Le/a/j2;->K6()Le/a/p4/b;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->M:Le/a/p4/b;

    .line 27
    invoke-interface {v0}, Le/a/j2;->H4()Le/a/l/p2/o0;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->N:Le/a/l/p2/o0;

    .line 28
    invoke-interface {v0}, Le/a/j2;->L3()Le/a/r2/f;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->O:Le/a/r2/f;

    .line 29
    sget-object v1, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {v1}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object v1

    invoke-interface {v1}, Le/a/l2;->b()Le/a/h/f/o;

    move-result-object v1

    check-cast v1, Le/a/t1$k;

    invoke-virtual {v1}, Le/a/t1$k;->a()Le/a/h/p0/c;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->P:Le/a/h/p0/c;

    .line 30
    invoke-interface {v0}, Le/a/j2;->b1()Le/a/r2/f;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->Q:Le/a/r2/f;

    .line 31
    invoke-interface {v0}, Le/a/j2;->z()Le/a/d/f;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->R:Le/a/d/f;

    .line 32
    invoke-interface {v0}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->S:Le/a/r2/f;

    .line 33
    invoke-interface {v0}, Le/a/j2;->y2()Le/a/d4/c;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->T:Le/a/d4/c;

    .line 34
    invoke-interface {v0}, Le/a/j2;->O4()Le/a/c/c0/o;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->U:Le/a/c/c0/o;

    .line 35
    invoke-interface {v0}, Le/a/j2;->F1()Le/a/c/c0/k;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->V:Le/a/c/c0/k;

    .line 36
    invoke-interface {v0}, Le/a/j2;->M()Le/a/c/t/a;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->W:Le/a/c/t/a;

    .line 37
    invoke-interface {v0}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->X:Le/a/p5/g;

    .line 38
    invoke-interface {v0}, Le/a/j2;->J()Le/a/o/c;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->Y:Le/a/o/c;

    .line 39
    invoke-interface {v0}, Le/a/j2;->a1()Le/a/h4/n;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->g0:Le/a/h4/n;

    .line 40
    invoke-interface {v0}, Le/a/j2;->F()Le/a/l/c2;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->Z:Le/a/l/c2;

    .line 41
    invoke-interface {v0}, Le/a/j2;->r2()Le/a/i/c/d/a;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->C:Le/a/i/c/d/a;

    .line 42
    invoke-interface {v0}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->h0:Lcom/truecaller/callrecording/CallRecordingManager;

    .line 43
    invoke-interface {v0}, Le/a/j2;->N3()Le/a/x4/j/a;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->i0:Le/a/x4/j/a;

    .line 44
    invoke-interface {v0}, Le/a/j2;->q2()Le/a/b/c;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->j0:Le/a/b/c;

    .line 45
    invoke-interface {v0}, Le/a/j2;->E5()Le/a/q/i/a;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->l0:Le/a/q/i/a;

    .line 46
    invoke-interface {v0}, Le/a/j2;->y()Le/a/k/h;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->m0:Le/a/k/h;

    .line 47
    invoke-interface {v0}, Le/a/j2;->w()Le/a/e3/a;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->n0:Le/a/e3/a;

    .line 48
    invoke-interface {v0}, Le/a/j2;->a6()Le/a/k0/f;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->o0:Le/a/k0/f;

    .line 49
    invoke-interface {v0}, Le/a/j2;->o5()Z

    move-result v1

    iput-boolean v1, p0, Le/a/e/a/k3;->p0:Z

    .line 50
    invoke-interface {v0}, Le/a/j2;->Q2()Le/a/b/i/c;

    move-result-object v1

    iput-object v1, p0, Le/a/e/a/k3;->k0:Le/a/b/i/c;

    .line 51
    invoke-interface {v0}, Le/a/j2;->k7()Le/a/f/b;

    move-result-object v0

    iput-object v0, p0, Le/a/e/a/k3;->r0:Le/a/f/b;

    return-void
.end method


# virtual methods
.method public final AB()V
    .locals 6

    const-string v0, "Allow draw over apps"

    const-string v1, "Set as default dialer"

    const-string v2, "Set as call screening app"

    const-string v3, "Ignore battery optimization"

    const-string v4, "Show request revoked permissions"

    const-string v5, "Missed call reminder"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ln3/b/a/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v2, v1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v3, "Add search warning"

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 4
    new-instance v3, Le/a/e/a/u0;

    invoke-direct {v3, p0}, Le/a/e/a/u0;-><init>(Le/a/e/a/k3;)V

    .line 5
    iput-object v0, v2, Landroidx/appcompat/app/AlertController$b;->q:[Ljava/lang/CharSequence;

    .line 6
    iput-object v3, v2, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    const v0, 0x7f120726

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v0, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 8
    invoke-virtual {v1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public final BB()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "Offhook"

    goto :goto_0

    :cond_1
    const-string v0, "Ringing"

    goto :goto_0

    :cond_2
    const-string v0, "Idle"

    .line 2
    :goto_0
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current native call state is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final CB()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v2, "Enter verification sequence number"

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    const v1, 0x7f0d0422

    .line 3
    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->o(I)Ln3/b/a/g$a;

    const v1, 0x7f120726

    new-instance v2, Le/a/e/a/f0;

    invoke-direct {v2, p0}, Le/a/e/a/f0;-><init>(Le/a/e/a/k3;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v1, 0x7f1206fb

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object v0

    .line 7
    new-instance v1, Le/a/e/a/w1;

    invoke-direct {v1, p0}, Le/a/e/a/w1;-><init>(Le/a/e/a/k3;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final DB()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final EB()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    const-string v0, "Method tracing requires Android O or above"

    .line 2
    invoke-static {p0, v0, v1}, Le/d/c/a/a;->y0(Le/a/e/a/k3;Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string v0, "Method tracing requires a debuggable build"

    .line 3
    invoke-static {p0, v0, v1}, Le/d/c/a/a;->y0(Le/a/e/a/k3;Ljava/lang/String;I)V

    return-void
.end method

.method public final FB(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, Le/a/y2/q/c;->a(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;)Ln3/m0/s;

    return-void
.end method

.method public final GB()V
    .locals 2

    .line 1
    new-instance v0, Le/a/b0/b/g/b;

    invoke-direct {v0}, Le/a/b0/b/g/b;-><init>()V

    invoke-static {v0}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v1

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/a0;

    invoke-interface {v1, v0}, Le/a/q2/a0;->c(Lu3/e0;)Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->g()V

    return-void
.end method

.method public final HB()V
    .locals 12

    .line 1
    new-instance v11, Lcom/truecaller/contactfeedback/db/CommentFeedback;

    sget-object v0, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->UNKNOWN_NUMBER_TYPE:Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x64

    const-string v5, "+460000000"

    const-string v6, "cool_feedback"

    const-string v7, ""

    const-string v8, "PENDING"

    const/4 v9, 0x1

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/truecaller/contactfeedback/db/CommentFeedback;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/e/a/k3;->l0:Le/a/q/i/a;

    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v0, Le/a/q/i/b;

    invoke-virtual {v0, v1}, Le/a/q/i/b;->a(Ljava/util/List;)V

    return-void
.end method

.method public final QA()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v2, "Add edge end-point"

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    const v1, 0x7f0d041f

    .line 3
    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->o(I)Ln3/b/a/g$a;

    const v1, 0x7f120726

    new-instance v2, Le/a/e/a/l0;

    invoke-direct {v2, p0}, Le/a/e/a/l0;-><init>(Le/a/e/a/k3;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v1, 0x7f1206fb

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public final RA()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v2, "Add search warning"

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    const v1, 0x7f0d0427

    .line 3
    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->o(I)Ln3/b/a/g$a;

    const v1, 0x7f120745

    new-instance v2, Le/a/e/a/a2;

    invoke-direct {v2, p0}, Le/a/e/a/a2;-><init>(Le/a/e/a/k3;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v1, 0x7f1206fb

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public final SA()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v2, "Add top spammer"

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    const v1, 0x7f0d0428

    .line 3
    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->o(I)Ln3/b/a/g$a;

    const v1, 0x7f120745

    new-instance v2, Le/a/e/a/u1;

    invoke-direct {v2, p0}, Le/a/e/a/u1;-><init>(Le/a/e/a/k3;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v1, 0x7f1206fb

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public final TA()V
    .locals 5

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v2, "Forced Update Scenario"

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    const-string v2, "Just change the state"

    const-string v3, "Change state and show dialog"

    const-string v4, "Change state and show activity"

    .line 3
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le/a/e/a/d0;

    invoke-direct {v3, p0}, Le/a/e/a/d0;-><init>(Le/a/e/a/k3;)V

    .line 4
    iput-object v2, v1, Landroidx/appcompat/app/AlertController$b;->q:[Ljava/lang/CharSequence;

    .line 5
    iput-object v3, v1, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public final UA()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/a/k3;->k0:Le/a/b/i/c;

    invoke-interface {v0}, Le/a/b/i/c;->c()V

    .line 2
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Call me back db cache cleared"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final VA()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/a/k3;->k0:Le/a/b/i/c;

    const-string v1, ""

    invoke-interface {v0, v1}, Le/a/b/i/c;->f(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Call me back number cleared"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final WA(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const v1, 0x7f120878

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 4
    array-length v3, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v0, "System account does not exist"

    .line 5
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 6
    :cond_0
    sget-object v3, Lw3/c/a/a/a/g;->a:Ljava/util/Random;

    .line 7
    sget-object v3, Lw3/c/a/a/a/g;->a:Ljava/util/Random;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v4

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    if-eq v3, v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    aget-object v1, v2, v4

    const/4 v2, 0x0

    const-string v3, "countryCode"

    invoke-virtual {v0, v1, v3, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "country code has been removed"

    .line 9
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 10
    :cond_2
    aget-object v2, v2, v4

    const-string v3, "installation_id"

    invoke-virtual {v0, v2, v3}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "installation ID has been removed"

    .line 12
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public final XA()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    return-void
.end method

.method public final YA()V
    .locals 3

    .line 1
    new-instance v0, Le/a/e/a/k3$g;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    const-string v2, "Test a non-serializable exception"

    invoke-direct {v0, v2, v1}, Le/a/e/a/k3$g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final ZA()V
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/log/UnmutedException$h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/log/UnmutedException$h;-><init>(II)V

    throw v0
.end method

.method public final aB(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Default Time"

    const-string v1, "Immediate"

    const-string v2, "After 5 min"

    const-string v3, "After 1 hour"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ln3/b/a/g$a;

    invoke-direct {v1, p1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object p1, v1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v2, "Change Reminder Notif Time"

    iput-object v2, p1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 4
    new-instance v2, Le/a/e/a/h;

    invoke-direct {v2, p0}, Le/a/e/a/h;-><init>(Le/a/e/a/k3;)V

    .line 5
    iput-object v0, p1, Landroidx/appcompat/app/AlertController$b;->q:[Ljava/lang/CharSequence;

    .line 6
    iput-object v2, p1, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    invoke-virtual {v1}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final bB()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 2
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Remote WebView debugging enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final cB()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/a/k3;->J:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "App is dumping its heap. It will cause UI freeze."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Le/a/e/a/c1;

    invoke-direct {v1, p0}, Le/a/e/a/c1;-><init>(Le/a/e/a/k3;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final dB()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/e/a/k3;->J:Le/a/p5/a0;

    invoke-interface {v1}, Le/a/p5/a0;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_1
    const-string v1, "App is exporting DB Schema..."

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "context"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v4, Lq3/a/h1;->a:Lq3/a/h1;

    invoke-static {v0}, Le/a/n/g0;->q(Landroid/content/Context;)Le/a/b0/c;

    move-result-object v1

    invoke-interface {v1}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v5

    new-instance v7, Le/a/o5/d0;

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Le/a/o5/d0;-><init>(Landroid/content/Context;Ls1/w/d;)V

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v1

    .line 7
    new-instance v4, Le/a/e/a/q;

    invoke-direct {v4, v0}, Le/a/e/a/q;-><init>(Landroid/content/Context;)V

    .line 8
    check-cast v1, Lq3/a/u1;

    .line 9
    invoke-virtual {v1, v3, v2, v4}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    return-void
.end method

.method public final eB()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/e/a/k3;->J:Le/a/p5/a0;

    invoke-interface {v1}, Le/a/p5/a0;->c()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_1
    const-string v1, "App is exporting logs..."

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5
    sget-object v1, Le/a/n3/a/b;->a:Ljava/text/SimpleDateFormat;

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v3, Lq3/a/h1;->a:Lq3/a/h1;

    .line 7
    sget-object v1, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v4, Lq3/a/y2/q;->c:Lq3/a/y1;

    const/4 v5, 0x0

    .line 8
    new-instance v6, Le/a/n3/a/a;

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Le/a/n3/a/a;-><init>(Landroid/content/Context;Ls1/w/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v1

    .line 9
    new-instance v3, Le/a/e/a/y;

    invoke-direct {v3, v0}, Le/a/e/a/y;-><init>(Landroid/content/Context;)V

    .line 10
    check-cast v1, Lq3/a/u1;

    const/4 v0, 0x1

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    return-void
.end method

.method public final fB()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/e/a/k3;->J:Le/a/p5/a0;

    invoke-interface {v1}, Le/a/p5/a0;->c()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_1
    const-string v1, "App is exporting logs..."

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5
    sget-object v1, Le/a/c/h/l/b;->a:Ljava/text/SimpleDateFormat;

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v3, Le/a/c/h/l/b;->c:Lq3/a/i0;

    new-instance v6, Le/a/c/h/l/a;

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Le/a/c/h/l/a;-><init>(Landroid/content/Context;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v1

    .line 7
    new-instance v3, Le/a/e/a/n;

    invoke-direct {v3, v0}, Le/a/e/a/n;-><init>(Landroid/content/Context;)V

    .line 8
    check-cast v1, Lq3/a/u1;

    const/4 v0, 0x1

    .line 9
    invoke-virtual {v1, v2, v0, v3}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    return-void
.end method

.method public final gB()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v1, "featureAdCtpRotation"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "Rotation forced until feature flag sync"

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Le/d/c/a/a;->y0(Le/a/e/a/k3;Ljava/lang/String;I)V

    return-void
.end method

.method public final iB()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/a/k3;->D:Le/a/z4/a;

    const-string v1, "adsFeatureHouseAdsTimeout"

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Le/a/z4/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final jB(Ljava/lang/String;II)Le/a/d0/v;
    .locals 12

    .line 1
    new-instance v8, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v8}, Lcom/truecaller/data/entity/Contact;-><init>()V

    .line 2
    iget-object v0, v8, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    const-string v1, "Sample contact"

    iput-object v1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->name:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/truecaller/data/entity/Number;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/truecaller/data/entity/Number;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v8, v0}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    .line 6
    iget-object v0, p0, Le/a/e/a/k3;->m:Le/a/k3/l/f;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Le/a/k3/l/f;->d([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v3

    .line 7
    new-instance v11, Le/a/d0/v;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Le/a/e/a/k3;->l:Le/a/h0/j;

    .line 8
    invoke-interface {v0, p1}, Le/a/h0/j;->e(Ljava/lang/String;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, v11

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v10}, Le/a/d0/v;-><init>(IILcom/truecaller/data/entity/Number;IZJLcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/blocking/FilterMatch;)V

    return-object v11
.end method

.method public final kB()Le/a/h4/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/h4/q/g;

    .line 2
    invoke-interface {v0}, Le/a/h4/q/g;->n()Le/a/h4/n;

    move-result-object v0

    return-object v0
.end method

.method public final lB()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v2, "Enter LeadGen ID"

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    const v1, 0x7f0d0419

    .line 3
    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->o(I)Ln3/b/a/g$a;

    const v1, 0x7f120726

    new-instance v2, Le/a/e/a/i1;

    invoke-direct {v2, p0}, Le/a/e/a/i1;-><init>(Le/a/e/a/k3;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v1, 0x7f1206fb

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public final mB()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    .line 2
    sget v1, Lcom/truecaller/ads/qa/QaCampaignsActivity;->a:I

    const-string v1, "context"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/ads/qa/QaCampaignsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final nB()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    .line 2
    sget v1, Lcom/truecaller/ads/qa/QaKeywordsActivity;->a:I

    const-string v1, "context"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/ads/qa/QaKeywordsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final oB()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v2, "Enter LeadGen ID"

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    const v1, 0x7f0d0422

    .line 3
    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->o(I)Ln3/b/a/g$a;

    const v1, 0x7f120726

    new-instance v2, Le/a/e/a/j0;

    invoke-direct {v2, p0}, Le/a/e/a/j0;-><init>(Le/a/e/a/k3;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v1, 0x7f1206fb

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    sget-object v11, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;

    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v2

    .line 2
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "WorkManager.getInstance(context)"

    const-string v9, "CleverTapRefreshWorkAction"

    const-string v10, "context"

    const-string v12, ""

    const-string v13, "qaPageToOpen"

    const v14, 0x7f0a0a40

    if-ne v3, v14, :cond_0

    .line 4
    iget-object v0, v1, Le/a/e/a/k3;->U:Le/a/c/c0/o;

    invoke-interface {v0, v7}, Le/a/c/c0/o;->u0(Z)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "Categorizer update pop up state cleared"

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :cond_0
    const v14, 0x7f0a05aa

    if-ne v3, v14, :cond_1

    .line 6
    new-instance v0, Le/a/j4/b/a/j;

    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Le/a/j4/b/a/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Le/a/j4/b/a/a;->b()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/y4/e;->h(Landroid/content/Context;)V

    goto/16 :goto_7

    :cond_1
    const v14, 0x7f0a05a8

    if-ne v3, v14, :cond_2

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/y4/e;->h(Landroid/content/Context;)V

    goto/16 :goto_7

    :cond_2
    const v14, 0x7f0a05a6

    if-ne v3, v14, :cond_3

    const-string v0, "tagsPhonebookForcedUpload"

    .line 9
    invoke-static {v0, v6}, Le/a/n/g0;->v0(Ljava/lang/String;Z)V

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/y4/e;->h(Landroid/content/Context;)V

    goto/16 :goto_7

    :cond_3
    const v14, 0x7f0a0578

    if-ne v3, v14, :cond_4

    .line 11
    iget-object v0, v1, Le/a/e/a/k3;->O:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i3/b;

    invoke-interface {v0}, Le/a/i3/b;->b()Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->g()V

    goto/16 :goto_7

    :cond_4
    const v14, 0x7f0a04ff

    if-ne v3, v14, :cond_5

    .line 12
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->XA()V

    goto/16 :goto_7

    :cond_5
    const v14, 0x7f0a0501

    if-eq v3, v14, :cond_f0

    const v14, 0x7f0a0500

    if-eq v3, v14, :cond_ef

    const v14, 0x7f0a0567

    if-ne v3, v14, :cond_6

    .line 13
    new-instance v0, Le/a/e/a/k3$h;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v4

    invoke-direct {v0, v4}, Le/a/e/a/k3$h;-><init>(Landroid/app/Activity;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v4, v5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_7

    :cond_6
    const v14, 0x7f0a056a

    if-ne v3, v14, :cond_7

    .line 14
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->vB()V

    goto/16 :goto_7

    :cond_7
    const v14, 0x7f0a04fd

    if-ne v3, v14, :cond_8

    .line 15
    invoke-virtual {v1, v9}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    const v14, 0x7f0a04f2

    if-ne v3, v14, :cond_9

    .line 16
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->mB()V

    goto/16 :goto_7

    :cond_9
    const v14, 0x7f0a0548

    if-ne v3, v14, :cond_a

    .line 17
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->nB()V

    goto/16 :goto_7

    :cond_a
    const v14, 0x7f0a0549

    if-ne v3, v14, :cond_b

    .line 18
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->oB()V

    goto/16 :goto_7

    :cond_b
    const v14, 0x7f0a05a4

    if-ne v3, v14, :cond_c

    .line 19
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->qB()V

    goto/16 :goto_7

    :cond_c
    const v14, 0x7f0a04e7

    if-ne v3, v14, :cond_d

    .line 20
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->lB()V

    goto/16 :goto_7

    :cond_d
    const v14, 0x7f0a0563

    if-ne v3, v14, :cond_e

    .line 21
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->bB()V

    goto/16 :goto_7

    :cond_e
    const v14, 0x7f0a0522

    if-ne v3, v14, :cond_f

    .line 22
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->gB()V

    goto/16 :goto_7

    :cond_f
    const v14, 0x7f0a050c

    if-ne v3, v14, :cond_10

    .line 23
    iget-object v0, v1, Le/a/e/a/k3;->B:Le/a/i/f0/d;

    invoke-interface {v0}, Le/a/i/f0/d;->d()V

    goto/16 :goto_7

    :cond_10
    const v14, 0x7f0a050e

    if-ne v3, v14, :cond_11

    .line 24
    iget-object v0, v1, Le/a/e/a/k3;->C:Le/a/i/c/d/a;

    invoke-interface {v0}, Le/a/i/c/d/a;->f()V

    goto/16 :goto_7

    :cond_11
    const v14, 0x7f0a050d

    if-ne v3, v14, :cond_12

    .line 25
    iget-object v0, v1, Le/a/e/a/k3;->C:Le/a/i/c/d/a;

    invoke-interface {v0}, Le/a/i/c/d/a;->b()V

    goto/16 :goto_7

    :cond_12
    const v14, 0x7f0a059e

    if-ne v3, v14, :cond_13

    .line 26
    iget-object v0, v1, Le/a/e/a/k3;->C:Le/a/i/c/d/a;

    invoke-interface {v0}, Le/a/i/c/d/a;->a()V

    goto/16 :goto_7

    :cond_13
    const v14, 0x7f0a0523

    if-ne v3, v14, :cond_14

    .line 27
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->iB()V

    goto/16 :goto_7

    :cond_14
    const v14, 0x7f0a04f8

    if-ne v3, v14, :cond_15

    .line 28
    new-instance v0, Le/a/e/a/k3$f;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v5}, Le/a/e/a/k3$f;-><init>(Landroid/content/Context;Le/a/e/a/k3$a;)V

    new-array v4, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_7

    :cond_15
    const v14, 0x7f0a0709

    if-ne v3, v14, :cond_16

    .line 29
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->dB()V

    goto/16 :goto_7

    :cond_16
    const v14, 0x7f0a0571

    if-ne v3, v14, :cond_17

    .line 30
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->xB()V

    goto/16 :goto_7

    :cond_17
    const v14, 0x7f0a0510

    if-ne v3, v14, :cond_18

    .line 31
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Le/a/m0/a1;->a()Landroid/net/Uri;

    move-result-object v4

    const-string v6, "dump"

    invoke-virtual {v0, v4, v6, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto/16 :goto_7

    :cond_18
    const v5, 0x7f0a055d

    if-ne v3, v5, :cond_19

    .line 32
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->tB()V

    goto/16 :goto_7

    :cond_19
    const v5, 0x7f0a0568

    if-ne v3, v5, :cond_1a

    .line 33
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->uB()V

    goto/16 :goto_7

    :cond_1a
    const v5, 0x7f0a04e4

    if-ne v3, v5, :cond_1b

    .line 34
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->QA()V

    goto/16 :goto_7

    :cond_1b
    const v5, 0x7f0a04f7

    if-ne v3, v5, :cond_1c

    .line 35
    iget-object v0, v1, Le/a/e/a/k3;->y:Le/a/f4/b/g/b;

    invoke-interface {v0}, Le/a/f4/b/g/b;->e()V

    .line 36
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "Edge locations cleared"

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :cond_1c
    const v5, 0x7f0a05a0

    if-ne v3, v5, :cond_1d

    const-string v0, "EdgeLocationsWorkAction"

    .line 37
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1d
    const v5, 0x7f0a0564

    if-ne v3, v5, :cond_1e

    const-string v0, "initialCallLogSyncComplete"

    .line 38
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1e
    const v5, 0x7f0a056c

    if-ne v3, v5, :cond_1f

    .line 39
    iget-object v0, v1, Le/a/e/a/k3;->V:Le/a/c/c0/k;

    invoke-interface {v0}, Le/a/c/c0/k;->b()V

    .line 40
    invoke-virtual/range {p0 .. p0}, Ln3/r/a/k;->dismiss()V

    goto/16 :goto_7

    :cond_1f
    const v5, 0x7f0a056e

    if-ne v3, v5, :cond_20

    .line 41
    iget-object v0, v1, Le/a/e/a/k3;->U:Le/a/c/c0/o;

    sget-object v4, Lcom/truecaller/insights/utils/HideTrxTempState;->DEFAULT:Lcom/truecaller/insights/utils/HideTrxTempState;

    invoke-interface {v0, v4}, Le/a/c/c0/o;->M(Lcom/truecaller/insights/utils/HideTrxTempState;)V

    .line 42
    iget-object v0, v1, Le/a/e/a/k3;->U:Le/a/c/c0/o;

    invoke-interface {v0, v7}, Le/a/c/c0/o;->q(Z)V

    .line 43
    iget-object v0, v1, Le/a/e/a/k3;->U:Le/a/c/c0/o;

    invoke-interface {v0, v7}, Le/a/c/c0/o;->o0(Z)V

    .line 44
    iget-object v0, v1, Le/a/e/a/k3;->U:Le/a/c/c0/o;

    invoke-interface {v0, v7}, Le/a/c/c0/o;->C(Z)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Ln3/r/a/k;->dismiss()V

    goto/16 :goto_7

    :cond_20
    const v5, 0x7f0a056f

    if-ne v3, v5, :cond_21

    .line 46
    iget-object v0, v1, Le/a/e/a/k3;->U:Le/a/c/c0/o;

    invoke-interface {v0, v7}, Le/a/c/c0/o;->Z(Z)V

    goto/16 :goto_7

    :cond_21
    const v5, 0x7f0a0570

    if-ne v3, v5, :cond_22

    .line 47
    iget-object v0, v1, Le/a/e/a/k3;->n:Lcom/truecaller/settings/CallingSettings;

    const-string v4, "lastInvalidCallsUpdate"

    invoke-interface {v0, v4}, Lcom/truecaller/settings/CallingSettings;->remove(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_22
    const v5, 0x7f0a04e6

    if-ne v3, v5, :cond_23

    .line 48
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->SA()V

    goto/16 :goto_7

    :cond_23
    const v5, 0x7f0a03fd

    if-ne v3, v5, :cond_24

    .line 49
    iget-object v0, v1, Le/a/e/a/k3;->l:Le/a/h0/j;

    invoke-interface {v0}, Le/a/h0/j;->c()V

    goto/16 :goto_7

    :cond_24
    const v5, 0x7f0a05a9

    if-ne v3, v5, :cond_25

    .line 50
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->GB()V

    goto/16 :goto_7

    :cond_25
    const v5, 0x7f0a059f

    if-ne v3, v5, :cond_26

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/b0/p/h/a;->d(Landroid/content/Context;)V

    goto/16 :goto_7

    :cond_26
    const v5, 0x7f0a051d

    if-ne v3, v5, :cond_27

    .line 52
    invoke-interface {v2}, Le/a/j2;->S0()Le/a/a0/i;

    move-result-object v0

    invoke-interface {v0}, Le/a/a0/i;->b()V

    goto/16 :goto_7

    :cond_27
    const v5, 0x7f0a051c

    if-ne v3, v5, :cond_28

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    invoke-static {v0, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v14

    .line 56
    invoke-static {v14, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xc

    const-string v15, "FetchSearchWarningsWorkAction"

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v19}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    goto/16 :goto_7

    :cond_28
    const v5, 0x7f0a059d

    if-ne v3, v5, :cond_29

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/b0/p/h/b;->d(Landroid/content/Context;)V

    goto/16 :goto_7

    :cond_29
    const v5, 0x7f0a0561

    if-ne v3, v5, :cond_2a

    .line 58
    invoke-static {}, Lcom/truecaller/service/t9/RefreshT9MappingWorker;->n()V

    goto/16 :goto_7

    :cond_2a
    const v5, 0x7f0a055e

    if-ne v3, v5, :cond_2b

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    invoke-static {v0, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/truecaller/service/contact/RefreshContactIndexingService;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "RefreshContactIndexingService.action.sync"

    .line 62
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "RefreshContactIndexingService.extra.rebuild_all"

    .line 63
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    .line 64
    const-class v5, Lcom/truecaller/service/contact/RefreshContactIndexingService;

    const v6, 0x7f0a0e0e

    .line 65
    invoke-static {v0, v5, v6, v4}, Ln3/k/a/i;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    goto/16 :goto_7

    :cond_2b
    const v5, 0x7f0a04e8

    if-ne v3, v5, :cond_2c

    const-string v0, "AttestationWorkAction"

    .line 66
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2c
    const v5, 0x7f0a04ea

    if-ne v3, v5, :cond_2d

    const-string v0, "BackupLogWorker"

    .line 67
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2d
    const v5, 0x7f0a05a7

    if-ne v3, v5, :cond_2e

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/contactfeedback/workers/UploadContactFeedbackWorker;->n(Landroid/content/Context;)V

    goto/16 :goto_7

    :cond_2e
    const v5, 0x7f0a058d

    const-string v6, "+123456789"

    if-ne v3, v5, :cond_36

    .line 69
    new-instance v0, Le/a/d0/u;

    .line 70
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v7, v1, Le/a/e/a/k3;->n:Lcom/truecaller/settings/CallingSettings;

    iget-object v14, v1, Le/a/e/a/k3;->t:Le/a/i4/e;

    iget-boolean v15, v1, Le/a/e/a/k3;->p0:Z

    invoke-direct {v0, v5, v7, v14, v15}, Le/a/d0/u;-><init>(Landroid/content/Context;Lcom/truecaller/settings/CallingSettings;Le/a/i4/e;Z)V

    .line 71
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v14, v16

    if-lez v5, :cond_2f

    const/4 v5, 0x1

    goto :goto_0

    :cond_2f
    move v5, v4

    :goto_0
    invoke-virtual {v1, v6, v4, v5}, Le/a/e/a/k3;->jB(Ljava/lang/String;II)Le/a/d0/v;

    move-result-object v5

    .line 72
    invoke-virtual {v0, v5}, Le/a/d0/u;->h(Le/a/d0/v;)V

    .line 73
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    cmpl-double v5, v5, v16

    if-lez v5, :cond_31

    .line 74
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    cmpl-double v5, v5, v16

    if-lez v5, :cond_30

    const/4 v5, 0x1

    goto :goto_1

    :cond_30
    move v5, v4

    :goto_1
    const-string v6, "+198765432"

    invoke-virtual {v1, v6, v4, v5}, Le/a/e/a/k3;->jB(Ljava/lang/String;II)Le/a/d0/v;

    move-result-object v4

    .line 75
    invoke-virtual {v0, v4}, Le/a/d0/u;->h(Le/a/d0/v;)V

    :cond_31
    :try_start_0
    const-string v0, "{\n   \"e\": {\"s\":2,\"c\":1443107255,\"t\":2,\"i\":391912021},\n   \"a\": {\"v\":\"10.00\",\"u\":\"http://truecaller.com\"}\n }"

    .line 76
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 77
    :try_start_1
    new-instance v0, Le/m/e/g0/a;

    invoke-direct {v0, v4}, Le/m/e/g0/a;-><init>(Ljava/io/Reader;)V

    .line 78
    invoke-static {v0}, Le/m/e/v;->a(Le/m/e/g0/a;)Le/m/e/q;

    move-result-object v4

    .line 79
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    instance-of v5, v4, Le/m/e/s;

    if-nez v5, :cond_33

    .line 81
    invoke-virtual {v0}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v0

    sget-object v5, Le/m/e/g0/b;->j:Le/m/e/g0/b;

    if-ne v0, v5, :cond_32

    goto :goto_2

    .line 82
    :cond_32
    new-instance v0, Le/m/e/z;

    const-string v4, "Did not consume the entire document."

    invoke-direct {v0, v4}, Le/m/e/z;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Le/m/e/g0/d; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 83
    :cond_33
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Le/m/e/q;->d()Le/m/e/t;

    move-result-object v0

    .line 84
    new-instance v4, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    sget-object v5, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->NEW:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    const/4 v6, 0x1

    invoke-direct {v4, v0, v5, v6}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;-><init>(Le/m/e/t;Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;I)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Le/a/o5/g1;->c(Landroid/content/Context;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V

    goto :goto_3

    :catch_0
    move-exception v0

    .line 86
    new-instance v4, Le/m/e/z;

    invoke-direct {v4, v0}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v0

    .line 87
    new-instance v4, Le/m/e/r;

    invoke-direct {v4, v0}, Le/m/e/r;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_2
    move-exception v0

    .line 88
    new-instance v4, Le/m/e/z;

    invoke-direct {v4, v0}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 89
    :catch_3
    :goto_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x1

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "new"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, 0x0

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "is_read"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "_id= (SELECT MAX(_id) FROM history WHERE type=3)"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 93
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/service/MissedCallsNotificationService;->h(Landroid/content/Context;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x4

    const-string v5, "qa"

    const/4 v6, 0x0

    invoke-static {v0, v4, v6, v5}, Le/a/o5/g1;->a(Landroid/content/Context;IZLjava/lang/String;)V

    .line 95
    sget-object v0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_NOTIFICATION_ACCESS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 96
    iget v5, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 97
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->kB()Le/a/h4/n;

    move-result-object v5

    invoke-virtual {v0}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotificationId()I

    move-result v0

    invoke-interface {v5, v0, v4}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    .line 98
    :cond_34
    sget-object v0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_UPDATE_SPAM:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 99
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->kB()Le/a/h4/n;

    move-result-object v5

    invoke-virtual {v0}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotificationId()I

    move-result v0

    invoke-interface {v5, v0, v4}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    .line 100
    :cond_35
    sget-object v0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_20DAYS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_96

    .line 101
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->kB()Le/a/h4/n;

    move-result-object v5

    invoke-virtual {v0}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotificationId()I

    move-result v0

    invoke-interface {v5, v0, v4}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    goto/16 :goto_7

    :cond_36
    const v4, 0x7f0a055c

    if-ne v3, v4, :cond_37

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln3/m0/y;->k(Landroid/content/Context;)Ln3/m0/y;

    move-result-object v0

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "PushIdRegistrationWorkAction"

    .line 104
    invoke-static {v0, v5, v4}, Le/a/y2/q/c;->a(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;)Ln3/m0/s;

    goto/16 :goto_7

    :cond_37
    const v4, 0x7f0a055b

    if-ne v3, v4, :cond_38

    .line 105
    invoke-static {}, Le/m/d/w/h;->g()Le/m/d/w/h;

    move-result-object v0

    invoke-virtual {v0}, Le/m/d/w/h;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v4, Le/a/e/a/e1;->a:Le/a/e/a/e1;

    .line 106
    invoke-virtual {v0, v4}, Lcom/google/android/gms/tasks/Task;->l(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v4, Le/a/e/a/i0;

    invoke-direct {v4, v1}, Le/a/e/a/i0;-><init>(Le/a/e/a/k3;)V

    .line 107
    invoke-virtual {v0, v4}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto/16 :goto_7

    :cond_38
    const v4, 0x7f0a05af

    if-ne v3, v4, :cond_39

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Ln3/r/a/f0;

    move-result-object v0

    new-instance v4, Le/a/d5/g/p;

    invoke-direct {v4}, Le/a/d5/g/p;-><init>()V

    const-class v5, Le/a/d5/g/p;

    .line 110
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ln3/r/a/f0;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 111
    invoke-virtual {v0}, Ln3/r/a/f0;->i()V

    goto/16 :goto_7

    :cond_39
    const v4, 0x7f0a05b0

    if-ne v3, v4, :cond_3a

    .line 112
    iget-object v0, v1, Le/a/e/a/k3;->o:Le/a/z4/d;

    const-string v4, "whatsNewDialogShownRevision"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    .line 113
    iget-object v0, v1, Le/a/e/a/k3;->o:Le/a/z4/d;

    const-string v4, "whatsNewShownTimestamp"

    invoke-interface {v0, v4}, Le/a/z4/d;->remove(Ljava/lang/String;)V

    .line 114
    iget-object v0, v1, Le/a/e/a/k3;->o:Le/a/z4/d;

    const-string v4, "key_mdau_promo_shown_times"

    invoke-interface {v0, v4, v5}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    .line 115
    iget-object v0, v1, Le/a/e/a/k3;->o:Le/a/z4/d;

    const-string v4, "key_mdau_promo_shown_timestamp"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_7

    :cond_3a
    const v4, 0x7f0a0587

    if-ne v3, v4, :cond_3b

    .line 116
    new-instance v0, Le/a/n/c;

    invoke-direct {v0}, Le/a/n/c;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-class v5, Le/a/n/c;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_3b
    const v4, 0x7f0a0576

    if-ne v3, v4, :cond_3c

    .line 117
    iget-object v0, v1, Le/a/e/a/k3;->o:Le/a/z4/d;

    const-string v4, "backupOnboardingAvailable"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    iget-object v0, v1, Le/a/e/a/k3;->o:Le/a/z4/d;

    const-string v4, "backupOnboardingShown"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    iget-object v0, v1, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "key_backup_fetched_timestamp"

    invoke-interface {v0, v6, v4, v5}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_7

    :cond_3c
    const v4, 0x7f0a0575

    if-ne v3, v4, :cond_3d

    .line 120
    iget-object v0, v1, Le/a/e/a/k3;->n:Lcom/truecaller/settings/CallingSettings;

    const-string v4, "contactListPromoteBackupCount"

    invoke-interface {v0, v4}, Lcom/truecaller/settings/CallingSettings;->remove(Ljava/lang/String;)V

    .line 121
    iget-object v0, v1, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v4, "restoreOnboardingShown"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_3d
    const v4, 0x7f0a0525

    if-ne v3, v4, :cond_3e

    .line 122
    iget-object v0, v1, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v4, "key_backup_last_success"

    invoke-interface {v0, v4}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/truecaller/backup/worker/BackupWorker;->s()V

    goto/16 :goto_7

    :cond_3e
    const v4, 0x7f0a05ae

    if-ne v3, v4, :cond_3f

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Ln3/r/a/f0;

    move-result-object v0

    new-instance v4, Le/a/d5/g/j;

    invoke-direct {v4}, Le/a/d5/g/j;-><init>()V

    const-class v5, Le/a/d5/g/j;

    .line 126
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ln3/r/a/f0;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 127
    invoke-virtual {v0}, Ln3/r/a/f0;->g()I

    goto/16 :goto_7

    :cond_3f
    const v4, 0x7f0a0530

    if-ne v3, v4, :cond_40

    .line 128
    new-instance v0, Le/a/e/a/s3;

    iget-object v4, v1, Le/a/e/a/k3;->M:Le/a/p4/b;

    invoke-direct {v0, v4}, Le/a/e/a/s3;-><init>(Le/a/p4/b;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Le/a/e/a/s3;->c(Landroid/content/Context;)V

    goto/16 :goto_7

    :cond_40
    const v4, 0x7f0a03f7

    if-ne v3, v4, :cond_41

    .line 129
    iget-object v0, v1, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v4, "profileFirstName"

    invoke-interface {v0, v4}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_41
    const v4, 0x7f0a03f8

    if-ne v3, v4, :cond_42

    .line 130
    iget-object v0, v1, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v4, "profileLastName"

    invoke-interface {v0, v4}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_42
    const v4, 0x7f0a051e

    if-ne v3, v4, :cond_43

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Ln3/r/a/f0;

    move-result-object v0

    new-instance v4, Le/a/d5/g/g;

    invoke-direct {v4}, Le/a/d5/g/g;-><init>()V

    const-class v5, Le/a/d5/g/g;

    .line 133
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ln3/r/a/f0;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 134
    invoke-virtual {v0}, Ln3/r/a/f0;->g()I

    goto/16 :goto_7

    :cond_43
    const v4, 0x7f0a0589

    if-ne v3, v4, :cond_44

    .line 135
    iget-object v0, v1, Le/a/e/a/k3;->n:Lcom/truecaller/settings/CallingSettings;

    const-string v4, "afterCallPromoteContactsPermissionTimestamp"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Lcom/truecaller/settings/CallingSettings;->putLong(Ljava/lang/String;J)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Lcom/truecaller/aftercall/PromotionType;->CONTACT_PERMISSION:Lcom/truecaller/aftercall/PromotionType;

    invoke-static {v0, v4}, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->va(Landroid/content/Context;Lcom/truecaller/aftercall/PromotionType;)Z

    goto/16 :goto_7

    :cond_44
    const v4, 0x7f0a056b

    if-ne v3, v4, :cond_45

    .line 137
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->wB()V

    .line 138
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "Dialer promotions reset"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :cond_45
    const/4 v4, 0x0

    const v5, 0x7f0a058a

    const-string v7, "0000000000"

    if-ne v3, v5, :cond_47

    .line 139
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->wB()V

    .line 140
    invoke-virtual {v1, v7, v4, v4}, Le/a/e/a/k3;->jB(Ljava/lang/String;II)Le/a/d0/v;

    move-result-object v0

    .line 141
    new-instance v4, Le/a/d0/w;

    invoke-interface {v2}, Le/a/j2;->O()Le/a/g5/p;

    move-result-object v5

    invoke-interface {v2}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/a/d0/w;-><init>(Le/a/g5/p;Le/a/e4/p;)V

    invoke-virtual {v4, v0}, Le/a/d0/w;->a(Le/a/d0/v;)Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v4

    .line 142
    iget-object v5, v1, Le/a/e/a/k3;->u:Le/a/p2/i;

    iget-object v6, v0, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    iget-boolean v7, v0, Le/a/d0/v;->e:Z

    iget-boolean v0, v0, Le/a/d0/v;->f:Z

    invoke-interface {v5, v4, v6, v7, v0}, Le/a/p2/i;->a(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/data/entity/Number;ZZ)Lcom/truecaller/aftercall/PromotionType;

    move-result-object v0

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v1, Le/a/e/a/k3;->n:Lcom/truecaller/settings/CallingSettings;

    if-eqz v0, :cond_46

    goto :goto_4

    :cond_46
    sget-object v0, Lcom/truecaller/aftercall/PromotionType;->SIGN_UP:Lcom/truecaller/aftercall/PromotionType;

    :goto_4
    invoke-static {v5, v6, v0, v4}, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->wa(Landroid/content/Context;Lcom/truecaller/settings/CallingSettings;Lcom/truecaller/aftercall/PromotionType;Lcom/truecaller/data/entity/HistoryEvent;)V

    goto/16 :goto_7

    :cond_47
    const v4, 0x7f0a058b

    if-ne v3, v4, :cond_49

    .line 144
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->wB()V

    const/4 v0, 0x0

    .line 145
    invoke-virtual {v1, v7, v0, v0}, Le/a/e/a/k3;->jB(Ljava/lang/String;II)Le/a/d0/v;

    move-result-object v0

    .line 146
    new-instance v4, Le/a/d0/w;

    invoke-interface {v2}, Le/a/j2;->O()Le/a/g5/p;

    move-result-object v5

    invoke-interface {v2}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/a/d0/w;-><init>(Le/a/g5/p;Le/a/e4/p;)V

    .line 147
    invoke-virtual {v4, v0}, Le/a/d0/w;->a(Le/a/d0/v;)Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v4

    .line 148
    iget-object v5, v1, Le/a/e/a/k3;->u:Le/a/p2/i;

    iget-object v6, v0, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    iget-boolean v7, v0, Le/a/d0/v;->e:Z

    iget-boolean v0, v0, Le/a/d0/v;->f:Z

    invoke-interface {v5, v4, v6, v7, v0}, Le/a/p2/i;->a(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/data/entity/Number;ZZ)Lcom/truecaller/aftercall/PromotionType;

    move-result-object v0

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v1, Le/a/e/a/k3;->n:Lcom/truecaller/settings/CallingSettings;

    if-eqz v0, :cond_48

    goto :goto_5

    .line 150
    :cond_48
    sget-object v0, Lcom/truecaller/aftercall/PromotionType;->DIALER_OUTGOING_OUTSIDE:Lcom/truecaller/aftercall/PromotionType;

    .line 151
    :goto_5
    invoke-static {v5, v6, v0, v4}, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->wa(Landroid/content/Context;Lcom/truecaller/settings/CallingSettings;Lcom/truecaller/aftercall/PromotionType;Lcom/truecaller/data/entity/HistoryEvent;)V

    goto/16 :goto_7

    :cond_49
    const v4, 0x7f0a0588

    if-ne v3, v4, :cond_4a

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v4, "clipboard"

    invoke-static {v0, v4}, Lcom/truecaller/ui/TruecallerInit;->wa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v4, 0x10000000

    .line 154
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v4

    const v5, 0x7f0a0e3d

    const/high16 v7, 0x4000000

    .line 156
    invoke-static {v4, v5, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 157
    new-instance v4, Ln3/k/a/q;

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v5

    iget-object v7, v1, Le/a/e/a/k3;->g0:Le/a/h4/n;

    invoke-interface {v7}, Le/a/h4/n;->d()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x7f0816fb

    .line 159
    invoke-virtual {v4, v5}, Ln3/k/a/q;->v(I)Ln3/k/a/q;

    .line 160
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v5

    const v7, 0x7f06068b

    invoke-static {v5, v7}, Ln3/k/b/a;->b(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ln3/k/a/q;->j(I)Ln3/k/a/q;

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 161
    invoke-virtual {v4, v7, v7, v5}, Ln3/k/a/q;->u(IIZ)Ln3/k/a/q;

    .line 162
    invoke-virtual {v4, v5}, Ln3/k/a/q;->t(I)Ln3/k/a/q;

    .line 163
    invoke-virtual {v4, v7}, Ln3/k/a/q;->s(Z)Ln3/k/a/q;

    .line 164
    invoke-virtual {v4, v5}, Ln3/k/a/q;->h(Z)Ln3/k/a/q;

    .line 165
    invoke-virtual {v4, v0}, Ln3/k/a/q;->l(Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 166
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    const v14, 0x7f12018d

    new-array v15, v5, [Ljava/lang/Object;

    aput-object v6, v15, v7

    invoke-virtual {v0, v14, v15}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    const v14, 0x7f12018c

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v7

    invoke-virtual {v0, v14, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ln3/k/a/q;->z(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 168
    invoke-virtual {v4}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    .line 169
    iget-object v4, v1, Le/a/e/a/k3;->g0:Le/a/h4/n;

    const/16 v5, 0x64

    invoke-interface {v4, v5, v0}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    goto/16 :goto_7

    :cond_4a
    const v4, 0x7f0a058c

    const-string v5, "0761840301"

    const-string v6, "0731256247"

    const-string v7, "+911244130150"

    if-ne v3, v4, :cond_4b

    .line 170
    new-instance v0, Le/a/e/a/k3$b;

    filled-new-array {v6, v5, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Le/a/e/a/k3$b;-><init>(Le/a/e/a/k3;[Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Le/a/e/a/k3$i;->a()V

    goto/16 :goto_7

    :cond_4b
    const v4, 0x7f0a04fe

    if-ne v3, v4, :cond_4c

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/a/e/a/k3;->WA(Landroid/content/Context;)V

    goto/16 :goto_7

    :cond_4c
    const v4, 0x7f0a0585

    if-ne v3, v4, :cond_4d

    .line 173
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->TA()V

    goto/16 :goto_7

    :cond_4d
    const v4, 0x7f0a0591

    if-ne v3, v4, :cond_4e

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/truecaller/util/background/qa/WorkActionStatusActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_4e
    const v4, 0x7f0a052a

    if-ne v3, v4, :cond_4f

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/q2/z0/a;->d(Landroid/content/Context;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/q2/m;->h(Landroid/content/Context;)Ln3/m0/s;

    goto/16 :goto_7

    :cond_4f
    const v4, 0x7f0a0547

    if-ne v3, v4, :cond_50

    const-string v0, "InstalledAppsHeartbeatWorkAction"

    .line 177
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_50
    const v4, 0x7f0a0540

    if-ne v3, v4, :cond_51

    const-string v0, "re_run_context_qa_menu"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 178
    invoke-static {v0, v4, v5}, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->s(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    :cond_51
    const v4, 0x7f0a0545

    if-ne v3, v4, :cond_52

    const-string v0, "InsightsSeedUpdateWorkAction"

    .line 179
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_52
    const v4, 0x7f0a053f

    if-ne v3, v4, :cond_53

    const-string v0, "InsightsRemindersWorkAction"

    .line 180
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_53
    const v4, 0x7f0a053e

    if-ne v3, v4, :cond_54

    const-string v0, "InsightsReclassificationWorkAction"

    .line 181
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_54
    const v4, 0x7f0a0539

    if-ne v3, v4, :cond_55

    .line 182
    invoke-static {}, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->s()V

    goto/16 :goto_7

    :cond_55
    const v4, 0x7f0a053c

    if-ne v3, v4, :cond_56

    const-string v0, "InsightsFeatureRegistryWorkAction"

    .line 183
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_56
    const v4, 0x7f0a0544

    if-ne v3, v4, :cond_57

    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v4

    const-class v5, Lcom/truecaller/insights/ui/qa/view/InsightsQAActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "TotalSmartCardsShownDialog"

    .line 185
    invoke-virtual {v0, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_57
    const v4, 0x7f0a0535

    if-ne v3, v4, :cond_58

    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v4

    const-class v5, Lcom/truecaller/insights/ui/qa/view/InsightsQAActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "InsightsCategorizerSeedFetch"

    .line 188
    invoke-virtual {v0, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_58
    const v4, 0x7f0a0536

    if-ne v3, v4, :cond_59

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v4

    const-class v5, Lcom/truecaller/insights/ui/qa/view/InsightsQAActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "InsightsUpdatesClassifierSeedFetch"

    .line 191
    invoke-virtual {v0, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_59
    const v4, 0x7f0a0541

    if-ne v3, v4, :cond_5a

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v4

    const-class v5, Lcom/truecaller/insights/ui/qa/view/InsightsQAActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "InsightRowFFTester"

    .line 194
    invoke-virtual {v0, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_5a
    const v4, 0x7f0a0534

    if-ne v3, v4, :cond_5b

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v4

    const-class v5, Lcom/truecaller/insights/ui/qa/view/InsightsQAActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "InsightsBrandSearchTester"

    .line 197
    invoke-virtual {v0, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_5b
    const v4, 0x7f0a057e

    if-ne v3, v4, :cond_5c

    const-string v0, "madeCallsFromCallLog"

    const/4 v4, 0x0

    .line 199
    invoke-static {v0, v4}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_5c
    const/4 v4, 0x0

    const v14, 0x7f0a0546

    if-ne v3, v14, :cond_5d

    .line 200
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->F6()Le/a/o5/e2/a;

    move-result-object v0

    const/4 v5, 0x1

    .line 201
    invoke-interface {v0, v5}, Le/a/o5/e2/a;->a(I)V

    .line 202
    invoke-interface {v0, v4}, Le/a/o5/e2/a;->a(I)V

    goto/16 :goto_7

    :cond_5d
    const v4, 0x7f0a0529

    if-ne v3, v4, :cond_5e

    .line 203
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->eB()V

    goto/16 :goto_7

    :cond_5e
    const v4, 0x7f0a0a41

    if-ne v3, v4, :cond_5f

    .line 204
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->fB()V

    goto/16 :goto_7

    :cond_5f
    const v4, 0x7f0a054c

    if-ne v3, v4, :cond_60

    .line 205
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->EB()V

    goto/16 :goto_7

    :cond_60
    const v4, 0x7f0a0566

    if-ne v3, v4, :cond_61

    .line 206
    iget-object v0, v1, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v4, "key_last_set_status_time"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 207
    iget-object v0, v1, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v4, "last_availability_update_success"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, v1, Le/a/e/a/k3;->Q:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l4/h;

    sget-object v4, Lcom/truecaller/presence/AvailabilityTrigger;->USER_ACTION:Lcom/truecaller/presence/AvailabilityTrigger;

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Le/a/l4/h;->d(Lcom/truecaller/presence/AvailabilityTrigger;Z)V

    goto/16 :goto_7

    :cond_61
    const v4, 0x7f0a0554

    if-ne v3, v4, :cond_62

    .line 209
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const-string v4, "Override locally stored version code"

    .line 210
    invoke-virtual {v0, v4}, Ln3/b/a/g$a;->n(Ljava/lang/CharSequence;)Ln3/b/a/g$a;

    const v4, 0x7f0d0422

    .line 211
    invoke-virtual {v0, v4}, Ln3/b/a/g$a;->o(I)Ln3/b/a/g$a;

    new-instance v4, Le/a/e/a/k1;

    invoke-direct {v4, v1}, Le/a/e/a/k1;-><init>(Le/a/e/a/k3;)V

    const-string v5, "Save"

    .line 212
    invoke-virtual {v0, v5, v4}, Ln3/b/a/g$a;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const-string v4, "Cancel"

    const/4 v5, 0x0

    .line 213
    invoke-virtual {v0, v4, v5}, Ln3/b/a/g$a;->h(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 214
    invoke-virtual {v0}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object v0

    .line 215
    sget-object v4, Le/a/e/a/v1;->a:Le/a/e/a/v1;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 216
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_7

    :cond_62
    const v4, 0x7f0a054b

    if-ne v3, v4, :cond_63

    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/truecaller/dynamicfeaturesupport/qm/DynamicFeaturePanelActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_63
    const v4, 0x7f0a0508

    if-ne v3, v4, :cond_64

    .line 218
    iget-object v0, v1, Le/a/e/a/k3;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r4/a;

    invoke-interface {v0}, Le/a/r4/a;->c()V

    goto/16 :goto_7

    :cond_64
    const v4, 0x7f0a0572

    const-string v14, "region_c_accepted"

    const-string v15, "ppolicy_accepted"

    if-ne v3, v4, :cond_65

    .line 219
    iget-object v0, v1, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v4, "featureRegion1_qa"

    invoke-interface {v0, v4}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0a0598

    iget-object v6, v1, Le/a/e/a/k3;->z:Le/a/b0/e/f;

    invoke-interface {v6}, Le/a/b0/e/f;->d()Z

    move-result v6

    invoke-static {v0, v5, v6}, Le/a/o5/j0;->n(Landroid/view/View;IZ)V

    .line 221
    iget-object v0, v1, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    invoke-interface {v0, v4}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 222
    iget-object v0, v1, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    invoke-interface {v0, v15}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 223
    iget-object v0, v1, Le/a/e/a/k3;->q:Le/a/b0/e/r/a;

    invoke-interface {v0, v14}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_65
    const v4, 0x7f0a0569

    if-ne v3, v4, :cond_66

    .line 224
    iget-object v0, v1, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    invoke-interface {v0, v15}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 225
    iget-object v0, v1, Le/a/e/a/k3;->q:Le/a/b0/e/r/a;

    invoke-interface {v0, v14}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    .line 226
    iget-object v0, v1, Le/a/e/a/k3;->q:Le/a/b0/e/r/a;

    const-string v4, "region_za_policy_accepted"

    invoke-interface {v0, v4}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_66
    const v4, 0x7f0a059c

    if-ne v3, v4, :cond_67

    .line 227
    iget-object v0, v1, Le/a/e/a/k3;->s:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Le/a/a/g/m;->b(Z)V

    goto/16 :goto_7

    :cond_67
    const v4, 0x7f0a055f

    if-ne v3, v4, :cond_68

    .line 228
    invoke-static {}, Le/d/c/a/a;->m1()Le/a/q2/a;

    move-result-object v4

    .line 229
    invoke-static {}, Le/a/m0/c1/l0;->d()[Le/a/m0/c1/h0;

    move-result-object v5

    invoke-static {v0, v5, v4}, Le/a/m0/c1/l0;->j(Landroid/content/Context;[Le/a/m0/c1/h0;Le/a/q2/a;)Le/a/m0/c1/l0;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 231
    new-instance v4, Le/a/m0/c1/i0;

    invoke-direct {v4}, Le/a/m0/c1/i0;-><init>()V

    invoke-virtual {v4, v0}, Le/a/m0/c1/i0;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_7

    :cond_68
    const v4, 0x7f0a057f

    if-ne v3, v4, :cond_6b

    .line 232
    sget-object v0, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->e()Ljava/util/List;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 234
    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 235
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_6a

    .line 236
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/a/i5/d;

    invoke-virtual {v15}, Le/a/i5/d;->a()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v6

    .line 237
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v5, :cond_69

    move v7, v6

    :cond_69
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 238
    :cond_6a
    new-instance v5, Ln3/b/a/g$a;

    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    new-instance v6, Le/a/e/a/q1;

    invoke-direct {v6, v1, v0}, Le/a/e/a/q1;-><init>(Le/a/e/a/k3;Ljava/util/List;)V

    .line 239
    invoke-virtual {v5, v4, v7, v6}, Ln3/b/a/g$a;->l([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 240
    invoke-virtual {v5}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    goto/16 :goto_7

    :cond_6b
    const v4, 0x7f0a04eb

    if-ne v3, v4, :cond_6c

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->qa(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_6c
    const v4, 0x7f0a0593

    if-ne v3, v4, :cond_6d

    .line 242
    new-instance v0, Le/a/e/a/k3$i;

    filled-new-array {v6, v5, v7}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v1, v4, v5}, Le/a/e/a/k3$i;-><init>(Le/a/e/a/k3;[Ljava/lang/String;Le/a/e/a/k3$a;)V

    invoke-virtual {v0}, Le/a/e/a/k3$i;->a()V

    goto/16 :goto_7

    :cond_6d
    const v4, 0x7f0a04ec

    if-ne v3, v4, :cond_6e

    .line 243
    new-instance v0, Le/a/e/a/k3$c;

    const-string v4, "0735342770"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Le/a/e/a/k3$c;-><init>(Le/a/e/a/k3;[Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Le/a/e/a/k3$i;->a()V

    goto/16 :goto_7

    :cond_6e
    const v4, 0x7f0a04f6

    if-ne v3, v4, :cond_6f

    .line 245
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "callMeBackNotifications"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_7

    :cond_6f
    const v4, 0x7f0a04fa

    if-ne v3, v4, :cond_70

    .line 247
    iget-object v0, v1, Le/a/e/a/k3;->v:Lcom/truecaller/referral/ReferralManager;

    if-eqz v0, :cond_96

    .line 248
    invoke-interface {v0}, Lcom/truecaller/referral/ReferralManager;->clear()V

    goto/16 :goto_7

    :cond_70
    const v4, 0x7f0a0509

    if-ne v3, v4, :cond_71

    const/4 v0, 0x0

    .line 249
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->zB(Z)V

    goto/16 :goto_7

    :cond_71
    const v4, 0x7f0a0519

    if-ne v3, v4, :cond_72

    .line 250
    iget-object v0, v1, Le/a/e/a/k3;->w:Le/a/n4/a;

    const-string v4, "KeyCallLogPromoDisabledUntil"

    invoke-interface {v0, v4}, Le/a/b0/g/b;->remove(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 251
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->zB(Z)V

    goto/16 :goto_7

    :cond_72
    const v4, 0x7f0a04e3

    if-ne v3, v4, :cond_73

    .line 252
    new-instance v0, Le/a/c0/a;

    invoke-direct {v0}, Le/a/c0/a;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v0, v4, v12}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_73
    const v4, 0x7f0a03fa

    if-ne v3, v4, :cond_74

    const-string v0, "feature_pro_promo_popup_last_time"

    .line 253
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    const-string v0, "promo_popup_last_shown_timestamp"

    .line 254
    invoke-static {v0}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Le/a/l/p2/v0;->clear()V

    .line 257
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->y1()Le/a/l/p2/f;

    move-result-object v0

    invoke-virtual {v0}, Le/a/l/p2/f;->a()V

    .line 258
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->T5()Le/a/l/p2/b1;

    move-result-object v0

    invoke-interface {v0}, Le/a/l/p2/b1;->b()V

    .line 259
    iget-object v0, v1, Le/a/e/a/k3;->Z:Le/a/l/c2;

    invoke-interface {v0}, Le/a/l/c2;->clear()V

    goto/16 :goto_7

    :cond_74
    const v4, 0x7f0a03f9

    if-ne v3, v4, :cond_75

    .line 260
    iget-object v0, v1, Le/a/e/a/k3;->N:Le/a/l/p2/o0;

    invoke-interface {v0}, Le/a/l/p2/o0;->c()V

    goto/16 :goto_7

    :cond_75
    const v4, 0x7f0a075d

    if-ne v3, v4, :cond_76

    const-string v0, "PremiumStatusWorkAction"

    .line 261
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_76
    const v4, 0x7f0a075e

    if-ne v3, v4, :cond_77

    const-string v0, "ContactsPremiumStatusFetchWorkAction"

    .line 262
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_77
    const v4, 0x7f0a044c

    if-ne v3, v4, :cond_78

    .line 263
    new-instance v4, Le/a/e/a/j3;

    invoke-interface {v2}, Le/a/j2;->d4()Le/a/l/o2/d;

    move-result-object v5

    .line 264
    invoke-interface {v2}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v6

    invoke-interface {v2}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Le/a/e/a/j3;-><init>(Le/a/l/o2/d;Le/a/o5/f0;Le/a/p5/g;)V

    .line 265
    invoke-virtual {v4}, Le/a/e/a/j3;->a()V

    const-string v4, "Consumables consumed!"

    const/4 v5, 0x0

    .line 266
    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :cond_78
    const v4, 0x7f0a1005

    if-ne v3, v4, :cond_79

    .line 267
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v4

    invoke-interface {v4}, Le/a/j2;->T5()Le/a/l/p2/b1;

    move-result-object v4

    const-string v5, "Subscription RTDN status: "

    .line 268
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Le/a/l/p2/b1;->a()Lcom/truecaller/premium/data/SubscriptionStatusReason;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :cond_79
    const v0, 0x7f0a1002

    if-ne v3, v0, :cond_7a

    .line 269
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->C3()Le/a/l/a2;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/truecaller/premium/PremiumLaunchContext;->ONCE_PER_MONTH_POPUP:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {v0, v4, v5}, Le/a/l/a2;->b(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;)V

    goto/16 :goto_7

    :cond_7a
    const v0, 0x7f0a050f

    if-ne v3, v0, :cond_7b

    .line 270
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->cB()V

    goto/16 :goto_7

    :cond_7b
    const v0, 0x7f0a073d

    if-ne v3, v0, :cond_7c

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_7c
    const v0, 0x7f0a0362

    if-ne v3, v0, :cond_7d

    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_7d
    const v0, 0x7f0a0049

    if-ne v3, v0, :cond_7e

    .line 273
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/truecaller/acs/qa/AcsQaActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_7e
    const v0, 0x7f0a0601

    if-ne v3, v0, :cond_7f

    .line 274
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_7f
    const v0, 0x7f0a058e

    if-ne v3, v0, :cond_80

    .line 275
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->d3()Le/a/r2/f;

    move-result-object v0

    .line 276
    new-instance v4, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v4}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    const-string v5, "text/plain"

    const-string v6, "Your otp is 767676"

    .line 277
    invoke-static {v5, v6}, Lcom/truecaller/messaging/data/types/Entity;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 278
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v5

    invoke-interface {v5}, Le/a/j2;->m()Le/a/b0/q/z;

    move-result-object v5

    const-string v6, "46763185096"

    const-string v7, "-1"

    invoke-static {v6, v5, v7}, Lcom/truecaller/data/entity/messaging/Participant;->d(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/truecaller/messaging/data/types/Message$b;->h(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 279
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v4

    .line 280
    new-instance v5, Lcom/truecaller/messaging/data/types/Conversation$b;

    invoke-direct {v5}, Lcom/truecaller/messaging/data/types/Conversation$b;-><init>()V

    iget-object v6, v4, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 281
    invoke-virtual {v5, v6}, Lcom/truecaller/messaging/data/types/Conversation$b;->a(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/messaging/data/types/Conversation$b;

    .line 282
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/Conversation$b;->b()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v5

    .line 283
    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/y0/q;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Le/a/a/y0/q;->j(Ljava/util/Map;)V

    goto/16 :goto_7

    :cond_80
    const v0, 0x7f0a054e

    if-ne v3, v0, :cond_81

    .line 284
    new-instance v0, Le/a/e/a/y3;

    invoke-direct {v0}, Le/a/e/a/y3;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-string v5, "qa_mock_im"

    invoke-virtual {v0, v4, v5}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_81
    const v0, 0x7f0a052f

    if-ne v3, v0, :cond_82

    .line 285
    new-instance v0, Le/a/e/a/p3;

    invoke-direct {v0}, Le/a/e/a/p3;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-string v5, "qa_edit_im_history_size"

    invoke-virtual {v0, v4, v5}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_82
    const v0, 0x7f0a05a1

    if-ne v3, v0, :cond_83

    .line 286
    iget-object v0, v1, Le/a/e/a/k3;->S:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/a/m;

    const/4 v4, 0x1

    invoke-interface {v0, v4, v4}, Le/a/a/k/a/a/m;->d(ZZ)V

    goto/16 :goto_7

    :cond_83
    const/4 v0, 0x1

    const v4, 0x7f0a05a3

    if-ne v3, v4, :cond_84

    .line 287
    iget-object v4, v1, Le/a/e/a/k3;->S:Le/a/r2/f;

    invoke-interface {v4}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/k/a/a/m;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v0}, Le/a/a/k/a/a/m;->d(ZZ)V

    goto/16 :goto_7

    :cond_84
    const v0, 0x7f0a05a2

    if-ne v3, v0, :cond_85

    .line 288
    iget-object v0, v1, Le/a/e/a/k3;->S:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/a/m;

    invoke-interface {v0}, Le/a/a/k/a/a/m;->u()Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->g()V

    goto/16 :goto_7

    :cond_85
    const v0, 0x7f0a056d

    if-ne v3, v0, :cond_86

    .line 289
    iget-object v0, v1, Le/a/e/a/k3;->x:Le/a/y/c/b;

    invoke-interface {v0}, Le/a/y/c/b;->a()V

    goto/16 :goto_7

    :cond_86
    const v0, 0x7f0a0520

    if-ne v3, v0, :cond_87

    .line 290
    iget-object v14, v1, Le/a/e/a/k3;->x:Le/a/y/c/b;

    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v14 .. v21}, Le/a/y/c/b;->H(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 291
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_87
    const v0, 0x7f0a04f9

    if-ne v3, v0, :cond_88

    .line 292
    iget-object v0, v1, Le/a/e/a/k3;->A:Le/a/r5/i0;

    invoke-interface {v0}, Le/a/r5/i0;->q()V

    goto/16 :goto_7

    :cond_88
    const v0, 0x7f0a144a

    if-ne v3, v0, :cond_89

    .line 293
    iget-object v0, v1, Le/a/e/a/k3;->o:Le/a/z4/d;

    const-string v4, "whoViewedMeLastVisitTimestamp"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_7

    :cond_89
    const v0, 0x7f0a144b

    if-ne v3, v0, :cond_8a

    const-string v0, "WhoViewedMeWeeklySummaryWorkAction"

    .line 294
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8a
    const v0, 0x7f0a0560

    if-ne v3, v0, :cond_8b

    .line 295
    iget-object v0, v1, Le/a/e/a/k3;->g0:Le/a/h4/n;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Le/a/h4/n;->k(Z)Z

    .line 296
    iget-object v0, v1, Le/a/e/a/k3;->g0:Le/a/h4/n;

    invoke-interface {v0}, Le/a/h4/n;->i()V

    .line 297
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "Notification channels are recreated"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :cond_8b
    const/4 v0, 0x0

    const v4, 0x7f0a0502

    if-ne v3, v4, :cond_8c

    .line 298
    iget-object v4, v1, Le/a/e/a/k3;->g0:Le/a/h4/n;

    invoke-interface {v4}, Le/a/h4/n;->i()V

    .line 299
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Notification channels are created"

    invoke-static {v4, v5, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :cond_8c
    const v4, 0x7f0a04f5

    if-ne v3, v4, :cond_8d

    .line 300
    iget-object v4, v1, Le/a/e/a/k3;->g0:Le/a/h4/n;

    invoke-interface {v4, v0}, Le/a/h4/n;->k(Z)Z

    .line 301
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Notification channels are cleaned up"

    invoke-static {v4, v5, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :cond_8d
    const v4, 0x7f0a0565

    if-ne v3, v4, :cond_8e

    .line 302
    iget-object v4, v1, Le/a/e/a/k3;->g0:Le/a/h4/n;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Le/a/h4/n;->k(Z)Z

    .line 303
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "All notification channels are deleted!"

    invoke-static {v4, v5, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :cond_8e
    const v0, 0x7f0a0551

    if-ne v3, v0, :cond_8f

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/g;->y1(Landroid/app/Activity;)V

    goto/16 :goto_7

    :cond_8f
    const v0, 0x7f0a0552

    if-ne v3, v0, :cond_90

    .line 305
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->E6()Le/a/i4/l;

    move-result-object v0

    .line 306
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/truecaller/premium/util/NotificationAccessSource;->UNKNOWN:Lcom/truecaller/premium/util/NotificationAccessSource;

    const v6, 0x7f120fa9

    .line 307
    invoke-virtual {v0, v4, v5, v6}, Le/a/i4/l;->a(Landroid/content/Context;Lcom/truecaller/premium/util/NotificationAccessSource;I)Z

    goto/16 :goto_7

    :cond_90
    const v0, 0x7f0a0583

    if-ne v3, v0, :cond_91

    .line 308
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->x5()Le/a/h5/m;

    move-result-object v0

    invoke-interface {v0}, Le/a/h5/m;->c()V

    goto/16 :goto_7

    :cond_91
    const v0, 0x7f0a0582

    if-ne v3, v0, :cond_92

    .line 309
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->x5()Le/a/h5/m;

    move-result-object v0

    invoke-interface {v0}, Le/a/h5/m;->e()V

    goto/16 :goto_7

    :cond_92
    const v0, 0x7f0a04f1

    if-ne v3, v0, :cond_93

    .line 310
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->AB()V

    goto/16 :goto_7

    :cond_93
    const v0, 0x7f0a04ee

    if-ne v3, v0, :cond_94

    .line 311
    invoke-interface {v2}, Le/a/j2;->K0()Le/a/s4/a;

    move-result-object v0

    .line 312
    invoke-interface {v2}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v4

    const-string v5, "Device: "

    .line 313
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 314
    invoke-interface {v4}, Le/a/p5/g;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    .line 315
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Manufacturer: "

    .line 316
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Le/a/p5/g;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Android version: "

    .line 317
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Legacy device blacklist: "

    .line 318
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Le/a/e/a/k3;->K:Le/a/u3/g;

    .line 319
    invoke-virtual {v4}, Le/a/u3/g;->t()Le/a/u3/i;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/i;->a()Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-interface {v0, v4}, Le/a/s4/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Legacy device blacklist regex: "

    .line 322
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Le/a/e/a/k3;->K:Le/a/u3/g;

    .line 323
    invoke-virtual {v4}, Le/a/u3/g;->s()Le/a/u3/i;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/i;->a()Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-interface {v0, v4}, Le/a/s4/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Legacy manufacturer blacklist: "

    .line 326
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Le/a/e/a/k3;->K:Le/a/u3/g;

    .line 327
    invoke-virtual {v4}, Le/a/u3/g;->u()Le/a/u3/i;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/i;->a()Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-interface {v0, v4}, Le/a/s4/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Acessibility device blacklist: "

    .line 330
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Le/a/e/a/k3;->K:Le/a/u3/g;

    .line 331
    invoke-virtual {v4}, Le/a/u3/g;->q()Le/a/u3/i;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/i;->a()Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-interface {v0, v4}, Le/a/s4/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Acessibility manufacturer blacklist: "

    .line 334
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Le/a/e/a/k3;->K:Le/a/u3/g;

    .line 335
    invoke-virtual {v4}, Le/a/u3/g;->r()Le/a/u3/i;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/i;->a()Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-interface {v0, v4}, Le/a/s4/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Supported Android version: "

    .line 338
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">=21"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Legacy feature supported: "

    .line 339
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v4

    invoke-interface {v4}, Le/a/k0/a/e;->n()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Accessibility feature supported: "

    .line 340
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v4

    invoke-interface {v4}, Le/a/k0/a/e;->B()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-interface {v2}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_96

    .line 344
    new-instance v4, Ln3/b/a/g$a;

    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 345
    invoke-virtual {v4, v0}, Ln3/b/a/g$a;->f(Ljava/lang/CharSequence;)Ln3/b/a/g$a;

    .line 346
    invoke-virtual {v4}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    goto :goto_7

    :cond_94
    const v0, 0x7f0a054d

    if-ne v3, v0, :cond_95

    .line 347
    iget-object v0, v1, Le/a/e/a/k3;->h0:Lcom/truecaller/callrecording/CallRecordingManager;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Le/a/k0/o/a;->t(Z)V

    goto :goto_7

    :cond_95
    const v0, 0x7f0a04f0

    if-ne v3, v0, :cond_96

    .line 348
    iget-object v0, v1, Le/a/e/a/k3;->o0:Le/a/k0/f;

    invoke-interface {v0}, Le/a/k0/f;->reset()V

    :cond_96
    :goto_7
    const v0, 0x7f0a04ef

    if-ne v3, v0, :cond_97

    .line 349
    iget-object v0, v1, Le/a/e/a/k3;->o0:Le/a/k0/f;

    invoke-interface {v0}, Le/a/k0/f;->C1()V

    goto/16 :goto_9

    :cond_97
    const v0, 0x7f0a04fc

    if-ne v3, v0, :cond_98

    .line 350
    invoke-virtual {v1, v9}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_98
    const v0, 0x7f0a04f3

    if-ne v3, v0, :cond_99

    const-string v0, "UnclassifiedMessagesWorkAction"

    .line 351
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_99
    const v0, 0x7f0a0531

    if-ne v3, v0, :cond_9a

    .line 352
    iget-object v0, v1, Le/a/e/a/k3;->R:Le/a/d/f;

    invoke-interface {v0}, Le/a/d/f;->n()V

    goto/16 :goto_9

    :cond_9a
    const v0, 0x7f0a0550

    if-ne v3, v0, :cond_9b

    .line 353
    iget-object v0, v1, Le/a/e/a/k3;->R:Le/a/d/f;

    invoke-interface {v0}, Le/a/d/f;->u()V

    goto/16 :goto_9

    :cond_9b
    const v0, 0x7f0a0556

    if-ne v3, v0, :cond_9c

    .line 354
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->sB()V

    goto/16 :goto_9

    :cond_9c
    const v0, 0x7f0a054f

    if-ne v3, v0, :cond_9d

    .line 355
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->BB()V

    goto/16 :goto_9

    :cond_9d
    const v0, 0x7f0a05ad

    if-ne v3, v0, :cond_9e

    .line 356
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->DB()V

    goto/16 :goto_9

    :cond_9e
    const v0, 0x7f0a0555

    if-ne v3, v0, :cond_9f

    .line 357
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->rB()V

    goto/16 :goto_9

    :cond_9f
    const v0, 0x7f0a04f4

    if-ne v3, v0, :cond_a0

    .line 358
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/a/e/a/k3;->aB(Landroid/content/Context;)V

    goto/16 :goto_9

    :cond_a0
    const v0, 0x7f0a0573

    if-ne v3, v0, :cond_a1

    .line 359
    iget-object v0, v1, Le/a/e/a/k3;->U:Le/a/c/c0/o;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Le/a/c/c0/o;->m(I)V

    goto/16 :goto_9

    :cond_a1
    const v0, 0x7f0a0504

    if-ne v3, v0, :cond_a2

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Ln3/r/a/f0;

    move-result-object v0

    new-instance v2, Le/a/h/a/a;

    invoke-direct {v2}, Le/a/h/a/a;-><init>()V

    const-class v3, Le/a/h/a/a;

    .line 362
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ln3/r/a/f0;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 363
    invoke-virtual {v0}, Ln3/r/a/f0;->g()I

    goto/16 :goto_9

    :cond_a2
    const v0, 0x7f0a0542

    if-ne v3, v0, :cond_a3

    .line 364
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Ln3/r/a/f0;

    move-result-object v0

    new-instance v2, Le/a/e/a/z2;

    invoke-direct {v2}, Le/a/e/a/z2;-><init>()V

    const-class v3, Le/a/e/a/z2;

    .line 366
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ln3/r/a/f0;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 367
    invoke-virtual {v0}, Ln3/r/a/f0;->g()I

    goto/16 :goto_9

    :cond_a3
    const v0, 0x7f0a03b7

    if-ne v3, v0, :cond_a4

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Ln3/r/a/f0;

    move-result-object v0

    new-instance v2, Le/a/e/a/f2;

    invoke-direct {v2}, Le/a/e/a/f2;-><init>()V

    const-class v3, Le/a/e/a/f2;

    .line 370
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ln3/r/a/f0;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 371
    invoke-virtual {v0}, Ln3/r/a/f0;->g()I

    goto/16 :goto_9

    :cond_a4
    const v0, 0x7f0a053d

    if-ne v3, v0, :cond_a5

    .line 372
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    const-class v3, Lcom/truecaller/insights/ui/qa/view/InsightsQAActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "InsightsMalanaSeed"

    .line 373
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :cond_a5
    const v0, 0x7f0a0537

    if-ne v3, v0, :cond_a6

    .line 375
    iget-object v0, v1, Le/a/e/a/k3;->W:Le/a/c/t/a;

    invoke-interface {v0}, Le/a/c/t/a;->e()V

    .line 376
    invoke-virtual/range {p0 .. p0}, Ln3/r/a/k;->dismiss()V

    goto/16 :goto_9

    :cond_a6
    const v0, 0x7f0a050a

    if-ne v3, v0, :cond_a7

    .line 377
    iget-object v0, v1, Le/a/e/a/k3;->U:Le/a/c/c0/o;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Le/a/c/c0/o;->R(Z)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Ln3/r/a/k;->dismiss()V

    goto/16 :goto_9

    :cond_a7
    const v0, 0x7f0a0538

    if-ne v3, v0, :cond_a8

    .line 379
    iget-object v0, v1, Le/a/e/a/k3;->W:Le/a/c/t/a;

    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/c/t/a;->b(Landroid/content/Context;)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Ln3/r/a/k;->dismiss()V

    goto/16 :goto_9

    :cond_a8
    const v0, 0x7f0a0574

    if-ne v3, v0, :cond_a9

    .line 381
    iget-object v0, v1, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v2, "smart_notifications_clicked"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Ln3/r/a/k;->dismiss()V

    goto/16 :goto_9

    :cond_a9
    const v0, 0x7f0a05a5

    if-ne v3, v0, :cond_aa

    .line 383
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    const-class v3, Lcom/truecaller/insights/ui/qa/view/InsightsQAActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "InsightsUpdatesClassifierTest"

    .line 384
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :cond_aa
    const v0, 0x7f0a0528

    if-ne v3, v0, :cond_ab

    .line 386
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    const-class v3, Lcom/truecaller/insights/ui/qa/view/InsightsQAActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "FtsFragment"

    .line 387
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :cond_ab
    const v0, 0x7f0a0562

    if-ne v3, v0, :cond_ac

    .line 389
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    const-class v3, Lcom/truecaller/insights/ui/qa/view/InsightsQAActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "InsightsReminders"

    .line 390
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :cond_ac
    const v0, 0x7f0a0592

    if-ne v3, v0, :cond_ad

    .line 392
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    const-class v3, Lcom/truecaller/insights/ui/qa/view/InsightsQAActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "InsightsSmsFeatureFilterTester"

    .line 393
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :cond_ad
    const v0, 0x7f0a0897

    if-ne v3, v0, :cond_ae

    .line 395
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->w2()Le/a/x/w;

    move-result-object v0

    invoke-interface {v0}, Le/a/x/w;->clear()V

    goto/16 :goto_9

    :cond_ae
    const v0, 0x7f0a0ffd

    const-string v4, "analyticsContext"

    if-ne v3, v0, :cond_af

    .line 396
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v2, Lcom/truecaller/incallui/callui/enablePromo/InCallUIEnableAnalyticsContext;->INCALLUI_PROMO:Lcom/truecaller/incallui/callui/enablePromo/InCallUIEnableAnalyticsContext;

    const-string v3, "fragmentManager"

    .line 397
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    new-instance v3, Le/a/f/a/u/g;

    invoke-direct {v3}, Le/a/f/a/u/g;-><init>()V

    .line 399
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 401
    invoke-virtual {v2}, Lcom/truecaller/incallui/callui/enablePromo/InCallUIEnableAnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v5, "analytics_context"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 403
    const-class v2, Le/a/f/a/u/g;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_af
    const v0, 0x7f0a04fb

    if-ne v3, v0, :cond_b0

    .line 404
    iget-object v0, v1, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v2, "core_isReturningUser"

    invoke-interface {v0, v2}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_b0
    const v0, 0x7f0a058f

    if-ne v3, v0, :cond_b1

    .line 405
    new-instance v0, Le/a/e/a/c;

    invoke-direct {v0}, Le/a/e/a/c;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "qa_data_stats"

    invoke-virtual {v0, v2, v3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_b1
    const v0, 0x7f0a0596

    if-ne v3, v0, :cond_b2

    .line 406
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->pB()V

    goto/16 :goto_9

    :cond_b2
    const v0, 0x7f0a0584

    if-ne v3, v0, :cond_b3

    .line 407
    new-instance v0, Le/a/e/a/d4;

    invoke-direct {v0}, Le/a/e/a/d4;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "qa_set_business_flags"

    invoke-virtual {v0, v2, v3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_b3
    const v0, 0x7f0a0503

    if-ne v3, v0, :cond_b4

    .line 408
    new-instance v0, Le/a/e/a/b;

    invoke-direct {v0}, Le/a/e/a/b;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "qa_business_custom_replies"

    invoke-virtual {v0, v2, v3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_b4
    const v0, 0x7f0a0ff8

    if-ne v3, v0, :cond_b5

    .line 409
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    const-class v3, Lcom/truecaller/bizmon/newBusiness/profile/ui/BizProfileActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :cond_b5
    const v0, 0x7f0a077a

    if-ne v3, v0, :cond_b6

    .line 410
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln3/m0/y;->k(Landroid/content/Context;)Ln3/m0/y;

    move-result-object v0

    .line 411
    const-class v2, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;

    new-instance v3, Ln3/m0/r$a;

    invoke-direct {v3, v2}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 412
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 413
    iget-object v4, v3, Ln3/m0/z$a;->d:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v2

    const-string v3, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ln3/m0/r;

    .line 415
    invoke-virtual {v0, v2}, Ln3/m0/y;->c(Ln3/m0/r;)Ln3/m0/w;

    move-result-object v0

    .line 416
    const-class v2, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;

    new-instance v4, Ln3/m0/r$a;

    invoke-direct {v4, v2}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 417
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 418
    iget-object v5, v4, Ln3/m0/z$a;->d:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-virtual {v4}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ln3/m0/r;

    .line 420
    invoke-virtual {v0, v2}, Ln3/m0/w;->b(Ln3/m0/r;)Ln3/m0/w;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Ln3/m0/w;->a()Ln3/m0/s;

    goto/16 :goto_9

    :cond_b6
    const v0, 0x7f0a077b

    if-ne v3, v0, :cond_b7

    const-wide/16 v2, 0x0

    .line 422
    invoke-static {v2, v3}, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;->n(J)V

    goto/16 :goto_9

    :cond_b7
    const v0, 0x7f0a03fc

    if-ne v3, v0, :cond_b8

    .line 423
    iget-object v0, v1, Le/a/e/a/k3;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g0/d;

    invoke-interface {v0}, Le/a/g0/d;->l()V

    goto/16 :goto_9

    :cond_b8
    const v0, 0x7f0a0ff9

    const/4 v5, 0x2

    if-ne v3, v0, :cond_bb

    .line 424
    iget-object v0, v1, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v3, "premiumFriendUpgradedPhoneNumber"

    invoke-interface {v0, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 426
    invoke-static {v0}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b9

    const-string v4, ","

    .line 427
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v4, :cond_b9

    aget-object v7, v0, v6

    .line 428
    invoke-interface {v2}, Le/a/j2;->B7()Le/a/k3/j/g;

    move-result-object v8

    invoke-interface {v8, v7}, Le/a/k3/j/g;->c(Ljava/lang/String;)Ls1/k;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 429
    invoke-virtual {v8}, Ls1/k;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v10}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 430
    invoke-virtual {v8}, Ls1/k;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->U()Lcom/truecaller/data/entity/Contact$PremiumLevel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact$PremiumLevel;->getLevel()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v9, v10

    aput-object v7, v9, v5

    const-string v7, "%s : %s : %s"

    .line 431
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 432
    :cond_b9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ba

    const-string v0, "No contacts are present"

    .line 433
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_ba
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 435
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ln3/b/a/g$a;->d([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 436
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    goto/16 :goto_9

    :cond_bb
    const v0, 0x7f0a0ffa

    if-ne v3, v0, :cond_bc

    .line 437
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Le/a/e/a/t;

    invoke-direct {v3, v2}, Le/a/e/a/t;-><init>(Le/a/j2;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 438
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_9

    :cond_bc
    const v0, 0x7f0a0ff6

    if-ne v3, v0, :cond_bd

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v0, "call-context"

    .line 439
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    new-instance v12, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    const-string v3, "12345"

    move-object v2, v12

    move-object v4, v0

    invoke-direct/range {v2 .. v11}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 441
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v12}, Le/a/o/a/a/b/b;->QA(Landroidx/fragment/app/FragmentManager;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    goto/16 :goto_9

    :cond_bd
    const v0, 0x7f0a0ff5

    if-ne v3, v0, :cond_be

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v0, "call-context"

    .line 442
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    new-instance v12, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    const-string v3, "12345"

    move-object v2, v12

    move-object v4, v0

    invoke-direct/range {v2 .. v11}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v2, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$DetailsScreen;

    invoke-direct {v2}, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$DetailsScreen;-><init>()V

    invoke-static {v0, v12, v2}, Le/a/o/a/g/j/e;->VA(Landroidx/fragment/app/FragmentManager;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V

    goto/16 :goto_9

    :cond_be
    const v0, 0x7f0a0137

    if-ne v3, v0, :cond_bf

    .line 445
    new-instance v0, Le/a/l/a/b;

    invoke-direct {v0}, Le/a/l/a/b;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v12}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_bf
    const v0, 0x7f0a067a

    if-ne v3, v0, :cond_c0

    .line 446
    new-instance v0, Le/a/l/a/a;

    invoke-direct {v0}, Le/a/l/a/a;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v12}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_c0
    const v0, 0x7f0a0ad0

    if-ne v3, v0, :cond_c1

    .line 447
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/truecaller/premium/gift/GoldGiftDialogActivity;->pa(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :cond_c1
    const v0, 0x7f0a048e

    if-ne v3, v0, :cond_c2

    .line 448
    iget-object v0, v1, Le/a/e/a/k3;->Y:Le/a/o/c;

    invoke-interface {v0}, Le/a/o/c;->t()V

    goto/16 :goto_9

    :cond_c2
    const v0, 0x7f0a048c

    if-ne v3, v0, :cond_c3

    .line 449
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v12}, Le/a/o/a/g/g/a;->VA(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Le/a/o/a/g/g/a;

    goto/16 :goto_9

    :cond_c3
    const v0, 0x7f0a048f

    if-ne v3, v0, :cond_c4

    .line 450
    iget-object v0, v1, Le/a/e/a/k3;->Y:Le/a/o/c;

    invoke-interface {v0}, Le/a/o/c;->j()V

    goto/16 :goto_9

    :cond_c4
    const v0, 0x7f0a048d

    if-ne v3, v0, :cond_c5

    .line 451
    iget-object v0, v1, Le/a/e/a/k3;->Y:Le/a/o/c;

    invoke-interface {v0}, Le/a/o/c;->v()V

    goto/16 :goto_9

    :cond_c5
    const v0, 0x7f0a1354

    if-ne v3, v0, :cond_c6

    .line 452
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->CB()V

    goto/16 :goto_9

    :cond_c6
    const v0, 0x7f0a04e5

    if-ne v3, v0, :cond_c7

    .line 453
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->RA()V

    goto/16 :goto_9

    :cond_c7
    const v0, 0x7f0a0580

    if-ne v3, v0, :cond_c8

    .line 454
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->HB()V

    goto/16 :goto_9

    :cond_c8
    const v0, 0x7f0a0ef3

    if-ne v3, v0, :cond_c9

    .line 455
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/truecaller/ui/WizardActivity;

    invoke-static {v0, v2}, Le/a/r/t/c;->ua(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :cond_c9
    const v0, 0x7f0a0ef4

    if-ne v3, v0, :cond_ca

    .line 456
    new-instance v0, Le/a/e/a/k3$e;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    invoke-direct {v0, v2}, Le/a/e/a/k3$e;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_9

    :cond_ca
    const v0, 0x7f0a0a4a

    if-ne v3, v0, :cond_cb

    const-string v0, "NotificationDefaultSmsPromoWorkAction"

    .line 457
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_cb
    const v0, 0x7f0a129b

    if-ne v3, v0, :cond_cc

    .line 458
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    .line 459
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 460
    sget-object v2, Ln3/m0/h;->a:Ln3/m0/h;

    .line 461
    new-instance v3, Le/a/y2/h;

    const-class v4, Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;

    invoke-static {v4}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5}, Le/a/y2/h;-><init>(Ls1/a/c;Lw3/b/a/i;I)V

    .line 462
    sget-object v4, Ln3/m0/q;->b:Ln3/m0/q;

    invoke-virtual {v3, v4}, Le/a/y2/h;->f(Ln3/m0/q;)Le/a/y2/h;

    .line 463
    invoke-virtual {v3}, Le/a/y2/h;->a()Ln3/m0/r;

    move-result-object v3

    const-string v4, "ConversationSpamSearchWorker"

    .line 464
    invoke-virtual {v0, v4, v2, v3}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    goto/16 :goto_9

    :cond_cc
    const v0, 0x7f0a0761

    if-ne v3, v0, :cond_cd

    const-string v0, "TopSpammersSyncWorkAction"

    .line 465
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_cd
    const v0, 0x7f0a0c7b

    if-ne v3, v0, :cond_ce

    const-string v0, "OfflineAdsDataUploadWorkAction"

    .line 466
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_ce
    const v0, 0x7f0a0e5b

    if-ne v3, v0, :cond_cf

    .line 467
    iget-object v0, v1, Le/a/e/a/k3;->E:Le/a/a/i0;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Le/a/a/i0;->v1(I)V

    goto/16 :goto_9

    :cond_cf
    const v0, 0x7f0a0e5a

    if-ne v3, v0, :cond_d0

    .line 468
    iget-object v0, v1, Le/a/e/a/k3;->E:Le/a/a/i0;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Le/a/a/i0;->R2(J)V

    goto/16 :goto_9

    :cond_d0
    const v0, 0x7f0a05b8

    if-ne v3, v0, :cond_d1

    .line 469
    new-instance v0, Le/a/e/a/o3;

    invoke-direct {v0}, Le/a/e/a/o3;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "qa_default_sms_promo"

    invoke-virtual {v0, v2, v3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_d1
    const v0, 0x7f0a054a

    if-ne v3, v0, :cond_d2

    .line 470
    new-instance v0, Le/a/e/a/t3;

    invoke-direct {v0}, Le/a/e/a/t3;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "qa_link_preview"

    invoke-virtual {v0, v2, v3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_d2
    const v0, 0x7f0a0e5c

    if-ne v3, v0, :cond_d3

    .line 471
    iget-object v0, v1, Le/a/e/a/k3;->j0:Le/a/b/c;

    const-string v2, "show_priority_call_banner"

    invoke-interface {v0, v2}, Le/a/b/c;->b(Ljava/lang/String;)V

    .line 472
    iget-object v0, v1, Le/a/e/a/k3;->E:Le/a/a/i0;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Le/a/a/i0;->K1(J)V

    goto/16 :goto_9

    :cond_d3
    const-wide/16 v4, 0x0

    const v0, 0x7f0a0e5d

    if-ne v3, v0, :cond_d4

    .line 473
    iget-object v0, v1, Le/a/e/a/k3;->j0:Le/a/b/c;

    const-string v2, "show_verified_business_banner"

    invoke-interface {v0, v2}, Le/a/b/c;->b(Ljava/lang/String;)V

    .line 474
    iget-object v0, v1, Le/a/e/a/k3;->E:Le/a/a/i0;

    invoke-interface {v0, v4, v5}, Le/a/a/i0;->K1(J)V

    goto/16 :goto_9

    :cond_d4
    const v0, 0x7f0a0ff3

    if-ne v3, v0, :cond_d5

    .line 475
    iget-object v0, v1, Le/a/e/a/k3;->n0:Le/a/e3/a;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/e3/a;->f(Landroidx/fragment/app/FragmentManager;)V

    goto/16 :goto_9

    :cond_d5
    const v0, 0x7f0a1004

    if-ne v3, v0, :cond_d6

    .line 476
    iget-object v0, v1, Le/a/e/a/k3;->m0:Le/a/k/h;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "Contact Name"

    invoke-interface {v0, v2, v3}, Le/a/k/h;->v(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_d6
    const v0, 0x7f0a1008

    if-ne v3, v0, :cond_d7

    .line 477
    iget-object v0, v1, Le/a/e/a/k3;->m0:Le/a/k/h;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/k/h;->B(Landroidx/fragment/app/FragmentManager;)V

    goto/16 :goto_9

    :cond_d7
    const v0, 0x7f0a1001

    const-string v2, "qa-premium-report"

    if-ne v3, v0, :cond_d8

    .line 478
    sget-object v0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$Type;->PREMIUM_REPORT:Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$Type;

    invoke-static {v0}, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;->QA(Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$Type;)Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_d8
    const v0, 0x7f0a1000

    if-ne v3, v0, :cond_d9

    .line 479
    sget-object v0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$Type;->PRODUCTS_REPORT:Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$Type;

    invoke-static {v0}, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;->QA(Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$Type;)Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_d9
    const v0, 0x7f0a0ad1

    if-ne v3, v0, :cond_da

    .line 480
    invoke-static {}, Le/a/e/a/a4;->QA()Le/a/e/a/a4;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "qa-purchase-any-sku"

    invoke-virtual {v0, v2, v3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_da
    const v0, 0x7f0a1009

    if-ne v3, v0, :cond_db

    .line 481
    iget-object v0, v1, Le/a/e/a/k3;->m0:Le/a/k/h;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/k/h;->C(Landroidx/fragment/app/FragmentManager;)V

    goto/16 :goto_9

    :cond_db
    const v0, 0x7f0a07d8

    if-ne v3, v0, :cond_dc

    .line 482
    iget-object v0, v1, Le/a/e/a/k3;->m0:Le/a/k/h;

    invoke-interface {v0}, Le/a/k/h;->P()V

    goto/16 :goto_9

    :cond_dc
    const v0, 0x7f0a100a

    if-ne v3, v0, :cond_dd

    .line 483
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "WhatsApp CallerID notifications: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Le/a/e/a/k3;->g:Le/a/q5/d;

    .line 484
    invoke-interface {v3}, Le/a/q5/d;->m()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 485
    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    :cond_dd
    const v0, 0x7f0a1422

    if-ne v3, v0, :cond_de

    .line 487
    iget-object v0, v1, Le/a/e/a/k3;->f:Le/a/q5/i;

    invoke-interface {v0}, Le/a/q5/i;->clear()V

    goto/16 :goto_9

    :cond_de
    const v0, 0x7f0a053a

    if-ne v3, v0, :cond_df

    const-string v0, "InsightsEventAggregationWorkAction"

    .line 488
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_df
    const v0, 0x7f0a0533

    if-ne v3, v0, :cond_e0

    const-string v0, "InsightsBrandMonitoringWorkAction"

    .line 489
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_e0
    const v0, 0x7f0a0543

    if-ne v3, v0, :cond_e1

    const-string v0, "InsightsSenderResolutionWorkAction"

    .line 490
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_e1
    const v0, 0x7f0a0760

    if-ne v3, v0, :cond_e2

    .line 491
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v13

    .line 492
    invoke-static {v13, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    invoke-static {v13}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v11

    .line 494
    invoke-static {v11, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xc

    const-string v12, "FetchSurveysWorkAction"

    invoke-static/range {v11 .. v16}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    goto/16 :goto_9

    :cond_e2
    const v0, 0x7f0a0b27

    if-ne v3, v0, :cond_e3

    .line 495
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/survey/qa/SurveyListQaActivity;->qa(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :cond_e3
    const v0, 0x7f0a0a3e

    if-ne v3, v0, :cond_e4

    .line 496
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/survey/qa/SurveyEntryQaActivity;->pa(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :cond_e4
    const v0, 0x7f0a0ffe

    if-ne v3, v0, :cond_e5

    .line 497
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/truecaller/acs/qa/AcsQaActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :cond_e5
    const v0, 0x7f0a0f33

    if-ne v3, v0, :cond_e6

    .line 498
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->yB()V

    goto/16 :goto_9

    :cond_e6
    const v0, 0x7f0a03f6

    if-ne v3, v0, :cond_e7

    .line 499
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->VA()V

    goto/16 :goto_9

    :cond_e7
    const v0, 0x7f0a03f5

    if-ne v3, v0, :cond_e8

    .line 500
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->UA()V

    goto/16 :goto_9

    :cond_e8
    const v0, 0x7f0a0e5e

    if-ne v3, v0, :cond_e9

    .line 501
    iget-object v0, v1, Le/a/e/a/k3;->r0:Le/a/f/b;

    invoke-interface {v0}, Le/a/f/b;->k()V

    goto/16 :goto_9

    :cond_e9
    const v0, 0x7f0a032c

    if-ne v3, v0, :cond_eb

    .line 502
    iget-object v0, v1, Le/a/e/a/k3;->K:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->H()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 503
    iget-object v0, v1, Le/a/e/a/k3;->R:Le/a/d/f;

    new-instance v2, Lcom/truecaller/voip/debug/VoipAssistantPushNotification;

    const-string v3, "+46745357553"

    const-string v4, "Your cloths are washed and ready to be pickedup from the shop."

    const-string v5, "https://call-hero.s3.amazonaws.com/tracks/e7b57f4b969c9341c7206c34763f59e1.png"

    invoke-direct {v2, v3, v4, v5}, Lcom/truecaller/voip/debug/VoipAssistantPushNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Le/a/d/f;->o(Lcom/truecaller/voip/debug/VoipAssistantPushNotification;)V

    goto :goto_9

    .line 504
    :cond_ea
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Feature flag is disabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9

    :cond_eb
    const v0, 0x7f0a031f

    if-ne v3, v0, :cond_ec

    const-string v0, "CallAssistantNumberSyncWorkAction"

    .line 505
    invoke-virtual {v1, v0}, Le/a/e/a/k3;->FB(Ljava/lang/String;)V

    goto :goto_9

    :cond_ec
    const v0, 0x7f0a1003

    if-ne v3, v0, :cond_ed

    .line 506
    new-instance v0, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Contact;-><init>()V

    const-string v2, "+46735358210"

    const-string v3, "SE"

    .line 507
    invoke-static {v2, v2, v3}, Lcom/truecaller/data/entity/Number;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    .line 508
    sget-object v2, Le/a/w/a/a;->h:Le/a/w/a/a$c;

    sget-object v3, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->QA_MENU:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    invoke-virtual {v2, v0, v3}, Le/a/w/a/a$c;->a(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;)Le/a/w/a/a;

    move-result-object v0

    .line 509
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-class v3, Le/a/w/a/a;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_9

    :cond_ed
    const v0, 0x7f0a0c9b

    if-ne v3, v0, :cond_ee

    .line 510
    new-instance v0, Le/a/l/p2/d2/g;

    iget-object v2, v1, Le/a/e/a/k3;->M:Le/a/p4/b;

    invoke-direct {v0, v2}, Le/a/l/p2/d2/g;-><init>(Le/a/p4/b;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/l/p2/d2/g;->a(Landroid/content/Context;)V

    :cond_ee
    :goto_9
    return-void

    .line 511
    :cond_ef
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->YA()V

    const/4 v0, 0x0

    throw v0

    .line 512
    :cond_f0
    invoke-virtual/range {p0 .. p0}, Le/a/e/a/k3;->ZA()V

    throw v5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "ReferralManagerImpl"

    invoke-static {p1, v0}, Le/a/q4/l0;->OA(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/truecaller/referral/ReferralManager;

    move-result-object p1

    .line 3
    iput-object p1, p0, Le/a/e/a/k3;->v:Lcom/truecaller/referral/ReferralManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-static {p1}, Le/a/l4/k;->t0(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d012f

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 2
    aget p1, p3, p2

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/e/a/k3;->cB()V

    goto :goto_0

    :cond_0
    const-string p1, "We need media storage access for saving heap info file. Please try again and grant permission when android will ask about it"

    .line 4
    invoke-static {p0, p1, v0}, Le/d/c/a/a;->y0(Le/a/e/a/k3;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    .line 5
    aget p1, p3, p2

    if-nez p1, :cond_2

    .line 6
    invoke-virtual {p0}, Le/a/e/a/k3;->dB()V

    goto :goto_0

    :cond_2
    const-string p1, "We need media storage access for exporting DB Schema. Please try again and grant permission when android will ask about it"

    .line 7
    invoke-static {p0, p1, v0}, Le/d/c/a/a;->y0(Le/a/e/a/k3;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    const-string v2, "We need media storage access for exporting logs. Please try again and grant permission when android will ask about it"

    if-ne p1, v1, :cond_5

    .line 8
    aget p1, p3, p2

    if-nez p1, :cond_4

    .line 9
    invoke-virtual {p0}, Le/a/e/a/k3;->eB()V

    goto :goto_0

    .line 10
    :cond_4
    invoke-static {p0, v2, v0}, Le/d/c/a/a;->y0(Le/a/e/a/k3;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    if-ne p1, v1, :cond_7

    .line 11
    aget p1, p3, p2

    if-nez p1, :cond_6

    .line 12
    invoke-virtual {p0}, Le/a/e/a/k3;->fB()V

    goto :goto_0

    .line 13
    :cond_6
    invoke-static {p0, v2, v0}, Le/d/c/a/a;->y0(Le/a/e/a/k3;Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    if-ne p1, v1, :cond_9

    .line 14
    aget p1, p3, p2

    if-nez p1, :cond_8

    .line 15
    invoke-virtual {p0}, Le/a/e/a/k3;->EB()V

    goto :goto_0

    :cond_8
    const-string p1, "We need media storage access for method tracing. Please try again and grant permission when android will ask about it"

    .line 16
    invoke-static {p0, p1, v0}, Le/d/c/a/a;->y0(Le/a/e/a/k3;Ljava/lang/String;I)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/truecaller/buildinfo/BuildName;->values()[Lcom/truecaller/buildinfo/BuildName;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-string v6, ""

    const/16 v7, 0x44

    if-ge v5, v7, :cond_0

    aget-object v7, v3, v5

    .line 3
    new-instance v8, Le/a/e/c2/i0;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v4, v9, v6, v7}, Le/a/e/c2/i0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const v3, 0x7f0a0558

    .line 4
    new-instance v5, Le/a/e/a/n0;

    invoke-direct {v5, v0}, Le/a/e/a/n0;-><init>(Le/a/e/a/k3;)V

    new-instance v7, Le/a/e/a/y0;

    invoke-direct {v7, v0}, Le/a/e/a/y0;-><init>(Le/a/e/a/k3;)V

    .line 5
    sget v8, Le/a/o5/j0;->b:I

    const/4 v8, 0x0

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 8
    check-cast v3, Lcom/truecaller/ui/components/ComboBase;

    if-nez v3, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v3, v2}, Lcom/truecaller/ui/components/ComboBase;->setData(Ljava/util/List;)V

    .line 10
    invoke-virtual {v5}, Le/a/e/a/n0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v2, v5}, Le/a/o5/j0;->j(Ljava/util/List;Ljava/lang/String;)Le/a/e/c2/i0;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/truecaller/ui/components/ComboBase;->setSelection(Le/a/e/c2/i0;)V

    .line 11
    new-instance v2, Le/a/o5/a;

    invoke-direct {v2, v7}, Le/a/o5/a;-><init>(Le/a/o5/j0$a;)V

    invoke-virtual {v3, v2}, Lcom/truecaller/ui/components/ComboBase;->a(Lcom/truecaller/ui/components/ComboBase$a;)V

    move-object v8, v3

    .line 12
    :cond_3
    :goto_1
    new-instance v2, Le/a/e/a/m0;

    invoke-direct {v2, v0}, Le/a/e/a/m0;-><init>(Le/a/e/a/k3;)V

    .line 13
    invoke-virtual {v8, v2}, Lcom/truecaller/ui/components/ComboBase;->a(Lcom/truecaller/ui/components/ComboBase$a;)V

    const v2, 0x7f0a0521

    const-string v3, "qaForceAds"

    .line 14
    invoke-static {v3}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v3

    sget-object v5, Le/a/e/a/n1;->a:Le/a/e/a/n1;

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0507

    .line 15
    iget-object v3, v0, Le/a/e/a/k3;->D:Le/a/z4/a;

    const-string v5, "adsQaDisableRequests"

    invoke-interface {v3, v5}, Le/a/z4/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    new-instance v5, Le/a/e/a/p;

    invoke-direct {v5, v0}, Le/a/e/a/p;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0581

    const-string v3, "qaServer"

    .line 16
    invoke-static {v3}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v3

    sget-object v5, Le/a/e/a/u;->a:Le/a/e/a/u;

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0598

    .line 17
    iget-object v3, v0, Le/a/e/a/k3;->z:Le/a/b0/e/f;

    invoke-interface {v3}, Le/a/b0/e/f;->d()Z

    move-result v3

    new-instance v5, Le/a/e/a/w;

    invoke-direct {v5, v0}, Le/a/e/a/w;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a059a

    .line 18
    iget-object v3, v0, Le/a/e/a/k3;->z:Le/a/b0/e/f;

    invoke-interface {v3}, Le/a/b0/e/f;->a()Z

    move-result v3

    new-instance v5, Le/a/e/a/v0;

    invoke-direct {v5, v0}, Le/a/e/a/v0;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a059b

    .line 19
    iget-object v3, v0, Le/a/e/a/k3;->z:Le/a/b0/e/f;

    invoke-interface {v3}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object v3

    sget-object v5, Lcom/truecaller/common/account/Region;->REGION_ZA:Lcom/truecaller/common/account/Region;

    const/4 v7, 0x1

    if-ne v3, v5, :cond_4

    move v3, v7

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    new-instance v5, Le/a/e/a/p1;

    invoke-direct {v5, v0}, Le/a/e/a/p1;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0599

    .line 20
    iget-object v3, v0, Le/a/e/a/k3;->z:Le/a/b0/e/f;

    invoke-interface {v3}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object v3

    sget-object v5, Lcom/truecaller/common/account/Region;->REGION_BR:Lcom/truecaller/common/account/Region;

    if-ne v3, v5, :cond_5

    move v3, v7

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    new-instance v5, Le/a/e/a/v;

    invoke-direct {v5, v0}, Le/a/e/a/v;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a051b

    const-string v3, "qaReferralFakeSendSms"

    .line 21
    invoke-static {v3}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v3

    sget-object v5, Le/a/e/a/y1;->a:Le/a/e/a/y1;

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0524

    const-string v3, "qaEnableLogging"

    .line 22
    invoke-static {v3}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v3

    sget-object v5, Le/a/e/a/o0;->a:Le/a/e/a/o0;

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0526

    const-string v3, "qaForceShowReferral"

    .line 23
    invoke-static {v3}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v3

    sget-object v5, Le/a/e/a/q0;->a:Le/a/e/a/q0;

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0514

    .line 24
    iget-object v3, v0, Le/a/e/a/k3;->M:Le/a/p4/b;

    invoke-interface {v3}, Le/a/p4/b;->Y0()Z

    move-result v3

    new-instance v5, Le/a/e/a/x1;

    invoke-direct {v5, v0}, Le/a/e/a/x1;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a04e9

    .line 25
    iget-object v3, v0, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v5, "backupForceRootFolder"

    invoke-interface {v3, v5}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    new-instance v5, Le/a/e/a/z1;

    invoke-direct {v5, v0}, Le/a/e/a/z1;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a05b2

    .line 26
    iget-object v3, v0, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v5, "whoViewedMePBContactEnabled"

    invoke-interface {v3, v5}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    new-instance v5, Le/a/e/a/p0;

    invoke-direct {v5, v0}, Le/a/e/a/p0;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a05b1

    .line 27
    iget-object v3, v0, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v5, "whoViewedMeACSEnabled"

    invoke-interface {v3, v5}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    new-instance v5, Le/a/e/a/b1;

    invoke-direct {v5, v0}, Le/a/e/a/b1;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0513

    .line 28
    iget-object v3, v0, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v5, "featureCleverTap"

    invoke-interface {v3, v5}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    new-instance v5, Le/a/e/a/i;

    invoke-direct {v5, v0}, Le/a/e/a/i;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a052d

    .line 29
    iget-object v3, v0, Le/a/e/a/k3;->M:Le/a/p4/b;

    invoke-interface {v3}, Le/a/p4/b;->B1()Z

    move-result v3

    new-instance v5, Le/a/e/a/d1;

    invoke-direct {v5, v0}, Le/a/e/a/d1;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a052b

    .line 30
    iget-object v3, v0, Le/a/e/a/k3;->M:Le/a/p4/b;

    invoke-interface {v3}, Le/a/p4/b;->t2()Z

    move-result v3

    new-instance v5, Le/a/e/a/j;

    invoke-direct {v5, v0}, Le/a/e/a/j;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a052e

    .line 31
    iget-object v3, v0, Le/a/e/a/k3;->M:Le/a/p4/b;

    invoke-interface {v3}, Le/a/p4/b;->E2()Z

    move-result v3

    new-instance v5, Le/a/e/a/k0;

    invoke-direct {v5, v0}, Le/a/e/a/k0;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a052c

    .line 32
    iget-object v3, v0, Le/a/e/a/k3;->y:Le/a/f4/b/g/b;

    sget-object v5, Lcom/truecaller/common/network/util/KnownEndpoints;->MESSENGER:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v5}, Lcom/truecaller/common/network/util/KnownEndpoints;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v8, "eu"

    invoke-interface {v3, v8, v5}, Le/a/f4/b/g/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "messenger-dev-se1.truecaller.com"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 33
    new-instance v5, Le/a/e/a/z;

    invoke-direct {v5, v0}, Le/a/e/a/z;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a051a

    .line 34
    iget-object v3, v0, Le/a/e/a/k3;->M:Le/a/p4/b;

    invoke-interface {v3}, Le/a/p4/b;->m0()Z

    move-result v3

    new-instance v5, Le/a/e/a/w0;

    invoke-direct {v5, v0}, Le/a/e/a/w0;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0506

    .line 35
    iget-object v3, v0, Le/a/e/a/k3;->M:Le/a/p4/b;

    invoke-interface {v3}, Le/a/p4/b;->R0()Z

    move-result v3

    new-instance v5, Le/a/e/a/h0;

    invoke-direct {v5, v0}, Le/a/e/a/h0;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0505

    .line 36
    iget-object v3, v0, Le/a/e/a/k3;->M:Le/a/p4/b;

    invoke-interface {v3}, Le/a/p4/b;->B2()Z

    move-result v3

    new-instance v5, Le/a/e/a/g1;

    invoke-direct {v5, v0}, Le/a/e/a/g1;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0586

    .line 37
    iget-object v3, v0, Le/a/e/a/k3;->M:Le/a/p4/b;

    invoke-interface {v3}, Le/a/p4/b;->p0()Z

    move-result v3

    new-instance v5, Le/a/e/a/r;

    invoke-direct {v5, v0}, Le/a/e/a/r;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a05ab

    .line 38
    iget-object v3, v0, Le/a/e/a/k3;->M:Le/a/p4/b;

    invoke-interface {v3}, Le/a/p4/b;->q1()Z

    move-result v3

    new-instance v5, Le/a/e/a/s1;

    invoke-direct {v5, v0}, Le/a/e/a/s1;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0518

    .line 39
    iget-object v3, v0, Le/a/e/a/k3;->o0:Le/a/k0/f;

    invoke-interface {v3}, Le/a/k0/f;->L0()Z

    move-result v3

    new-instance v5, Le/a/e/a/f1;

    invoke-direct {v5, v0}, Le/a/e/a/f1;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a04ed

    .line 40
    iget-object v3, v0, Le/a/e/a/k3;->h0:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v3}, Le/a/k0/a/e;->u()Z

    move-result v3

    new-instance v5, Le/a/e/a/z0;

    invoke-direct {v5, v0}, Le/a/e/a/z0;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0590

    .line 41
    iget-object v3, v0, Le/a/e/a/k3;->R:Le/a/d/f;

    invoke-interface {v3}, Le/a/d/f;->q()Z

    move-result v3

    new-instance v5, Le/a/e/a/a1;

    invoke-direct {v5, v0}, Le/a/e/a/a1;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0527

    .line 42
    iget-object v3, v0, Le/a/e/a/k3;->R:Le/a/d/f;

    invoke-interface {v3}, Le/a/d/f;->y()Z

    move-result v3

    new-instance v5, Le/a/e/a/m;

    invoke-direct {v5, v0}, Le/a/e/a/m;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a055a

    .line 43
    iget-object v3, v0, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v5, "forceRemoteGeocoding"

    invoke-interface {v3, v5}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    new-instance v5, Le/a/e/a/l;

    invoke-direct {v5, v0}, Le/a/e/a/l;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0559

    .line 44
    iget-object v3, v0, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-string v5, "forceTestApiKeys"

    invoke-interface {v3, v5}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    new-instance v5, Le/a/e/a/m1;

    invoke-direct {v5, v0}, Le/a/e/a/m1;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a05ac

    .line 45
    iget-object v3, v0, Le/a/e/a/k3;->q:Le/a/b0/e/r/a;

    const-string v5, "useUkLogo"

    invoke-interface {v3, v5}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    new-instance v5, Le/a/e/a/c0;

    invoke-direct {v5, v0}, Le/a/e/a/c0;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0516

    const-string v3, "qaEnableInviteTab"

    .line 46
    invoke-static {v3}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v3

    sget-object v5, Le/a/e/a/x;->a:Le/a/e/a/x;

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0517

    .line 47
    iget-object v3, v0, Le/a/e/a/k3;->U:Le/a/c/c0/o;

    invoke-interface {v3}, Le/a/c/c0/o;->a()Z

    move-result v3

    new-instance v5, Le/a/e/a/a0;

    invoke-direct {v5, v0}, Le/a/e/a/a0;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0515

    .line 48
    iget-object v3, v0, Le/a/e/a/k3;->U:Le/a/c/c0/o;

    invoke-interface {v3}, Le/a/c/c0/o;->D0()Z

    move-result v3

    new-instance v5, Le/a/e/a/o;

    invoke-direct {v5, v0}, Le/a/e/a/o;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0a43

    const-string v3, "isInsightsLocalSenderFilterEnabled"

    .line 49
    invoke-static {v3}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v3

    new-instance v5, Le/a/e/a/l1;

    invoke-direct {v5, v0}, Le/a/e/a/l1;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0a42

    const-string v3, "isInsightsLocalMalanaSeedEnabled"

    .line 50
    invoke-static {v3}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v3

    new-instance v5, Le/a/e/a/s;

    invoke-direct {v5, v0}, Le/a/e/a/s;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0138

    .line 51
    iget-object v3, v0, Le/a/e/a/k3;->M:Le/a/p4/b;

    invoke-interface {v3}, Le/a/p4/b;->h1()Z

    move-result v3

    new-instance v5, Le/a/e/a/o1;

    invoke-direct {v5, v0}, Le/a/e/a/o1;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a1346

    .line 52
    iget-object v3, v0, Le/a/e/a/k3;->M:Le/a/p4/b;

    invoke-interface {v3}, Le/a/p4/b;->S()Z

    move-result v3

    new-instance v5, Le/a/e/a/h1;

    invoke-direct {v5, v0}, Le/a/e/a/h1;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a1355

    .line 53
    iget-object v3, v0, Le/a/e/a/k3;->j:Le/a/r/e/b;

    const-string v5, "qa_skip_drop_call_rejection"

    invoke-interface {v3, v5}, Le/a/r/e/b;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    new-instance v5, Le/a/e/a/b2;

    invoke-direct {v5, v0}, Le/a/e/a/b2;-><init>(Le/a/e/a/k3;)V

    invoke-static {v1, v2, v3, v5}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    .line 54
    iget-object v2, v0, Le/a/e/a/k3;->M:Le/a/p4/b;

    invoke-interface {v2}, Le/a/p4/b;->Y1()Z

    move-result v2

    new-instance v3, Le/a/e/a/r0;

    invoke-direct {v3, v0}, Le/a/e/a/r0;-><init>(Le/a/e/a/k3;)V

    const v5, 0x7f0a051f

    invoke-static {v1, v5, v2, v3}, Le/a/o5/j0;->q(Landroid/view/View;IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroidx/appcompat/widget/SwitchCompat;

    const v2, 0x7f0a0a40

    .line 55
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05aa

    .line 56
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05a8

    .line 57
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05a6

    .line 58
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0578

    .line 59
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04ff

    .line 60
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0501

    .line 61
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0500

    .line 62
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0567

    .line 63
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a056a

    .line 64
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04f2

    .line 65
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0548

    .line 66
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0549

    .line 67
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05a4

    .line 68
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04e7

    .line 69
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0563

    .line 70
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0522

    .line 71
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a050c

    .line 72
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a050e

    .line 73
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a050d

    .line 74
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a053a

    .line 75
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0533

    .line 76
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a059e

    .line 77
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0523

    .line 78
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04f8

    .line 79
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0709

    .line 80
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0571

    .line 81
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0510

    .line 82
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a055d

    .line 83
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0568

    .line 84
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04e4

    .line 85
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04f7

    .line 86
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05a0

    .line 87
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0564

    .line 88
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a056f

    .line 89
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0570

    .line 90
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04e6

    .line 91
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a03fd

    .line 92
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05a9

    .line 93
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a059f

    .line 94
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a059d

    .line 95
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04ea

    .line 96
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a051d

    .line 97
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a051c

    .line 98
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0561

    .line 99
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a055e

    .line 100
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04e8

    .line 101
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05af

    .line 102
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05b0

    .line 103
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0587

    .line 104
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0576

    .line 105
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0575

    .line 106
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0525

    .line 107
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05ae

    .line 108
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0530

    .line 109
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a03f7

    .line 110
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a03f8

    .line 111
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a051e

    .line 112
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a058d

    .line 113
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a055c

    .line 114
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a055b

    .line 115
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0589

    .line 116
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04fe

    .line 117
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a056b

    .line 118
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a058a

    .line 119
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a058b

    .line 120
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0588

    .line 121
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a058c

    .line 122
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0585

    .line 123
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a052a

    .line 124
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0591

    .line 125
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0547

    .line 126
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0540

    .line 127
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0545

    .line 128
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a053f

    .line 129
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0543

    .line 130
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a053e

    .line 131
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a053b

    .line 132
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0539

    .line 133
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a053c

    .line 134
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0544

    .line 135
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0535

    .line 136
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0536

    .line 137
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05a5

    .line 138
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0541

    .line 139
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0534

    .line 140
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0538

    .line 141
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a057e

    .line 142
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0546

    .line 143
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0529

    .line 144
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0a41

    .line 145
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a054c

    .line 146
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0566

    .line 147
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0554

    .line 148
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a054b

    .line 149
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0508

    .line 150
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0572

    .line 151
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0569

    .line 152
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a059c

    .line 153
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a055f

    .line 154
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a057f

    .line 155
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04eb

    .line 156
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0593

    .line 157
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04ec

    .line 158
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04f6

    .line 159
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04fa

    .line 160
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0509

    .line 161
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0519

    .line 162
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04e3

    .line 163
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a03fa

    .line 164
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a03f9

    .line 165
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a075d

    .line 166
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a075e

    .line 167
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a044c

    .line 168
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a1005

    .line 169
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a1002

    .line 170
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a050f

    .line 171
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a073d

    .line 172
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a032c

    .line 173
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a031f

    .line 174
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0362

    .line 175
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0049

    .line 176
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a058e

    .line 177
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a054e

    .line 178
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a052f

    .line 179
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05a1

    .line 180
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05a3

    .line 181
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05a2

    .line 182
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a056d

    .line 183
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0520

    .line 184
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04f9

    .line 185
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a144a

    .line 186
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a144b

    .line 187
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0560

    .line 188
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0502

    .line 189
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04f5

    .line 190
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0565

    .line 191
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0551

    .line 192
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0552

    .line 193
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0583

    .line 194
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0582

    .line 195
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04f1

    .line 196
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04ee

    .line 197
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a054d

    .line 198
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04f0

    .line 199
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04ef

    .line 200
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04fc

    .line 201
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04f3

    .line 202
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0531

    .line 203
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0550

    .line 204
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0556

    .line 205
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a054f

    .line 206
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05ad

    .line 207
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0555

    .line 208
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0504

    .line 209
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0542

    .line 210
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a03b7

    .line 211
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a053d

    .line 212
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0537

    .line 213
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a050a

    .line 214
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0574

    .line 215
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0528

    .line 216
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0562

    .line 217
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0592

    .line 218
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04fd

    .line 219
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0897

    .line 220
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a056c

    .line 221
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a056e

    .line 222
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0ffd

    .line 223
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04fb

    .line 224
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05a7

    .line 225
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a058f

    .line 226
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0596

    .line 227
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0584

    .line 228
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0503

    .line 229
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0a4a

    .line 230
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0761

    .line 231
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a129b

    .line 232
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0c7b

    .line 233
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0e5b

    .line 234
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0e5a

    .line 235
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a05b8

    .line 236
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0ff8

    .line 237
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04f4

    .line 238
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0573

    .line 239
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a03fc

    .line 240
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0ff9

    .line 241
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0ffa

    .line 242
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0ff5

    .line 243
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0ff6

    .line 244
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0137

    .line 245
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a067a

    .line 246
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0ad0

    .line 247
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a048e

    .line 248
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a077a

    .line 249
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a077b

    .line 250
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a048c

    .line 251
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a048f

    .line 252
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a048d

    .line 253
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a1354

    .line 254
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a04e5

    .line 255
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0580

    .line 256
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0601

    .line 257
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0ef4

    .line 258
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0ef3

    .line 259
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a054a

    .line 260
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0e5c

    .line 261
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0e5d

    .line 262
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0ff3

    .line 263
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a1004

    .line 264
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a1008

    .line 265
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a1001

    .line 266
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a1000

    .line 267
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0ad1

    .line 268
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a1009

    .line 269
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a07d8

    .line 270
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a100a

    .line 271
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a1422

    .line 272
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0760

    .line 273
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0b27

    .line 274
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0a3e

    .line 275
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0ffe

    .line 276
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0f33

    .line 277
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a03f6

    .line 278
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a03f5

    .line 279
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0e5e

    .line 280
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a1003

    .line 281
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0a0c9b

    .line 282
    invoke-static {v1, v2, v0}, Le/a/o5/j0;->p(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 283
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v3, v5, :cond_6

    move v3, v7

    goto :goto_4

    :cond_6
    move v3, v4

    .line 284
    :goto_4
    invoke-static {v2, v3, v7}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 285
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "Release"

    aput-object v5, v3, v4

    const-string v5, "12.21.6"

    aput-object v5, v3, v7

    const v8, 0x12a18e

    .line 286
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v3, v10

    const/4 v9, 0x3

    aput-object v5, v3, v9

    .line 287
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x4

    aput-object v5, v3, v8

    const/4 v5, 0x5

    iget-object v11, v0, Le/a/e/a/k3;->p:Le/a/b0/o/a;

    const-wide/16 v12, 0x0

    const-string v14, "profileUserId"

    .line 288
    invoke-interface {v11, v14, v12, v13}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v3, v5

    const/4 v5, 0x6

    iget-object v11, v0, Le/a/e/a/k3;->T:Le/a/d4/c;

    .line 289
    invoke-interface {v11}, Le/a/d4/c;->c()Ljava/util/SortedSet;

    move-result-object v12

    const/16 v16, -0x1

    sget-object v18, Le/a/e/a/t0;->a:Le/a/e/a/t0;

    const-string v13, "\n"

    const-string v14, ""

    const-string v15, ""

    const-string v17, ""

    invoke-static/range {v12 .. v18}, Ls1/u/i;->N(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v5

    const-string v5, "%s store v%s(%d) | actual v%s(%d) | %d\nMobile Services: %s"

    .line 290
    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0a060b

    .line 291
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 292
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Le/a/e/a2;->y(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v3

    new-array v8, v8, [Ljava/lang/Object;

    .line 294
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "COMPILE_TIME"

    invoke-static {v11, v12}, Le/a/e/a2;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 295
    new-instance v11, Ljava/util/Date;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v12}, Le/a/e/a2;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 296
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "HH:mm dd/MM/yyyy"

    invoke-direct {v12, v13, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v12, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_7
    const-string v2, "Not Available"

    :goto_5
    aput-object v2, v8, v4

    .line 297
    iget-object v2, v0, Le/a/e/a/k3;->X:Le/a/p5/g;

    .line 298
    invoke-interface {v2}, Le/a/p5/g;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v7

    iget-object v2, v0, Le/a/e/a/k3;->E:Le/a/a/i0;

    .line 299
    invoke-interface {v2}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v10

    if-nez v3, :cond_8

    goto :goto_6

    :cond_8
    const-string v2, "\nLat: "

    .line 300
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "\nLon: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_6
    aput-object v6, v8, v9

    const-string v2, "Build time: %s\nDevice: %s\nIM ID: %s%s"

    .line 301
    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0607

    .line 302
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    new-instance v2, Le/a/e/a/k3$d;

    const v3, 0x7f0a0553

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v2, v0, v3}, Le/a/e/a/k3$d;-><init>(Le/a/e/a/k3;Landroid/view/ViewGroup;)V

    const v3, 0x7f0a057a

    .line 304
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SearchView;

    .line 305
    new-instance v4, Le/a/e/a/x0;

    invoke-direct {v4, v5}, Le/a/e/a/x0;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    new-instance v4, Le/a/e/a/e0;

    invoke-direct {v4, v2, v5}, Le/a/e/a/e0;-><init>(Le/a/e/a/k3$d;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$k;)V

    .line 307
    new-instance v4, Le/a/e/a/k3$a;

    invoke-direct {v4, v0, v2}, Le/a/e/a/k3$a;-><init>(Le/a/e/a/k3;Le/a/e/a/k3$d;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$l;)V

    const v2, 0x7f0a0579

    .line 308
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 309
    new-instance v2, Le/a/e/a/k;

    invoke-direct {v2, v3}, Le/a/e/a/k;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V

    return-void
.end method

.method public final pB()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v2, "Enter IM ID"

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    const v1, 0x7f0d0422

    .line 3
    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->o(I)Ln3/b/a/g$a;

    const v1, 0x7f120726

    new-instance v2, Le/a/e/a/s0;

    invoke-direct {v2, p0}, Le/a/e/a/s0;-><init>(Le/a/e/a/k3;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v1, 0x7f1206fb

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public final qB()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v2, "Enter LeadGen ID"

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    const v1, 0x7f0d0419

    .line 3
    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->o(I)Ln3/b/a/g$a;

    const v1, 0x7f120726

    new-instance v2, Le/a/e/a/r1;

    invoke-direct {v2, p0}, Le/a/e/a/r1;-><init>(Le/a/e/a/k3;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v1, 0x7f1206fb

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public final rB()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0d042a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0557

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3
    iget-object v2, p0, Le/a/e/a/k3;->R:Le/a/d/f;

    invoke-interface {v2}, Le/a/d/f;->w()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " seconds are left"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v2, "Already expired."

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    :goto_0
    new-instance v2, Ln3/b/a/g$a;

    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v4, v2, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v5, "Voip id expiration"

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 9
    iput-object v0, v4, Landroidx/appcompat/app/AlertController$b;->u:Landroid/view/View;

    .line 10
    iput v3, v4, Landroidx/appcompat/app/AlertController$b;->t:I

    const v0, 0x7f120726

    .line 11
    new-instance v3, Le/a/e/a/b0;

    invoke-direct {v3, p0, v1}, Le/a/e/a/b0;-><init>(Le/a/e/a/k3;Landroid/widget/EditText;)V

    .line 12
    invoke-virtual {v2, v0, v3}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v0, 0x7f1206fb

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v2, v0, v1}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 14
    invoke-virtual {v2}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public final sB()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0d042b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0577

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "qa_voip_notification_rtm_token"

    .line 3
    invoke-static {v2}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v2, Ln3/b/a/g$a;

    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v4, v2, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v5, "New RTM token"

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 6
    iput-object v0, v4, Landroidx/appcompat/app/AlertController$b;->u:Landroid/view/View;

    .line 7
    iput v3, v4, Landroidx/appcompat/app/AlertController$b;->t:I

    .line 8
    new-instance v0, Le/a/e/a/g0;

    invoke-direct {v0, p0, v1}, Le/a/e/a/g0;-><init>(Le/a/e/a/k3;Landroid/widget/EditText;)V

    const v1, 0x7f120726

    .line 9
    invoke-virtual {v2, v1, v0}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v0, 0x7f1206fb

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v2, v0, v1}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    new-instance v0, Le/a/e/a/t1;

    invoke-direct {v0, p0}, Le/a/e/a/t1;-><init>(Le/a/e/a/k3;)V

    .line 11
    iget-object v1, v2, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v3, "Clear"

    iput-object v3, v1, Landroidx/appcompat/app/AlertController$b;->k:Ljava/lang/CharSequence;

    .line 12
    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 13
    invoke-virtual {v2}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public final tB()V
    .locals 15

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "test.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "android.os.FileUtils"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setPermissions"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    move v5, v6

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v10, v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".db"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    new-array v12, v3, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v6

    const/16 v13, 0x1a4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-virtual {v1, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File permissions changed for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v10

    .line 10
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permissions changed for: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public final uB()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->values()[Lcom/truecaller/service/AlarmReceiver$AlarmType;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Le/a/j4/b/a/h;->z(Ljava/lang/String;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/truecaller/service/AlarmReceiver;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public final vB()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/a/k3;->P:Le/a/h/p0/c;

    invoke-interface {v0}, Le/a/h/p0/c;->a()V

    .line 2
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Contacts settings reseted"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final wB()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/a/k3;->n:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "lastCallMadeWithTcTime"

    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->remove(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/e/a/k3;->n:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "lastDialerPromotionTime"

    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final xB()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/e/a2;->k(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object v3

    invoke-interface {v3}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/l0/c;

    invoke-interface {v3}, Le/a/l0/c;->y()V

    .line 4
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5
    invoke-static {v3, v2}, Lcom/truecaller/service/SyncPhoneBookService;->a(Landroid/content/Context;Z)V

    .line 6
    invoke-interface {v0}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v0

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    invoke-interface {v0, v1}, Le/a/a/g/m;->b(Z)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 7
    :goto_0
    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Le/a/i/w/e;->a(Landroid/content/Context;)Le/a/i/w/d;

    move-result-object v3

    invoke-interface {v3}, Le/a/i/w/d;->reset()V

    if-eqz v0, :cond_1

    const-string v0, "Provider has been reset, syncing call log and phone book"

    .line 8
    invoke-static {p0, v0, v2}, Le/d/c/a/a;->y0(Le/a/e/a/k3;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const-string v0, "Could not reset provider"

    .line 9
    invoke-static {p0, v0, v1}, Le/d/c/a/a;->y0(Le/a/e/a/k3;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public final yB()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v2, "Enter call me back test number"

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    const v1, 0x7f0d041a

    .line 3
    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->o(I)Ln3/b/a/g$a;

    const v1, 0x7f120726

    new-instance v2, Le/a/e/a/g;

    invoke-direct {v2, p0}, Le/a/e/a/g;-><init>(Le/a/e/a/k3;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v1, 0x7f1206fb

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public final zB(Z)V
    .locals 11

    .line 1
    new-instance v0, Le/a/q4/q0;

    iget-object v1, p0, Le/a/e/a/k3;->K:Le/a/u3/g;

    invoke-direct {v0, v1}, Le/a/q4/q0;-><init>(Le/a/u3/g;)V

    const-string v2, "featureReferralNavigationDrawer"

    const-string v3, "featureReferralDeeplink"

    const-string v4, "featureContactDetail"

    const-string v5, "featureAftercall"

    const-string v6, "featureAftercallSaveContact"

    const-string v7, "featureGoPro"

    const-string v8, "featurePushNotification"

    const-string v9, "featureReferralDeeplink"

    const-string v10, "featureReferralAfterCallPromo"

    .line 2
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 3
    aget-object v3, v1, v2

    .line 4
    invoke-virtual {v0, v3, p1}, Le/a/q4/q0;->c(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
