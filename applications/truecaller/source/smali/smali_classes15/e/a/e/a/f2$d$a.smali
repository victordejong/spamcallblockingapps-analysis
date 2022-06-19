.class public final Le/a/e/a/f2$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/f2$d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/a/f2$d;


# direct methods
.method public constructor <init>(Le/a/e/a/f2$d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/f2$d$a;->a:Le/a/e/a/f2$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/a/f2$d$a;->a:Le/a/e/a/f2$d;

    iget-object v0, v0, Le/a/e/a/f2$d;->b:Le/a/e/a/f2;

    .line 2
    sget-object v1, Le/a/e/a/f2;->h:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/ui/TruecallerInit;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x14008000

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Intent(this, TruecallerI\u2026t.FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
