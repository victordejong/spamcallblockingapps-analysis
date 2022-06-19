.class public Le/a/o5/w$f;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o5/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/o5/x;",
        "Lcom/truecaller/data/entity/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:J


# direct methods
.method public constructor <init>(Le/a/r2/e;JLe/a/o5/w$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-wide p2, p0, Le/a/o5/w$f;->b:J

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 2

    .line 1
    check-cast p1, Le/a/o5/x;

    .line 2
    iget-wide v0, p0, Le/a/o5/w$f;->b:J

    invoke-interface {p1, v0, v1}, Le/a/o5/x;->d(J)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ".getAggregatedContactFromAggregatedId("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/a/o5/w$f;->b:J

    const/4 v3, 0x1

    const-string v4, ")"

    invoke-static {v1, v2, v3, v0, v4}, Le/d/c/a/a;->T1(JILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
