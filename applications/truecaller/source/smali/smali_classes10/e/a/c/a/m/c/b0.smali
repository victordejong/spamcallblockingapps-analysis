.class public final Le/a/c/a/m/c/b0;
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
        "Le/a/c/r/i/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/m/c/z;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/z;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/b0;->a:Le/a/c/a/m/c/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/c/a/m/c/b0;->a:Le/a/c/a/m/c/z;

    .line 3
    iget-object v0, v0, Le/a/c/a/m/c/z;->d:Le/a/c/a/m/b/m;

    .line 4
    invoke-virtual {v0, p1}, Ln3/b0/a/p;->submitList(Ljava/util/List;)V

    return-void
.end method
