.class Lg/i/a/e$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:Lg/i/a/i;


# direct methods
.method constructor <init>(Lg/i/a/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/i/a/e$f;->a:Lg/i/a/i;

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i/a/e$f;->a:Lg/i/a/i;

    invoke-interface {v0}, Lg/i/a/i;->key()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i/a/e$f;->a:Lg/i/a/i;

    invoke-interface {v0, p1}, Lg/i/a/i;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
