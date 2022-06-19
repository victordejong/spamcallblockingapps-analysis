.class public final Le/a/a/k/a/k$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/k;->d(J[BIILjava/lang/String;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/graphics/Bitmap;",
        "Ls1/k<",
        "+",
        "Landroid/net/Uri;",
        "+",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/k/a/k;

.field public final synthetic c:J


# direct methods
.method public constructor <init>(Le/a/a/k/a/k;J)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/k$a;->b:Le/a/a/k/a/k;

    iput-wide p2, p0, Le/a/a/k/a/k$a;->c:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    const-string v0, "image"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/k/a/k$a;->b:Le/a/a/k/a/k;

    .line 4
    iget-object v1, v0, Le/a/a/k/a/k;->g:Le/a/b0/q/b;

    .line 5
    iget-wide v2, p0, Le/a/a/k/a/k$a;->c:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Le/a/a/k/a/j;

    invoke-direct {v7, p1}, Le/a/a/k/a/j;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v4, "image/jpeg"

    invoke-static/range {v1 .. v9}, Le/a/n/g0;->L0(Le/a/b0/q/b;JLjava/lang/String;ZILs1/z/b/l;ILjava/lang/Object;)Ls1/k;

    move-result-object p1

    return-object p1
.end method
