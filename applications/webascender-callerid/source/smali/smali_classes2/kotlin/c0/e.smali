.class final Lkotlin/c0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/b0/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/b0/d<",
        "Lkotlin/z/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:I

.field private final d:Lkotlin/w/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/p<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lkotlin/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILkotlin/w/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lkotlin/w/b/p<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/c0/e;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lkotlin/c0/e;->b:I

    iput p3, p0, Lkotlin/c0/e;->c:I

    iput-object p4, p0, Lkotlin/c0/e;->d:Lkotlin/w/b/p;

    return-void
.end method

.method public static final synthetic b(Lkotlin/c0/e;)Lkotlin/w/b/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/c0/e;->d:Lkotlin/w/b/p;

    return-object p0
.end method

.method public static final synthetic c(Lkotlin/c0/e;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/c0/e;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic d(Lkotlin/c0/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/c0/e;->c:I

    return p0
.end method

.method public static final synthetic e(Lkotlin/c0/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/c0/e;->b:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/z/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/c0/e$a;

    invoke-direct {v0, p0}, Lkotlin/c0/e$a;-><init>(Lkotlin/c0/e;)V

    return-object v0
.end method
