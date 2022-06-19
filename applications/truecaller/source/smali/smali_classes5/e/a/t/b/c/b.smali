.class public final synthetic Le/a/t/b/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/t/b/c/f;


# direct methods
.method public synthetic constructor <init>(Le/a/t/b/c/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/t/b/c/b;->a:Le/a/t/b/c/f;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Le/a/t/b/c/b;->a:Le/a/t/b/c/f;

    .line 1
    iget-object p2, p2, Le/a/t/b/c/f;->f:Le/a/t/b/c/g;

    .line 2
    iget-object p2, p2, Le/a/t/b/c/g;->l:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->d()V

    .line 4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
