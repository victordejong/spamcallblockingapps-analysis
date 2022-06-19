.class public final Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;->setSource(Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

.field public final synthetic c:Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;


# direct methods
.method public constructor <init>(Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView$b;->b:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    iput-object p2, p0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView$b;->c:Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView$b;->b:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    iget-object v1, p0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView$b;->c:Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;

    .line 2
    iput-object v1, v0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;->C:Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;->getPresenter$context_call_release()Le/a/o/b/a/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView$b;->b:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    invoke-virtual {v1}, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;->getSource()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;

    move-result-object v1

    check-cast v0, Le/a/o/b/a/a/l;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    instance-of v2, v1, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;

    invoke-virtual {v1}, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;->getType()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;

    move-result-object v1

    sget-object v2, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;->MissedCall:Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;

    if-ne v1, v2, :cond_0

    .line 7
    sget v1, Lcom/truecaller/contextcall/R$string;->context_call_back_with_call_reason:I

    goto :goto_0

    .line 8
    :cond_0
    sget v1, Lcom/truecaller/contextcall/R$string;->context_call_again_with_call_reason:I

    goto :goto_0

    .line 9
    :cond_1
    instance-of v2, v1, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;

    if-eqz v2, :cond_2

    .line 10
    sget v1, Lcom/truecaller/contextcall/R$string;->context_call_add_call_reason:I

    goto :goto_0

    .line 11
    :cond_2
    instance-of v1, v1, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$DetailsScreen;

    if-eqz v1, :cond_4

    .line 12
    sget v1, Lcom/truecaller/contextcall/R$string;->context_call_back_with_call_reason:I

    .line 13
    :goto_0
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/o/b/a/a/h;

    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Le/a/o/b/a/a/h;->setTitle(I)V

    .line 14
    :cond_3
    invoke-virtual {v0}, Le/a/o/b/a/a/l;->Ij()Lq3/a/p1;

    .line 15
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    .line 16
    :cond_4
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method
