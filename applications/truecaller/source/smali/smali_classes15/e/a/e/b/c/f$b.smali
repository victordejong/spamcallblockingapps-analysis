.class public final Le/a/e/b/c/f$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/c/f;->cc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/net/Uri;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e/b/c/f;


# direct methods
.method public constructor <init>(Le/a/e/b/c/f;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/c/f$b;->b:Le/a/e/b/c/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/net/Uri;

    const-string v0, "uri"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/e/b/c/f$b;->b:Le/a/e/b/c/f;

    .line 4
    iget-object v0, v0, Le/a/e/b/c/f;->k:Le/a/o5/l1;

    .line 5
    invoke-interface {v0}, Le/a/o5/l1;->g()Landroid/net/Uri;

    move-result-object v0

    .line 6
    iget-object v1, p0, Le/a/e/b/c/f$b;->b:Le/a/e/b/c/f;

    .line 7
    iget-object v1, v1, Le/a/e/b/c/f;->k:Le/a/o5/l1;

    .line 8
    invoke-interface {v1}, Le/a/o5/l1;->e()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method
