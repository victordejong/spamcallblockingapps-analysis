.class public final Le/a/d/d/a/w$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/d/a/w;-><init>(Ls1/w/f;Ls1/w/f;Le/a/d/d/c/b;Le/a/d/d/a/a/a/b;Le/a/d/d/a/a/d/d;Le/a/d/d/a/a/c/a;Le/a/d/d/a/a/d/a;Le/a/d/d/a/a/b/a;Le/a/q2/a;Le/a/r2/f;Le/a/p5/c0;Le/a/l4/c;Le/a/d/f;Le/a/u3/g;)V
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
.field public final synthetic b:Le/a/d/d/a/w;


# direct methods
.method public constructor <init>(Le/a/d/d/a/w;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/a/w$a;->b:Le/a/d/d/a/w;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/d/d/a/w$a;->b:Le/a/d/d/a/w;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v3, Le/a/d/d/a/v;

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Le/a/d/d/a/v;-><init>(Le/a/d/d/a/w;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
