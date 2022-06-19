.class public final Le/a/o/a/g/j/e$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/g/j/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/String;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/o/a/g/j/e;


# direct methods
.method public constructor <init>(Le/a/o/a/g/j/e;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/g/j/e$b;->b:Le/a/o/a/g/j/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/o/a/g/j/e$b;->b:Le/a/o/a/g/j/e;

    .line 4
    iget-object v0, v0, Le/a/o/a/g/j/e;->i:Le/a/o/a/g/j/g;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Le/a/o/a/g/j/g;->Vf(Ljava/lang/String;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_0
    const-string p1, "presenter"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
