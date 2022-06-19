.class public final Le/a/e/c/e2;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e/c/f2;


# direct methods
.method public constructor <init>(Le/a/e/c/f2;)V
    .locals 0

    iput-object p1, p0, Le/a/e/c/e2;->b:Le/a/e/c/f2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/c/e2;->b:Le/a/e/c/f2;

    invoke-static {v0}, Le/a/e/c/f2;->a(Le/a/e/c/f2;)Le/a/p5/h0;

    move-result-object v0

    const v1, 0x7f04056e

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
