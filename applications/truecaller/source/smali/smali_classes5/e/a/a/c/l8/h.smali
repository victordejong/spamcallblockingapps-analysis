.class public final Le/a/a/c/l8/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/l8/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/c/l8/h$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/w;


# direct methods
.method public constructor <init>(Le/a/r2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/c/l8/h;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(IZZ)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Le/a/r2/x<",
            "Ljava/util/ArrayList<",
            "Le/a/a/c/l8/g;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/c/l8/h;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/c/l8/h$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/c/l8/h$b;-><init>(Le/a/r2/e;IZZLe/a/a/c/l8/h$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method
