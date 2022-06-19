.class public Lcom/hiya/stingray/t/i1/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/t/i1/w;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/t/i1/w;)V
    .locals 1

    const-string v0, "eventProfileCallEventMapper"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/t/i1/e0;->a:Lcom/hiya/stingray/t/i1/w;

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/o/o;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Lg/g/a/a/i/k/b;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->a()Lg/g/a/a/i/k/a;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->j()Lg/g/a/a/i/k/f;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/k/b;-><init>(Lg/g/a/a/i/k/a;Lg/g/a/a/i/k/f;)V

    .line 2
    new-instance v2, Lg/g/a/a/i/o/o$b;

    invoke-direct {v2}, Lg/g/a/a/i/o/o$b;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/g/a/a/i/o/o$b;->setProfileTag(Ljava/lang/String;)Lg/g/a/a/i/o/o$b;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lg/g/a/a/i/k/b;->getUserDisposition()Lg/g/a/a/i/k/f;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lg/g/a/a/i/k/b;->getClientDisposition()Lg/g/a/a/i/k/a;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v2, v1}, Lg/g/a/a/i/o/o$b;->setDisposition(Lg/g/a/a/i/k/b;)Lg/g/a/a/i/o/o$b;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/hiya/stingray/t/i1/e0;->a:Lcom/hiya/stingray/t/i1/w;

    invoke-virtual {v2, p1}, Lcom/hiya/stingray/t/i1/w;->c(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/k/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/g/a/a/i/o/o$b;->setEventProfileEvent(Lg/g/a/a/i/k/c;)Lg/g/a/a/i/o/o$b;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lg/g/a/a/i/o/o$b;->build()Lg/g/a/a/i/o/o;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->b()Lcom/hiya/stingray/util/i$a;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->b()Lcom/hiya/stingray/util/i$a;

    move-result-object p1

    sget-object v2, Lcom/hiya/stingray/util/i$a;->UNKNOWN:Lcom/hiya/stingray/util/i$a;

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method
