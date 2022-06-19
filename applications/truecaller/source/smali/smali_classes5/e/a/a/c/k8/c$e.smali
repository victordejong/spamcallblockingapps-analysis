.class public final Le/a/a/c/k8/c$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/k8/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Le/a/a/c/k8/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/k8/c;


# direct methods
.method public constructor <init>(Le/a/a/c/k8/c;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/k8/c$e;->b:Le/a/a/c/k8/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "v"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/a/c/k8/b;

    iget-object v1, p0, Le/a/a/c/k8/c$e;->b:Le/a/a/c/k8/c;

    .line 4
    iget-object v1, v1, Le/a/a/c/k8/c;->d:Le/a/o2/f;

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {v0, p1, v1}, Le/a/a/c/k8/b;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    :cond_0
    const-string p1, "listAdapter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
