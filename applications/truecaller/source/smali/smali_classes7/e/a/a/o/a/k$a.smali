.class public final Le/a/a/o/a/k$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/o/a/k;->Ij(Ljava/util/Set;)V
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
.field public final synthetic b:Le/a/a/o/a/k;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Le/a/a/o/a/k;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Le/a/a/o/a/k$a;->b:Le/a/a/o/a/k;

    iput-object p2, p0, Le/a/a/o/a/k$a;->c:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/o/a/k$a;->b:Le/a/a/o/a/k;

    new-instance v3, Le/a/a/o/a/j;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Le/a/a/o/a/j;-><init>(Le/a/a/o/a/k$a;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
