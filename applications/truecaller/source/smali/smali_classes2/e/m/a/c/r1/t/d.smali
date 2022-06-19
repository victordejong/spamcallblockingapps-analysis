.class public final Le/m/a/c/r1/t/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/r1/t/d$a;,
        Le/m/a/c/r1/t/d$b;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/r1/t/d$a;

.field public final b:Le/m/a/c/r1/t/d$a;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Le/m/a/c/r1/t/d$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/r1/t/d;->a:Le/m/a/c/r1/t/d$a;

    .line 3
    iput-object p1, p0, Le/m/a/c/r1/t/d;->b:Le/m/a/c/r1/t/d$a;

    .line 4
    iput p2, p0, Le/m/a/c/r1/t/d;->c:I

    if-ne p1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput-boolean p1, p0, Le/m/a/c/r1/t/d;->d:Z

    return-void
.end method

.method public constructor <init>(Le/m/a/c/r1/t/d$a;Le/m/a/c/r1/t/d$a;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Le/m/a/c/r1/t/d;->a:Le/m/a/c/r1/t/d$a;

    .line 8
    iput-object p2, p0, Le/m/a/c/r1/t/d;->b:Le/m/a/c/r1/t/d$a;

    .line 9
    iput p3, p0, Le/m/a/c/r1/t/d;->c:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iput-boolean p1, p0, Le/m/a/c/r1/t/d;->d:Z

    return-void
.end method
