.class public final Le/k/a/c/l0/s/l$e;
.super Le/k/a/c/l0/s/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/l0/s/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/s/l;",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/l0/s/l;-><init>(Le/k/a/c/l0/s/l;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/l0/s/l$e;->b:Ljava/lang/Class;

    .line 3
    iput-object p3, p0, Le/k/a/c/l0/s/l$e;->c:Le/k/a/c/n;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)",
            "Le/k/a/c/l0/s/l;"
        }
    .end annotation

    .line 1
    new-instance v6, Le/k/a/c/l0/s/l$a;

    iget-object v2, p0, Le/k/a/c/l0/s/l$e;->b:Ljava/lang/Class;

    iget-object v3, p0, Le/k/a/c/l0/s/l$e;->c:Le/k/a/c/n;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/s/l$a;-><init>(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/n;Ljava/lang/Class;Le/k/a/c/n;)V

    return-object v6
.end method

.method public c(Ljava/lang/Class;)Le/k/a/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/s/l$e;->b:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Le/k/a/c/l0/s/l$e;->c:Le/k/a/c/n;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
