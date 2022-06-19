.class public Lcom/hiya/stingray/manager/f4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/b0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/b0<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/manager/h4;

.field private final b:Z

.field private final c:Lcom/hiya/stingray/manager/o2;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/h4;ZLcom/hiya/stingray/manager/o2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/f4;->a:Lcom/hiya/stingray/manager/h4;

    .line 3
    iput-boolean p2, p0, Lcom/hiya/stingray/manager/f4;->b:Z

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/manager/f4;->c:Lcom/hiya/stingray/manager/o2;

    return-void
.end method

.method static synthetic b(Lcom/hiya/stingray/manager/f4;)Lcom/hiya/stingray/manager/h4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/f4;->a:Lcom/hiya/stingray/manager/h4;

    return-object p0
.end method

.method static synthetic c(Lcom/hiya/stingray/manager/f4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hiya/stingray/manager/f4;->b:Z

    return p0
.end method

.method static synthetic d(Lcom/hiya/stingray/manager/f4;)Lcom/hiya/stingray/manager/o2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/f4;->c:Lcom/hiya/stingray/manager/o2;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Li/c/b0/b/v;)Li/c/b0/b/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/f4;->e(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public e(Li/c/b0/b/v;)Li/c/b0/b/v;
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
    new-instance v0, Lcom/hiya/stingray/manager/f4$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/f4$a;-><init>(Lcom/hiya/stingray/manager/f4;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->doOnComplete(Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
