.class public Lcom/hiya/stingray/t/i1/z0;
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
.method public final a(Lg/g/a/a/i/p/h/c;)Lcom/hiya/stingray/t/h1/k;
    .locals 9

    const-string v0, "themeDTO"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/hiya/stingray/t/h1/k;

    .line 2
    sget-object v8, Lcom/hiya/stingray/t/h1/k$a;->LIST:Lcom/hiya/stingray/t/h1/k$a;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v1, p1

    .line 3
    invoke-direct/range {v1 .. v8}, Lcom/hiya/stingray/t/h1/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/t/h1/k$a;)V

    return-object p1
.end method
