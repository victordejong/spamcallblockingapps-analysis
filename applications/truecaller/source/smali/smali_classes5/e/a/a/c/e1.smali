.class public final synthetic Le/a/a/c/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/e1;->a:Le/a/a/c/y3;

    iput-object p2, p0, Le/a/a/c/e1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le/a/a/c/e1;->a:Le/a/a/c/y3;

    iget-object v1, p0, Le/a/a/c/e1;->b:Ljava/util/List;

    check-cast p1, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, v0, Le/a/a/c/y3;->O:Le/a/c/e/c;

    sget-object v0, Le/a/c/a/b/c/a;->c:Le/a/c/r/d/c;

    invoke-virtual {v0}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, v0, Le/a/a/c/y3;->d:Le/a/a/c/h3;

    const/4 v2, 0x0

    const-string v3, "conversation-deleteOtp"

    invoke-interface {p1, v2, v2, v1, v3}, Le/a/a/c/h3;->Cf(ZZLjava/util/List;Ljava/lang/String;)V

    .line 5
    iget-object p1, v0, Le/a/a/c/y3;->O:Le/a/c/e/c;

    sget-object v0, Le/a/c/a/b/c/a;->b:Le/a/c/r/d/c;

    invoke-virtual {v0}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    goto :goto_0

    .line 6
    :cond_2
    sget-object p1, Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity;->a:Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ConversationBubble"

    invoke-virtual {p1, v1, v2, v3}, Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a;->a(Landroid/content/Context;Lcom/truecaller/messaging/inboxcleanup/CleanupResult;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 7
    iget-object p1, v0, Le/a/a/c/y3;->O:Le/a/c/e/c;

    sget-object v0, Le/a/c/a/b/c/a;->a:Le/a/c/r/d/c;

    invoke-virtual {v0}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 8
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
