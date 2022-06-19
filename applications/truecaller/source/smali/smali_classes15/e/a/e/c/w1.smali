.class public Le/a/e/c/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e/o0$b;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c/w1;->a:Le/a/e/c/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/e/c/w1;->a:Le/a/e/c/s1;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-wide/16 v2, -0x1

    const-string v4, "CONVERSATION_ID"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const/4 v3, -0x1

    .line 3
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 4
    invoke-virtual {v5, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "RESULT_NUMBER_BLOCKED"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 6
    invoke-virtual {v0, v3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method
