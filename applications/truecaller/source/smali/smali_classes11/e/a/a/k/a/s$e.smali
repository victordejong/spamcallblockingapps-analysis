.class public Le/a/a/k/a/s$e;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/k/a/t;",
        "Lcom/truecaller/messaging/transport/im/SendResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;

.field public final c:J


# direct methods
.method public constructor <init>(Le/a/r2/e;Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;JLe/a/a/k/a/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/a/k/a/s$e;->b:Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;

    .line 3
    iput-wide p3, p0, Le/a/a/k/a/s$e;->c:J

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 3

    .line 1
    check-cast p1, Le/a/a/k/a/t;

    .line 2
    iget-object v0, p0, Le/a/a/k/a/s$e;->b:Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;

    iget-wide v1, p0, Le/a/a/k/a/s$e;->c:J

    invoke-interface {p1, v0, v1, v2}, Le/a/a/k/a/t;->b(Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;J)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ".sendReport("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/a/k/a/s$e;->b:Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Le/a/a/k/a/s$e;->c:J

    const-string v1, ")"

    invoke-static {v3, v4, v2, v0, v1}, Le/d/c/a/a;->T1(JILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
