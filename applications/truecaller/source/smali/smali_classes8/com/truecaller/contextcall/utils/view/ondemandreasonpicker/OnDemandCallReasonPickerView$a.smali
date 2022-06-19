.class public final Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;->t0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;


# direct methods
.method public constructor <init>(Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView$a;->a:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView$a;->a:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView$a;->a:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    :cond_0
    return-void
.end method
