.class public final synthetic Le/a/a/y0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i4/q$a;


# instance fields
.field public final synthetic a:Le/a/a/y0/s;

.field public final synthetic b:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Le/a/a/y0/s;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/y0/g;->a:Le/a/a/y0/s;

    iput-object p2, p0, Le/a/a/y0/g;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final create()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Le/a/a/y0/g;->a:Le/a/a/y0/s;

    iget-object v1, p0, Le/a/a/y0/g;->b:Landroid/net/Uri;

    .line 1
    invoke-virtual {v0, v1}, Le/a/a/y0/s;->o(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
