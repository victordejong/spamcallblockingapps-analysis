.class public final Le/a/a/e/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/e/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/b;->Hb(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/e/b;


# direct methods
.method public constructor <init>(Le/a/a/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/e/b$h;->a:Le/a/a/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/inboxcleanup/Mode;)V
    .locals 5

    const-string v0, "mode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/e/b$h;->a:Le/a/a/e/b;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/messaging/inboxcleanup/InboxCleanupPreviewActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public r1()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/e/b$h;->a:Le/a/a/e/b;

    invoke-virtual {v0}, Le/a/a/e/b;->PA()Le/a/a/e/u;

    move-result-object v0

    invoke-interface {v0}, Le/a/a/e/u;->jf()V

    return-void
.end method
