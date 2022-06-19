.class public final Le/a/r/z/l$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/z/l;->rA(Le/a/r/z/o;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r/z/l;


# direct methods
.method public constructor <init>(Le/a/r/z/l;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/l$f;->b:Le/a/r/z/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/z/l$f;->b:Le/a/r/z/l;

    invoke-virtual {v0}, Le/a/r/z/l;->SA()Le/a/r/z/r;

    move-result-object v0

    check-cast v0, Le/a/r/z/s;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Le/a/r/z/s;->q:Z

    .line 3
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/y;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/r/z/y;->d0()V

    .line 4
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
