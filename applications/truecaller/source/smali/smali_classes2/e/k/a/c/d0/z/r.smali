.class public Le/k/a/c/d0/z/r;
.super Le/k/a/c/d0/z/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/d0/z/r$a;,
        Le/k/a/c/d0/z/r$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/f<",
        "Le/k/a/c/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Le/k/a/c/d0/z/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/z/r;

    invoke-direct {v0}, Le/k/a/c/d0/z/r;-><init>()V

    sput-object v0, Le/k/a/c/d0/z/r;->e:Le/k/a/c/d0/z/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-class v0, Le/k/a/c/l;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Le/k/a/c/d0/z/f;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public c(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 2
    iget-object p1, p1, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    return-object p1
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 3
    iget-object v0, v0, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/f;->p0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/l;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 6
    iget-object v0, v0, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/f;->q0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/a;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 9
    iget-object v0, v0, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/f;->r0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/s;

    move-result-object p1

    :goto_0
    return-object p1
.end method
