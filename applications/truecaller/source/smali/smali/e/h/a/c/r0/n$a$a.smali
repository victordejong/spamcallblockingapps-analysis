.class public Le/h/a/c/r0/n$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/r0/n$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/r0/i;

.field public final synthetic b:Le/h/a/c/r0/n$a;


# direct methods
.method public constructor <init>(Le/h/a/c/r0/n$a;Le/h/a/c/r0/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/r0/n$a$a;->b:Le/h/a/c/r0/n$a;

    iput-object p2, p0, Le/h/a/c/r0/n$a$a;->a:Le/h/a/c/r0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/n$a$a;->b:Le/h/a/c/r0/n$a;

    iget-object v0, v0, Le/h/a/c/r0/n$a;->b:Le/h/a/c/r0/n;

    .line 2
    iget-object v0, v0, Le/h/a/c/r0/n;->s:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Le/h/a/c/r0/n$a$a;->a:Le/h/a/c/r0/i;

    const/4 v1, 0x0

    iget-object v2, p0, Le/h/a/c/r0/n$a$a;->b:Le/h/a/c/r0/n$a;

    iget v2, v2, Le/h/a/c/r0/n$a;->a:I

    invoke-virtual {v0, v1, v2}, Le/h/a/c/r0/i;->PA(Landroid/os/Bundle;I)V

    .line 5
    :cond_0
    iget-object v0, p0, Le/h/a/c/r0/n$a$a;->b:Le/h/a/c/r0/n$a;

    iget-object v0, v0, Le/h/a/c/r0/n$a;->b:Le/h/a/c/r0/n;

    .line 6
    iget-object v0, v0, Le/h/a/c/r0/n;->s:Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
