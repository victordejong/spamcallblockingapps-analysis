.class public final Le/a/j/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Le/a/j/a/a/c;


# direct methods
.method public constructor <init>(Le/a/j/a/a/c;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/a/d;->a:Le/a/j/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/j/a/a/d;->a:Le/a/j/a/a/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
