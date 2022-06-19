.class public final Ls1/w/c$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/w/c;->writeReplace()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Ls1/s;",
        "Ls1/w/f$a;",
        "Ls1/s;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "element",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "invoke",
        "(Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext$Element;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic b:[Ls1/w/f;

.field public final synthetic c:Ls1/z/c/a0;


# direct methods
.method public constructor <init>([Ls1/w/f;Ls1/z/c/a0;)V
    .locals 0

    iput-object p1, p0, Ls1/w/c$c;->b:[Ls1/w/f;

    iput-object p2, p0, Ls1/w/c$c;->c:Ls1/z/c/a0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ls1/s;

    check-cast p2, Ls1/w/f$a;

    const-string v0, "<anonymous parameter 0>"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Ls1/w/c$c;->b:[Ls1/w/f;

    iget-object v0, p0, Ls1/w/c$c;->c:Ls1/z/c/a0;

    iget v1, v0, Ls1/z/c/a0;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Ls1/z/c/a0;->a:I

    aput-object p2, p1, v1

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
