.class public final Le/k/a/c/d0/y/w$a;
.super Le/k/a/c/d0/y/c0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/y/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Le/k/a/c/d0/y/w;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/y/w;Le/k/a/c/d0/v;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/y/w;",
            "Le/k/a/c/d0/v;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Le/k/a/c/d0/y/c0$a;-><init>(Le/k/a/c/d0/v;Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/y/w$a;->b:Le/k/a/c/d0/y/w;

    .line 3
    iput-object p4, p0, Le/k/a/c/d0/y/w$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/c0$a;->a:Le/k/a/c/d0/v;

    .line 2
    iget-object v0, v0, Le/k/a/c/d0/v;->d:Le/k/a/c/d0/y/c0;

    .line 3
    iget-object v0, v0, Le/k/a/c/d0/y/c0;->b:Le/k/a/a/k0$a;

    .line 4
    iget-object v0, v0, Le/k/a/a/k0$a;->c:Ljava/lang/Object;

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Le/k/a/c/d0/y/w$a;->b:Le/k/a/c/d0/y/w;

    iget-object v0, p0, Le/k/a/c/d0/y/w$a;->c:Ljava/lang/Object;

    .line 7
    iget-object p1, p1, Le/k/a/c/d0/y/w;->o:Le/k/a/c/d0/u;

    invoke-virtual {p1, v0, p2}, Le/k/a/c/d0/u;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to resolve a forward reference with id ["

    const-string v1, "] that wasn\'t previously seen as unresolved."

    invoke-static {v0, p1, v1}, Le/d/c/a/a;->y2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
