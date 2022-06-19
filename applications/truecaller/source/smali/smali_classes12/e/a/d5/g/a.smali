.class public final synthetic Le/a/d5/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Le/a/d5/g/j;


# direct methods
.method public synthetic constructor <init>(Le/a/d5/g/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d5/g/a;->a:Le/a/d5/g/j;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Le/a/d5/g/a;->a:Le/a/d5/g/j;

    .line 1
    iget-object p1, p1, Le/a/d5/g/j;->d:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
