.class public Le/a/o5/p0$c;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o5/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/o5/q0;",
        "Ls1/k<",
        "Lcom/truecaller/messaging/data/types/BinaryEntity;",
        "Le/a/o5/o0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Landroid/net/Uri;

.field public final c:Z


# direct methods
.method public constructor <init>(Le/a/r2/e;Landroid/net/Uri;ZLe/a/o5/p0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/o5/p0$c;->b:Landroid/net/Uri;

    .line 3
    iput-boolean p3, p0, Le/a/o5/p0$c;->c:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 2

    .line 1
    check-cast p1, Le/a/o5/q0;

    .line 2
    iget-object v0, p0, Le/a/o5/p0$c;->b:Landroid/net/Uri;

    iget-boolean v1, p0, Le/a/o5/p0$c;->c:Z

    invoke-interface {p1, v0, v1}, Le/a/o5/q0;->d(Landroid/net/Uri;Z)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ".audioEntityFromFile("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/o5/p0$c;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/o5/p0$c;->c:Z

    const/4 v2, 0x2

    const-string v3, ")"

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->u(ZILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
