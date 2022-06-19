.class public final Le/a/f/a/b/c$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/b/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/f/a/b/c;


# direct methods
.method public constructor <init>(Le/a/f/a/b/c;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/b/c$e;->b:Le/a/f/a/b/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/f/a/b/c$e;->b:Le/a/f/a/b/c;

    invoke-virtual {v0}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/f/a/b/j;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v4, Le/a/f/a/b/q;

    const/4 v0, 0x0

    invoke-direct {v4, v1, v0}, Le/a/f/a/b/q;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
