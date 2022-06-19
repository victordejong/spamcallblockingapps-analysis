.class public Lp3/a/n1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp3/a/n1/e$a;


# direct methods
.method public constructor <init>(Lp3/a/n1/e$a;Lp3/c/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp3/a/n1/d;->b:Lp3/a/n1/e$a;

    iput p3, p0, Lp3/a/n1/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/d;->b:Lp3/a/n1/e$a;

    .line 5
    iget-object v1, v1, Lp3/a/n1/e$a;->a:Lp3/a/n1/a0;

    .line 6
    iget v2, p0, Lp3/a/n1/d;->a:I

    invoke-interface {v1, v2}, Lp3/a/n1/a0;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    iget-object v1, p0, Lp3/a/n1/d;->b:Lp3/a/n1/e$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    check-cast v1, Lp3/a/o1/e$b;

    :try_start_2
    invoke-virtual {v1, v0}, Lp3/a/o1/e$b;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    sget-object v1, Lp3/c/c;->a:Lp3/c/a;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    throw v0
.end method
