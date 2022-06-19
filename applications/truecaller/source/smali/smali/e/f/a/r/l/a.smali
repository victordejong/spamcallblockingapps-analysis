.class public Le/f/a/r/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/r/l/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/r/l/e<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Le/f/a/r/l/b;


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/f/a/r/l/a;->a:I

    return-void
.end method


# virtual methods
.method public a(Le/f/a/n/a;Z)Le/f/a/r/l/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/a;",
            "Z)",
            "Le/f/a/r/l/d<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p2, Le/f/a/n/a;->e:Le/f/a/n/a;

    if-ne p1, p2, :cond_0

    .line 2
    sget-object p1, Le/f/a/r/l/c;->a:Le/f/a/r/l/c;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/f/a/r/l/a;->b:Le/f/a/r/l/b;

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Le/f/a/r/l/b;

    iget p2, p0, Le/f/a/r/l/a;->a:I

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Le/f/a/r/l/b;-><init>(IZ)V

    iput-object p1, p0, Le/f/a/r/l/a;->b:Le/f/a/r/l/b;

    .line 5
    :cond_1
    iget-object p1, p0, Le/f/a/r/l/a;->b:Le/f/a/r/l/b;

    :goto_0
    return-object p1
.end method
