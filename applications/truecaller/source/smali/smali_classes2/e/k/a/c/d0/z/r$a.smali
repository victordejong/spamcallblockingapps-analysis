.class public final Le/k/a/c/d0/z/r$a;
.super Le/k/a/c/d0/z/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/f<",
        "Le/k/a/c/k0/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Le/k/a/c/d0/z/r$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/z/r$a;

    invoke-direct {v0}, Le/k/a/c/d0/z/r$a;-><init>()V

    sput-object v0, Le/k/a/c/d0/z/r$a;->e:Le/k/a/c/d0/z/r$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-class v0, Le/k/a/c/k0/a;

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
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 3
    iget-object v0, v0, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/f;->q0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/l;)Le/k/a/c/k0/a;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    const-class v0, Le/k/a/c/k0/a;

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
    check-cast p3, Le/k/a/c/k0/a;

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/f;->t0(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/k0/a;)Le/k/a/c/l;

    return-object p3

    .line 4
    :cond_0
    const-class p3, Le/k/a/c/k0/a;

    invoke-virtual {p2, p3, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method
