.class public final Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;->o8(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;

.field public final synthetic b:Le/a/f/a/w/f;


# direct methods
.method public constructor <init>(Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;Le/a/f/a/w/f;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity$a;->a:Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;

    iput-object p2, p0, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity$a;->b:Le/a/f/a/w/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity$a;->b:Le/a/f/a/w/f;

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f/a/w/c;

    if-eqz p1, :cond_0

    const-string p2, "adapter.getItem(position) ?: return@setAdapter"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity$a;->a:Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;

    invoke-virtual {p2}, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;->pa()Le/a/f/a/w/g;

    move-result-object p2

    .line 3
    iget-object p1, p1, Le/a/f/a/w/c;->a:Ljava/lang/String;

    .line 4
    check-cast p2, Le/a/f/a/w/k;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "accountId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p2, p2, Le/a/f/a/w/k;->d:Le/a/f/y/c;

    invoke-interface {p2, p1}, Le/a/f/y/c;->s(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
