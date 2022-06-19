.class public final Le/a/b/a/a/a/c0;
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
        "Le/a/b/l/l<",
        "+",
        "Le/a/b/l/q<",
        "Ls1/s;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/a/v;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/v;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/c0;->a:Le/a/b/a/a/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/b/l/l;

    .line 2
    iget-object v0, p1, Le/a/b/l/l;->b:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Le/a/b/l/q$b;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Le/a/b/l/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/l/q;

    .line 5
    instance-of v0, p1, Le/a/b/l/q$c;

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Le/a/b/a/a/a/c0;->a:Le/a/b/a/a/a/v;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    goto :goto_0

    .line 7
    :cond_0
    instance-of p1, p1, Le/a/b/l/q$a;

    :cond_1
    :goto_0
    return-void
.end method
