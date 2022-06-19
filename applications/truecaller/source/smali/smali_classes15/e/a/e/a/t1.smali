.class public final synthetic Le/a/e/a/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/a/k3;


# direct methods
.method public synthetic constructor <init>(Le/a/e/a/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/t1;->a:Le/a/e/a/k3;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Le/a/e/a/t1;->a:Le/a/e/a/k3;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "qa_voip_notification_rtm_token"

    .line 2
    invoke-static {p2}, Le/a/j4/b/a/h;->u(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "Token has been cleared."

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
