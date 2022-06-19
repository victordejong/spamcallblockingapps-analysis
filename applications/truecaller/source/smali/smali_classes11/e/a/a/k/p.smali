.class public final Le/a/a/k/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/p$a;
    }
.end annotation


# static fields
.field public static final d:Le/a/a/k/p$a;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/a/k/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/a/k/p$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/a/k/p;->d:Le/a/a/k/p$a;

    return-void
.end method

.method public constructor <init>(ZZZLs1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/a/k/p;->a:Z

    iput-boolean p2, p0, Le/a/a/k/p;->b:Z

    iput-boolean p3, p0, Le/a/a/k/p;->c:Z

    return-void
.end method

.method public static final a()Le/a/a/k/p;
    .locals 3

    .line 1
    new-instance v0, Le/a/a/k/p;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Le/a/a/k/p;-><init>(ZZZLs1/z/c/f;)V

    return-object v0
.end method
