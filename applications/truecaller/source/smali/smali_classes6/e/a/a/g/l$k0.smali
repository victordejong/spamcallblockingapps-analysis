.class public Le/a/a/g/l$k0;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/g/m;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/g/z;

.field public final c:I


# direct methods
.method public constructor <init>(Le/a/r2/e;Le/a/a/g/z;ILe/a/a/g/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/a/g/l$k0;->b:Le/a/a/g/z;

    .line 3
    iput p3, p0, Le/a/a/g/l$k0;->c:I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 2

    .line 1
    check-cast p1, Le/a/a/g/m;

    .line 2
    iget-object v0, p0, Le/a/a/g/l$k0;->b:Le/a/a/g/z;

    iget v1, p0, Le/a/a/g/l$k0;->c:I

    invoke-interface {p1, v0, v1}, Le/a/a/g/m;->P(Le/a/a/g/z;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ".performNextSyncBatch("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/a/g/l$k0;->b:Le/a/a/g/z;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/a/g/l$k0;->c:I

    const/4 v2, 0x2

    const-string v3, ")"

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->K1(IILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
