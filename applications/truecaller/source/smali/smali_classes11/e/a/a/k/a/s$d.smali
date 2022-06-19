.class public Le/a/a/k/a/s$d;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
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
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/r2/e;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Le/a/a/k/a/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/a/k/a/s$d;->b:Ljava/lang/String;

    .line 3
    iput-wide p3, p0, Le/a/a/k/a/s$d;->c:J

    .line 4
    iput-object p5, p0, Le/a/a/k/a/s$d;->d:Ljava/lang/String;

    .line 5
    iput-wide p6, p0, Le/a/a/k/a/s$d;->e:J

    .line 6
    iput-object p8, p0, Le/a/a/k/a/s$d;->f:Ljava/lang/String;

    .line 7
    iput-object p9, p0, Le/a/a/k/a/s$d;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 9

    .line 1
    move-object v0, p1

    check-cast v0, Le/a/a/k/a/t;

    .line 2
    iget-object v1, p0, Le/a/a/k/a/s$d;->b:Ljava/lang/String;

    iget-wide v2, p0, Le/a/a/k/a/s$d;->c:J

    iget-object v4, p0, Le/a/a/k/a/s$d;->d:Ljava/lang/String;

    iget-wide v5, p0, Le/a/a/k/a/s$d;->e:J

    iget-object v7, p0, Le/a/a/k/a/s$d;->f:Ljava/lang/String;

    iget-object v8, p0, Le/a/a/k/a/s$d;->g:Ljava/lang/String;

    invoke-interface/range {v0 .. v8}, Le/a/a/k/a/t;->e(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, ".sendReaction("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/a/k/a/s$d;->b:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, ","

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-wide v4, p0, Le/a/a/k/a/s$d;->c:J

    invoke-static {v4, v5, v2, v0, v3}, Le/d/c/a/a;->k0(JILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/a/k/a/s$d;->d:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v4, v0, v3}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-wide v4, p0, Le/a/a/k/a/s$d;->e:J

    invoke-static {v4, v5, v2, v0, v3}, Le/d/c/a/a;->k0(JILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/a/k/a/s$d;->f:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/a/k/a/s$d;->g:Ljava/lang/String;

    const-string v3, ")"

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->o2(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
