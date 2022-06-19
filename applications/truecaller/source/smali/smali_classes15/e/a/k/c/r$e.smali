.class public final Le/a/k/c/r$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/r;-><init>(Ls1/w/f;Landroid/content/Context;Le/a/k/c/s1;Le/a/k/b/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/m/a/c/j1/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k/c/r;


# direct methods
.method public constructor <init>(Le/a/k/c/r;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/r$e;->b:Le/a/k/c/r;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Le/m/a/c/j1/g;

    .line 2
    iget-object v1, p0, Le/a/k/c/r$e;->b:Le/a/k/c/r;

    .line 3
    iget-object v2, v1, Le/a/k/c/r;->f:Landroid/content/Context;

    .line 4
    iget-object v1, v1, Le/a/k/c/r;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/d1/c;

    .line 5
    iget-object v3, p0, Le/a/k/c/r$e;->b:Le/a/k/c/r;

    invoke-static {v3}, Le/a/k/c/r;->l(Le/a/k/c/r;)Le/m/a/c/p1/h0/v;

    move-result-object v3

    .line 6
    iget-object v4, p0, Le/a/k/c/r$e;->b:Le/a/k/c/r;

    .line 7
    iget-object v4, v4, Le/a/k/c/r;->c:Ls1/g;

    invoke-interface {v4}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/p1/h0/g;

    .line 8
    invoke-direct {v0, v2, v1, v3, v4}, Le/m/a/c/j1/g;-><init>(Landroid/content/Context;Le/m/a/c/d1/b;Le/m/a/c/p1/h0/c;Le/m/a/c/p1/l$a;)V

    return-object v0
.end method
