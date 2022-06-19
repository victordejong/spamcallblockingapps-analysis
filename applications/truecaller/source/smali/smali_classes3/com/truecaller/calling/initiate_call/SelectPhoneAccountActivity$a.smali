.class public final Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity;->C2(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity;

.field public final synthetic b:Le/a/h/e/n;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity;Le/a/h/e/n;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity$a;->a:Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity;

    iput-object p2, p0, Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity$a;->b:Le/a/h/e/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    .line 1
    iget-object p1, p0, Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity$a;->b:Le/a/h/e/n;

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/e/l;

    if-eqz p1, :cond_a

    const-string p2, "adapter.getItem(position) ?: return@setAdapter"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity$a;->a:Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity;

    .line 3
    iget-object p2, p2, Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity;->d:Le/a/h/e/q;

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    const-string v1, "phoneAccountInfo"

    .line 4
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    instance-of v1, p1, Le/a/h/e/l$b;

    const-string v2, "displayName"

    const-string v3, "analyticsContext"

    const-string v4, "number"

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p2, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 7
    move-object v5, v1

    check-cast v5, Le/a/h/e/o;

    if-eqz v5, :cond_7

    iget-object v6, p2, Le/a/h/e/q;->c:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v7, p2, Le/a/h/e/q;->e:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v8, p2, Le/a/h/e/q;->d:Ljava/lang/String;

    if-eqz v8, :cond_0

    const/4 v9, 0x0

    check-cast p1, Le/a/h/e/l$b;

    const/4 v10, 0x0

    iget-boolean v11, p2, Le/a/h/e/q;->f:Z

    iget-object v12, p2, Le/a/h/e/q;->g:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    invoke-interface/range {v5 .. v12}, Le/a/h/e/o;->F8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3
    instance-of v1, p1, Le/a/h/e/l$a;

    if-eqz v1, :cond_7

    .line 9
    iget-object v1, p2, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 10
    move-object v5, v1

    check-cast v5, Le/a/h/e/o;

    if-eqz v5, :cond_7

    iget-object v6, p2, Le/a/h/e/q;->c:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v7, p2, Le/a/h/e/q;->e:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v8, p2, Le/a/h/e/q;->d:Ljava/lang/String;

    if-eqz v8, :cond_4

    check-cast p1, Le/a/h/e/l$a;

    .line 11
    iget p1, p1, Le/a/h/e/l$a;->d:I

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    iget-boolean v11, p2, Le/a/h/e/q;->f:Z

    iget-object v12, p2, Le/a/h/e/q;->g:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    invoke-interface/range {v5 .. v12}, Le/a/h/e/o;->F8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    goto :goto_0

    :cond_4
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_7
    :goto_0
    iget-object p1, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/e/p;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/h/e/p;->t()V

    :cond_8
    return-void

    :cond_9
    const-string p1, "presenter"

    .line 14
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-void
.end method
