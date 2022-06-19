.class public final Le/k/a/c/d0/z/r$b;
.super Le/k/a/c/d0/z/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/f<",
        "Le/k/a/c/k0/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Le/k/a/c/d0/z/r$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/z/r$b;

    invoke-direct {v0}, Le/k/a/c/d0/z/r$b;-><init>()V

    sput-object v0, Le/k/a/c/d0/z/r$b;->e:Le/k/a/c/d0/z/r$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-class v0, Le/k/a/c/k0/s;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Le/k/a/c/d0/z/f;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->Y1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 3
    iget-object v0, v0, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/f;->r0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/s;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Le/k/a/b/m;->n:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 7
    iget-object v0, v0, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/f;->s0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/s;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Le/k/a/b/m;->k:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object p1, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 11
    iget-object p1, p1, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance p2, Le/k/a/c/k0/s;

    invoke-direct {p2, p1}, Le/k/a/c/k0/s;-><init>(Le/k/a/c/k0/l;)V

    move-object p1, p2

    :goto_0
    return-object p1

    .line 14
    :cond_2
    const-class v0, Le/k/a/c/k0/s;

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p3, Le/k/a/c/k0/s;

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->Y1()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Le/k/a/b/m;->n:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-class p3, Le/k/a/c/k0/s;

    invoke-virtual {p2, p3, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->u0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/s;)Le/k/a/c/l;

    move-result-object p1

    check-cast p1, Le/k/a/c/k0/s;

    return-object p1
.end method
