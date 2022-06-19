.class final Lcom/hiya/stingray/s/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/s/c;->b()Li/c/b0/b/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Upstream:",
        "Ljava/lang/Object;",
        "Downstream:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/b0<",
        "TT;TT;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/hiya/stingray/s/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/s/c$b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/c$b;-><init>()V

    sput-object v0, Lcom/hiya/stingray/s/c$b;->a:Lcom/hiya/stingray/s/c$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Li/c/b0/b/v;)Li/c/b0/b/a0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/s/c$b;->b(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final b(Li/c/b0/b/v;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
