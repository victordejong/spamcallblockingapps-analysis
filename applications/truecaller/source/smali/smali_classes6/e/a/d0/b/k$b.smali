.class public final Le/a/d0/b/k$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/b/k;->a(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d0/b/k;

.field public final synthetic c:Le/a/d0/b/i;


# direct methods
.method public constructor <init>(Le/a/d0/b/k;Le/a/d0/b/i;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/b/k$b;->b:Le/a/d0/b/k;

    iput-object p2, p0, Le/a/d0/b/k$b;->c:Le/a/d0/b/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d0/b/k$b;->c:Le/a/d0/b/i;

    .line 2
    iget-object v0, v0, Le/a/d0/b/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/d0/b/k$b;->b:Le/a/d0/b/k;

    .line 4
    iget-object v1, v1, Le/a/d0/b/k;->f:Le/a/b0/q/z;

    .line 5
    invoke-interface {v1, v0}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
