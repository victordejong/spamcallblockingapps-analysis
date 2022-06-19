.class final Lkotlin/s/b$d;
.super Lkotlin/s/b;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/s/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/s/b<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private g:I

.field private final h:Lkotlin/s/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/s/b<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final i:I


# direct methods
.method public constructor <init>(Lkotlin/s/b;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/s/b<",
            "+TE;>;II)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lkotlin/s/b;-><init>()V

    iput-object p1, p0, Lkotlin/s/b$d;->h:Lkotlin/s/b;

    iput p2, p0, Lkotlin/s/b$d;->i:I

    .line 2
    sget-object v0, Lkotlin/s/b;->f:Lkotlin/s/b$a;

    invoke-virtual {p1}, Lkotlin/s/a;->size()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Lkotlin/s/b$a;->c(III)V

    sub-int/2addr p3, p2

    .line 3
    iput p3, p0, Lkotlin/s/b$d;->g:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/s/b$d;->g:I

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/s/b;->f:Lkotlin/s/b$a;

    iget v1, p0, Lkotlin/s/b$d;->g:I

    invoke-virtual {v0, p1, v1}, Lkotlin/s/b$a;->a(II)V

    .line 2
    iget-object v0, p0, Lkotlin/s/b$d;->h:Lkotlin/s/b;

    iget v1, p0, Lkotlin/s/b$d;->i:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lkotlin/s/b;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
