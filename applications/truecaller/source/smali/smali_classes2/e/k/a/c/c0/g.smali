.class public Le/k/a/c/c0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Le/k/a/a/r$b;

.field public b:Le/k/a/a/b0$a;

.field public c:Le/k/a/c/g0/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/g0/g0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    sget-object v0, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    .line 2
    sget-object v1, Le/k/a/a/b0$a;->c:Le/k/a/a/b0$a;

    .line 3
    sget-object v2, Le/k/a/c/g0/g0$a;->f:Le/k/a/c/g0/g0$a;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Le/k/a/c/c0/g;->a:Le/k/a/a/r$b;

    .line 6
    iput-object v1, p0, Le/k/a/c/c0/g;->b:Le/k/a/a/b0$a;

    .line 7
    iput-object v2, p0, Le/k/a/c/c0/g;->c:Le/k/a/c/g0/g0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Le/k/a/c/c0/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/c0/f;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
