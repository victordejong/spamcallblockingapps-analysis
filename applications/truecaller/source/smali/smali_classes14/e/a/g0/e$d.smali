.class public final Le/a/g0/e$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g0/e;-><init>(Landroid/content/Context;Le/a/g0/k/b;Le/a/g0/n/a;Le/a/g0/l/a;Le/a/p5/c;Le/a/p5/q0/e;Le/a/n2/a/a;Le/a/g0/b;Le/a/g0/j/j;Ls1/w/f;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g0/e;


# direct methods
.method public constructor <init>(Le/a/g0/e;)V
    .locals 0

    iput-object p1, p0, Le/a/g0/e$d;->b:Le/a/g0/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g0/e$d;->b:Le/a/g0/e;

    .line 2
    iget-object v0, v0, Le/a/g0/e;->d:Le/a/g0/k/b;

    .line 3
    check-cast v0, Le/a/g0/k/c;

    .line 4
    invoke-virtual {v0}, Le/a/g0/k/c;->a()Le/a/d4/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    iget-object v1, p0, Le/a/g0/e$d;->b:Le/a/g0/e;

    .line 6
    iget-object v1, v1, Le/a/g0/e;->k:Le/a/g0/j/j;

    .line 7
    invoke-interface {v1}, Le/a/g0/j/j;->b()V

    .line 8
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
