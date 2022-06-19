.class public Le/a/a/k/y/j$e;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/y/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/k/y/k;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:[B

.field public final c:Landroid/net/Uri;

.field public final d:I


# direct methods
.method public constructor <init>(Le/a/r2/e;[BLandroid/net/Uri;ILe/a/a/k/y/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/a/k/y/j$e;->b:[B

    .line 3
    iput-object p3, p0, Le/a/a/k/y/j$e;->c:Landroid/net/Uri;

    .line 4
    iput p4, p0, Le/a/a/k/y/j$e;->d:I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 3

    .line 1
    check-cast p1, Le/a/a/k/y/k;

    .line 2
    iget-object v0, p0, Le/a/a/k/y/j$e;->b:[B

    iget-object v1, p0, Le/a/a/k/y/j$e;->c:Landroid/net/Uri;

    iget v2, p0, Le/a/a/k/y/j$e;->d:I

    invoke-interface {p1, v0, v1, v2}, Le/a/a/k/y/k;->a([BLandroid/net/Uri;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ".sendNotifyResponseForMmsDownload("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/a/k/y/j$e;->b:[B

    const/4 v2, 0x2

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/a/k/y/j$e;->c:Landroid/net/Uri;

    invoke-static {v3, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/a/k/y/j$e;->d:I

    const-string v3, ")"

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->K1(IILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
