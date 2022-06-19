.class public Le/a/o5/p0$g;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o5/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/o5/q0;",
        "Ls1/k<",
        "Lcom/truecaller/messaging/data/types/BinaryEntity;",
        "Le/a/o5/o0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:D

.field public final c:D

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/r2/e;DDLjava/lang/String;Le/a/o5/p0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-wide p2, p0, Le/a/o5/p0$g;->b:D

    .line 3
    iput-wide p4, p0, Le/a/o5/p0$g;->c:D

    .line 4
    iput-object p6, p0, Le/a/o5/p0$g;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 6

    .line 1
    move-object v0, p1

    check-cast v0, Le/a/o5/q0;

    .line 2
    iget-wide v1, p0, Le/a/o5/p0$g;->b:D

    iget-wide v3, p0, Le/a/o5/p0$g;->c:D

    iget-object v5, p0, Le/a/o5/p0$g;->d:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Le/a/o5/q0;->b(DDLjava/lang/String;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ".locationEntity("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/a/o5/p0$g;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Le/a/o5/p0$g;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v3, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/o5/p0$g;->d:Ljava/lang/String;

    const-string v3, ")"

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->o2(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
