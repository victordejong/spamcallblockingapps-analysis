.class public final Le/m/a/h/a/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/d/g;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/c/r;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Le/m/a/h/a/c/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Le/m/a/h/a/d/i1;

    const-string v1, "instance cannot be null"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p1}, Le/m/a/h/a/d/i1;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Le/m/a/h/a/c/i;->a:Le/m/a/h/a/d/k1;

    sget-object p1, Le/m/a/h/a/c/m;->a:Le/m/a/h/a/c/n;

    .line 5
    sget-object v1, Le/m/a/h/a/d/h1;->c:Ljava/lang/Object;

    .line 6
    instance-of v1, p1, Le/m/a/h/a/d/h1;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Le/m/a/h/a/d/h1;

    .line 8
    invoke-direct {v1, p1}, Le/m/a/h/a/d/h1;-><init>(Le/m/a/h/a/d/k1;)V

    move-object p1, v1

    .line 9
    :goto_0
    iput-object p1, p0, Le/m/a/h/a/c/i;->b:Le/m/a/h/a/d/k1;

    new-instance v1, Le/m/a/h/a/c/t;

    .line 10
    invoke-direct {v1, v0, p1}, Le/m/a/h/a/c/t;-><init>(Le/m/a/h/a/d/k1;Le/m/a/h/a/d/k1;)V

    .line 11
    instance-of p1, v1, Le/m/a/h/a/d/h1;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p1, Le/m/a/h/a/d/h1;

    .line 13
    invoke-direct {p1, v1}, Le/m/a/h/a/d/h1;-><init>(Le/m/a/h/a/d/k1;)V

    move-object v1, p1

    .line 14
    :goto_1
    iput-object v1, p0, Le/m/a/h/a/c/i;->c:Le/m/a/h/a/d/k1;

    new-instance p1, Le/m/a/h/a/c/l;

    .line 15
    invoke-direct {p1, v1}, Le/m/a/h/a/c/l;-><init>(Le/m/a/h/a/d/k1;)V

    .line 16
    instance-of v0, p1, Le/m/a/h/a/d/h1;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    new-instance v0, Le/m/a/h/a/d/h1;

    .line 18
    invoke-direct {v0, p1}, Le/m/a/h/a/d/h1;-><init>(Le/m/a/h/a/d/k1;)V

    move-object p1, v0

    .line 19
    :goto_2
    iput-object p1, p0, Le/m/a/h/a/c/i;->d:Le/m/a/h/a/d/k1;

    return-void
.end method
