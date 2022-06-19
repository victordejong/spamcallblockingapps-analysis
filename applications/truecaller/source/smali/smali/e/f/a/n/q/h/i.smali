.class public final Le/f/a/n/q/h/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/f/a/n/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/h<",
            "Le/f/a/n/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Le/f/a/n/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Le/f/a/n/b;->a:Le/f/a/n/b;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    .line 2
    invoke-static {v1, v0}, Le/f/a/n/h;->a(Ljava/lang/String;Ljava/lang/Object;)Le/f/a/n/h;

    move-result-object v0

    sput-object v0, Le/f/a/n/q/h/i;->a:Le/f/a/n/h;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v1, v0}, Le/f/a/n/h;->a(Ljava/lang/String;Ljava/lang/Object;)Le/f/a/n/h;

    move-result-object v0

    sput-object v0, Le/f/a/n/q/h/i;->b:Le/f/a/n/h;

    return-void
.end method
