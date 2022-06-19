.class public Le/k/a/c/d0/y/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/r;
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Le/k/a/c/d0/y/t;

.field public static final c:Le/k/a/c/d0/y/t;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/d0/y/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/k/a/c/d0/y/t;-><init>(Ljava/lang/Object;)V

    sput-object v0, Le/k/a/c/d0/y/t;->b:Le/k/a/c/d0/y/t;

    .line 2
    new-instance v0, Le/k/a/c/d0/y/t;

    invoke-direct {v0, v1}, Le/k/a/c/d0/y/t;-><init>(Ljava/lang/Object;)V

    sput-object v0, Le/k/a/c/d0/y/t;->c:Le/k/a/c/d0/y/t;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/y/t;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Le/k/a/c/d0/r;)Z
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/d0/y/t;->b:Le/k/a/c/d0/y/t;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public c(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Le/k/a/c/d0/y/t;->a:Ljava/lang/Object;

    return-object p1
.end method
