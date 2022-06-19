.class final Lcom/hiya/stingray/s/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/s/c;->a()Li/c/b0/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lcom/hiya/stingray/s/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/s/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/s/c$a;-><init>()V

    sput-object v0, Lcom/hiya/stingray/s/c$a;->a:Lcom/hiya/stingray/s/c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/e;)Li/c/b0/b/e;
    .locals 1

    .line 1
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Li/c/b0/b/e;)Li/c/b0/b/i;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/s/c$a;->a(Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
