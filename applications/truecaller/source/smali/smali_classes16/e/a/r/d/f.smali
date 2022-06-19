.class public final Le/a/r/d/f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
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
.field public final synthetic b:Le/a/r/d/d;


# direct methods
.method public constructor <init>(Le/a/r/d/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/d/f;->b:Le/a/r/d/d;

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
    iget-object v0, p0, Le/a/r/d/f;->b:Le/a/r/d/d;

    .line 3
    iget-object v0, v0, Le/a/r/d/d;->e:Le/a/r/d/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    check-cast v0, Le/a/r/d/j;

    const-string p1, "text"

    .line 5
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p1, v0, Le/a/r/d/j;->e:Le/a/r/d/o;

    invoke-virtual {p1, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_2
    const-string p1, "presenter"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
