.class public Le/h/a/c/r0/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/r0/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/r0/a$a;


# direct methods
.method public constructor <init>(Le/h/a/c/r0/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/r0/a$a$a;->a:Le/h/a/c/r0/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/a$a$a;->a:Le/h/a/c/r0/a$a;

    iget-object v0, v0, Le/h/a/c/r0/a$a;->d:Le/h/a/c/r0/a;

    .line 2
    iget-object v0, v0, Le/h/a/c/r0/a;->o:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Le/h/a/c/r0/a$a$a;->a:Le/h/a/c/r0/a$a;

    iget-object v1, v0, Le/h/a/c/r0/a$a;->b:Le/h/a/c/r0/i;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 5
    iget v0, v0, Le/h/a/c/r0/a$a;->c:I

    invoke-virtual {v1, v2, v0}, Le/h/a/c/r0/i;->PA(Landroid/os/Bundle;I)V

    .line 6
    :cond_0
    iget-object v0, p0, Le/h/a/c/r0/a$a$a;->a:Le/h/a/c/r0/a$a;

    iget-object v0, v0, Le/h/a/c/r0/a$a;->d:Le/h/a/c/r0/a;

    .line 7
    iget-object v0, v0, Le/h/a/c/r0/a;->o:Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
