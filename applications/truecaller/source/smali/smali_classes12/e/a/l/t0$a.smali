.class public final Le/a/l/t0$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/t0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Le/a/l/z0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/t0;


# direct methods
.method public constructor <init>(Le/a/l/t0;)V
    .locals 0

    iput-object p1, p0, Le/a/l/t0$a;->b:Le/a/l/t0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "v"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/l/z0;

    iget-object v1, p0, Le/a/l/t0$a;->b:Le/a/l/t0;

    .line 4
    iget-object v2, v1, Le/a/l/t0;->a:Le/a/o2/f;

    if-eqz v2, :cond_0

    .line 5
    invoke-direct {v0, p1, v2, v1}, Le/a/l/z0;-><init>(Landroid/view/View;Le/a/o2/m;Ln3/v/b0;)V

    return-object v0

    :cond_0
    const-string p1, "listAdapter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
