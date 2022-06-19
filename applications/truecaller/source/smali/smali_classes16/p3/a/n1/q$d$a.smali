.class public final Lp3/a/n1/q$d$a;
.super Lp3/a/n1/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/q$d;->b(Lp3/a/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lp3/a/o0;

.field public final synthetic c:Lp3/a/n1/q$d;


# direct methods
.method public constructor <init>(Lp3/a/n1/q$d;Lp3/c/b;Lp3/a/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp3/a/n1/q$d$a;->c:Lp3/a/n1/q$d;

    iput-object p3, p0, Lp3/a/n1/q$d$a;->b:Lp3/a/o0;

    .line 2
    iget-object p1, p1, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 3
    iget-object p1, p1, Lp3/a/n1/q;->f:Lp3/a/q;

    .line 4
    invoke-direct {p0, p1}, Lp3/a/n1/z;-><init>(Lp3/a/q;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/q$d$a;->c:Lp3/a/n1/q$d;

    iget-object v0, v0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 2
    iget-object v0, v0, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 3
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/q$d$a;->c:Lp3/a/n1/q$d;

    .line 7
    iget-object v1, v0, Lp3/a/n1/q$d;->b:Lp3/a/g1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, v0, Lp3/a/n1/q$d;->a:Lp3/a/f$a;

    .line 9
    iget-object v1, p0, Lp3/a/n1/q$d$a;->b:Lp3/a/o0;

    invoke-virtual {v0, v1}, Lp3/a/f$a;->b(Lp3/a/o0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_2
    iget-object v1, p0, Lp3/a/n1/q$d$a;->c:Lp3/a/n1/q$d;

    sget-object v2, Lp3/a/g1;->g:Lp3/a/g1;

    .line 11
    invoke-virtual {v2, v0}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object v0

    const-string v2, "Failed to read headers"

    invoke-virtual {v0, v2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    .line 12
    invoke-static {v1, v0}, Lp3/a/n1/q$d;->f(Lp3/a/n1/q$d;Lp3/a/g1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :goto_0
    iget-object v0, p0, Lp3/a/n1/q$d$a;->c:Lp3/a/n1/q$d;

    iget-object v0, v0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 14
    iget-object v0, v0, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 15
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v0

    .line 17
    iget-object v1, p0, Lp3/a/n1/q$d$a;->c:Lp3/a/n1/q$d;

    iget-object v1, v1, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 18
    iget-object v1, v1, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 19
    sget-object v1, Lp3/c/c;->a:Lp3/c/a;

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    throw v0
.end method
