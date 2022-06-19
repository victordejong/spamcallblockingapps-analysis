.class public final Ls1/a/a/a/w0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/w0/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final d:Ls1/a/a/a/w0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/w0/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final b:Ls1/a/a/a/w0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/w0/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/w0/a;

    invoke-direct {v0}, Ls1/a/a/a/w0/a;-><init>()V

    sput-object v0, Ls1/a/a/a/w0/a;->d:Ls1/a/a/a/w0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls1/a/a/a/w0/a;->c:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ls1/a/a/a/w0/a;->a:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Ls1/a/a/a/w0/a;->b:Ls1/a/a/a/w0/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ls1/a/a/a/w0/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ls1/a/a/a/w0/a<",
            "TE;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Ls1/a/a/a/w0/a;->a:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Ls1/a/a/a/w0/a;->b:Ls1/a/a/a/w0/a;

    .line 8
    iget p1, p2, Ls1/a/a/a/w0/a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ls1/a/a/a/w0/a;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ls1/a/a/a/w0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ls1/a/a/a/w0/a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Ls1/a/a/a/w0/a;->c:I

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/w0/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Ls1/a/a/a/w0/a;->b:Ls1/a/a/a/w0/a;

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Ls1/a/a/a/w0/a;->b:Ls1/a/a/a/w0/a;

    invoke-virtual {v0, p1}, Ls1/a/a/a/w0/a;->a(Ljava/lang/Object;)Ls1/a/a/a/w0/a;

    move-result-object p1

    .line 5
    iget-object v0, p0, Ls1/a/a/a/w0/a;->b:Ls1/a/a/a/w0/a;

    if-ne p1, v0, :cond_2

    return-object p0

    .line 6
    :cond_2
    new-instance v0, Ls1/a/a/a/w0/a;

    iget-object v1, p0, Ls1/a/a/a/w0/a;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Ls1/a/a/a/w0/a;-><init>(Ljava/lang/Object;Ls1/a/a/a/w0/a;)V

    return-object v0
.end method

.method public final b(I)Ls1/a/a/a/w0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ls1/a/a/a/w0/a<",
            "TE;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Ls1/a/a/a/w0/a;->c:I

    if-gt p1, v0, :cond_1

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/w0/a;->b:Ls1/a/a/a/w0/a;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ls1/a/a/a/w0/a;->b(I)Ls1/a/a/a/w0/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/w0/a$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ls1/a/a/a/w0/a;->b(I)Ls1/a/a/a/w0/a;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/a/a/a/w0/a$a;-><init>(Ls1/a/a/a/w0/a;)V

    return-object v0
.end method
