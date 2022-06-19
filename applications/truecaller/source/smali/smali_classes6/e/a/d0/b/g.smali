.class public final Le/a/d0/b/g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d0/b/a;


# direct methods
.method public constructor <init>(Le/a/d0/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/b/g;->b:Le/a/d0/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d0/b/g;->b:Le/a/d0/b/a;

    .line 2
    iget-object v0, v0, Le/a/d0/b/a;->j:Le/a/e4/p;

    .line 3
    invoke-interface {v0}, Le/a/e4/p;->h()Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
