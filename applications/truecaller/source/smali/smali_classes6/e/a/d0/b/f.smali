.class public final Le/a/d0/b/f;
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
.field public final synthetic b:Le/a/d0/b/a;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Le/a/d0/b/a;I)V
    .locals 0

    iput-object p1, p0, Le/a/d0/b/f;->b:Le/a/d0/b/a;

    iput p2, p0, Le/a/d0/b/f;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d0/b/f;->b:Le/a/d0/b/a;

    .line 2
    iget-object v0, v0, Le/a/d0/b/a;->s:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Le/a/l0/f;->c(Landroid/content/Context;)Le/a/l0/f;

    move-result-object v0

    iget v1, p0, Le/a/d0/b/f;->c:I

    invoke-virtual {v0, v1}, Le/a/l0/f;->d(I)I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
