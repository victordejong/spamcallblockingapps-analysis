.class public final Ls1/y/d$b$c;
.super Ls1/y/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/y/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;",
        "Lkotlin/io/FileTreeWalk$DirectoryState;",
        "rootDir",
        "Ljava/io/File;",
        "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V",
        "fileIndex",
        "",
        "fileList",
        "",
        "[Ljava/io/File;",
        "rootVisited",
        "",
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

.field public final synthetic e:Ls1/y/d$b;


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
    iput-object p1, p0, Ls1/y/d$b$c;->e:Ls1/y/d$b;

    invoke-direct {p0, p2}, Ls1/y/d$a;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 3

    .line 1
    iget-boolean v0, p0, Ls1/y/d$b$c;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ls1/y/d$b$c;->e:Ls1/y/d$b;

    iget-object v0, v0, Ls1/y/d$b;->d:Ls1/y/d;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ls1/y/d$b$c;->b:Z

    .line 5
    iget-object v0, p0, Ls1/y/d$c;->a:Ljava/io/File;

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Ls1/y/d$b$c;->c:[Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v2, p0, Ls1/y/d$b$c;->d:I

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    array-length v0, v0

    if-ge v2, v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Ls1/y/d$b$c;->e:Ls1/y/d$b;

    iget-object v0, v0, Ls1/y/d$b;->d:Ls1/y/d;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Ls1/y/d$b$c;->c:[Ljava/io/File;

    if-nez v0, :cond_5

    .line 10
    iget-object v0, p0, Ls1/y/d$c;->a:Ljava/io/File;

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Ls1/y/d$b$c;->c:[Ljava/io/File;

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Ls1/y/d$b$c;->e:Ls1/y/d$b;

    iget-object v0, v0, Ls1/y/d$b;->d:Ls1/y/d;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_3
    iget-object v0, p0, Ls1/y/d$b$c;->c:[Ljava/io/File;

    if-eqz v0, :cond_4

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    array-length v0, v0

    if-nez v0, :cond_5

    .line 15
    :cond_4
    iget-object v0, p0, Ls1/y/d$b$c;->e:Ls1/y/d$b;

    iget-object v0, v0, Ls1/y/d$b;->d:Ls1/y/d;

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 17
    :cond_5
    iget-object v0, p0, Ls1/y/d$b$c;->c:[Ljava/io/File;

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    iget v1, p0, Ls1/y/d$b$c;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ls1/y/d$b$c;->d:I

    aget-object v0, v0, v1

    return-object v0
.end method
