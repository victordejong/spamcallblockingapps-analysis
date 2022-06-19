.class public final Le/a/c/a/k/b/a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/k/b/a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/e0/k<",
        "+",
        "Le/a/c/h/m/a;",
        ">;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/k/b/a;

.field public final synthetic c:Lq3/a/w2/x;


# direct methods
.method public constructor <init>(Le/a/c/a/k/b/a;Lq3/a/w2/x;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/k/b/a$a;->b:Le/a/c/a/k/b/a;

    iput-object p2, p0, Le/a/c/a/k/b/a$a;->c:Lq3/a/w2/x;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-object v2, p1

    check-cast v2, Ls1/e0/k;

    const-string p1, "it"

    .line 2
    invoke-static {v2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/c/a/k/b/a$a;->b:Le/a/c/a/k/b/a;

    iget-object v1, p1, Le/a/c/a/k/b/a;->g:Le/a/c/a/k/b/b;

    iget-object v3, p0, Le/a/c/a/k/b/a$a;->c:Lq3/a/w2/x;

    iget-object v4, p1, Le/a/c/a/k/b/a;->h:Le/a/c/a/k/d/a;

    .line 4
    iget-object p1, v1, Le/a/c/a/k/b/b;->b:Lq3/a/i0;

    new-instance v8, Le/a/c/a/k/b/c;

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Le/a/c/a/k/b/c;-><init>(Le/a/c/a/k/b/b;Ls1/e0/k;Lq3/a/w2/x;Le/a/c/a/k/d/a;Ls1/w/d;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
