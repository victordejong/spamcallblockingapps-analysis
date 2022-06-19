.class public Le/k/a/c/c0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Le/k/a/c/c0/b;

.field public final b:Le/k/a/c/c0/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Le/k/a/c/m0/f;->values()[Le/k/a/c/m0/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Le/k/a/c/c0/b;->b:Le/k/a/c/c0/b;

    new-instance v1, Le/k/a/c/c0/m;

    invoke-direct {v1}, Le/k/a/c/c0/m;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v1, p0, Le/k/a/c/c0/c;->b:Le/k/a/c/c0/m;

    .line 4
    iput-object v0, p0, Le/k/a/c/c0/c;->a:Le/k/a/c/c0/b;

    return-void
.end method
