.class public Le/h/a/c/r0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/r0/b;->P4(Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Le/h/a/c/r0/i;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/r0/i;

.field public final synthetic b:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

.field public final synthetic c:Le/h/a/c/r0/i;

.field public final synthetic d:I

.field public final synthetic e:Le/h/a/c/r0/b;


# direct methods
.method public constructor <init>(Le/h/a/c/r0/b;Le/h/a/c/r0/i;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Le/h/a/c/r0/i;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/r0/b$a;->e:Le/h/a/c/r0/b;

    iput-object p2, p0, Le/h/a/c/r0/b$a;->a:Le/h/a/c/r0/i;

    iput-object p3, p0, Le/h/a/c/r0/b$a;->b:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    iput-object p4, p0, Le/h/a/c/r0/b$a;->c:Le/h/a/c/r0/i;

    iput p5, p0, Le/h/a/c/r0/b$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/b$a;->a:Le/h/a/c/r0/i;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Le/h/a/c/r0/b$a$a;

    invoke-direct {v1, p0}, Le/h/a/c/r0/b$a$a;-><init>(Le/h/a/c/r0/b$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
