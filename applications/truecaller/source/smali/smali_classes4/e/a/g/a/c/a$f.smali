.class public final Le/a/g/a/c/a$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/c/a;->z6(Ljava/lang/String;Z)V
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
.field public final synthetic b:Le/a/g/a/c/a;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/g/a/c/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/c/a$f;->b:Le/a/g/a/c/a;

    iput-object p2, p0, Le/a/g/a/c/a$f;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/g/a/c/a$f;->b:Le/a/g/a/c/a;

    invoke-virtual {v0}, Le/a/g/a/c/a;->RA()Le/a/g/a/c/c;

    move-result-object v0

    iget-object v1, p0, Le/a/g/a/c/a$f;->c:Ljava/lang/String;

    check-cast v0, Le/a/g/a/c/e;

    .line 2
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/g/a/c/d;

    if-eqz v2, :cond_2

    iget-object v3, v0, Le/a/g/a/c/e;->d:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v0, v0, Le/a/g/a/c/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v2, v1, v3, v0}, Le/a/g/a/c/d;->vv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "analyticsContext"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-string v0, "phoneNumber"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 3
    :cond_2
    :goto_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
