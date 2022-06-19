.class public final synthetic Le/a/e/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/l1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/g;->a:Le/a/e/c/l1;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10

    iget-object p2, p0, Le/a/e/c/g;->a:Le/a/e/c/l1;

    .line 1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p4

    if-nez p4, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object p4, p2, Le/a/e/c/l1;->e:Ln3/b/e/a;

    if-nez p4, :cond_b

    .line 3
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of p3, p1, Le/a/l0/u/d/b;

    if-eqz p3, :cond_d

    .line 5
    check-cast p1, Le/a/l0/u/d/b;

    .line 6
    invoke-interface {p1}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 7
    :cond_1
    iget-object p3, p1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 9
    iget-object p3, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    :cond_2
    move-object v1, p3

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_d

    .line 11
    iget-object p3, p2, Le/a/e/c/l1;->n:Le/a/o5/s1;

    invoke-static {p1, p3}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->resolve(Lcom/truecaller/data/entity/HistoryEvent;Le/a/o5/s1;)Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    move-result-object p3

    .line 12
    iget-object p4, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz p4, :cond_3

    .line 13
    iget-object p5, p2, Le/a/e/c/l1;->h:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p5}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_3
    const-string p5, ""

    .line 14
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v3, v1

    goto :goto_1

    :cond_4
    move-object v3, p5

    .line 15
    :goto_1
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_5

    move-object p1, v1

    :cond_5
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string v2, "contactCallHistory"

    const-string p5, "analyticsContext"

    .line 17
    invoke-static {v2, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v9, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;

    .line 19
    invoke-virtual {p3}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->getPrimaryAction()Lcom/truecaller/calling/ActionType;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 p5, 0x3

    if-eq p3, p5, :cond_a

    const/4 p5, 0x4

    if-eq p3, p5, :cond_9

    const/4 p5, 0x5

    const-string v0, "callHistory"

    if-eq p3, p5, :cond_8

    const/4 p5, 0x6

    if-eq p3, p5, :cond_7

    const/4 p1, 0x7

    if-eq p3, p1, :cond_6

    goto :goto_2

    .line 20
    :cond_6
    iget-object p1, p2, Le/a/e/c/l1;->p:Le/a/d/c0/s1;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p2

    const-string p3, "callLog"

    invoke-interface {p1, p2, p4, p3}, Le/a/d/c0/s1;->h(Ln3/r/a/l;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Z

    goto :goto_2

    .line 21
    :cond_7
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p2

    const-string p3, "video"

    invoke-static {p2, p4, p1, p3, v0}, Le/a/n/g0;->n(Landroid/app/Activity;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_8
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p2

    const-string p3, "call"

    invoke-static {p2, p4, p1, p3, v0}, Le/a/n/g0;->n(Landroid/app/Activity;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const/4 v5, 0x1

    .line 23
    iget-object p1, p2, Le/a/e/c/l1;->o:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    .line 24
    new-instance p2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 25
    invoke-interface {p1, p2}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    .line 26
    iget-object p1, p2, Le/a/e/c/l1;->o:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    .line 27
    new-instance p2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 28
    invoke-interface {p1, p2}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    goto :goto_2

    .line 29
    :cond_b
    move-object p3, p1

    check-cast p3, Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result p3

    if-nez p3, :cond_c

    .line 30
    invoke-virtual {p2}, Le/a/e/c/l1;->dB()V

    goto :goto_2

    .line 31
    :cond_c
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result p1

    invoke-virtual {p2, p1, p3}, Le/a/e/c/l1;->fB(II)V

    :cond_d
    :goto_2
    return-void
.end method
