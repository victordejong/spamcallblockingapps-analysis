.class public Lp3/a/o1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/o1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/o1/e;


# direct methods
.method public constructor <init>(Lp3/a/o1/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/o1/e$a;->a:Lp3/a/o1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/o0;[B)V
    .locals 4

    .line 1
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lp3/a/o1/e$a;->a:Lp3/a/o1/e;

    .line 4
    iget-object v2, v2, Lp3/a/o1/e;->g:Lp3/a/p0;

    .line 5
    iget-object v2, v2, Lp3/a/p0;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 7
    iget-object v2, p0, Lp3/a/o1/e$a;->a:Lp3/a/o1/e;

    const/4 v3, 0x1

    .line 8
    iput-boolean v3, v2, Lp3/a/o1/e;->p:Z

    const-string v2, "?"

    .line 9
    invoke-static {v1, v2}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    sget-object v2, Lcom/google/common/io/BaseEncoding;->BASE64:Lcom/google/common/io/BaseEncoding;

    .line 11
    invoke-virtual {v2, p2}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_0
    :try_start_0
    iget-object p2, p0, Lp3/a/o1/e$a;->a:Lp3/a/o1/e;

    .line 13
    iget-object p2, p2, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 14
    iget-object p2, p2, Lp3/a/o1/e$b;->y:Ljava/lang/Object;

    .line 15
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object v2, p0, Lp3/a/o1/e$a;->a:Lp3/a/o1/e;

    .line 17
    iget-object v2, v2, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 18
    invoke-static {v2, p1, v1}, Lp3/a/o1/e$b;->l(Lp3/a/o1/e$b;Lp3/a/o0;Ljava/lang/String;)V

    .line 19
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 22
    sget-object p2, Lp3/c/c;->a:Lp3/c/a;

    .line 23
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    throw p1
.end method
