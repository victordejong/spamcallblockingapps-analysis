.class public final Le/a/a/o/a/g$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/o/a/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Le/a/a/o/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/o/a/g;


# direct methods
.method public constructor <init>(Le/a/a/o/a/g;)V
    .locals 0

    iput-object p1, p0, Le/a/a/o/a/g$e;->b:Le/a/a/o/a/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "view"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/a/o/a/a;

    iget-object v1, p0, Le/a/a/o/a/g$e;->b:Le/a/a/o/a/g;

    .line 4
    iget-object v2, v1, Le/a/a/o/a/g;->f:Le/a/o2/f;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 5
    iget-object v4, v1, Le/a/a/o/a/g;->c:Le/a/l4/c;

    if-eqz v4, :cond_1

    .line 6
    iget-object v1, v1, Le/a/a/o/a/g;->d:Le/a/p5/c;

    if-eqz v1, :cond_0

    .line 7
    invoke-direct {v0, p1, v2, v4, v1}, Le/a/a/o/a/a;-><init>(Landroid/view/View;Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;)V

    return-object v0

    :cond_0
    const-string p1, "clock"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string p1, "availabilityManager"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string p1, "callRecordingsAdapter"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
