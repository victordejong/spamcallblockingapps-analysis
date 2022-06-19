.class public final Le/a/c/a/d/g/k;
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
        "Le/a/c/a/l/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/d/g/h;


# direct methods
.method public constructor <init>(Le/a/c/a/d/g/h;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/g/k;->a:Le/a/c/a/d/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/c/a/d/g/k;->a:Le/a/c/a/d/g/h;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/c/a/d/g/h;->PA(Le/a/c/a/d/g/h;Ljava/util/List;)V

    return-void
.end method
