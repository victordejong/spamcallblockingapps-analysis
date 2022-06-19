.class public final Le/a/k/a/k/z/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/m/a/c/l1/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/m/a/c/p1/h;

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Le/m/a/c/p1/h;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/z/e;->b:Le/m/a/c/p1/h;

    iput-object p2, p0, Le/a/k/a/k/z/e;->c:Landroid/net/Uri;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v2, Le/a/k/a/k/z/d;

    invoke-direct {v2, p0}, Le/a/k/a/k/z/d;-><init>(Le/a/k/a/k/z/e;)V

    .line 2
    new-instance v3, Le/m/a/c/g1/f;

    invoke-direct {v3}, Le/m/a/c/g1/f;-><init>()V

    .line 3
    sget-object v4, Le/m/a/c/f1/e;->a:Le/m/a/c/f1/e;

    .line 4
    new-instance v5, Le/m/a/c/p1/u;

    invoke-direct {v5}, Le/m/a/c/p1/u;-><init>()V

    const/high16 v7, 0x100000

    .line 5
    iget-object v1, p0, Le/a/k/a/k/z/e;->c:Landroid/net/Uri;

    .line 6
    new-instance v9, Le/m/a/c/l1/t;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Le/m/a/c/l1/t;-><init>(Landroid/net/Uri;Le/m/a/c/p1/l$a;Le/m/a/c/g1/j;Le/m/a/c/f1/e;Le/m/a/c/p1/b0;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v9
.end method
