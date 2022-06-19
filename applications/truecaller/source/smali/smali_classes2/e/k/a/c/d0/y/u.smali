.class public Le/k/a/c/d0/y/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/r;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Le/k/a/c/v;

.field public final b:Le/k/a/c/i;


# direct methods
.method public constructor <init>(Le/k/a/c/v;Le/k/a/c/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/y/u;->a:Le/k/a/c/v;

    .line 3
    iput-object p2, p0, Le/k/a/c/d0/y/u;->b:Le/k/a/c/i;

    return-void
.end method

.method public static a(Le/k/a/c/i;)Le/k/a/c/d0/y/u;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/d0/y/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Le/k/a/c/d0/y/u;-><init>(Le/k/a/c/v;Le/k/a/c/i;)V

    return-object v0
.end method


# virtual methods
.method public c(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/u;->a:Le/k/a/c/v;

    .line 2
    sget v1, Le/k/a/c/e0/d;->d:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 3
    sget-object v3, Le/k/a/c/n0/g;->a:[Ljava/lang/annotation/Annotation;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v1, "<UNKNOWN>"

    goto :goto_0

    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v4, "\"%s\""

    .line 4
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v2, v3

    const-string v1, "Invalid `null` value encountered for property %s"

    .line 5
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Le/k/a/c/e0/d;

    invoke-direct {v2, p1, v1, v0}, Le/k/a/c/e0/d;-><init>(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/v;)V

    .line 7
    throw v2
.end method
