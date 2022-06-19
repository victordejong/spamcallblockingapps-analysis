.class public Le/a/a/k/a/a/y$b;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/a/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/k/a/a/z;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J


# direct methods
.method public constructor <init>(Le/a/r2/e;Ljava/lang/String;JLe/a/a/k/a/a/y$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/a/k/a/a/y$b;->b:Ljava/lang/String;

    .line 3
    iput-wide p3, p0, Le/a/a/k/a/a/y$b;->c:J

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 3

    .line 1
    check-cast p1, Le/a/a/k/a/a/z;

    .line 2
    iget-object v0, p0, Le/a/a/k/a/a/y$b;->b:Ljava/lang/String;

    iget-wide v1, p0, Le/a/a/k/a/a/y$b;->c:J

    invoke-interface {p1, v0, v1, v2}, Le/a/a/k/a/a/z;->c(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ".deleteEvents("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/a/k/a/a/y$b;->b:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, ","

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-wide v3, p0, Le/a/a/k/a/a/y$b;->c:J

    const-string v1, ")"

    invoke-static {v3, v4, v2, v0, v1}, Le/d/c/a/a;->T1(JILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
