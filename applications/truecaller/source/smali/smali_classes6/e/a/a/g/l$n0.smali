.class public Le/a/a/g/l$n0;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n0"
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
.field public final b:Z


# direct methods
.method public constructor <init>(Le/a/r2/e;ZLe/a/a/g/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-boolean p2, p0, Le/a/a/g/l$n0;->b:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 1

    .line 1
    check-cast p1, Le/a/a/g/m;

    .line 2
    iget-boolean v0, p0, Le/a/a/g/l$n0;->b:Z

    invoke-interface {p1, v0}, Le/a/a/g/m;->T(Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ".performPartialSync("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Le/a/a/g/l$n0;->b:Z

    const/4 v2, 0x2

    const-string v3, ")"

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->u(ZILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
