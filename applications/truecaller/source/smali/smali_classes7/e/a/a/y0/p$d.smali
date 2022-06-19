.class public Le/a/a/y0/p$d;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/y0/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/y0/q;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:J


# direct methods
.method public constructor <init>(Le/a/r2/e;JLe/a/a/y0/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-wide p2, p0, Le/a/a/y0/p$d;->b:J

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 2

    .line 1
    check-cast p1, Le/a/a/y0/q;

    .line 2
    iget-wide v0, p0, Le/a/a/y0/p$d;->b:J

    invoke-interface {p1, v0, v1}, Le/a/a/y0/q;->k(J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ".hideFailed("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/a/a/y0/p$d;->b:J

    const/4 v3, 0x2

    const-string v4, ")"

    invoke-static {v1, v2, v3, v0, v4}, Le/d/c/a/a;->T1(JILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
