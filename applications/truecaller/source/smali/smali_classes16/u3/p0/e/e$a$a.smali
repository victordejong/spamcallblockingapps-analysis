.class public final Lu3/p0/e/e$a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/p0/e/e$a;->d(I)Lv3/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/io/IOException;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lu3/p0/e/e$a;


# direct methods
.method public constructor <init>(Lu3/p0/e/e$a;I)V
    .locals 0

    iput-object p1, p0, Lu3/p0/e/e$a$a;->b:Lu3/p0/e/e$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/io/IOException;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lu3/p0/e/e$a$a;->b:Lu3/p0/e/e$a;

    iget-object p1, p1, Lu3/p0/e/e$a;->d:Lu3/p0/e/e;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lu3/p0/e/e$a$a;->b:Lu3/p0/e/e$a;

    invoke-virtual {v0}, Lu3/p0/e/e$a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p1

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p1

    throw v0
.end method
