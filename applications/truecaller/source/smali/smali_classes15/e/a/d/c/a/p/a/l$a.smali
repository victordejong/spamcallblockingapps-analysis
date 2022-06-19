.class public final Le/a/d/c/a/p/a/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/a/p/a/l;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/c0/z1/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/a/p/a/l;


# direct methods
.method public constructor <init>(Le/a/d/c/a/p/a/l;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a/p/a/l$a;->a:Le/a/d/c/a/p/a/l;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p1, Le/a/d/c0/z1/d;

    .line 2
    iget-object v1, p0, Le/a/d/c/a/p/a/l$a;->a:Le/a/d/c/a/p/a/l;

    iget-object v1, v1, Le/a/d/c/a/p/a/l;->f:Le/a/d/c/a/p/a/h;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/d/c0/z1/d;->a()Lq3/a/x2/i1;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5
    invoke-static {p1, v2, v3}, Le/a/p5/s0/g;->l(Lq3/a/x2/f;Ljava/util/Set;I)Lq3/a/x2/f;

    move-result-object p1

    .line 6
    iget-object v2, v1, Le/a/d/c/a/p/a/h;->m:Ls1/w/f;

    invoke-static {p1, v2}, Ls1/a/a/a/v0/f/d;->X0(Lq3/a/x2/f;Ls1/w/f;)Lq3/a/x2/f;

    move-result-object p1

    .line 7
    new-instance v2, Le/a/d/c/a/p/a/k;

    invoke-direct {v2, v1}, Le/a/d/c/a/p/a/k;-><init>(Le/a/d/c/a/p/a/h;)V

    invoke-interface {p1, v2, p2}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    return-object v0
.end method
