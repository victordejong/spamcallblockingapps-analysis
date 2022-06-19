.class final Lcom/hiya/stingray/ui/local/search/c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/search/c$c;->a(Lkotlin/l;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Ljava/lang/Throwable;",
        "Li/c/b0/b/a0<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/hiya/stingray/t/h1/d;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/ui/local/search/c$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/ui/local/search/c$c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/local/search/c$c$a;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/local/search/c$c$a;->f:Lcom/hiya/stingray/ui/local/search/c$c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/search/c$c$a;->a(Ljava/lang/Throwable;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
