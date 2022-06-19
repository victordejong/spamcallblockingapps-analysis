.class public Le/a/a/k/h$g;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/k/i;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/truecaller/messaging/data/types/Message;

.field public final c:J

.field public final d:[Lcom/truecaller/data/entity/messaging/Participant;

.field public final e:J


# direct methods
.method public constructor <init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;J[Lcom/truecaller/data/entity/messaging/Participant;JLe/a/a/k/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/a/k/h$g;->b:Lcom/truecaller/messaging/data/types/Message;

    .line 3
    iput-wide p3, p0, Le/a/a/k/h$g;->c:J

    .line 4
    iput-object p5, p0, Le/a/a/k/h$g;->d:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 5
    iput-wide p6, p0, Le/a/a/k/h$g;->e:J

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 7

    .line 1
    move-object v0, p1

    check-cast v0, Le/a/a/k/i;

    .line 2
    iget-object v1, p0, Le/a/a/k/h$g;->b:Lcom/truecaller/messaging/data/types/Message;

    iget-wide v2, p0, Le/a/a/k/h$g;->c:J

    iget-object v4, p0, Le/a/a/k/h$g;->d:[Lcom/truecaller/data/entity/messaging/Participant;

    iget-wide v5, p0, Le/a/a/k/h$g;->e:J

    invoke-interface/range {v0 .. v6}, Le/a/a/k/i;->j(Lcom/truecaller/messaging/data/types/Message;J[Lcom/truecaller/data/entity/messaging/Participant;J)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, ".scheduleMessage("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/a/k/h$g;->b:Lcom/truecaller/messaging/data/types/Message;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Le/a/a/k/h$g;->c:J

    const/4 v5, 0x2

    invoke-static {v3, v4, v5, v0, v1}, Le/d/c/a/a;->k0(JILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Le/a/a/k/h$g;->d:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v3, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/a/k/h$g;->e:J

    const-string v3, ")"

    invoke-static {v1, v2, v5, v0, v3}, Le/d/c/a/a;->T1(JILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
