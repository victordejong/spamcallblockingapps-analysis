.class public Lcom/hiya/stingray/t/i1/g;
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
.method public a(Lcom/hiya/stingray/q/c/a;)Lcom/hiya/stingray/t/e0;
    .locals 7

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/a;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/a;->d()I

    move-result v3

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/a;->a()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/a;->b()I

    move-result v6

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/hiya/stingray/t/e0;->a(ILjava/lang/String;IJI)Lcom/hiya/stingray/t/e0;

    move-result-object p1

    return-object p1
.end method
