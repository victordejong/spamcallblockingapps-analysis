.class public final Le/a/m4/c/i/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m4/c/i/a/e;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m4/c/i/a/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "BizProfileRefreshNotifier.ACTION_BIZ_PROFILE_REFRESHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEY_BIZ_NAME"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "KEY_BIZ_DELETED"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Le/a/m4/c/i/a/f;->a:Landroid/content/Context;

    invoke-static {p1}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method
