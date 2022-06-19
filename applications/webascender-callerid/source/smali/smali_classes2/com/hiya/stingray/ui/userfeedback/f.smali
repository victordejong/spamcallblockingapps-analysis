.class public final Lcom/hiya/stingray/ui/userfeedback/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/ui/userfeedback/a;Lcom/hiya/stingray/t/d0;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "feedbackDataType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogItem"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/userfeedback/e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p2

    const-string v0, "callLogItem.identityData"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;->v1(Ljava/lang/String;Ljava/lang/String;)Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;

    move-result-object p1

    const-string p2, "WrongNameDialog.createWr\u2026ogItem.identityData.name)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "wrong_name_tag"

    .line 3
    invoke-static {p3, p2, p1}, Lcom/hiya/stingray/util/e0;->w(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroidx/fragment/app/d;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/ui/userfeedback/b;->u1(Ljava/lang/String;)Lcom/hiya/stingray/ui/userfeedback/b;

    move-result-object p1

    const-string p2, "NotSpamDialog.createNotS\u2026Dialog(callLogItem.phone)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "not_spam_tag"

    .line 5
    invoke-static {p3, p2, p1}, Lcom/hiya/stingray/util/e0;->w(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroidx/fragment/app/d;)V

    :goto_0
    return-void
.end method
