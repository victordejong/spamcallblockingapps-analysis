.class public final Ls1/y/d$b$a;
.super Ls1/y/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/y/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;",
        "Lkotlin/io/FileTreeWalk$DirectoryState;",
        "rootDir",
        "Ljava/io/File;",
        "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V",
        "failed",
        "",
        "fileIndex",
        "",
        "fileList",
        "",
        "[Ljava/io/File;",
        "rootVisited",
        "step",
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
.field public b:Z

.field public c:[Ljava/io/File;

.field public d:I

.field public e:Z

.field public final synthetic f:Ls1/y/d$b;


# direct methods
.method public constructor <init>(Ls1/y/d$b;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "rootDir"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Ls1/y/d$b$a;->f:Ls1/y/d$b;

    invoke-direct {p0, p2}, Ls1/y/d$a;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 3

    .line 1
    iget-boolean v0, p0, Ls1/y/d$b$a;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Ls1/y/d$b$a;->c:[Ljava/io/File;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ls1/y/d$b$a;->f:Ls1/y/d$b;

    iget-object v0, v0, Ls1/y/d$b;->d:Ls1/y/d;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Ls1/y/d$c;->a:Ljava/io/File;

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Ls1/y/d$b$a;->c:[Ljava/io/File;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Ls1/y/d$b$a;->f:Ls1/y/d$b;

    iget-object v0, v0, Ls1/y/d$b;->d:Ls1/y/d;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-boolean v1, p0, Ls1/y/d$b$a;->e:Z

    .line 9
    :cond_0
    iget-object v0, p0, Ls1/y/d$b$a;->c:[Ljava/io/File;

    if-eqz v0, :cond_1

    iget v2, p0, Ls1/y/d$b$a;->d:I

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 10
    iget-object v0, p0, Ls1/y/d$b$a;->c:[Ljava/io/File;

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    iget v1, p0, Ls1/y/d$b$a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ls1/y/d$b$a;->d:I

    aget-object v0, v0, v1

    return-object v0

    .line 11
    :cond_1
    iget-boolean v0, p0, Ls1/y/d$b$a;->b:Z

    if-nez v0, :cond_2

    .line 12
    iput-boolean v1, p0, Ls1/y/d$b$a;->b:Z

    .line 13
    iget-object v0, p0, Ls1/y/d$c;->a:Ljava/io/File;

    return-object v0

    .line 14
    :cond_2
    iget-object v0, p0, Ls1/y/d$b$a;->f:Ls1/y/d$b;

    iget-object v0, v0, Ls1/y/d$b;->d:Ls1/y/d;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
