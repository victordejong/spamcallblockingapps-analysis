.class public Le/a/f4/g/q;
.super Le/a/f4/i/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/f4/i/b<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Le/a/f4/g/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/a/f4/g/p$c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/f4/i/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/j4/a/d;ZZLe/a/f4/i/b$a;Ljava/lang/String;Ljava/lang/String;Le/a/f4/g/p$c;Le/a/f4/g/p$b;Le/a/f4/i/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/j4/a/d;",
            "ZZ",
            "Le/a/f4/i/b$a<",
            "Le/a/f4/g/t;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le/a/f4/g/p$c;",
            "Le/a/f4/g/p$b;",
            "Le/a/f4/i/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Le/a/f4/i/b;-><init>(Le/a/j4/a/d;ZZLe/a/f4/i/b$a;)V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le/a/f4/g/q;->d:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object p10, p0, Le/a/f4/g/q;->e:Le/a/f4/i/f;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/f4/g/t;

    .line 2
    iget-object p1, p0, Le/a/f4/g/q;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f4/g/p$c;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, p2, v0}, Le/a/f4/g/p$c;->Aa(Ljava/lang/Throwable;I)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Exception;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f4/g/q;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f4/g/p$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Le/a/f4/g/p$c;->Aa(Ljava/lang/Throwable;I)V

    :cond_0
    return-void
.end method

.method public e([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Le/a/f4/g/q;->e:Le/a/f4/i/f;

    invoke-interface {p1}, Le/a/f4/i/f;->a()Le/a/f4/g/t;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Le/a/f4/g/t;

    .line 2
    iget-object v0, p0, Le/a/f4/g/q;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f4/g/p$c;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p1, Le/a/f4/g/t;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    const/16 v1, 0xc8

    .line 4
    invoke-interface {v0, p1, v1}, Le/a/f4/g/p$c;->Aa(Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p1, Le/a/f4/g/t;->c:Ljava/util/List;

    iget-object v2, p1, Le/a/f4/g/t;->d:Ljava/lang/String;

    iget-object v3, p1, Le/a/f4/g/t;->e:Ljava/lang/String;

    iget-object p1, p1, Le/a/f4/g/t;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p1}, Le/a/f4/g/p$c;->p2(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "No result listener for result="

    .line 6
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Le/a/f4/g/t;->c:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method
