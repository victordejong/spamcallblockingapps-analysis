.class public Le/k/a/c/d0/y/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Le/k/a/c/i;

.field public final b:Le/k/a/c/v;

.field public final c:Le/k/a/a/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/a/k0<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Le/k/a/a/n0;

.field public final e:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/k/a/c/d0/u;


# direct methods
.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/v;Le/k/a/a/k0;Le/k/a/c/j;Le/k/a/c/d0/u;Le/k/a/a/n0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/v;",
            "Le/k/a/a/k0<",
            "*>;",
            "Le/k/a/c/j<",
            "*>;",
            "Le/k/a/c/d0/u;",
            "Le/k/a/a/n0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/y/v;->a:Le/k/a/c/i;

    .line 3
    iput-object p2, p0, Le/k/a/c/d0/y/v;->b:Le/k/a/c/v;

    .line 4
    iput-object p3, p0, Le/k/a/c/d0/y/v;->c:Le/k/a/a/k0;

    .line 5
    iput-object p6, p0, Le/k/a/c/d0/y/v;->d:Le/k/a/a/n0;

    .line 6
    iput-object p4, p0, Le/k/a/c/d0/y/v;->e:Le/k/a/c/j;

    .line 7
    iput-object p5, p0, Le/k/a/c/d0/y/v;->f:Le/k/a/c/d0/u;

    return-void
.end method

.method public static a(Le/k/a/c/i;Le/k/a/c/v;Le/k/a/a/k0;Le/k/a/c/j;Le/k/a/c/d0/u;Le/k/a/a/n0;)Le/k/a/c/d0/y/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/v;",
            "Le/k/a/a/k0<",
            "*>;",
            "Le/k/a/c/j<",
            "*>;",
            "Le/k/a/c/d0/u;",
            "Le/k/a/a/n0;",
            ")",
            "Le/k/a/c/d0/y/v;"
        }
    .end annotation

    .line 1
    new-instance v7, Le/k/a/c/d0/y/v;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Le/k/a/c/d0/y/v;-><init>(Le/k/a/c/i;Le/k/a/c/v;Le/k/a/a/k0;Le/k/a/c/j;Le/k/a/c/d0/u;Le/k/a/a/n0;)V

    return-object v7
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/v;->c:Le/k/a/a/k0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public c(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/v;->e:Le/k/a/c/j;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
