.class public final Le/a/b/a/c/a/a/j$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/c/a/a/j;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/text/Editable;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/a/c/a/a/j;


# direct methods
.method public constructor <init>(Le/a/b/a/c/a/a/j;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/c/a/a/j$b;->b:Le/a/b/a/c/a/a/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/text/Editable;

    .line 2
    iget-object v0, p0, Le/a/b/a/c/a/a/j$b;->b:Le/a/b/a/c/a/a/j;

    .line 3
    iget-object v0, v0, Le/a/b/a/c/a/a/j;->b:Le/a/b/a/c/a/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v0, v1}, Le/a/b/a/c/a/h;->K5(Ljava/lang/String;)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_1
    const-string p1, "presenter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
