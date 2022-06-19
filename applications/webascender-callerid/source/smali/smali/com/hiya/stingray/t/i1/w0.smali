.class public final Lcom/hiya/stingray/t/i1/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/t/i1/v0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/i1/w0;->a:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;)Lcom/hiya/stingray/t/i1/w0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hiya/stingray/t/i1/w0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/w0;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/t/i1/w0;-><init>(Lj/a/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/t/i1/v0;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/v0;

    iget-object v1, p0, Lcom/hiya/stingray/t/i1/w0;->a:Lj/a/a;

    invoke-static {v1}, Lh/b/a;->a(Lj/a/a;)Lh/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hiya/stingray/t/i1/v0;-><init>(Lh/a;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/i1/w0;->b()Lcom/hiya/stingray/t/i1/v0;

    move-result-object v0

    return-object v0
.end method
