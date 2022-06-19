.class public Le/h/a/c/r0/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/r0/n;->P4(Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Le/h/a/c/r0/i;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le/h/a/c/r0/n;


# direct methods
.method public constructor <init>(Le/h/a/c/r0/n;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/r0/n$a;->b:Le/h/a/c/r0/n;

    iput p2, p0, Le/h/a/c/r0/n$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/n$a;->b:Le/h/a/c/r0/n;

    invoke-virtual {v0}, Le/h/a/c/r0/e;->Q4()Le/h/a/c/r0/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v2, Le/h/a/c/r0/n$a$a;

    invoke-direct {v2, p0, v0}, Le/h/a/c/r0/n$a$a;-><init>(Le/h/a/c/r0/n$a;Le/h/a/c/r0/i;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
