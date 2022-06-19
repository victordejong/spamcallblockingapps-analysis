.class public Le/a/o5/p0$e;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o5/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/o5/q0;",
        "Ljava/util/List<",
        "Ls1/k<",
        "Lcom/truecaller/messaging/data/types/BinaryEntity;",
        "Le/a/o5/o0;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Le/a/a/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:J


# direct methods
.method public constructor <init>(Le/a/r2/e;Ljava/util/Collection;JLe/a/o5/p0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/o5/p0$e;->b:Ljava/util/Collection;

    .line 3
    iput-wide p3, p0, Le/a/o5/p0$e;->c:J

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 3

    .line 1
    check-cast p1, Le/a/o5/q0;

    .line 2
    iget-object v0, p0, Le/a/o5/p0$e;->b:Ljava/util/Collection;

    iget-wide v1, p0, Le/a/o5/p0$e;->c:J

    invoke-interface {p1, v0, v1, v2}, Le/a/o5/q0;->g(Ljava/util/Collection;J)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ".entitiesFromUri("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/o5/p0$e;->b:Ljava/util/Collection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/o5/p0$e;->c:J

    const/4 v3, 0x2

    const-string v4, ")"

    invoke-static {v1, v2, v3, v0, v4}, Le/d/c/a/a;->T1(JILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
