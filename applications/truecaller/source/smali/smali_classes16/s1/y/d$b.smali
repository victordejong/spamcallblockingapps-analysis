.class public final Ls1/y/d$b;
.super Ls1/u/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/y/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/y/d$b$a;,
        Ls1/y/d$b$c;,
        Ls1/y/d$b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/u/b<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\r\u000e\u000fB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0082\u0010R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;",
        "Lkotlin/collections/AbstractIterator;",
        "Ljava/io/File;",
        "(Lkotlin/io/FileTreeWalk;)V",
        "state",
        "Ljava/util/ArrayDeque;",
        "Lkotlin/io/FileTreeWalk$WalkState;",
        "computeNext",
        "",
        "directoryState",
        "Lkotlin/io/FileTreeWalk$DirectoryState;",
        "root",
        "gotoNext",
        "BottomUpDirectoryState",
        "SingleFileState",
        "TopDownDirectoryState",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ls1/y/d$c;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Ls1/y/d;


# direct methods
.method public constructor <init>(Ls1/y/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/y/d$b;->d:Ls1/y/d;

    invoke-direct {p0}, Ls1/u/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ls1/y/d$b;->c:Ljava/util/ArrayDeque;

    .line 3
    iget-object v1, p1, Ls1/y/d;->a:Ljava/io/File;

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object p1, p1, Ls1/y/d;->a:Ljava/io/File;

    .line 6
    invoke-virtual {p0, p1}, Ls1/y/d$b;->c(Ljava/io/File;)Ls1/y/d$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p1, Ls1/y/d;->a:Ljava/io/File;

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ls1/y/d$b$b;

    .line 9
    iget-object p1, p1, Ls1/y/d;->a:Ljava/io/File;

    .line 10
    invoke-direct {v1, p0, p1}, Ls1/y/d$b$b;-><init>(Ls1/y/d$b;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object p1, Ls1/u/h0;->c:Ls1/u/h0;

    iput-object p1, p0, Ls1/u/b;->a:Ls1/u/h0;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Ls1/y/d$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/y/d$c;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ls1/y/d$c;->a()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Ls1/y/d$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Ls1/y/d$c;->a:Ljava/io/File;

    .line 5
    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ls1/y/d$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v2, p0, Ls1/y/d$b;->d:Ls1/y/d;

    .line 6
    iget v2, v2, Ls1/y/d;->c:I

    if-lt v0, v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Ls1/y/d$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1}, Ls1/y/d$b;->c(Ljava/io/File;)Ls1/y/d$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 8
    iput-object v1, p0, Ls1/u/b;->b:Ljava/lang/Object;

    .line 9
    sget-object v0, Ls1/u/h0;->a:Ls1/u/h0;

    iput-object v0, p0, Ls1/u/b;->a:Ls1/u/h0;

    goto :goto_2

    .line 10
    :cond_4
    sget-object v0, Ls1/u/h0;->c:Ls1/u/h0;

    iput-object v0, p0, Ls1/u/b;->a:Ls1/u/h0;

    :goto_2
    return-void
.end method

.method public final c(Ljava/io/File;)Ls1/y/d$a;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/y/d$b;->d:Ls1/y/d;

    .line 2
    iget-object v0, v0, Ls1/y/d;->b:Ls1/y/e;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Ls1/y/d$b$a;

    invoke-direct {v0, p0, p1}, Ls1/y/d$b$a;-><init>(Ls1/y/d$b;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 5
    :cond_1
    new-instance v0, Ls1/y/d$b$c;

    invoke-direct {v0, p0, p1}, Ls1/y/d$b$c;-><init>(Ls1/y/d$b;Ljava/io/File;)V

    :goto_0
    return-object v0
.end method
