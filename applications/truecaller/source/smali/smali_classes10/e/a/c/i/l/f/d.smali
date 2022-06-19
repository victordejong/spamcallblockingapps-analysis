.class public final Le/a/c/i/l/f/d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/b0/m/a/a;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/i/l/f/e;

.field public final synthetic c:Landroid/widget/RemoteViews;

.field public final synthetic d:Le/a/c/i/l/a;


# direct methods
.method public constructor <init>(Le/a/c/i/l/f/e;Landroid/widget/RemoteViews;Le/a/c/i/l/a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/l/f/d;->b:Le/a/c/i/l/f/e;

    iput-object p2, p0, Le/a/c/i/l/f/d;->c:Landroid/widget/RemoteViews;

    iput-object p3, p0, Le/a/c/i/l/f/d;->d:Le/a/c/i/l/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/b0/m/a/a;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/c/i/l/f/d;->b:Le/a/c/i/l/f/e;

    .line 4
    iget-object v0, v0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    .line 5
    invoke-static {v0}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object v0

    .line 7
    invoke-static {}, Le/f/a/r/h;->H()Le/f/a/r/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/z3/d;->a0(Le/f/a/r/a;)Le/a/z3/d;

    move-result-object v0

    .line 8
    iget-object p1, p1, Le/a/b0/m/a/a;->c:Landroid/net/Uri;

    .line 9
    invoke-virtual {v0, p1}, Le/a/z3/d;->j0(Landroid/net/Uri;)Le/a/z3/d;

    .line 10
    new-instance p1, Le/a/c/i/l/f/c;

    invoke-direct {p1, p0}, Le/a/c/i/l/f/c;-><init>(Le/a/c/i/l/f/d;)V

    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Le/f/a/h;->K:Ljava/util/List;

    .line 12
    invoke-virtual {v0, p1}, Le/a/z3/d;->H(Le/f/a/r/g;)Le/f/a/h;

    .line 13
    iget-object p1, p0, Le/a/c/i/l/f/d;->d:Le/a/c/i/l/a;

    invoke-virtual {v0, p1}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    .line 14
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
