.class public Le/a/r2/f0$a;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r2/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/r2/d0;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/r2/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/r2/f0$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 1

    .line 1
    check-cast p1, Le/a/r2/d0;

    .line 2
    instance-of v0, p1, Le/a/r2/p;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Le/a/r2/p;

    invoke-interface {v0}, Le/a/r2/p;->a()Le/a/r2/d;

    move-result-object v0

    iput-object v0, p0, Le/a/r2/v;->a:Le/a/r2/d;

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/r2/f0$a;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Le/a/r2/d0;->onResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/r2/f0$a;->b:Ljava/lang/Object;

    instance-of v1, v0, Le/a/r2/u;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ".onResult("

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/r2/f0$a;->b:Ljava/lang/Object;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->d(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
