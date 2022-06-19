.class public final Ls1/f0/i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/f0/f;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/text/MatchResult;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/f0/h;

.field public final synthetic c:Ljava/lang/CharSequence;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ls1/f0/h;Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Ls1/f0/i;->b:Ls1/f0/h;

    iput-object p2, p0, Ls1/f0/i;->c:Ljava/lang/CharSequence;

    iput p3, p0, Ls1/f0/i;->d:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/f0/i;->b:Ls1/f0/h;

    iget-object v1, p0, Ls1/f0/i;->c:Ljava/lang/CharSequence;

    iget v2, p0, Ls1/f0/i;->d:I

    invoke-virtual {v0, v1, v2}, Ls1/f0/h;->a(Ljava/lang/CharSequence;I)Ls1/f0/f;

    move-result-object v0

    return-object v0
.end method
