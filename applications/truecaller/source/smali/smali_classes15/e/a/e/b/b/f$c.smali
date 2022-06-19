.class public final Le/a/e/b/b/f$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/b/f;->w5(Ljava/lang/String;)Z
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
.field public final synthetic b:Le/a/e/b/b/f;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/e/b/b/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/b/f$c;->b:Le/a/e/b/b/f;

    iput-object p2, p0, Le/a/e/b/b/f$c;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/b/b/f$c;->b:Le/a/e/b/b/f;

    iget-object v1, p0, Le/a/e/b/b/f$c;->c:Ljava/lang/String;

    .line 2
    iget-object v2, v0, Le/a/e/b/b/f;->f:Le/a/a/g1/b;

    new-instance v3, Le/a/e/b/b/e;

    invoke-direct {v3, v0}, Le/a/e/b/b/e;-><init>(Le/a/e/b/b/f;)V

    invoke-interface {v2, v1, v3}, Le/a/a/g1/b;->i(Ljava/lang/String;Ls1/z/b/a;)V

    .line 3
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
