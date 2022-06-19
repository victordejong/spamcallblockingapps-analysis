.class public Lp3/a/o1/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/o1/a;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/o1/a;


# direct methods
.method public constructor <init>(Lp3/a/o1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/o1/a$c;->a:Lp3/a/o1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/o1/a$c;->a:Lp3/a/o1/a;

    .line 2
    iget-object v0, v0, Lp3/a/o1/a;->b:Lv3/f;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/a$c;->a:Lp3/a/o1/a;

    .line 5
    iget-object v0, v0, Lp3/a/o1/a;->h:Lv3/z;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lv3/z;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lp3/a/o1/a$c;->a:Lp3/a/o1/a;

    .line 8
    iget-object v1, v1, Lp3/a/o1/a;->d:Lp3/a/o1/b$a;

    .line 9
    invoke-interface {v1, v0}, Lp3/a/o1/b$a;->a(Ljava/lang/Throwable;)V

    .line 10
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lp3/a/o1/a$c;->a:Lp3/a/o1/a;

    .line 11
    iget-object v0, v0, Lp3/a/o1/a;->i:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 13
    iget-object v1, p0, Lp3/a/o1/a$c;->a:Lp3/a/o1/a;

    .line 14
    iget-object v1, v1, Lp3/a/o1/a;->d:Lp3/a/o1/b$a;

    .line 15
    invoke-interface {v1, v0}, Lp3/a/o1/b$a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
