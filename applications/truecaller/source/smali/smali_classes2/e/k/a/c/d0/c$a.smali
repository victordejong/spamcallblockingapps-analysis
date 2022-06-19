.class public Le/k/a/c/d0/c$a;
.super Le/k/a/c/d0/y/c0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Le/k/a/c/g;

.field public final c:Le/k/a/c/d0/u;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/k/a/c/g;Le/k/a/c/d0/v;Le/k/a/c/i;Le/k/a/c/d0/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Le/k/a/c/d0/y/c0$a;-><init>(Le/k/a/c/d0/v;Le/k/a/c/i;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/c$a;->b:Le/k/a/c/g;

    .line 3
    iput-object p4, p0, Le/k/a/c/d0/c$a;->c:Le/k/a/c/d0/u;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/k/a/c/d0/c$a;->d:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/c$a;->c:Le/k/a/c/d0/u;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/d0/u;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Le/k/a/c/d0/c$a;->b:Le/k/a/c/g;

    iget-object p2, p0, Le/k/a/c/d0/c$a;->c:Le/k/a/c/d0/u;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iget-object v2, p2, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 5
    iget-object v2, v2, Le/k/a/c/v;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p2}, Le/k/a/c/d0/u;->n()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Cannot resolve ObjectId forward reference using property \'%s\' (of type %s): Bean not yet resolved"

    .line 7
    invoke-virtual {p1, p2, v1, v0}, Le/k/a/c/g;->Y(Le/k/a/c/d;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method
