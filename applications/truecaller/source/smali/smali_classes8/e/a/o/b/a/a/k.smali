.class public final Le/a/o/b/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;


# direct methods
.method public constructor <init>(Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/a/a/k;->a:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/o/b/a/a/k;->a:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    invoke-virtual {p1}, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;->getPresenter$context_call_release()Le/a/o/b/a/a/g;

    move-result-object p1

    check-cast p1, Le/a/o/b/a/a/l;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/b/a/a/h;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/o/b/a/a/h;->S()V

    :cond_0
    return-void
.end method
