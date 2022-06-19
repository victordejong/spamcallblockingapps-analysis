.class public final synthetic Le/a/t/b/e/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/t/b/e/d/e;


# direct methods
.method public synthetic constructor <init>(Le/a/t/b/e/d/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/t/b/e/d/b;->a:Le/a/t/b/e/d/e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Le/a/t/b/e/d/b;->a:Le/a/t/b/e/d/e;

    .line 1
    iget-object p1, p1, Le/a/t/b/e/d/e;->f:Le/a/t/b/e/d/f;

    .line 2
    iget-object p1, p1, Le/a/t/b/e/d/f;->m:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;

    .line 3
    iget-object p2, p1, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->b:Ljava/util/Set;

    invoke-virtual {p1, p2}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->a(Ljava/util/Set;)V

    return-void
.end method
