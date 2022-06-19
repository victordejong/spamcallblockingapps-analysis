.class public final Le/f/a/n/q/d/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/o/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/q/d/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/o/w<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/q/d/d0$a;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/q/d/d0$a;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Le/f/a/t/j;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/q/d/d0$a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method
