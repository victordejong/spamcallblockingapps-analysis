.class public final Le/k/a/c/c0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:[Le/k/a/c/l0/q;

.field public static final b:[Le/k/a/c/l0/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Le/k/a/c/l0/q;

    .line 1
    sput-object v1, Le/k/a/c/c0/n;->a:[Le/k/a/c/l0/q;

    new-array v0, v0, [Le/k/a/c/l0/g;

    .line 2
    sput-object v0, Le/k/a/c/c0/n;->b:[Le/k/a/c/l0/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/c0/n;->b:[Le/k/a/c/l0/g;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Le/k/a/c/l0/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/c/n0/d;

    sget-object v1, Le/k/a/c/c0/n;->b:[Le/k/a/c/l0/g;

    invoke-direct {v0, v1}, Le/k/a/c/n0/d;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
