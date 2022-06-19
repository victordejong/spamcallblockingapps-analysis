.class public final Le/a/h/b/d/b/e$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/d/b/e;-><init>(Ls1/w/f;Ls1/w/f;Le/a/l0/g;Le/a/l0/t;Le/a/q2/s0;Lo3/a;Le/a/l0/k;Z)V
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
.field public final synthetic b:Le/a/h/b/d/b/e;


# direct methods
.method public constructor <init>(Le/a/h/b/d/b/e;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/d/b/e$a;->b:Le/a/h/b/d/b/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/h/b/d/b/e$a;->b:Le/a/h/b/d/b/e;

    new-instance v3, Le/a/h/b/d/b/d;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Le/a/h/b/d/b/d;-><init>(Le/a/h/b/d/b/e$a;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
