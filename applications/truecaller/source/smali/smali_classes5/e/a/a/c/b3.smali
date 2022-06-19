.class public final Le/a/a/c/b3;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/a3;

.field public final synthetic c:Le/a/a/c/j8/a;


# direct methods
.method public constructor <init>(Le/a/a/c/a3;Le/a/a/c/j8/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/b3;->b:Le/a/a/c/a3;

    iput-object p2, p0, Le/a/a/c/b3;->c:Le/a/a/c/j8/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/b3;->b:Le/a/a/c/a3;

    .line 2
    iget-object v0, v0, Le/a/a/c/a3;->c:Le/a/a/c/f4;

    .line 3
    iget-object v1, p0, Le/a/a/c/b3;->c:Le/a/a/c/j8/a;

    invoke-interface {v0, v1}, Le/a/a/c/f4;->P2(Le/a/a/c/j8/a;)V

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
