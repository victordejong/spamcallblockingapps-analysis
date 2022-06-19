.class public final Le/a/b/a/a/a/g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/m/n0;

.field public final synthetic c:Le/a/b/a/a/a/d;


# direct methods
.method public constructor <init>(Le/a/b/m/n0;Le/a/b/a/a/a/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/g;->b:Le/a/b/m/n0;

    iput-object p2, p0, Le/a/b/a/a/a/g;->c:Le/a/b/a/a/a/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/b/a/a/a/g;->c:Le/a/b/a/a/a/d;

    .line 3
    iget-object v0, v0, Le/a/b/a/a/a/d;->e:Le/a/b/a/b/j/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/b/a/b/j/c;->e(Ljava/lang/Integer;)V

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/b/a/a/a/g;->b:Le/a/b/m/n0;

    iget-object v0, v0, Le/a/b/m/n0;->d:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "footerList"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/b/a/a/a/g;->c:Le/a/b/a/a/a/d;

    .line 6
    invoke-virtual {v1}, Le/a/b/a/a/a/d;->QA()Le/a/b/a/a/c/c;

    move-result-object v1

    .line 7
    invoke-static {v0, v1, p1}, Le/a/n/g0;->g0(Landroidx/recyclerview/widget/RecyclerView;Ln3/b0/a/y;I)V

    .line 8
    iget-object v0, p0, Le/a/b/a/a/a/g;->c:Le/a/b/a/a/a/d;

    .line 9
    invoke-virtual {v0, p1}, Le/a/b/a/a/a/d;->RA(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object v0, p0, Le/a/b/a/a/a/g;->c:Le/a/b/a/a/a/d;

    .line 11
    iget-object v0, v0, Le/a/b/a/a/a/d;->d:Le/a/b/a/a/a/d$c;

    if-eqz v0, :cond_1

    .line 12
    invoke-interface {v0, p1}, Le/a/b/a/a/a/d$c;->g3(Ljava/lang/String;)V

    .line 13
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
