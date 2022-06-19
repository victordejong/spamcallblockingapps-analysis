.class public Lcom/hiya/stingray/t/i1/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/q/c/i/c;)Lcom/hiya/stingray/t/y0;
    .locals 2

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/y0;->b()Lcom/hiya/stingray/t/y0$a;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->O0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->O0()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/y0$a;->b(Ljava/lang/String;)Lcom/hiya/stingray/t/y0$a;

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->Z0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/t/z0;->from(Ljava/lang/String;)Lcom/hiya/stingray/t/z0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/y0$a;->c(Lcom/hiya/stingray/t/z0;)Lcom/hiya/stingray/t/y0$a;

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/hiya/stingray/t/y0$a;->a()Lcom/hiya/stingray/t/y0;

    move-result-object p1

    return-object p1
.end method
