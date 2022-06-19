.class public final Le/a/c/w/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/f<",
        "Ln3/z/b2<",
        "Ls1/l<",
        "+",
        "Lcom/truecaller/insights/models/InsightsDomain;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/f;

.field public final synthetic b:Le/a/c/w/f0;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lq3/a/x2/f;Le/a/c/w/f0;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Le/a/c/w/i0;->a:Lq3/a/x2/f;

    iput-object p2, p0, Le/a/c/w/i0;->b:Le/a/c/w/f0;

    iput-object p3, p0, Le/a/c/w/i0;->c:Ljava/util/Set;

    iput-object p4, p0, Le/a/c/w/i0;->d:Ljava/util/Set;

    iput-object p5, p0, Le/a/c/w/i0;->e:Ljava/util/Set;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/c/w/i0;->a:Lq3/a/x2/f;

    .line 2
    new-instance v7, Le/a/c/w/i0$a;

    iget-object v3, p0, Le/a/c/w/i0;->b:Le/a/c/w/f0;

    iget-object v4, p0, Le/a/c/w/i0;->c:Ljava/util/Set;

    iget-object v5, p0, Le/a/c/w/i0;->d:Ljava/util/Set;

    iget-object v6, p0, Le/a/c/w/i0;->e:Ljava/util/Set;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Le/a/c/w/i0$a;-><init>(Lq3/a/x2/g;Le/a/c/w/f0;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {v0, v7, p2}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
