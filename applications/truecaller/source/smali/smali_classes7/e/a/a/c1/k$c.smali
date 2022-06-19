.class public Le/a/a/c1/k$c;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/c1/l;",
        "Le/a/a/c1/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Draft;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:J


# direct methods
.method public constructor <init>(Le/a/r2/e;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;JLe/a/a/c1/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/a/c1/k$c;->b:Ljava/util/List;

    .line 3
    iput-object p3, p0, Le/a/a/c1/k$c;->c:Ljava/lang/String;

    .line 4
    iput-boolean p4, p0, Le/a/a/c1/k$c;->d:Z

    .line 5
    iput-boolean p5, p0, Le/a/a/c1/k$c;->e:Z

    .line 6
    iput-object p6, p0, Le/a/a/c1/k$c;->f:Ljava/lang/String;

    .line 7
    iput-wide p7, p0, Le/a/a/c1/k$c;->g:J

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 8

    .line 1
    move-object v0, p1

    check-cast v0, Le/a/a/c1/l;

    .line 2
    iget-object v1, p0, Le/a/a/c1/k$c;->b:Ljava/util/List;

    iget-object v2, p0, Le/a/a/c1/k$c;->c:Ljava/lang/String;

    iget-boolean v3, p0, Le/a/a/c1/k$c;->d:Z

    iget-boolean v4, p0, Le/a/a/c1/k$c;->e:Z

    iget-object v5, p0, Le/a/a/c1/k$c;->f:Ljava/lang/String;

    iget-wide v6, p0, Le/a/a/c1/k$c;->g:J

    invoke-interface/range {v0 .. v7}, Le/a/a/c1/l;->b(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;J)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ".scheduleDrafts("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/a/c1/k$c;->b:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/a/c1/k$c;->c:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3, v0, v1}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-boolean v2, p0, Le/a/a/c1/k$c;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v3}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Le/a/a/c1/k$c;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v3}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/a/c1/k$c;->f:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-wide v1, p0, Le/a/a/c1/k$c;->g:J

    const-string v4, ")"

    invoke-static {v1, v2, v3, v0, v4}, Le/d/c/a/a;->T1(JILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
