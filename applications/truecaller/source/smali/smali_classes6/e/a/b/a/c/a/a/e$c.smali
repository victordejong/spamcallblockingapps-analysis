.class public final Le/a/b/a/c/a/a/e$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/c/a/a/e;->gl(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/b0/p/c;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/a/c/a/a/e;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/b/a/c/a/a/e;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/c/a/a/e$c;->b:Le/a/b/a/c/a/a/e;

    iput-object p2, p0, Le/a/b/a/c/a/a/e$c;->c:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Le/a/b0/p/c;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/b/a/c/a/a/e$c;->b:Le/a/b/a/c/a/a/e;

    .line 4
    iget-object v0, v0, Le/a/b/a/c/a/a/e;->b:Le/a/b/a/c/a/b;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Le/a/l4/k;->O(Le/a/b0/p/c;)[Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/b/a/c/a/b;->bb(Ljava/util/List;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_0
    const-string p1, "categoryPresenter"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
