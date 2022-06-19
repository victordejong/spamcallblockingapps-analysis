.class public final Le/a/c/a/n/e/h;
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
        "Ln3/z/q1<",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/n/e/e;


# direct methods
.method public constructor <init>(Le/a/c/a/n/e/e;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/n/e/h;->a:Le/a/c/a/n/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ln3/z/q1;

    .line 2
    iget-object v0, p0, Le/a/c/a/n/e/h;->a:Le/a/c/a/n/e/e;

    .line 3
    iget-object v0, v0, Le/a/c/a/n/e/e;->b:Le/a/c/a/n/c/d/b;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ln3/z/w1;->e(Ln3/z/q1;)V

    return-void

    :cond_0
    const-string p1, "remindersListAdapter"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
