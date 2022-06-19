.class public Le/a/a/g/l$t0;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "t0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/g/m;",
        "Lcom/truecaller/messaging/data/types/Message;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/truecaller/messaging/data/types/Message;

.field public final c:J

.field public final d:Z


# direct methods
.method public constructor <init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;JZLe/a/a/g/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/a/g/l$t0;->b:Lcom/truecaller/messaging/data/types/Message;

    .line 3
    iput-wide p3, p0, Le/a/a/g/l$t0;->c:J

    .line 4
    iput-boolean p5, p0, Le/a/a/g/l$t0;->d:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 4

    .line 1
    check-cast p1, Le/a/a/g/m;

    .line 2
    iget-object v0, p0, Le/a/a/g/l$t0;->b:Lcom/truecaller/messaging/data/types/Message;

    iget-wide v1, p0, Le/a/a/g/l$t0;->c:J

    iget-boolean v3, p0, Le/a/a/g/l$t0;->d:Z

    invoke-interface {p1, v0, v1, v2, v3}, Le/a/a/g/m;->J(Lcom/truecaller/messaging/data/types/Message;JZ)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ".retryMessage("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/a/g/l$t0;->b:Lcom/truecaller/messaging/data/types/Message;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Le/a/a/g/l$t0;->c:J

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0, v1}, Le/d/c/a/a;->k0(JILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-boolean v1, p0, Le/a/a/g/l$t0;->d:Z

    const-string v2, ")"

    invoke-static {v1, v4, v0, v2}, Le/d/c/a/a;->u(ZILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
