.class public abstract Le/m/a/c/g1/z/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/z/d$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/g1/s;


# direct methods
.method public constructor <init>(Le/m/a/c/g1/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/z/d;->a:Le/m/a/c/g1/s;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/c/q1/t;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/m/a/c/g1/z/d;->b(Le/m/a/c/q1/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Le/m/a/c/g1/z/d;->c(Le/m/a/c/q1/t;J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract b(Le/m/a/c/q1/t;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation
.end method

.method public abstract c(Le/m/a/c/q1/t;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation
.end method
