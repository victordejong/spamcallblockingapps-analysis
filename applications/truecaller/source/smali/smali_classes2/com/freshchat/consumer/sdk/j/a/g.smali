.class public Lcom/freshchat/consumer/sdk/j/a/g;
.super Ln3/g/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/g/f<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic rV:Lcom/freshchat/consumer/sdk/j/a/d;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/j/a/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/g;->rV:Lcom/freshchat/consumer/sdk/j/a/d;

    invoke-direct {p0, p2}, Ln3/g/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/a/d;->b(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/a/g;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
