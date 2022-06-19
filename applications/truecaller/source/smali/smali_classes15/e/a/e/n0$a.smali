.class public final Le/a/e/n0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/n0;->qa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/n0;


# direct methods
.method public constructor <init>(Le/a/e/n0;)V
    .locals 0

    iput-object p1, p0, Le/a/e/n0$a;->a:Le/a/e/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/n0$a;->a:Le/a/e/n0;

    .line 2
    iget-object v1, v0, Le/a/e/n0;->c:Le/a/p5/a0;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Le/a/p5/a0;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Le/a/e/n0;->pa(Z)V

    return-void

    :cond_0
    const-string v0, "permissionUtil"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
