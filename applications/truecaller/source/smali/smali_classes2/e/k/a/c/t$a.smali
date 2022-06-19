.class public final Le/k/a/c/t$a;
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
    name = "a"
.end annotation


# static fields
.field public static final d:Le/k/a/c/t$a;


# instance fields
.field public final a:Le/k/a/b/o;

.field public final b:Le/k/a/b/c;

.field public final c:Le/k/a/b/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Le/k/a/c/t$a;-><init>(Le/k/a/b/o;Le/k/a/b/c;Le/k/a/b/p;)V

    sput-object v0, Le/k/a/c/t$a;->d:Le/k/a/c/t$a;

    return-void
.end method

.method public constructor <init>(Le/k/a/b/o;Le/k/a/b/c;Le/k/a/b/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/t$a;->a:Le/k/a/b/o;

    .line 3
    iput-object p2, p0, Le/k/a/c/t$a;->b:Le/k/a/b/c;

    .line 4
    iput-object p3, p0, Le/k/a/c/t$a;->c:Le/k/a/b/p;

    return-void
.end method
