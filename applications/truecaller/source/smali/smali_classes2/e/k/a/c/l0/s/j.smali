.class public final Le/k/a/c/l0/s/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/k/a/c/i;

.field public final b:Le/k/a/b/p;

.field public final c:Le/k/a/a/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/a/k0<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public constructor <init>(Le/k/a/c/i;Le/k/a/b/p;Le/k/a/a/k0;Le/k/a/c/n;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/b/p;",
            "Le/k/a/a/k0<",
            "*>;",
            "Le/k/a/c/n<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/l0/s/j;->a:Le/k/a/c/i;

    .line 3
    iput-object p2, p0, Le/k/a/c/l0/s/j;->b:Le/k/a/b/p;

    .line 4
    iput-object p3, p0, Le/k/a/c/l0/s/j;->c:Le/k/a/a/k0;

    .line 5
    iput-object p4, p0, Le/k/a/c/l0/s/j;->d:Le/k/a/c/n;

    .line 6
    iput-boolean p5, p0, Le/k/a/c/l0/s/j;->e:Z

    return-void
.end method

.method public static a(Le/k/a/c/i;Le/k/a/c/v;Le/k/a/a/k0;Z)Le/k/a/c/l0/s/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/v;",
            "Le/k/a/a/k0<",
            "*>;Z)",
            "Le/k/a/c/l0/s/j;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p1, Le/k/a/c/v;->a:Ljava/lang/String;

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Le/k/a/b/w/i;

    invoke-direct {v0, p1}, Le/k/a/b/w/i;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v3, v0

    .line 3
    new-instance p1, Le/k/a/c/l0/s/j;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Le/k/a/c/l0/s/j;-><init>(Le/k/a/c/i;Le/k/a/b/p;Le/k/a/a/k0;Le/k/a/c/n;Z)V

    return-object p1
.end method
