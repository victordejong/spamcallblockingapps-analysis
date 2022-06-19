.class public final Le/a/t/a/h$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t/a/h;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/t/a/h;


# direct methods
.method public constructor <init>(Le/a/t/a/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/t/a/h$g;->a:Le/a/t/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/t/a/h$g;->a:Le/a/t/a/h;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Le/a/t/a/h;->j:I

    .line 3
    invoke-virtual {v0, v1}, Le/a/t/a/h;->k(I)V

    .line 4
    iget-object v0, p0, Le/a/t/a/h$g;->a:Le/a/t/a/h;

    .line 5
    iget-object v1, v0, Le/a/t/a/h;->r:Le/a/t/a/h$b;

    .line 6
    iget v0, v0, Le/a/t/a/h;->j:I

    .line 7
    check-cast v1, Le/a/a/c/h2;

    .line 8
    iget-object v1, v1, Le/a/a/c/h2;->a:Le/a/a/c/y3;

    .line 9
    iget-object v1, v1, Le/a/a/c/y3;->z:Le/a/a/c/y5;

    invoke-interface {v1, v0}, Le/a/a/c/y5;->ta(I)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    new-instance v1, Le/a/t/a/h$g$a;

    invoke-direct {v1, p0}, Le/a/t/a/h$g$a;-><init>(Le/a/t/a/h$g;)V

    const-wide/16 v2, 0x1f4

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    :goto_0
    iget-object v0, p0, Le/a/t/a/h$g;->a:Le/a/t/a/h;

    .line 14
    iget-object v0, v0, Le/a/t/a/h;->u:Le/a/t/a/h$e;

    .line 15
    check-cast v0, Le/a/a/c/z0;

    .line 16
    iget-object v0, v0, Le/a/a/c/z0;->a:Le/a/a/c/y3;

    .line 17
    iget-object v0, v0, Le/a/a/c/y3;->z:Le/a/a/c/y5;

    invoke-interface {v0, p1}, Le/a/a/c/y5;->Kd(Z)V

    return-void
.end method
