.class public final Le/a/d/b/a/k;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/b/a/b;


# direct methods
.method public constructor <init>(Le/a/d/b/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/k;->b:Le/a/d/b/a/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/b/a/k;->b:Le/a/d/b/a/b;

    .line 2
    iget-object v0, v0, Le/a/d/b/a/b;->D:Le/a/d/x/r/n;

    .line 3
    invoke-interface {v0}, Le/a/d/x/r/n;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
