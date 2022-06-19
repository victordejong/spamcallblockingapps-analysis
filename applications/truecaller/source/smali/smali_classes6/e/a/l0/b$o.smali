.class public Le/a/l0/b$o;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/l0/c;",
        "Le/a/l0/u/d/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J

.field public final e:Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;


# direct methods
.method public constructor <init>(Le/a/r2/e;Ljava/lang/String;JJLcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;Le/a/l0/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/l0/b$o;->b:Ljava/lang/String;

    .line 3
    iput-wide p3, p0, Le/a/l0/b$o;->c:J

    .line 4
    iput-wide p5, p0, Le/a/l0/b$o;->d:J

    .line 5
    iput-object p7, p0, Le/a/l0/b$o;->e:Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 7

    .line 1
    move-object v0, p1

    check-cast v0, Le/a/l0/c;

    .line 2
    iget-object v1, p0, Le/a/l0/b$o;->b:Ljava/lang/String;

    iget-wide v2, p0, Le/a/l0/b$o;->c:J

    iget-wide v4, p0, Le/a/l0/b$o;->d:J

    iget-object v6, p0, Le/a/l0/b$o;->e:Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;

    invoke-interface/range {v0 .. v6}, Le/a/l0/c;->k(Ljava/lang/String;JJLcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, ".getHistoryForNumber("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/l0/b$o;->b:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, ","

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-wide v4, p0, Le/a/l0/b$o;->c:J

    invoke-static {v4, v5, v2, v0, v3}, Le/d/c/a/a;->k0(JILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-wide v4, p0, Le/a/l0/b$o;->d:J

    invoke-static {v4, v5, v2, v0, v3}, Le/d/c/a/a;->k0(JILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l0/b$o;->e:Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
