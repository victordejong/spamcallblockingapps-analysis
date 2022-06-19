.class public final Le/a/e/b/k/w;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e/b/k/x;


# direct methods
.method public constructor <init>(Le/a/e/b/k/x;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/k/w;->b:Le/a/e/b/k/x;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/e/b/k/w;->b:Le/a/e/b/k/x;

    .line 3
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Le/a/e/b/k/u;->sl(Z)V

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
