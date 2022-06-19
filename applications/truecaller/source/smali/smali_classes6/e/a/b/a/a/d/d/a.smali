.class public final Le/a/b/a/a/d/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ljava/util/List<",
        "+",
        "Le/a/b0/p/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/d/d/b;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/b/a/a/d/d/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/d/d/a;->a:Le/a/b/a/a/d/d/b;

    iput-object p2, p0, Le/a/b/a/a/d/d/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/b/a/a/d/d/a;->a:Le/a/b/a/a/d/d/b;

    .line 3
    iget-object v0, v0, Le/a/b/a/a/d/d/b;->a:Ln3/v/i0;

    .line 4
    iget-object v1, p0, Le/a/b/a/a/d/d/a;->b:Ljava/lang/String;

    .line 5
    new-instance v2, Ls1/k;

    invoke-direct {v2, v1, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, v2}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    return-void
.end method
