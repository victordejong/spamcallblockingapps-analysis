.class public Le/k/a/c/c0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:[Le/k/a/c/d0/p;

.field public static final b:[Le/k/a/c/d0/g;

.field public static final c:[Le/k/a/c/a;

.field public static final d:[Le/k/a/c/d0/x;

.field public static final e:[Le/k/a/c/d0/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Le/k/a/c/d0/p;

    .line 1
    sput-object v1, Le/k/a/c/c0/j;->a:[Le/k/a/c/d0/p;

    new-array v1, v0, [Le/k/a/c/d0/g;

    .line 2
    sput-object v1, Le/k/a/c/c0/j;->b:[Le/k/a/c/d0/g;

    new-array v1, v0, [Le/k/a/c/a;

    .line 3
    sput-object v1, Le/k/a/c/c0/j;->c:[Le/k/a/c/a;

    new-array v1, v0, [Le/k/a/c/d0/x;

    .line 4
    sput-object v1, Le/k/a/c/c0/j;->d:[Le/k/a/c/d0/x;

    const/4 v1, 0x1

    new-array v1, v1, [Le/k/a/c/d0/q;

    .line 5
    new-instance v2, Le/k/a/c/d0/z/d0;

    invoke-direct {v2}, Le/k/a/c/d0/z/d0;-><init>()V

    aput-object v2, v1, v0

    sput-object v1, Le/k/a/c/c0/j;->e:[Le/k/a/c/d0/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Le/k/a/c/d0/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/c/n0/d;

    sget-object v1, Le/k/a/c/c0/j;->b:[Le/k/a/c/d0/g;

    invoke-direct {v0, v1}, Le/k/a/c/n0/d;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public b()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Le/k/a/c/d0/p;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/c/n0/d;

    sget-object v1, Le/k/a/c/c0/j;->a:[Le/k/a/c/d0/p;

    invoke-direct {v0, v1}, Le/k/a/c/n0/d;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/c0/j;->b:[Le/k/a/c/d0/g;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
