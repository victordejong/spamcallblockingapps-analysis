.class public final Le/a/c/a/d/f/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public a:Lq3/a/p1;

.field public final b:Lq3/a/i0;

.field public final c:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ljava/lang/String;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/i0;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/String;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTextChanged"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a/d/f/d/a;->b:Lq3/a/i0;

    iput-object p2, p0, Le/a/c/a/d/f/d/a;->c:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .line 1
    iget-object p2, p0, Le/a/c/a/d/f/d/a;->a:Lq3/a/p1;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const/4 p4, 0x1

    invoke-static {p2, p3, p4, p3}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/c/a/d/f/d/a;->b:Lq3/a/i0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Le/a/c/a/d/f/d/a$a;

    invoke-direct {v3, p0, p1, p3}, Le/a/c/a/d/f/d/a$a;-><init>(Le/a/c/a/d/f/d/a;Ljava/lang/CharSequence;Ls1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/d/f/d/a;->a:Lq3/a/p1;

    return-void
.end method
