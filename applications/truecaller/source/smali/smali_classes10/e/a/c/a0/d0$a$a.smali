.class public final Le/a/c/a0/d0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a0/d0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/f<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/models/InsightsDomain$f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/f;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lq3/a/x2/f;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a0/d0$a$a;->a:Lq3/a/x2/f;

    iput-object p2, p0, Le/a/c/a0/d0$a$a;->b:Ljava/util/List;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/a0/d0$a$a;->a:Lq3/a/x2/f;

    .line 2
    new-instance v1, Le/a/c/a0/d0$a$a$a;

    iget-object v2, p0, Le/a/c/a0/d0$a$a;->b:Ljava/util/List;

    invoke-direct {v1, p1, v2}, Le/a/c/a0/d0$a$a$a;-><init>(Lq3/a/x2/g;Ljava/util/List;)V

    invoke-interface {v0, v1, p2}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
