.class public Le/a/a/g/l$c0;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/g/m;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:[J

.field public final f:[J


# direct methods
.method public constructor <init>(Le/a/r2/e;Ljava/lang/String;ZZ[J[JLe/a/a/g/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/a/g/l$c0;->b:Ljava/lang/String;

    .line 3
    iput-boolean p3, p0, Le/a/a/g/l$c0;->c:Z

    .line 4
    iput-boolean p4, p0, Le/a/a/g/l$c0;->d:Z

    .line 5
    iput-object p5, p0, Le/a/a/g/l$c0;->e:[J

    .line 6
    iput-object p6, p0, Le/a/a/g/l$c0;->f:[J

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 6

    .line 1
    move-object v0, p1

    check-cast v0, Le/a/a/g/m;

    .line 2
    iget-object v1, p0, Le/a/a/g/l$c0;->b:Ljava/lang/String;

    iget-boolean v2, p0, Le/a/a/g/l$c0;->c:Z

    iget-boolean v3, p0, Le/a/a/g/l$c0;->d:Z

    iget-object v4, p0, Le/a/a/g/l$c0;->e:[J

    iget-object v5, p0, Le/a/a/g/l$c0;->f:[J

    invoke-interface/range {v0 .. v5}, Le/a/a/g/m;->U(Ljava/lang/String;ZZ[J[J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ".markMessagesRead("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/a/g/l$c0;->b:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, ","

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-boolean v1, p0, Le/a/a/g/l$c0;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/a/g/l$c0;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/a/g/l$c0;->e:[J

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/a/g/l$c0;->f:[J

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
