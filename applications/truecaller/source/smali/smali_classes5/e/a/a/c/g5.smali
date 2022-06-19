.class public final Le/a/a/c/g5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/e5;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Le/a/a/c/e5;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/g5;->a:Le/a/a/c/e5;

    iput-object p2, p0, Le/a/a/c/g5;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/a/c/g5;->a:Le/a/a/c/e5;

    .line 4
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/k5;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Le/a/a/c/g5;->b:Ljava/util/ArrayList;

    .line 6
    iget-boolean p1, p1, Le/a/a/c/e5;->A:Z

    .line 7
    invoke-interface {v0, v1, p1}, Le/a/a/c/k5;->D8(Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/a/c/g5;->a:Le/a/a/c/e5;

    .line 9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/k5;

    if-eqz p1, :cond_1

    const v0, 0x7f1201d9

    .line 10
    invoke-interface {p1, v0}, Le/a/a/c/k5;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
