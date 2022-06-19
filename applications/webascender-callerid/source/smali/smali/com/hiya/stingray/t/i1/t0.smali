.class public Lcom/hiya/stingray/t/i1/t0;
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
.method public a(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/z0;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/z0;->UNCERTAIN:Lcom/hiya/stingray/t/z0;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object v0

    :cond_0
    return-object v0
.end method
