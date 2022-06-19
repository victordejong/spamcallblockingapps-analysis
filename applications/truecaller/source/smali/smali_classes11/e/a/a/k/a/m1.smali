.class public final Le/a/a/k/a/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i4/q$a;


# instance fields
.field public final synthetic a:Le/a/a/k/a/n1;

.field public final synthetic b:Le/a/a/k/a/k1;


# direct methods
.method public constructor <init>(Le/a/a/k/a/n1;Le/a/a/k/a/k1;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/m1;->a:Le/a/a/k/a/n1;

    iput-object p2, p0, Le/a/a/k/a/m1;->b:Le/a/a/k/a/k1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/k/a/m1;->a:Le/a/a/k/a/n1;

    iget-object v1, p0, Le/a/a/k/a/m1;->b:Le/a/a/k/a/k1;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v1, Le/a/a/k/a/k1;->e:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 5
    iget-object v4, v0, Le/a/a/k/a/n1;->c:Le/a/o5/f0;

    .line 6
    iget-object v5, v1, Le/a/a/k/a/k1;->d:Ljava/lang/String;

    const/4 v6, 0x1

    .line 7
    invoke-interface {v4, v2, v3, v5, v6}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v2, v1, Le/a/a/k/a/k1;->d:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 9
    invoke-static {v2, v1, v3}, Le/a/f4/i/a;->a(Ljava/lang/String;II)Le/a/z3/i/a;

    move-result-object v1

    const v2, 0x7f080578

    iget-object v0, v0, Le/a/a/k/a/n1;->f:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Le/a/m0/a1$k;->P0(Le/a/z3/i/a;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
