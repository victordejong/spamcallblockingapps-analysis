.class public Le/a/a/c/l8/h$b;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/l8/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/c/l8/i;",
        "Ljava/util/ArrayList<",
        "Le/a/a/c/l8/g;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Le/a/r2/e;IZZLe/a/a/c/l8/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput p2, p0, Le/a/a/c/l8/h$b;->b:I

    .line 3
    iput-boolean p3, p0, Le/a/a/c/l8/h$b;->c:Z

    .line 4
    iput-boolean p4, p0, Le/a/a/c/l8/h$b;->d:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 3

    .line 1
    check-cast p1, Le/a/a/c/l8/i;

    .line 2
    iget v0, p0, Le/a/a/c/l8/h$b;->b:I

    iget-boolean v1, p0, Le/a/a/c/l8/h$b;->c:Z

    iget-boolean v2, p0, Le/a/a/c/l8/h$b;->d:Z

    invoke-interface {p1, v0, v1, v2}, Le/a/a/c/l8/i;->a(IZZ)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ".fetchGalleryData("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/a/c/l8/h$b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Le/a/a/c/l8/h$b;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/a/c/l8/h$b;->d:Z

    const-string v3, ")"

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->u(ZILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
