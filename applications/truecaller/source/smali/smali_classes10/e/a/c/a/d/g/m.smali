.class public final Le/a/c/a/d/g/m;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/d/g/l;


# direct methods
.method public constructor <init>(Le/a/c/a/d/g/l;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/g/m;->b:Le/a/c/a/d/g/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/c/a/d/g/m;->b:Le/a/c/a/d/g/l;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    instance-of v1, v0, Le/a/c/a/d/b;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Le/a/c/a/d/b;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {v0}, Le/a/c/a/d/b;->Q3()V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/c/a/d/g/m;->b:Le/a/c/a/d/g/l;

    .line 5
    sget-object v1, Le/a/c/a/d/g/l;->f:[Ls1/a/l;

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    instance-of v1, p1, Le/a/c/a/c/a/b;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p1

    :goto_0
    check-cast v2, Le/a/c/a/c/a/b;

    if-eqz v2, :cond_3

    .line 7
    invoke-interface {v2}, Le/a/c/a/c/a/b;->d8()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v1, v1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->d(ZZZ)V

    .line 9
    :cond_3
    invoke-interface {v0}, Le/a/c/a/d/b;->g1()V

    .line 10
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
