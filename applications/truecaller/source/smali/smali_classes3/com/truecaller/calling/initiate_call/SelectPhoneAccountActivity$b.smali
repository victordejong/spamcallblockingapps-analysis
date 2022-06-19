.class public final Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity$b;->a:Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity$b;->a:Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity;

    .line 2
    iget-object p1, p1, Lcom/truecaller/calling/initiate_call/SelectPhoneAccountActivity;->d:Le/a/h/e/q;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/e/p;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/h/e/p;->t()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
