.class public Le/a/a/g/l$q;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/g/m;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(Le/a/r2/e;JILe/a/a/g/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-wide p2, p0, Le/a/a/g/l$q;->b:J

    .line 3
    iput p4, p0, Le/a/a/g/l$q;->c:I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 3

    .line 1
    check-cast p1, Le/a/a/g/m;

    .line 2
    iget-wide v0, p0, Le/a/a/g/l$q;->b:J

    iget v2, p0, Le/a/a/g/l$q;->c:I

    invoke-interface {p1, v0, v1, v2}, Le/a/a/g/m;->H(JI)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ".failScheduledMessage("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/a/a/g/l$q;->b:J

    const/4 v3, 0x2

    const-string v4, ","

    invoke-static {v1, v2, v3, v0, v4}, Le/d/c/a/a;->k0(JILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v1, p0, Le/a/a/g/l$q;->c:I

    const-string v2, ")"

    invoke-static {v1, v3, v0, v2}, Le/d/c/a/a;->K1(IILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
