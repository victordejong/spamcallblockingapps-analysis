.class public Le/k/a/c/g0/c0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/g0/c0$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/k/a/c/g0/c0;->i()Le/k/a/c/g0/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/k/a/c/g0/c0$g<",
        "Le/k/a/c/g0/a0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/k/a/c/g0/c0;


# direct methods
.method public constructor <init>(Le/k/a/c/g0/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/k/a/c/g0/c0$d;->a:Le/k/a/c/g0/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/g0/i;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0$d;->a:Le/k/a/c/g0/c0;

    iget-object v0, v0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    invoke-virtual {v0, p1}, Le/k/a/c/b;->y(Le/k/a/c/g0/b;)Le/k/a/c/g0/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/k/a/c/g0/c0$d;->a:Le/k/a/c/g0/c0;

    iget-object v1, v1, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    invoke-virtual {v1, p1, v0}, Le/k/a/c/b;->z(Le/k/a/c/g0/b;Le/k/a/c/g0/a0;)Le/k/a/c/g0/a0;

    move-result-object v0

    :cond_0
    return-object v0
.end method
