.class public final Le/k/a/c/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Le/k/a/c/t$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/t$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Le/k/a/c/t$b;-><init>(Le/k/a/c/i;Le/k/a/c/n;Le/k/a/c/j0/h;)V

    sput-object v0, Le/k/a/c/t$b;->a:Le/k/a/c/t$b;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/n;Le/k/a/c/j0/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;",
            "Le/k/a/c/j0/h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
