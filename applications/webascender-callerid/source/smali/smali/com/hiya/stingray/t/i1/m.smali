.class public Lcom/hiya/stingray/t/i1/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/t/i1/z;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/h2;Lcom/hiya/stingray/t/i1/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/hiya/stingray/t/i1/m;->a:Lcom/hiya/stingray/t/i1/z;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/hiya/stingray/q/c/i/b;)Lcom/hiya/stingray/t/h0;
    .locals 2

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/h0;->a()Lcom/hiya/stingray/t/h0$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/t/i1/m;->a:Lcom/hiya/stingray/t/i1/z;

    .line 3
    invoke-virtual {v1, p2}, Lcom/hiya/stingray/t/i1/z;->f(Lcom/hiya/stingray/q/c/i/b;)Lcom/hiya/stingray/t/n0;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hiya/stingray/t/h0$a;->b(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/h0$a;

    .line 4
    invoke-static {}, Lcom/hiya/stingray/t/y0;->b()Lcom/hiya/stingray/t/y0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hiya/stingray/t/y0$a;->a()Lcom/hiya/stingray/t/y0;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hiya/stingray/t/h0$a;->e(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/h0$a;

    .line 5
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/h0$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/t/h0$a;

    .line 6
    invoke-virtual {v0}, Lcom/hiya/stingray/t/h0$a;->a()Lcom/hiya/stingray/t/h0;

    move-result-object p1

    return-object p1
.end method
