.class public final Le/a/o/b/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;


# direct methods
.method public constructor <init>(Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/a/a/j;->a:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/o/b/a/a/j;->a:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    invoke-virtual {p1}, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;->getPresenter$context_call_release()Le/a/o/b/a/a/g;

    move-result-object p1

    iget-object v0, p0, Le/a/o/b/a/a/j;->a:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    .line 2
    iget-boolean v0, v0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;->y:Z

    .line 3
    check-cast p1, Le/a/o/b/a/a/l;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/b/a/a/h;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/o/b/a/a/h;->t0()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/b/a/a/h;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/o/b/a/a/h;->R()V

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Le/a/o/b/a/a/j;->a:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    invoke-virtual {p1}, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;->getOnDemandReasonPickerCallback()Le/a/o/b/a/a/f;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/o/b/a/a/f;->d()V

    :cond_2
    return-void
.end method
