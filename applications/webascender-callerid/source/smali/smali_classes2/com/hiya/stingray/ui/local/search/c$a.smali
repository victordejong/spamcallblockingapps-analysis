.class final Lcom/hiya/stingray/ui/local/search/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/search/c;->v()Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/c<",
        "Ljava/lang/String;",
        "Lcom/hiya/stingray/t/h1/i;",
        "Lkotlin/l<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Lcom/hiya/stingray/t/h1/i;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/hiya/stingray/ui/local/search/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/ui/local/search/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/local/search/c$a;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/local/search/c$a;->a:Lcom/hiya/stingray/ui/local/search/c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/hiya/stingray/t/h1/i;)Lkotlin/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/h1/i;",
            ")",
            "Lkotlin/l<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/h1/i;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/l;

    invoke-direct {v0, p1, p2}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/hiya/stingray/t/h1/i;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/local/search/c$a;->a(Ljava/lang/String;Lcom/hiya/stingray/t/h1/i;)Lkotlin/l;

    move-result-object p1

    return-object p1
.end method
