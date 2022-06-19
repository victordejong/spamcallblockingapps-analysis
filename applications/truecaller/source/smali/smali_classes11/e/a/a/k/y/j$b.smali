.class public Le/a/a/k/y/j$b;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/y/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/k/y/k;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:[B

.field public final d:Landroid/net/Uri;

.field public final e:Z


# direct methods
.method public constructor <init>(Le/a/r2/e;J[BLandroid/net/Uri;ZLe/a/a/k/y/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-wide p2, p0, Le/a/a/k/y/j$b;->b:J

    .line 3
    iput-object p4, p0, Le/a/a/k/y/j$b;->c:[B

    .line 4
    iput-object p5, p0, Le/a/a/k/y/j$b;->d:Landroid/net/Uri;

    .line 5
    iput-boolean p6, p0, Le/a/a/k/y/j$b;->e:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 6

    .line 1
    move-object v0, p1

    check-cast v0, Le/a/a/k/y/k;

    .line 2
    iget-wide v1, p0, Le/a/a/k/y/j$b;->b:J

    iget-object v3, p0, Le/a/a/k/y/j$b;->c:[B

    iget-object v4, p0, Le/a/a/k/y/j$b;->d:Landroid/net/Uri;

    iget-boolean v5, p0, Le/a/a/k/y/j$b;->e:Z

    invoke-interface/range {v0 .. v5}, Le/a/a/k/y/k;->d(J[BLandroid/net/Uri;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ".downloadMms("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/a/a/k/y/j$b;->b:J

    const/4 v3, 0x2

    const-string v4, ","

    invoke-static {v1, v2, v3, v0, v4}, Le/d/c/a/a;->k0(JILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/a/k/y/j$b;->c:[B

    invoke-static {v1, v3}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/a/k/y/j$b;->d:Landroid/net/Uri;

    invoke-static {v1, v3}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/a/k/y/j$b;->e:Z

    const-string v2, ")"

    invoke-static {v1, v3, v0, v2}, Le/d/c/a/a;->u(ZILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
