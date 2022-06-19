.class public final Le/a/a/k/a/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, v1, v2}, Le/a/a/k/a/d2;-><init>(ZLjava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Integer;I)V
    .locals 2

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v1

    .line 1
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/a/k/a/d2;->a:Z

    iput-object p2, p0, Le/a/a/k/a/d2;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/a/k/a/d2;->c:Ljava/lang/Integer;

    return-void
.end method
