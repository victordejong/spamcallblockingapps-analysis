.class public Le/h/a/c/r0/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/r0/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/r0/b$a;


# direct methods
.method public constructor <init>(Le/h/a/c/r0/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/r0/b$a$a;->a:Le/h/a/c/r0/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/b$a$a;->a:Le/h/a/c/r0/b$a;

    iget-object v1, v0, Le/h/a/c/r0/b$a;->b:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->p:Le/h/a/c/r0/k;

    .line 3
    sget-object v2, Le/h/a/c/r0/k;->e:Le/h/a/c/r0/k;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 4
    iget-object v0, v0, Le/h/a/c/r0/b$a;->e:Le/h/a/c/r0/b;

    .line 5
    iget-object v0, v0, Le/h/a/c/r0/b;->q:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Le/h/a/c/r0/b$a$a;->a:Le/h/a/c/r0/b$a;

    iget-object v1, v0, Le/h/a/c/r0/b$a;->c:Le/h/a/c/r0/i;

    if-eqz v1, :cond_0

    .line 8
    iget v0, v0, Le/h/a/c/r0/b$a;->d:I

    invoke-virtual {v1, v3, v0}, Le/h/a/c/r0/i;->PA(Landroid/os/Bundle;I)V

    .line 9
    :cond_0
    iget-object v0, p0, Le/h/a/c/r0/b$a$a;->a:Le/h/a/c/r0/b$a;

    iget-object v0, v0, Le/h/a/c/r0/b$a;->e:Le/h/a/c/r0/b;

    .line 10
    iget-object v0, v0, Le/h/a/c/r0/b;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 12
    :cond_1
    iget-object v0, v0, Le/h/a/c/r0/b$a;->e:Le/h/a/c/r0/b;

    .line 13
    sget v1, Le/h/a/c/r0/b;->v:I

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    throw v3
.end method
