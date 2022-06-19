.class public final Le/a/d/c/b/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/b/k;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/v/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/b/k;


# direct methods
.method public constructor <init>(Le/a/d/c/b/k;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/b/k$a;->a:Le/a/d/c/b/k;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Ls1/s;->a:Ls1/s;

    check-cast p1, Le/a/d/v/a;

    .line 2
    iget-object v0, p0, Le/a/d/c/b/k$a;->a:Le/a/d/c/b/k;

    iget-object v0, v0, Le/a/d/c/b/k;->f:Le/a/d/c/b/o;

    .line 3
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/b/h;

    if-eqz v0, :cond_0

    .line 4
    iget-boolean p1, p1, Le/a/d/v/a;->a:Z

    .line 5
    invoke-interface {v0, p1}, Le/a/d/c/b/h;->v3(Z)V

    move-object p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_1

    return-object p1

    :cond_1
    return-object p2
.end method
