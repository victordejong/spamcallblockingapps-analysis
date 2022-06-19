.class public Ln3/w/a/b;
.super Ln3/w/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/w/a/b$c;,
        Ln3/w/a/b$b;,
        Ln3/w/a/b$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/v/b0;

.field public final b:Ln3/w/a/b$c;


# direct methods
.method public constructor <init>(Ln3/v/b0;Ln3/v/b1;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ln3/w/a/a;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/w/a/b;->a:Ln3/v/b0;

    .line 3
    sget-object p1, Ln3/w/a/b$c;->c:Ln3/v/a1$b;

    const-class v0, Ln3/w/a/b$c;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 5
    invoke-static {v2, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p2, Ln3/v/b1;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/v/y0;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    instance-of p2, p1, Ln3/v/a1$e;

    if-eqz p2, :cond_2

    .line 9
    check-cast p1, Ln3/v/a1$e;

    invoke-virtual {p1, v2}, Ln3/v/a1$e;->a(Ln3/v/y0;)V

    goto :goto_1

    .line 10
    :cond_0
    instance-of v2, p1, Ln3/v/a1$c;

    if-eqz v2, :cond_1

    .line 11
    check-cast p1, Ln3/v/a1$c;

    invoke-virtual {p1, v1, v0}, Ln3/v/a1$c;->b(Ljava/lang/String;Ljava/lang/Class;)Ln3/v/y0;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_1
    check-cast p1, Ln3/w/a/b$c$a;

    invoke-virtual {p1, v0}, Ln3/w/a/b$c$a;->create(Ljava/lang/Class;)Ln3/v/y0;

    move-result-object p1

    :goto_0
    move-object v2, p1

    .line 13
    iget-object p1, p2, Ln3/v/b1;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/v/y0;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Ln3/v/y0;->onCleared()V

    .line 15
    :cond_2
    :goto_1
    check-cast v2, Ln3/w/a/b$c;

    .line 16
    iput-object v2, p0, Ln3/w/a/b;->b:Ln3/w/a/b$c;

    return-void

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/w/a/b;->b:Ln3/w/a/b$c;

    .line 2
    iget-object v1, v0, Ln3/w/a/b$c;->a:Ln3/g/i;

    invoke-virtual {v1}, Ln3/g/i;->j()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Loaders:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, v0, Ln3/w/a/b$c;->a:Ln3/g/i;

    invoke-virtual {v3}, Ln3/g/i;->j()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    iget-object v3, v0, Ln3/w/a/b$c;->a:Ln3/g/i;

    invoke-virtual {v3, v2}, Ln3/g/i;->k(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/w/a/b$a;

    .line 7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v0, Ln3/w/a/b$c;->a:Ln3/g/i;

    invoke-virtual {v4, v2}, Ln3/g/i;->h(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 8
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Ln3/w/a/b$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mId="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Ln3/w/a/b$a;->l:I

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " mArgs="

    .line 10
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Ln3/w/a/b$a;->m:Landroid/os/Bundle;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mLoader="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Ln3/w/a/b$a;->n:Ln3/w/b/b;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 12
    iget-object v4, v3, Ln3/w/a/b$a;->n:Ln3/w/b/b;

    const-string v5, "  "

    invoke-static {v1, v5}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, p2, p3, p4}, Ln3/w/b/b;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 13
    iget-object v4, v3, Ln3/w/a/b$a;->p:Ln3/w/a/b$b;

    if-eqz v4, :cond_0

    .line 14
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mCallbacks="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Ln3/w/a/b$a;->p:Ln3/w/a/b$b;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 15
    iget-object v4, v3, Ln3/w/a/b$a;->p:Ln3/w/a/b$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mDeliveredData="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v4, Ln3/w/a/b$b;->c:Z

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 18
    :cond_0
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mData="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget-object v4, v3, Ln3/w/a/b$a;->n:Ln3/w/b/b;

    .line 20
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ln3/w/b/b;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mStarted="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->e()Z

    move-result v3

    .line 24
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public c(ILandroid/os/Bundle;Ln3/w/a/a$a;)Ln3/w/b/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Ln3/w/a/a$a<",
            "TD;>;)",
            "Ln3/w/b/b<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/w/a/b;->b:Ln3/w/a/b$c;

    .line 2
    iget-boolean v0, v0, Ln3/w/a/b$c;->b:Z

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Ln3/w/a/b;->b:Ln3/w/a/b$c;

    .line 5
    iget-object v0, v0, Ln3/w/a/b$c;->a:Ln3/g/i;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Ln3/g/i;->g(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ln3/w/a/b$a;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0, p1, p2, p3, v1}, Ln3/w/a/b;->e(ILandroid/os/Bundle;Ln3/w/a/a$a;Ln3/w/b/b;)Ln3/w/b/b;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    iget-object p1, p0, Ln3/w/a/b;->a:Ln3/v/b0;

    invoke-virtual {v0, p1, p3}, Ln3/w/a/b$a;->p(Ln3/v/b0;Ln3/w/a/a$a;)Ln3/w/b/b;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "initLoader must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(ILandroid/os/Bundle;Ln3/w/a/a$a;)Ln3/w/b/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Ln3/w/a/a$a<",
            "TD;>;)",
            "Ln3/w/b/b<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/w/a/b;->b:Ln3/w/a/b$c;

    .line 2
    iget-boolean v0, v0, Ln3/w/a/b$c;->b:Z

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Ln3/w/a/b;->b:Ln3/w/a/b$c;

    .line 5
    iget-object v0, v0, Ln3/w/a/b$c;->a:Ln3/g/i;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Ln3/g/i;->g(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ln3/w/a/b$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ln3/w/a/b$a;->m(Z)Ln3/w/b/b;

    move-result-object v1

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v1}, Ln3/w/a/b;->e(ILandroid/os/Bundle;Ln3/w/a/a$a;Ln3/w/b/b;)Ln3/w/b/b;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "restartLoader must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(ILandroid/os/Bundle;Ln3/w/a/a$a;Ln3/w/b/b;)Ln3/w/b/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Ln3/w/a/a$a<",
            "TD;>;",
            "Ln3/w/b/b<",
            "TD;>;)",
            "Ln3/w/b/b<",
            "TD;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Ln3/w/a/b;->b:Ln3/w/a/b$c;

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v1, Ln3/w/a/b$c;->b:Z

    .line 3
    invoke-interface {p3, p1, p2}, Ln3/w/a/a$a;->onCreateLoader(ILandroid/os/Bundle;)Ln3/w/b/b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    new-instance v2, Ln3/w/a/b$a;

    invoke-direct {v2, p1, p2, v1, p4}, Ln3/w/a/b$a;-><init>(ILandroid/os/Bundle;Ln3/w/b/b;Ln3/w/b/b;)V

    .line 8
    iget-object p2, p0, Ln3/w/a/b;->b:Ln3/w/a/b$c;

    .line 9
    iget-object p2, p2, Ln3/w/a/b$c;->a:Ln3/g/i;

    invoke-virtual {p2, p1, v2}, Ln3/g/i;->i(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Ln3/w/a/b;->b:Ln3/w/a/b$c;

    .line 11
    iput-boolean v0, p1, Ln3/w/a/b$c;->b:Z

    .line 12
    iget-object p1, p0, Ln3/w/a/b;->a:Ln3/v/b0;

    invoke-virtual {v2, p1, p3}, Ln3/w/a/b$a;->p(Ln3/v/b0;Ln3/w/a/a$a;)Ln3/w/b/b;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Object returned from onCreateLoader must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 14
    iget-object p2, p0, Ln3/w/a/b;->b:Ln3/w/a/b$c;

    .line 15
    iput-boolean v0, p2, Ln3/w/a/b$c;->b:Z

    .line 16
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x80

    const-string v1, "LoaderManager{"

    .line 1
    invoke-static {v0, v1}, Le/d/c/a/a;->x(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Ln3/w/a/b;->a:Ln3/v/b0;

    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->j(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
