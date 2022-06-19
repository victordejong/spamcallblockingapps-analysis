.class public final synthetic Le/a/a/y0/e;
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

    iput-object p1, p0, Le/a/a/y0/e;->a:Le/a/a/y0/s;

    iput-object p2, p0, Le/a/a/y0/e;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final create()Landroid/graphics/Bitmap;
    .locals 6

    iget-object v0, p0, Le/a/a/y0/e;->a:Le/a/a/y0/s;

    iget-object v1, p0, Le/a/a/y0/e;->b:Landroid/net/Uri;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7f0806f4

    const/4 v3, -0x1

    .line 2
    new-instance v4, Le/a/z3/i/a;

    sget-object v5, Le/a/z3/i/e$b;->c:Le/a/z3/i/e$b;

    invoke-direct {v4, v1, v5}, Le/a/z3/i/a;-><init>(Landroid/net/Uri;Le/a/z3/i/g;)V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v4, Le/a/z3/i/a;->a:Z

    .line 4
    iput v3, v4, Le/a/z3/i/a;->b:I

    .line 5
    iget-object v0, v0, Le/a/a/y0/s;->a:Landroid/content/Context;

    invoke-static {v4, v2, v0}, Le/a/m0/a1$k;->P0(Le/a/z3/i/a;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
