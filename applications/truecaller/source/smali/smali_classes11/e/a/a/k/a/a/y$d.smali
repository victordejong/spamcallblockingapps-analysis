.class public Le/a/a/k/a/a/y$d;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/a/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/k/a/a/z;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:[B

.field public final e:J

.field public final f:I


# direct methods
.method public constructor <init>(Le/a/r2/e;Ljava/lang/String;Ljava/lang/String;[BJILe/a/a/k/a/a/y$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/a/k/a/a/y$d;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Le/a/a/k/a/a/y$d;->c:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Le/a/a/k/a/a/y$d;->d:[B

    .line 5
    iput-wide p5, p0, Le/a/a/k/a/a/y$d;->e:J

    .line 6
    iput p7, p0, Le/a/a/k/a/a/y$d;->f:I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 7

    .line 1
    move-object v0, p1

    check-cast v0, Le/a/a/k/a/a/z;

    .line 2
    iget-object v1, p0, Le/a/a/k/a/a/y$d;->b:Ljava/lang/String;

    iget-object v2, p0, Le/a/a/k/a/a/y$d;->c:Ljava/lang/String;

    iget-object v3, p0, Le/a/a/k/a/a/y$d;->d:[B

    iget-wide v4, p0, Le/a/a/k/a/a/y$d;->e:J

    iget v6, p0, Le/a/a/k/a/a/y$d;->f:I

    invoke-interface/range {v0 .. v6}, Le/a/a/k/a/a/z;->a(Ljava/lang/String;Ljava/lang/String;[BJI)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, ".saveUnprocessedEvent("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/a/k/a/a/y$d;->b:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, ","

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/a/k/a/a/y$d;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/a/k/a/a/y$d;->d:[B

    const/4 v4, 0x1

    invoke-static {v1, v4}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Le/a/a/k/a/a/y$d;->e:J

    invoke-static {v4, v5, v2, v0, v3}, Le/d/c/a/a;->k0(JILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v1, p0, Le/a/a/k/a/a/y$d;->f:I

    const-string v3, ")"

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->K1(IILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
