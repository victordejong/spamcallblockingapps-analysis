.class public final Lcom/hiya/stingray/t/i1/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/t/i1/z;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/j0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/j0;",
            ">;",
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/i1/a0;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/t/i1/a0;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/t/i1/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/j0;",
            ">;",
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hiya/stingray/t/i1/a0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/a0;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/t/i1/a0;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/stingray/t/i1/j0;)Lcom/hiya/stingray/t/i1/z;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/z;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/t/i1/z;-><init>(Lcom/hiya/stingray/t/i1/j0;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/t/i1/z;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/z;

    iget-object v1, p0, Lcom/hiya/stingray/t/i1/a0;->a:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/i1/j0;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/t/i1/z;-><init>(Lcom/hiya/stingray/t/i1/j0;)V

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/t/i1/a0;->b:Lj/a/a;

    .line 3
    invoke-static {v1}, Lh/b/a;->a(Lj/a/a;)Lh/a;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/hiya/stingray/t/i1/b0;->a(Lcom/hiya/stingray/t/i1/z;Lh/a;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/i1/a0;->b()Lcom/hiya/stingray/t/i1/z;

    move-result-object v0

    return-object v0
.end method
