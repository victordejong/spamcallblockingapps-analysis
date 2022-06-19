.class public final Le/a/d/b/a/l;
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
.field public final synthetic b:Le/a/d/b/a/b;


# direct methods
.method public constructor <init>(Le/a/d/b/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/l;->b:Le/a/d/b/a/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/b/a/l;->b:Le/a/d/b/a/b;

    .line 2
    iget-object v0, v0, Le/a/d/b/a/b;->u:Le/a/d/x/l;

    .line 3
    check-cast v0, Le/a/d/x/d;

    .line 4
    iget-object v0, v0, Le/a/d/x/d;->c:Le/a/d/x/j;

    if-eqz v0, :cond_0

    .line 5
    iget v0, v0, Le/a/d/x/j;->b:I

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
